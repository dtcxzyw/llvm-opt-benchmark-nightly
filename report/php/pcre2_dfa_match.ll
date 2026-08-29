Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_dfa_match?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@php_pcre2_dfa_match:bb.a
  br i1 %or.cond35, label %bb.dp, label %.thread730

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
  %i.aa = and i32 %5, 131070                      ; 4 uses
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
  %i.gf = icmp samesign ugt i32 %i.aa, 2          ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gh = sub i64 %i.fj, %i.fo
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %invariant.op4822 = add i64 %i.fo, 1
  %invariant.op4821 = add i64 %i.fo, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.aez, %.thread3582
  %.03179 = phi ptr [ %9, %.thread3582 ], [ %.153194.ph, %bb.aez ]
  %.03178 = phi ptr [ %i.ah, %.thread3582 ], [ %.03177, %bb.aez ] ; 2 uses
  %.03177 = phi ptr [ %i.aj, %.thread3582 ], [ %.03178, %bb.aez ] ; 7 uses
  %.02992 = phi ptr [ %.33199, %.thread3582 ], [ %i.dsw, %bb.aez ] ; 14 uses
  %.52860 = phi i32 [ %.42859, %.thread3582 ], [ %.67.ph, %bb.aez ] ; 4 uses
  %.02847 = phi i32 [ -1, %.thread3582 ], [ %.42851.ph, %bb.aez ] ; 2 uses
  %.02839 = phi i32 [ 0, %.thread3582 ], [ %.62845.ph, %bb.aez ] ; 2 uses
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
  %i.jk = or disjoint i32 %i.ji, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %.02992, i64 5
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !73
  %i.jn = and i8 %i.jm, 63
  %i.jo = zext nneg i8 %i.jn to i32
  %i.jp = or disjoint i32 %i.jk, %i.jo
  br label %bb.ae

bb.ae:                                            ; preds = %bb.t, %bb.u, %bb.y, %bb.ac, %bb.ad, %bb.aa, %bb.w
  %.02759 = phi i32 [ 2, %bb.w ], [ 3, %bb.y ], [ 4, %bb.aa ], [ 5, %bb.ac ], [ 6, %bb.ad ], [ 1, %bb.u ], [ 0, %bb.t ]
  %.02756 = phi i32 [ %i.hb, %bb.w ], [ %i.hm, %bb.y ], [ %i.id, %bb.aa ], [ %i.ja, %bb.ac ], [ %i.jp, %bb.ad ], [ %i.gr, %bb.u ], [ -1, %bb.t ]
  %.02756.fr = freeze i32 %.02756                 ; 69 uses
  %i.jq = icmp sgt i32 %.52860, 0
  br i1 %i.jq, label %.lr.ph4249, label %._crit_edge4250.thread

.lr.ph4249:                                       ; preds = %bb.ae
  %i.jr = getelementptr inbounds nuw i8, ptr %.03177, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %.03177, i64 12
  %i.jt = icmp ugt i32 %.02756.fr, 255            ; 12 uses
  %i.ju = lshr i32 %.02756.fr, 3
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = and i32 %.02756.fr, 7
  %i.jx = zext i32 %.02756.fr to i64              ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.jx
  %i.jz = icmp ult i32 %.02756.fr, 128
  %i.ka = sdiv i32 %.02756.fr, 128
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr @_pcre2_ucd_stage1_8, i64 %i.kb ; 6 uses
  %i.kd = srem i32 %.02756.fr, 128                ; 6 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.jx
  %i.kf = add i32 %.02756.fr, -160
  %or.cond155 = icmp ult i32 %i.kf, 55136         ; 4 uses
  %i.kg = icmp ugt i32 %.02756.fr, 57343          ; 4 uses
  %i.kh = icmp ult i32 %.02756.fr, 256            ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.jx ; 8 uses
  %narrow4265 = or i1 %or.cond155, %i.kg
  %spec.select4263 = zext i1 %narrow4265 to i32
  %narrow4266 = or i1 %or.cond155, %i.kg
  %spec.select4262 = zext i1 %narrow4266 to i32
  %narrow4267 = or i1 %or.cond155, %i.kg
  %spec.select4261 = zext i1 %narrow4267 to i32
  %narrow4268 = or i1 %or.cond155, %i.kg
  %spec.select4260 = zext i1 %narrow4268 to i32
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph4249, %.thread3602
  %.027434247 = phi i32 [ %.02839, %.lr.ph4249 ], [ %.32746.ph, %.thread3602 ] ; 5 uses
  %.027474246 = phi i32 [ 0, %.lr.ph4249 ], [ %.22749.ph, %.thread3602 ] ; 281 uses
  %.027504245 = phi i32 [ 0, %.lr.ph4249 ], [ %.22752.ph, %.thread3602 ] ; 289 uses
  %.127604244 = phi i32 [ %.02759, %.lr.ph4249 ], [ %.11.ph, %.thread3602 ] ; 331 uses
  %.027684243 = phi i32 [ 0, %.lr.ph4249 ], [ %i.dsh, %.thread3602 ] ; 293 uses
  %.128404242 = phi i32 [ 0, %.lr.ph4249 ], [ %.62845.ph, %.thread3602 ] ; 289 uses
  %.128484241 = phi i32 [ %.02847, %.lr.ph4249 ], [ %.42851.ph, %.thread3602 ] ; 291 uses
  %.628614240 = phi i32 [ 0, %.lr.ph4249 ], [ %.67.ph, %.thread3602 ] ; 342 uses
  %.029164239 = phi i32 [ %.52860, %.lr.ph4249 ], [ %.100.ph, %.thread3602 ] ; 285 uses
  %.129934237 = phi ptr [ %.02992, %.lr.ph4249 ], [ %.113003.ph, %.thread3602 ] ; 393 uses
  %.530104236 = phi ptr [ %.03178, %.lr.ph4249 ], [ %.703075.ph, %.thread3602 ] ; 442 uses
  %.030764234 = phi ptr [ %i.go, %.lr.ph4249 ], [ %.1003176.ph, %.thread3602 ] ; 333 uses
  %.131804233 = phi ptr [ %.03179, %.lr.ph4249 ], [ %.153194.ph, %.thread3602 ] ; 298 uses
  %.1299342374305 = ptrtoaddr ptr %.129934237 to i64
  %i.kj = sext i32 %.027684243 to i64
  %i.kk = getelementptr inbounds [12 x i8], ptr %.03177, i64 %i.kj ; 24 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !113 ; 4 uses
  %i.km = icmp slt i32 %i.kl, 0
  br i1 %i.km, label %bb.ag, label %bb.ak

end_hunk_0
begin_hunk_1_@internal_dfa_match:bb.a
    i32 468, label %bb.oe
    i32 475, label %bb.oe
    i32 447, label %bb.on
    i32 448, label %bb.on
    i32 455, label %bb.on
    i32 389, label %bb.ox
    i32 390, label %bb.ox
    i32 396, label %bb.ox
    i32 385, label %bb.ow
    i32 386, label %bb.ow
    i32 394, label %bb.ow
    i32 409, label %bb.pz
    i32 410, label %bb.pz
    i32 416, label %bb.pz
    i32 405, label %bb.py
    i32 406, label %bb.py
    i32 414, label %bb.py
    i32 429, label %bb.qg
    i32 430, label %bb.qg
    i32 436, label %bb.qg
    i32 425, label %bb.qf
    i32 426, label %bb.qf
    i32 434, label %bb.qf
    i32 469, label %bb.qr
    i32 470, label %bb.qr
    i32 476, label %bb.qr
    i32 465, label %bb.qq
    i32 466, label %bb.qq
    i32 474, label %bb.qq
    i32 449, label %bb.rb
    i32 450, label %bb.rb
    i32 456, label %bb.rb
    i32 445, label %bb.ra
    i32 446, label %bb.ra
    i32 454, label %bb.ra
    i32 393, label %bb.rk
    i32 391, label %bb.rk
    i32 392, label %bb.rk
    i32 397, label %bb.rk
    i32 413, label %bb.so
    i32 411, label %bb.so
    i32 412, label %bb.so
    i32 417, label %bb.so
    i32 433, label %bb.sw
    i32 431, label %bb.sw
    i32 432, label %bb.sw
    i32 437, label %bb.sw
    i32 473, label %bb.tj
    i32 471, label %bb.tj
    i32 472, label %bb.tj
    i32 477, label %bb.tj
    i32 453, label %bb.tv
    i32 451, label %bb.tv
    i32 452, label %bb.tv
    i32 457, label %bb.tv
    i32 29, label %bb.uh
    i32 30, label %bb.uk
    i32 22, label %bb.uy
    i32 17, label %bb.vd
    i32 20, label %bb.vq
    i32 21, label %bb.vu
    i32 18, label %bb.vy
    i32 19, label %bb.wc
    i32 31, label %bb.wg
    i32 32, label %bb.wj
    i32 48, label %bb.wq
    i32 49, label %bb.wq
    i32 56, label %bb.wq
    i32 74, label %bb.wq
    i32 75, label %bb.wq
    i32 82, label %bb.wq
    i32 35, label %bb.wr
    i32 36, label %bb.wr
    i32 43, label %bb.wr
    i32 61, label %bb.wr
    i32 62, label %bb.wr
    i32 69, label %bb.wr
    i32 50, label %bb.xf
    i32 51, label %bb.xf
    i32 57, label %bb.xf
    i32 76, label %bb.xf
    i32 77, label %bb.xf
    i32 83, label %bb.xf
    i32 37, label %bb.xg
    i32 38, label %bb.xg
    i32 44, label %bb.xg
    i32 63, label %bb.xg
    i32 64, label %bb.xg
    i32 70, label %bb.xg
    i32 46, label %bb.xr
    i32 47, label %bb.xr
    i32 55, label %bb.xr
    i32 72, label %bb.xr
    i32 73, label %bb.xr
    i32 81, label %bb.xr
    i32 33, label %bb.xs
    i32 34, label %bb.xs
    i32 42, label %bb.xs
    i32 59, label %bb.xs
    i32 60, label %bb.xs
    i32 68, label %bb.xs
    i32 54, label %.thread3760
    i32 80, label %.thread3760
    i32 41, label %bb.yd
    i32 67, label %bb.yd
    i32 52, label %bb.yn
    i32 53, label %bb.yn
    i32 58, label %bb.yn
    i32 78, label %bb.yn
    i32 79, label %bb.yn
    i32 84, label %bb.yn
    i32 39, label %bb.yo
    i32 40, label %bb.yo
    i32 45, label %bb.yo
    i32 65, label %bb.yo
    i32 66, label %bb.yo
    i32 71, label %bb.yo
    i32 110, label %bb.zc
    i32 111, label %bb.zc
    i32 112, label %bb.zc
    i32 163, label %bb.aam
    i32 127, label %bb.aan
    i32 128, label %bb.aan
    i32 129, label %bb.aan
    i32 130, label %bb.aan
    i32 139, label %bb.aax
    i32 144, label %bb.aax
    i32 117, label %bb.acc
    i32 136, label %bb.acx
    i32 141, label %bb.acx
    i32 138, label %bb.acx
    i32 143, label %bb.acx
    i32 153, label %bb.acx
    i32 133, label %bb.adl
    i32 118, label %bb.aej
    i32 119, label %bb.aej
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg
  %.not3461 = icmp eq ptr %i.lj, %.62991
  br i1 %.not3461, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.pa = add nsw i32 %.029164239, 1              ; 2 uses
  %i.pb = icmp slt i32 %.029164239, %i.ac
  br i1 %i.pb, label %bb.bj, label %.critedge3469

bb.bj:                                            ; preds = %bb.bi
  %i.pc = add nuw nsw i32 %.02726, 3
  store i32 %i.pc, ptr %.030764234, align 4, !tbaa !113
  %i.pd = getelementptr inbounds nuw i8, ptr %.030764234, i64 4
  store i32 0, ptr %i.pd, align 4, !tbaa !115
  %i.pe = getelementptr inbounds nuw i8, ptr %.030764234, i64 12 ; 2 uses
  %.not3464 = icmp eq i32 %.02727, 121
  br i1 %.not3464, label %.thread3602, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.pf = icmp slt i32 %i.pa, %i.ac
  br i1 %i.pf, label %bb.bl, label %.critedge3469

bb.bl:                                            ; preds = %bb.bk
  %i.pg = add nsw i32 %.029164239, 2
  %i.ph = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !73
  %i.pj = zext i8 %i.pi to i32
  %i.pk = shl nuw nsw i32 %i.pj, 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !73
  %i.pn = zext i8 %i.pm to i32
  %i.po = or disjoint i32 %i.pk, %i.pn
  %i.pp = sub nsw i32 %.02726, %i.po
  store i32 %i.pp, ptr %i.pe, align 4, !tbaa !113
  %i.pq = getelementptr inbounds nuw i8, ptr %.030764234, i64 16
  store i32 0, ptr %i.pq, align 4, !tbaa !115
  %i.pr = getelementptr inbounds nuw i8, ptr %.030764234, i64 24
  br label %.thread3602

bb.bm:                                            ; preds = %bb.bh
  %i.ps = icmp ugt ptr %.129934237, %.33199
  br i1 %i.ps, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pt = load i32, ptr %i.fv, align 4, !tbaa !64 ; 2 uses
  %i.pu = and i32 %i.pt, 4
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %bb.bo, label %.thread3602

bb.bo:                                            ; preds = %bb.bn
  %i.pw = and i32 %i.pt, 8
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.py = load i64, ptr %i.gd, align 8, !tbaa !61
  %i.pz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.py
  %i.qa = icmp ugt ptr %.33199, %i.pz
  br i1 %i.qa, label %bb.bq, label %.thread3602

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bm
  %i.qb = icmp slt i32 %.128484241, 0
  br i1 %i.qb, label %.thread3584.a, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %.not3462 = icmp eq i32 %.128484241, 0
  br i1 %.not3462, label %.thread3584.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.qc = add nuw nsw i32 %.128484241, 1          ; 2 uses
  %i.qd = shl nuw nsw i32 %i.qc, 1                ; 2 uses
  %i.qe = icmp samesign ule i32 %i.qd, %i.aa      ; 2 uses
  %brmerge = select i1 %i.qe, i1 true, i1 %i.gf
  %.mux = call i32 @llvm.umin.i32(i32 %i.qd, i32 %i.aa)
  %.mux4512 = select i1 %i.qe, i32 %i.qc, i32 0
  br i1 %brmerge, label %.thread3592, label %.thread3596

.thread3584.a:                                    ; preds = %bb.bq
  br i1 %i.ge, label %.thread3596.thread, label %.thread3596.thread4440

.thread3584.thread:                               ; preds = %bb.br
  br i1 %i.gf, label %.thread3592, label %.thread3596

.thread3592:                                      ; preds = %bb.bs, %.thread3584.thread
  %11 = phi i32 [ %i.aa, %.thread3584.thread ], [ %.mux, %bb.bs ]
  %.2284935873595 = phi i32 [ 0, %.thread3584.thread ], [ %.mux4512, %bb.bs ]
  %i.qf = add nsw i32 %11, -2
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = shl nuw nsw i64 %i.qg, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gg, ptr align 8 %4, i64 %i.qh, i1 false)
  br label %.thread3596.thread

.thread3596:                                      ; preds = %bb.bs, %.thread3584.thread
  br i1 %i.ge, label %.thread3596.thread, label %.thread3596.thread4440

.thread3596.thread:                               ; preds = %.thread3592, %.thread3584.a, %.thread3596
  %.22849358735944438 = phi i32 [ 0, %.thread3596 ], [ 1, %.thread3584.a ], [ %.2284935873595, %.thread3592 ]
  store i64 %i.gh, ptr %4, align 8, !tbaa !102
  %i.qi = ptrtoint ptr %.129934237 to i64
  %i.qj = sub i64 %i.qi, %i.fo
  store i64 %i.qj, ptr %i.gi, align 8, !tbaa !102
  br label %.thread3596.thread4440

.thread3596.thread4440:                           ; preds = %.thread3584.a, %.thread3596.thread, %.thread3596
  %.22849358735944437 = phi i32 [ %.22849358735944438, %.thread3596.thread ], [ 0, %.thread3596 ], [ 0, %.thread3584.a ] ; 2 uses
  %i.qk = load i32, ptr %i.fv, align 4, !tbaa !64
  %i.ql = and i32 %i.qk, 128
  %.not3463 = icmp eq i32 %i.ql, 0
  br i1 %.not3463, label %.thread3602, label %.critedge3469

.preheader:                                       ; preds = %bb.bg, %.preheader
  %.02732 = phi ptr [ %i.qu, %.preheader ], [ %i.lj, %bb.bg ] ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.02732, i64 1
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !73
  %i.qo = zext i8 %i.qn to i64
  %i.qp = shl nuw nsw i64 %i.qo, 8
  %i.qq = getelementptr inbounds nuw i8, ptr %.02732, i64 2
  %i.qr = load i8, ptr %i.qq, align 1, !tbaa !73
  %i.qs = zext i8 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %.02732, i64 %i.qp
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.qs ; 3 uses
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !73
  %i.qw = icmp eq i8 %i.qv, 120
  br i1 %i.qw, label %.preheader, label %bb.bt, !llvm.loop !122

bb.bt:                                            ; preds = %.preheader
  %i.qx = icmp slt i32 %.029164239, %i.ac
  br i1 %i.qx, label %bb.bu, label %.critedge3469

bb.bu:                                            ; preds = %bb.bt
  %i.qy = add nsw i32 %.029164239, 1
  %i.qz = ptrtoint ptr %i.qu to i64
  %i.ra = sub i64 %i.qz, %i.fp
  %i.rb = trunc i64 %i.ra to i32
  store i32 %i.rb, ptr %.030764234, align 4, !tbaa !113
  %i.rc = getelementptr inbounds nuw i8, ptr %.030764234, i64 4
  store i32 0, ptr %i.rc, align 4, !tbaa !115
  %i.rd = getelementptr inbounds nuw i8, ptr %.030764234, i64 12
  br label %.thread3602

bb.bv:                                            ; preds = %bb.bg, %bb.bg
  %smax4309 = call i32 @llvm.smax.i32(i32 %.029164239, i32 %i.ac)
  %exitcond4310.not4612.not = icmp slt i32 %.029164239, %i.ac
  br i1 %exitcond4310.not4612.not, label %.lr.ph4617, label %.critedge3469

bb.bw:                                            ; preds = %.lr.ph4617
  %exitcond4310.not = icmp eq i32 %i.re, %smax4309
  br i1 %exitcond4310.not, label %.critedge3469, label %.lr.ph4617, !llvm.loop !123

.lr.ph4617:                                       ; preds = %bb.bv, %bb.bw
  %.127334615 = phi ptr [ %i.rt, %bb.bw ], [ %i.lj, %bb.bv ] ; 4 uses
  %.129174614 = phi i32 [ %i.re, %bb.bw ], [ %.029164239, %bb.bv ]
  %.130774613 = phi ptr [ %i.rk, %bb.bw ], [ %.030764234, %bb.bv ] ; 3 uses
  %i.re = add i32 %.129174614, 1                  ; 3 uses
  %i.rf = ptrtoint ptr %.127334615 to i64
  %i.rg = sub i64 %i.rf, %i.fp
  %i.rh = trunc i64 %i.rg to i32
  %i.ri = add i32 %i.rh, 3
  store i32 %i.ri, ptr %.130774613, align 4, !tbaa !113
  %i.rj = getelementptr inbounds nuw i8, ptr %.130774613, i64 4
  store i32 0, ptr %i.rj, align 4, !tbaa !115
  %i.rk = getelementptr inbounds nuw i8, ptr %.130774613, i64 12 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.127334615, i64 1
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !73
  %i.rn = zext i8 %i.rm to i64
  %i.ro = shl nuw nsw i64 %i.rn, 8
  %i.rp = getelementptr inbounds nuw i8, ptr %.127334615, i64 2
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !73
  %i.rr = zext i8 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %.127334615, i64 %i.ro
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.rr ; 2 uses
  %i.ru = load i8, ptr %i.rt, align 1, !tbaa !73
  %i.rv = icmp eq i8 %i.ru, 120
  br i1 %i.rv, label %bb.bw, label %.thread3602, !llvm.loop !123

bb.bx:                                            ; preds = %bb.bg, %bb.bg
  %i.rw = icmp slt i32 %.029164239, %i.ac
  br i1 %i.rw, label %bb.by, label %.critedge3469

bb.by:                                            ; preds = %bb.bx
  %i.rx = add nuw i32 %.02726, 5
  store i32 %i.rx, ptr %.030764234, align 4, !tbaa !113
  %i.ry = getelementptr inbounds nuw i8, ptr %.030764234, i64 4
  store i32 0, ptr %i.ry, align 4, !tbaa !115
  %i.rz = getelementptr inbounds nuw i8, ptr %i.lj, i64 1
  %i.sa = load i8, ptr %i.rz, align 1, !tbaa !73
  %i.sb = zext i8 %i.sa to i64
  %i.sc = shl nuw nsw i64 %i.sb, 8
  %i.sd = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !73
  %i.sf = zext i8 %i.se to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.sc
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sf ; 2 uses
  %.229184223 = add nsw i32 %.029164239, 1        ; 3 uses
  %.230784224 = getelementptr inbounds nuw i8, ptr %.030764234, i64 12 ; 2 uses
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !73
  %i.sj = icmp eq i8 %i.si, 120
  br i1 %i.sj, label %.lr.ph4230.preheader, label %.thread3602

.lr.ph4230.preheader:                             ; preds = %bb.by
  %exitcond4308.not4606 = icmp eq i32 %.229184223, %i.ac
  br i1 %exitcond4308.not4606, label %.critedge3469, label %.lr.ph4611

.lr.ph4230:                                       ; preds = %.lr.ph4611
  %exitcond4308.not = icmp eq i32 %.22918, %i.ac
  br i1 %exitcond4308.not, label %.critedge3469, label %.lr.ph4611, !llvm.loop !124

.lr.ph4611:                                       ; preds = %.lr.ph4230.preheader, %.lr.ph4230
  %.03076.pn42254610 = phi ptr [ %.2307842284607, %.lr.ph4230 ], [ %.030764234, %.lr.ph4230.preheader ]
  %.2273442264609 = phi ptr [ %i.sx, %.lr.ph4230 ], [ %i.sh, %.lr.ph4230.preheader ] ; 4 uses
  %.2291842274608 = phi i32 [ %.22918, %.lr.ph4230 ], [ %.229184223, %.lr.ph4230.preheader ]
  %.2307842284607 = phi ptr [ %.23078, %.lr.ph4230 ], [ %.230784224, %.lr.ph4230.preheader ] ; 3 uses
  %i.sk = ptrtoint ptr %.2273442264609 to i64
  %i.sl = sub i64 %i.sk, %i.fp
  %i.sm = trunc i64 %i.sl to i32
  %i.sn = add i32 %i.sm, 3
  store i32 %i.sn, ptr %.2307842284607, align 4, !tbaa !113
  %i.so = getelementptr inbounds nuw i8, ptr %.03076.pn42254610, i64 16
  store i32 0, ptr %i.so, align 4, !tbaa !115
  %i.sp = getelementptr inbounds nuw i8, ptr %.2273442264609, i64 1
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !73
  %i.sr = zext i8 %i.sq to i64
  %i.ss = shl nuw nsw i64 %i.sr, 8
  %i.st = getelementptr inbounds nuw i8, ptr %.2273442264609, i64 2
  %i.su = load i8, ptr %i.st, align 1, !tbaa !73
  %i.sv = zext i8 %i.su to i64
  %i.sw = getelementptr inbounds nuw i8, ptr %.2273442264609, i64 %i.ss
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.sv ; 2 uses
  %.22918 = add i32 %.2291842274608, 1            ; 3 uses
  %.23078 = getelementptr inbounds nuw i8, ptr %.2307842284607, i64 12 ; 2 uses
  %i.sy = load i8, ptr %i.sx, align 1, !tbaa !73
  %i.sz = icmp eq i8 %i.sy, 120
  br i1 %i.sz, label %.lr.ph4230, label %.thread3602, !llvm.loop !124

bb.bz:                                            ; preds = %bb.bg, %bb.bg
  %i.ta = icmp slt i32 %.029164239, %i.ac
  br i1 %i.ta, label %bb.ca, label %.critedge3469

bb.ca:                                            ; preds = %bb.bz
  %i.tb = add nuw nsw i32 %.02726, 1
  store i32 %i.tb, ptr %.030764234, align 4, !tbaa !113
  %i.tc = getelementptr inbounds nuw i8, ptr %.030764234, i64 4
  store i32 0, ptr %i.tc, align 4, !tbaa !115
  %i.td = getelementptr inbounds nuw i8, ptr %.030764234, i64 12
  %i.te = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !73
  %i.tg = zext i8 %i.tf to i64
  %i.th = shl nuw nsw i64 %i.tg, 8
  %i.ti = getelementptr inbounds nuw i8, ptr %i.lj, i64 3
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !73
  %i.tk = zext i8 %i.tj to i64
  %i.tl = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.th
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tk
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 1 ; 3 uses
  %i.to = load i8, ptr %i.tn, align 1, !tbaa !73
  %i.tp = icmp eq i8 %i.to, 120
  br i1 %i.tp, label %.lr.ph4220, label %._crit_edge4221

.lr.ph4220:                                       ; preds = %bb.ca, %.lr.ph4220
  %.327354218 = phi ptr [ %i.ty, %.lr.ph4220 ], [ %i.tn, %bb.ca ] ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.327354218, i64 1
  %i.tr = load i8, ptr %i.tq, align 1, !tbaa !73
  %i.ts = zext i8 %i.tr to i64
  %i.tt = shl nuw nsw i64 %i.ts, 8
  %i.tu = getelementptr inbounds nuw i8, ptr %.327354218, i64 2
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !73
  %i.tw = zext i8 %i.tv to i64
  %i.tx = getelementptr inbounds nuw i8, ptr %.327354218, i64 %i.tt
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 %i.tw ; 3 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !73
  %i.ua = icmp eq i8 %i.tz, 120
  br i1 %i.ua, label %.lr.ph4220, label %._crit_edge4221, !llvm.loop !125

._crit_edge4221:                                  ; preds = %.lr.ph4220, %bb.ca
  %.32735.lcssa = phi ptr [ %i.tn, %bb.ca ], [ %i.ty, %.lr.ph4220 ]
  %i.ub = icmp slt i32 %.029164239, %invariant.op
  br i1 %i.ub, label %bb.cb, label %.critedge3469

bb.cb:                                            ; preds = %._crit_edge4221
  %i.uc = add nsw i32 %.029164239, 2
  %i.ud = ptrtoint ptr %.32735.lcssa to i64
  %i.ue = sub i64 %i.ud, %i.fp
  %i.uf = trunc i64 %i.ue to i32
  %i.ug = add i32 %i.uf, 3
  store i32 %i.ug, ptr %i.td, align 4, !tbaa !113
  %i.uh = getelementptr inbounds nuw i8, ptr %.030764234, i64 16
  store i32 0, ptr %i.uh, align 4, !tbaa !115
  %i.ui = getelementptr inbounds nuw i8, ptr %.030764234, i64 24
  br label %.thread3602

bb.cc:                                            ; preds = %bb.bg
  %i.uj = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.uk = load i8, ptr %i.uj, align 1, !tbaa !73
  %i.ul = zext i8 %i.uk to i64
  %i.um = shl nuw nsw i64 %i.ul, 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.lj, i64 3
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !73
  %i.up = zext i8 %i.uo to i64
  %i.uq = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.um
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 %i.up
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 1 ; 3 uses
  %i.ut = load i8, ptr %i.us, align 1, !tbaa !73
  %i.uu = icmp eq i8 %i.ut, 120
  br i1 %i.uu, label %.lr.ph4215, label %._crit_edge4216

end_hunk_1
