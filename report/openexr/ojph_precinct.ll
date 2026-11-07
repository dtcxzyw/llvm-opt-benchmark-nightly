Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_precinct?download=true
inline.NumInlined: 109
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ojph5local8precinct5writeEPNS_12outfile_baseE:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %.046.3, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !53
  %i.fd = sub i32 %i.fa, %i.fc
  %i.fe = zext i32 %i.fd to i64
  %i.ff = load ptr, ptr %1, align 8, !tbaa !57
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = tail call noundef i64 %i.fh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.ey, i64 noundef %i.fe) ; 0 uses
  %.0.3 = load ptr, ptr %.046.3, align 8, !tbaa !12 ; 2 uses
  %.not40.3 = icmp eq ptr %.0.3, null
  br i1 %.not40.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !120

._crit_edge.3:                                    ; preds = %.lr.ph.3, %bb.i
  %i.fj = add nuw i32 %.03348.3, 1                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.03447.3, i64 32
  %exitcond.3.not = icmp eq i32 %i.fj, %i.ei
  br i1 %exitcond.3.not, label %._crit_edge51.3, label %bb.i, !llvm.loop !121

._crit_edge51.3:                                  ; preds = %._crit_edge.3
  %i.fl = add nuw i32 %.03552.3, 1                ; 2 uses
  %exitcond58.3.not = icmp eq i32 %i.fl, %i.ek
  br i1 %exitcond58.3.not, label %.loopexit41, label %.lr.ph50.3, !llvm.loop !119

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !41
  %i.fm = load ptr, ptr %1, align 8, !tbaa !57
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8
  %i.fp = call noundef i64 %i.fo(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit41

.loopexit41:                                      ; preds = %._crit_edge51.3, %.loopexit.2, %bb.h, %.lr.ph54.3, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(98) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca [2 x i8], align 1                 ; 5 uses
  %i.n = alloca i16, align 2                      ; 6 uses
  %7 = alloca %"struct.ojph::local::bit_read_buf", align 8 ; 25 uses
  %8 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  %9 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  %10 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  %11 = alloca %"struct.ojph::local::tag_tree", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.o = load i32, ptr %4, align 4, !tbaa !35     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 25 uses
  store i32 0, ptr %i.p, align 4, !tbaa !60
  store ptr %5, ptr %7, align 8, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 57 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 31 uses
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 49 uses
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.u = load i8, ptr %i.t, align 8, !tbaa !149, !range !30, !noundef !31
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = icmp ugt i32 %i.o, 1
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.x = load ptr, ptr %5, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.m, i64 noundef 2), !inline_history !122
  %.not.i = icmp eq i64 %i.aa, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.ab, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ac = load i8, ptr %i.m, align 1, !tbaa !41
  %i.ad = icmp eq i8 %i.ac, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = icmp eq i8 %i.af, -111
  %or.cond.i = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.ah = load i32, ptr %i.q, align 4, !tbaa !62
  %i.ai = add i32 %i.ah, -2                       ; 2 uses
  store i32 %i.ai, ptr %i.q, align 4, !tbaa !62
  %i.aj = icmp ugt i32 %i.ai, 3
  br i1 %i.aj, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #9
  %i.ak = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !57
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.n, i64 noundef 2), !inline_history !122
  %.not14.i = icmp eq i64 %i.ao, 2
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.ap, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aq = load i16, ptr %i.n, align 2, !tbaa !151 ; 2 uses
  %i.ar = call noundef i16 @llvm.bswap.i16(i16 %i.aq)
  store i16 %i.ar, ptr %i.n, align 2, !tbaa !151
  %.not15.i = icmp eq i16 %i.aq, 1024
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.15, ptr %i.as, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !57
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i64 noundef 2, i32 noundef 1), !inline_history !122
  %.not16.i = icmp eq i32 %i.ax, 0
  br i1 %.not16.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.16, ptr %i.ay, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.az = load i16, ptr %i.n, align 2, !tbaa !151
  %i.ba = zext i16 %i.az to i32
  %i.bb = load i32, ptr %i.q, align 4, !tbaa !62
  %i.bc = sub i32 %i.bb, %i.ba
  store i32 %i.bc, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #9
  br label %bb.p

bb.m:                                             ; preds = %bb.e
  %i.bd = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.17, ptr %i.bd, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.n:                                             ; preds = %bb.d
  %i.be = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef -2, i32 noundef 1), !inline_history !122
  %.not13.i = icmp eq i32 %i.bi, 0
  br i1 %.not13.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.16, ptr %i.bj, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br label %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit

_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit: ; preds = %bb.p, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 13 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bo = sext i32 %1 to i64                      ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.br = shl i32 %1, 1
  %i.bs = sext i32 %i.br to i64                   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 11 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.q

bb.q:                                             ; preds = %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit, %bb.dm
  %indvars.iv557 = phi i64 [ 0, %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit ], [ %indvars.iv.next558, %bb.dm ] ; 5 uses
  %.0527 = phi i8 [ 1, %_ZN4ojph5localL11bb_skip_sopEPNS0_12bit_read_bufE.exit ], [ %.3, %bb.dm ] ; 4 uses
  %12 = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.bx = getelementptr inbounds nuw [120 x i8], ptr %12, i64 %indvars.iv557
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !29, !range !30, !noundef !31
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.dm, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv557 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 7 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.dm, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 12 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !33 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.dm, label %bb.t

bb.t:                                             ; preds = %bb.s
  %13 = trunc nuw i8 %.0527 to i1
  br i1 %13, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %bb.v, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i: ; preds = %bb.u
  %.pre.i = load i32, ptr %i.r, align 8, !tbaa !63
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

bb.v:                                             ; preds = %bb.u
  %i.cj = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #9
  store i32 0, ptr %i.l, align 4, !tbaa !35
  %i.ck = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef nonnull %i.l, i64 noundef 1), !inline_history !123
  %.not12.i.i = icmp eq i64 %i.co, 1
  br i1 %.not12.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.cp, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cq = load i32, ptr %i.l, align 4, !tbaa !35  ; 3 uses
  store i32 %i.cq, ptr %i.r, align 8, !tbaa !63
  %i.cr = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i = sub nuw nsw i8 8, %i.cr
  %i.cs = zext nneg i8 %narrow13.i.i to i32
  %i.ct = icmp eq i32 %i.cq, 255
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.s, align 8, !tbaa !64
  %i.cv = load i32, ptr %i.q, align 4, !tbaa !62
  %i.cw = add i32 %i.cv, -1
  store i32 %i.cw, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #9
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

bb.z:                                             ; preds = %bb.v
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.cx = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i = sub nuw nsw i8 8, %i.cx
  %i.cy = zext nneg i8 %narrow.i.i to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit

_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit: ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i, %bb.y, %bb.z
  %i.cz = phi i32 [ %i.ch, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i ], [ %i.cs, %bb.y ], [ %i.cy, %bb.z ]
  %i.da = phi i32 [ %.pre.i, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i ], [ %i.cq, %bb.y ], [ 0, %bb.z ]
  %i.db = add nsw i32 %i.cz, -1                   ; 2 uses
  store i32 %i.db, ptr %i.p, align 4, !tbaa !60
  %i.dc = shl nuw i32 1, %i.db
  %i.dd = and i32 %i.dc, %i.da
  %.not = icmp eq i32 %i.dd, 0
  br i1 %.not, label %bb.dn, label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge

_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge: ; preds = %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit
  %.pre = load i32, ptr %i.cb, align 8, !tbaa !32
  %.pre572.a = load i32, ptr %i.ce, align 4, !tbaa !33
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge, %bb.t
  %i.de = phi i32 [ %.pre572.a, %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge ], [ %i.cf, %bb.t ]
  %i.df = phi i32 [ %.pre, %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit._crit_edge ], [ %i.cc, %bb.t ]
  %i.dg = add i32 %i.df, -1
  %i.dh = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dg, i1 false)
  %i.di = sub nuw nsw i32 32, %i.dh               ; 2 uses
  %i.dj = add i32 %i.de, -1
  %i.dk = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.dj, i1 false)
  %i.dl = sub nuw nsw i32 32, %i.dk               ; 2 uses
  %spec.select = call i32 @llvm.umax.i32(i32 %i.di, i32 %i.dl) ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.dm = load ptr, ptr %0, align 8, !tbaa !34    ; 3 uses
  %.sroa.0124.0.copyload = load i64, ptr %i.cb, align 8, !tbaa !35 ; 2 uses
  %i.dn = add nuw nsw i32 %spec.select, 2
  %wide.trip.count.i = zext nneg i32 %i.dn to i64 ; 16 uses
  %min.iters.check689 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check689, label %scalar.ph688.preheader, label %vector.ph690

vector.ph690:                                     ; preds = %bb.aa
  %n.vec691 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body692

vector.body692:                                   ; preds = %vector.body692, %vector.ph690
  %index693 = phi i64 [ 0, %vector.ph690 ], [ %index.next698, %vector.body692 ] ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index693 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %wide.load694 = load <2 x i32>, ptr %i.do, align 4, !tbaa !35
  %wide.load695 = load <2 x i32>, ptr %i.dp, align 4, !tbaa !35
  %i.dq = zext <2 x i32> %wide.load694 to <2 x i64>
  %i.dr = zext <2 x i32> %wide.load695 to <2 x i64>
  %wide.gep696 = getelementptr inbounds nuw i8, ptr %i.dm, <2 x i64> %i.dq
  %wide.gep697 = getelementptr inbounds nuw i8, ptr %i.dm, <2 x i64> %i.dr
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %index693 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <2 x ptr> %wide.gep696, ptr %i.ds, align 8, !tbaa !36
  store <2 x ptr> %wide.gep697, ptr %i.dt, align 8, !tbaa !36
  %index.next698 = add nuw i64 %index693, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next698, %n.vec691
  br i1 %i.du, label %middle.block699, label %vector.body692, !llvm.loop !124

middle.block699:                                  ; preds = %vector.body692
  %cmp.n700 = icmp eq i64 %n.vec691, %wide.trip.count.i
  br i1 %cmp.n700, label %.preheader.i, label %scalar.ph688.preheader

scalar.ph688.preheader:                           ; preds = %bb.aa, %middle.block699
  %indvars.iv.i.ph = phi i64 [ 0, %bb.aa ], [ %n.vec691, %middle.block699 ]
  br label %scalar.ph688

.preheader.i:                                     ; preds = %scalar.ph688, %middle.block699
  %i.dv = add nuw nsw i32 %spec.select, 1         ; 5 uses
  %i.dw = icmp samesign ult i32 %spec.select, 14  ; 4 uses
  br i1 %i.dw, label %.lr.ph.i, label %.lr.ph29.i

scalar.ph688:                                     ; preds = %scalar.ph688.preheader, %scalar.ph688
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph688 ], [ %indvars.iv.i.ph, %scalar.ph688.preheader ] ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !35
  %i.dz = zext i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !36
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %.preheader.i, label %scalar.ph688, !llvm.loop !125

.lr.ph29.i:                                       ; preds = %.lr.ph.i, %.preheader.i
  store i64 %.sroa.0124.0.copyload, ptr %8, align 8
  %wide.trip.count40.i = zext nneg i32 %i.dv to i64 ; 14 uses
  %i.ec = trunc i64 %.sroa.0124.0.copyload to i32
  %i.ed = call i32 @llvm.umax.i32(i32 %i.di, i32 %i.dl) ; 4 uses
  %xtraiter = and i64 %wide.trip.count40.i, 3     ; 3 uses
  %i.ee = icmp samesign ult i32 %i.ed, 3
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph29.i.new

.lr.ph29.i.new:                                   ; preds = %.lr.ph29.i
  %unroll_iter = and i64 %wide.trip.count40.i, 124
  br label %bb.ab

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %indvars.iv33.i = phi i64 [ %indvars.iv.next34.i, %.lr.ph.i ], [ %wide.trip.count.i, %.preheader.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv33.i
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.ef, align 8, !tbaa !36
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1 ; 2 uses
  %i.eg = and i64 %indvars.iv.next34.i, 4294967295
  %exitcond36.not.i = icmp eq i64 %i.eg, 16
  br i1 %exitcond36.not.i, label %.lr.ph29.i, label %.lr.ph.i, !llvm.loop !0

bb.ab:                                            ; preds = %bb.ab, %.lr.ph29.i.new
  %indvars.iv37.i = phi i64 [ 0, %.lr.ph29.i.new ], [ %indvars.iv.next38.i.3, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph29.i.new ], [ %niter.next.3, %bb.ab ]
  %i.eh = trunc nuw i64 %indvars.iv37.i to i32
  %i.ei = sub nuw i32 %spec.select, %i.eh
  %i.ej = shl nuw nsw i32 %i.ei, 1
  %i.ek = shl nuw i32 1, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv37.i
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !36
  %i.en = zext nneg i32 %i.ek to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.em, i8 0, i64 %i.en, i1 false)
  %indvars.iv.next38.i = or disjoint i64 %indvars.iv37.i, 1 ; 2 uses
  %i.eo = trunc nuw i64 %indvars.iv.next38.i to i32
  %i.ep = sub nuw i32 %spec.select, %i.eo
  %i.eq = shl nuw nsw i32 %i.ep, 1
  %i.er = shl nuw i32 1, %i.eq
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !36
  %i.eu = zext nneg i32 %i.er to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.et, i8 0, i64 %i.eu, i1 false)
  %indvars.iv.next38.i.1 = or disjoint i64 %indvars.iv37.i, 2 ; 2 uses
  %i.ev = trunc nuw i64 %indvars.iv.next38.i.1 to i32
  %i.ew = sub nuw i32 %spec.select, %i.ev
  %i.ex = shl nuw nsw i32 %i.ew, 1
  %i.ey = shl nuw i32 1, %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i.1
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !36
  %i.fb = zext nneg i32 %i.ey to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fa, i8 0, i64 %i.fb, i1 false)
  %indvars.iv.next38.i.2 = or disjoint i64 %indvars.iv37.i, 3 ; 2 uses
  %i.fc = trunc nuw i64 %indvars.iv.next38.i.2 to i32
  %i.fd = sub nuw i32 %spec.select, %i.fc
  %i.fe = shl nuw nsw i32 %i.fd, 1
  %i.ff = shl nuw i32 1, %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next38.i.2
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !36
  %i.fi = zext nneg i32 %i.ff to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fh, i8 0, i64 %i.fi, i1 false)
  %indvars.iv.next38.i.3 = add nuw nsw i64 %indvars.iv37.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, label %bb.ab, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa: ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa, %.lr.ph29.i
  %indvars.iv37.i.epil.init = phi i64 [ 0, %.lr.ph29.i ], [ %indvars.iv.next38.i.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa ]
  %lcmp.mod714 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod714)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv37.i.epil = phi i64 [ %indvars.iv37.i.epil.init, %.epil.preheader ], [ %indvars.iv.next38.i.epil, %bb.ac ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.fj = trunc nuw i64 %indvars.iv37.i.epil to i32
  %i.fk = sub nuw i32 %spec.select, %i.fj
  %i.fl = shl nuw nsw i32 %i.fk, 1
  %i.fm = shl nuw i32 1, %i.fl
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv37.i.epil
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !36
  %i.fp = zext nneg i32 %i.fm to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, i8 0, i64 %i.fp, i1 false)
  %indvars.iv.next38.i.epil = add nuw nsw i64 %indvars.iv37.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, label %bb.ac, !llvm.loop !126

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit: ; preds = %bb.ac, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit.unr-lcssa
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %wide.trip.count40.i
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !36
  store i32 %i.dv, ptr %i.bn, align 8, !tbaa !43
  store i8 0, ptr %i.fr, align 1, !tbaa !41
  %i.fs = load ptr, ptr %0, align 8, !tbaa !34
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.bo ; 3 uses
  %.sroa.0123.0.copyload = load i64, ptr %i.cb, align 8, !tbaa !35 ; 2 uses
  %min.iters.check675 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check675, label %scalar.ph674.preheader, label %vector.ph676

vector.ph676:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit
  %n.vec677 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body678

vector.body678:                                   ; preds = %vector.body678, %vector.ph676
  %index679 = phi i64 [ 0, %vector.ph676 ], [ %index.next684, %vector.body678 ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index679 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %wide.load680 = load <2 x i32>, ptr %i.fu, align 4, !tbaa !35
  %wide.load681 = load <2 x i32>, ptr %i.fv, align 4, !tbaa !35
  %i.fw = zext <2 x i32> %wide.load680 to <2 x i64>
  %i.fx = zext <2 x i32> %wide.load681 to <2 x i64>
  %wide.gep682 = getelementptr inbounds nuw i8, ptr %i.ft, <2 x i64> %i.fw
  %wide.gep683 = getelementptr inbounds nuw i8, ptr %i.ft, <2 x i64> %i.fx
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %index679 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store <2 x ptr> %wide.gep682, ptr %i.fy, align 8, !tbaa !36
  store <2 x ptr> %wide.gep683, ptr %i.fz, align 8, !tbaa !36
  %index.next684 = add nuw i64 %index679, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next684, %n.vec677
  br i1 %i.ga, label %middle.block685, label %vector.body678, !llvm.loop !127

middle.block685:                                  ; preds = %vector.body678
  %cmp.n686 = icmp eq i64 %n.vec677, %wide.trip.count.i
  br i1 %cmp.n686, label %.preheader.i228, label %scalar.ph674.preheader

scalar.ph674.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit, %middle.block685
  %indvars.iv.i225.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit ], [ %n.vec677, %middle.block685 ]
  br label %scalar.ph674

.preheader.i228:                                  ; preds = %scalar.ph674, %middle.block685
  br i1 %i.dw, label %.lr.ph.i235, label %.lr.ph29.i230

scalar.ph674:                                     ; preds = %scalar.ph674.preheader, %scalar.ph674
  %indvars.iv.i225 = phi i64 [ %indvars.iv.next.i226, %scalar.ph674 ], [ %indvars.iv.i225.ph, %scalar.ph674.preheader ] ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i225
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !35
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.i225
  store ptr %i.ge, ptr %i.gf, align 8, !tbaa !36
  %indvars.iv.next.i226 = add nuw nsw i64 %indvars.iv.i225, 1 ; 2 uses
  %exitcond.i227 = icmp eq i64 %indvars.iv.next.i226, %wide.trip.count.i
  br i1 %exitcond.i227, label %.preheader.i228, label %scalar.ph674, !llvm.loop !128

.lr.ph29.i230:                                    ; preds = %.lr.ph.i235, %.preheader.i228
  store i64 %.sroa.0123.0.copyload, ptr %9, align 8
  %i.gg = trunc i64 %.sroa.0123.0.copyload to i32
  %xtraiter716 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.gh = icmp samesign ult i32 %i.ed, 3
  br i1 %i.gh, label %.epil.preheader715, label %.lr.ph29.i230.new

.lr.ph29.i230.new:                                ; preds = %.lr.ph29.i230
  %unroll_iter720 = and i64 %wide.trip.count40.i, 124
  br label %bb.ad

.lr.ph.i235:                                      ; preds = %.preheader.i228, %.lr.ph.i235
  %indvars.iv33.i236 = phi i64 [ %indvars.iv.next34.i237, %.lr.ph.i235 ], [ %wide.trip.count.i, %.preheader.i228 ] ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv33.i236
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.gi, align 8, !tbaa !36
  %indvars.iv.next34.i237 = add nuw nsw i64 %indvars.iv33.i236, 1 ; 2 uses
  %i.gj = and i64 %indvars.iv.next34.i237, 4294967295
  %exitcond36.not.i238 = icmp eq i64 %i.gj, 16
  br i1 %exitcond36.not.i238, label %.lr.ph29.i230, label %.lr.ph.i235, !llvm.loop !0

bb.ad:                                            ; preds = %bb.ad, %.lr.ph29.i230.new
  %indvars.iv37.i232 = phi i64 [ 0, %.lr.ph29.i230.new ], [ %indvars.iv.next38.i233.3, %bb.ad ] ; 6 uses
  %niter721 = phi i64 [ 0, %.lr.ph29.i230.new ], [ %niter721.next.3, %bb.ad ]
  %i.gk = trunc nuw i64 %indvars.iv37.i232 to i32
  %i.gl = sub nuw i32 %spec.select, %i.gk
  %i.gm = shl nuw nsw i32 %i.gl, 1
  %i.gn = shl nuw i32 1, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv37.i232
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !36
  %i.gq = zext nneg i32 %i.gn to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gp, i8 0, i64 %i.gq, i1 false)
  %indvars.iv.next38.i233 = or disjoint i64 %indvars.iv37.i232, 1 ; 2 uses
  %i.gr = trunc nuw i64 %indvars.iv.next38.i233 to i32
  %i.gs = sub nuw i32 %spec.select, %i.gr
  %i.gt = shl nuw nsw i32 %i.gs, 1
  %i.gu = shl nuw i32 1, %i.gt
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !36
  %i.gx = zext nneg i32 %i.gu to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.gw, i8 0, i64 %i.gx, i1 false)
  %indvars.iv.next38.i233.1 = or disjoint i64 %indvars.iv37.i232, 2 ; 2 uses
  %i.gy = trunc nuw i64 %indvars.iv.next38.i233.1 to i32
  %i.gz = sub nuw i32 %spec.select, %i.gy
  %i.ha = shl nuw nsw i32 %i.gz, 1
  %i.hb = shl nuw i32 1, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233.1
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !36
  %i.he = zext nneg i32 %i.hb to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hd, i8 0, i64 %i.he, i1 false)
  %indvars.iv.next38.i233.2 = or disjoint i64 %indvars.iv37.i232, 3 ; 2 uses
  %i.hf = trunc nuw i64 %indvars.iv.next38.i233.2 to i32
  %i.hg = sub nuw i32 %spec.select, %i.hf
  %i.hh = shl nuw nsw i32 %i.hg, 1
  %i.hi = shl nuw i32 1, %i.hh
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv.next38.i233.2
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !36
  %i.hl = zext nneg i32 %i.hi to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hk, i8 0, i64 %i.hl, i1 false)
  %indvars.iv.next38.i233.3 = add nuw nsw i64 %indvars.iv37.i232, 4 ; 2 uses
  %niter721.next.3 = add i64 %niter721, 4         ; 2 uses
  %niter721.ncmp.3 = icmp eq i64 %niter721.next.3, %unroll_iter720
  br i1 %niter721.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa, label %bb.ad, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod718.not = icmp eq i64 %xtraiter716, 0
  br i1 %lcmp.mod718.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, label %.epil.preheader715

.epil.preheader715:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa, %.lr.ph29.i230
  %indvars.iv37.i232.epil.init = phi i64 [ 0, %.lr.ph29.i230 ], [ %indvars.iv.next38.i233.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa ]
  %lcmp.mod719 = icmp ne i64 %xtraiter716, 0
  call void @llvm.assume(i1 %lcmp.mod719)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader715
  %indvars.iv37.i232.epil = phi i64 [ %indvars.iv37.i232.epil.init, %.epil.preheader715 ], [ %indvars.iv.next38.i233.epil, %bb.ae ] ; 3 uses
  %epil.iter717 = phi i64 [ 0, %.epil.preheader715 ], [ %epil.iter717.next, %bb.ae ]
  %i.hm = trunc nuw i64 %indvars.iv37.i232.epil to i32
  %i.hn = sub nuw i32 %spec.select, %i.hm
  %i.ho = shl nuw nsw i32 %i.hn, 1
  %i.hp = shl nuw i32 1, %i.ho
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %indvars.iv37.i232.epil
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !36
  %i.hs = zext nneg i32 %i.hp to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.hr, i8 0, i64 %i.hs, i1 false)
  %indvars.iv.next38.i233.epil = add nuw nsw i64 %indvars.iv37.i232.epil, 1
  %epil.iter717.next = add i64 %epil.iter717, 1   ; 2 uses
  %epil.iter717.cmp.not = icmp eq i64 %epil.iter717.next, %xtraiter716
  br i1 %epil.iter717.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, label %bb.ae, !llvm.loop !129

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240: ; preds = %bb.ae, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240.unr-lcssa
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %wide.trip.count40.i
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !36
  store i32 %i.dv, ptr %i.bq, align 8, !tbaa !43
  store i8 0, ptr %i.hu, align 1, !tbaa !41
  %i.hv = load ptr, ptr %0, align 8, !tbaa !34
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 %i.bs ; 3 uses
  %.sroa.0122.0.copyload = load i64, ptr %i.cb, align 8, !tbaa !35 ; 2 uses
  %min.iters.check661 = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check661, label %scalar.ph660.preheader, label %vector.ph662

vector.ph662:                                     ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240
  %n.vec663 = and i64 %wide.trip.count.i, 124     ; 3 uses
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body664, %vector.ph662
  %index665 = phi i64 [ 0, %vector.ph662 ], [ %index.next670, %vector.body664 ] ; 3 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index665 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %wide.load666 = load <2 x i32>, ptr %i.hx, align 4, !tbaa !35
  %wide.load667 = load <2 x i32>, ptr %i.hy, align 4, !tbaa !35
  %i.hz = zext <2 x i32> %wide.load666 to <2 x i64>
  %i.ia = zext <2 x i32> %wide.load667 to <2 x i64>
  %wide.gep668 = getelementptr inbounds nuw i8, ptr %i.hw, <2 x i64> %i.hz
  %wide.gep669 = getelementptr inbounds nuw i8, ptr %i.hw, <2 x i64> %i.ia
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index665 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store <2 x ptr> %wide.gep668, ptr %i.ib, align 8, !tbaa !36
  store <2 x ptr> %wide.gep669, ptr %i.ic, align 8, !tbaa !36
  %index.next670 = add nuw i64 %index665, 4       ; 2 uses
  %i.id = icmp eq i64 %index.next670, %n.vec663
  br i1 %i.id, label %middle.block671, label %vector.body664, !llvm.loop !130

middle.block671:                                  ; preds = %vector.body664
  %cmp.n672 = icmp eq i64 %n.vec663, %wide.trip.count.i
  br i1 %cmp.n672, label %.preheader.i246, label %scalar.ph660.preheader

scalar.ph660.preheader:                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240, %middle.block671
  %indvars.iv.i243.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit240 ], [ %n.vec663, %middle.block671 ]
  br label %scalar.ph660

.preheader.i246:                                  ; preds = %scalar.ph660, %middle.block671
  br i1 %i.dw, label %.lr.ph.i253, label %.lr.ph29.i248

scalar.ph660:                                     ; preds = %scalar.ph660.preheader, %scalar.ph660
  %indvars.iv.i243 = phi i64 [ %indvars.iv.next.i244, %scalar.ph660 ], [ %indvars.iv.i243.ph, %scalar.ph660.preheader ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i243
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !35
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.ig
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i243
  store ptr %i.ih, ptr %i.ii, align 8, !tbaa !36
  %indvars.iv.next.i244 = add nuw nsw i64 %indvars.iv.i243, 1 ; 2 uses
  %exitcond.i245 = icmp eq i64 %indvars.iv.next.i244, %wide.trip.count.i
  br i1 %exitcond.i245, label %.preheader.i246, label %scalar.ph660, !llvm.loop !131

.lr.ph29.i248:                                    ; preds = %.lr.ph.i253, %.preheader.i246
  store i64 %.sroa.0122.0.copyload, ptr %10, align 8
  %i.ij = trunc i64 %.sroa.0122.0.copyload to i32 ; 2 uses
  %xtraiter723 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.ik = icmp samesign ult i32 %i.ed, 3
  br i1 %i.ik, label %.epil.preheader722, label %.lr.ph29.i248.new

.lr.ph29.i248.new:                                ; preds = %.lr.ph29.i248
  %unroll_iter727 = and i64 %wide.trip.count40.i, 124
  br label %bb.af

.lr.ph.i253:                                      ; preds = %.preheader.i246, %.lr.ph.i253
  %indvars.iv33.i254 = phi i64 [ %indvars.iv.next34.i255, %.lr.ph.i253 ], [ %wide.trip.count.i, %.preheader.i246 ] ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv33.i254
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.il, align 8, !tbaa !36
  %indvars.iv.next34.i255 = add nuw nsw i64 %indvars.iv33.i254, 1 ; 2 uses
  %i.im = and i64 %indvars.iv.next34.i255, 4294967295
  %exitcond36.not.i256 = icmp eq i64 %i.im, 16
  br i1 %exitcond36.not.i256, label %.lr.ph29.i248, label %.lr.ph.i253, !llvm.loop !0

bb.af:                                            ; preds = %bb.af, %.lr.ph29.i248.new
  %indvars.iv37.i250 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %indvars.iv.next38.i251.3, %bb.af ] ; 6 uses
  %niter728 = phi i64 [ 0, %.lr.ph29.i248.new ], [ %niter728.next.3, %bb.af ]
  %i.in = trunc nuw i64 %indvars.iv37.i250 to i32
  %i.io = sub nuw i32 %spec.select, %i.in
  %i.ip = shl nuw nsw i32 %i.io, 1
  %i.iq = shl nuw i32 1, %i.ip
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !36
  %i.it = zext nneg i32 %i.iq to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.is, i8 0, i64 %i.it, i1 false)
  %indvars.iv.next38.i251 = or disjoint i64 %indvars.iv37.i250, 1 ; 2 uses
  %i.iu = trunc nuw i64 %indvars.iv.next38.i251 to i32
  %i.iv = sub nuw i32 %spec.select, %i.iu
  %i.iw = shl nuw nsw i32 %i.iv, 1
  %i.ix = shl nuw i32 1, %i.iw
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !36
  %i.ja = zext nneg i32 %i.ix to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iz, i8 0, i64 %i.ja, i1 false)
  %indvars.iv.next38.i251.1 = or disjoint i64 %indvars.iv37.i250, 2 ; 2 uses
  %i.jb = trunc nuw i64 %indvars.iv.next38.i251.1 to i32
  %i.jc = sub nuw i32 %spec.select, %i.jb
  %i.jd = shl nuw nsw i32 %i.jc, 1
  %i.je = shl nuw i32 1, %i.jd
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.1
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !36
  %i.jh = zext nneg i32 %i.je to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jg, i8 0, i64 %i.jh, i1 false)
  %indvars.iv.next38.i251.2 = or disjoint i64 %indvars.iv37.i250, 3 ; 2 uses
  %i.ji = trunc nuw i64 %indvars.iv.next38.i251.2 to i32
  %i.jj = sub nuw i32 %spec.select, %i.ji
  %i.jk = shl nuw nsw i32 %i.jj, 1
  %i.jl = shl nuw i32 1, %i.jk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next38.i251.2
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !36
  %i.jo = zext nneg i32 %i.jl to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.jn, i8 0, i64 %i.jo, i1 false)
  %indvars.iv.next38.i251.3 = add nuw nsw i64 %indvars.iv37.i250, 4 ; 2 uses
  %niter728.next.3 = add i64 %niter728, 4         ; 2 uses
  %niter728.ncmp.3 = icmp eq i64 %niter728.next.3, %unroll_iter727
  br i1 %niter728.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa, label %bb.af, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa: ; preds = %bb.af
  %lcmp.mod725.not = icmp eq i64 %xtraiter723, 0
  br i1 %lcmp.mod725.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %.epil.preheader722

.epil.preheader722:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa, %.lr.ph29.i248
  %indvars.iv37.i250.epil.init = phi i64 [ 0, %.lr.ph29.i248 ], [ %indvars.iv.next38.i251.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa ]
  %lcmp.mod726 = icmp ne i64 %xtraiter723, 0
  call void @llvm.assume(i1 %lcmp.mod726)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader722
  %indvars.iv37.i250.epil = phi i64 [ %indvars.iv37.i250.epil.init, %.epil.preheader722 ], [ %indvars.iv.next38.i251.epil, %bb.ag ] ; 3 uses
  %epil.iter724 = phi i64 [ 0, %.epil.preheader722 ], [ %epil.iter724.next, %bb.ag ]
  %i.jp = trunc nuw i64 %indvars.iv37.i250.epil to i32
  %i.jq = sub nuw i32 %spec.select, %i.jp
  %i.jr = shl nuw nsw i32 %i.jq, 1
  %i.js = shl nuw i32 1, %i.jr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv37.i250.epil
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !36
  %i.jv = zext nneg i32 %i.js to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ju, i8 0, i64 %i.jv, i1 false)
  %indvars.iv.next38.i251.epil = add nuw nsw i64 %indvars.iv37.i250.epil, 1
  %epil.iter724.next = add i64 %epil.iter724, 1   ; 2 uses
  %epil.iter724.cmp.not = icmp eq i64 %epil.iter724.next, %xtraiter723
  br i1 %epil.iter724.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, label %bb.ag, !llvm.loop !132

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258: ; preds = %bb.ag, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258.unr-lcssa
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %wide.trip.count40.i
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !36
  store i32 %i.dv, ptr %i.bu, align 8, !tbaa !43
  store i8 0, ptr %i.jx, align 1, !tbaa !41
  %i.jy = load ptr, ptr %0, align 8, !tbaa !34
  %i.jz = getelementptr inbounds i8, ptr %i.jy, i64 %i.bs
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 %i.bo ; 3 uses
  %.sroa.0.0.copyload = load i64, ptr %i.cb, align 8, !tbaa !35 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %spec.select, 2
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258
  %n.vec = and i64 %wide.trip.count.i, 124        ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %wide.load = load <2 x i32>, ptr %i.kb, align 4, !tbaa !35
  %wide.load658 = load <2 x i32>, ptr %i.kc, align 4, !tbaa !35
  %i.kd = zext <2 x i32> %wide.load to <2 x i64>
  %i.ke = zext <2 x i32> %wide.load658 to <2 x i64>
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ka, <2 x i64> %i.kd
  %wide.gep659 = getelementptr inbounds nuw i8, ptr %i.ka, <2 x i64> %i.ke
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %index ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  store <2 x ptr> %wide.gep, ptr %i.kf, align 8, !tbaa !36
  store <2 x ptr> %wide.gep659, ptr %i.kg, align 8, !tbaa !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader.i264, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258, %middle.block
  %indvars.iv.i261.ph = phi i64 [ 0, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit258 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader.i264:                                  ; preds = %scalar.ph, %middle.block
  br i1 %i.dw, label %.lr.ph.i271, label %.lr.ph29.i266

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i261 = phi i64 [ %indvars.iv.next.i262, %scalar.ph ], [ %indvars.iv.i261.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i261
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !35
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ka, i64 %i.kk
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.i261
  store ptr %i.kl, ptr %i.km, align 8, !tbaa !36
  %indvars.iv.next.i262 = add nuw nsw i64 %indvars.iv.i261, 1 ; 2 uses
  %exitcond.i263 = icmp eq i64 %indvars.iv.next.i262, %wide.trip.count.i
  br i1 %exitcond.i263, label %.preheader.i264, label %scalar.ph, !llvm.loop !134

.lr.ph29.i266:                                    ; preds = %.lr.ph.i271, %.preheader.i264
  store i64 %.sroa.0.0.copyload, ptr %11, align 8
  %i.kn = trunc i64 %.sroa.0.0.copyload to i32
  %xtraiter730 = and i64 %wide.trip.count40.i, 3  ; 3 uses
  %i.ko = icmp samesign ult i32 %i.ed, 3
  br i1 %i.ko, label %.epil.preheader729, label %.lr.ph29.i266.new

.lr.ph29.i266.new:                                ; preds = %.lr.ph29.i266
  %unroll_iter734 = and i64 %wide.trip.count40.i, 124
  br label %bb.ah

.lr.ph.i271:                                      ; preds = %.preheader.i264, %.lr.ph.i271
  %indvars.iv33.i272 = phi i64 [ %indvars.iv.next34.i273, %.lr.ph.i271 ], [ %wide.trip.count.i, %.preheader.i264 ] ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv33.i272
  store ptr inttoptr (i64 2147483647 to ptr), ptr %i.kp, align 8, !tbaa !36
  %indvars.iv.next34.i273 = add nuw nsw i64 %indvars.iv33.i272, 1 ; 2 uses
  %i.kq = and i64 %indvars.iv.next34.i273, 4294967295
  %exitcond36.not.i274 = icmp eq i64 %i.kq, 16
  br i1 %exitcond36.not.i274, label %.lr.ph29.i266, label %.lr.ph.i271, !llvm.loop !0

bb.ah:                                            ; preds = %bb.ah, %.lr.ph29.i266.new
  %indvars.iv37.i268 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %indvars.iv.next38.i269.3, %bb.ah ] ; 6 uses
  %niter735 = phi i64 [ 0, %.lr.ph29.i266.new ], [ %niter735.next.3, %bb.ah ]
  %i.kr = trunc nuw i64 %indvars.iv37.i268 to i32
  %i.ks = sub nuw i32 %spec.select, %i.kr
  %i.kt = shl nuw nsw i32 %i.ks, 1
  %i.ku = shl nuw i32 1, %i.kt
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !36
  %i.kx = zext nneg i32 %i.ku to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.kw, i8 0, i64 %i.kx, i1 false)
  %indvars.iv.next38.i269 = or disjoint i64 %indvars.iv37.i268, 1 ; 2 uses
  %i.ky = trunc nuw i64 %indvars.iv.next38.i269 to i32
  %i.kz = sub nuw i32 %spec.select, %i.ky
  %i.la = shl nuw nsw i32 %i.kz, 1
  %i.lb = shl nuw i32 1, %i.la
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !36
  %i.le = zext nneg i32 %i.lb to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ld, i8 0, i64 %i.le, i1 false)
  %indvars.iv.next38.i269.1 = or disjoint i64 %indvars.iv37.i268, 2 ; 2 uses
  %i.lf = trunc nuw i64 %indvars.iv.next38.i269.1 to i32
  %i.lg = sub nuw i32 %spec.select, %i.lf
  %i.lh = shl nuw nsw i32 %i.lg, 1
  %i.li = shl nuw i32 1, %i.lh
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.1
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !36
  %i.ll = zext nneg i32 %i.li to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lk, i8 0, i64 %i.ll, i1 false)
  %indvars.iv.next38.i269.2 = or disjoint i64 %indvars.iv37.i268, 3 ; 2 uses
  %i.lm = trunc nuw i64 %indvars.iv.next38.i269.2 to i32
  %i.ln = sub nuw i32 %spec.select, %i.lm
  %i.lo = shl nuw nsw i32 %i.ln, 1
  %i.lp = shl nuw i32 1, %i.lo
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next38.i269.2
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !36
  %i.ls = zext nneg i32 %i.lp to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lr, i8 0, i64 %i.ls, i1 false)
  %indvars.iv.next38.i269.3 = add nuw nsw i64 %indvars.iv37.i268, 4 ; 2 uses
  %niter735.next.3 = add i64 %niter735, 4         ; 2 uses
  %niter735.ncmp.3 = icmp eq i64 %niter735.next.3, %unroll_iter734
  br i1 %niter735.ncmp.3, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, label %bb.ah, !llvm.loop !1

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa: ; preds = %bb.ah
  %lcmp.mod732.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod732.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %.epil.preheader729

.epil.preheader729:                               ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa, %.lr.ph29.i266
  %indvars.iv37.i268.epil.init = phi i64 [ 0, %.lr.ph29.i266 ], [ %indvars.iv.next38.i269.3, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa ]
  %lcmp.mod733 = icmp ne i64 %xtraiter730, 0
  call void @llvm.assume(i1 %lcmp.mod733)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.epil.preheader729
  %indvars.iv37.i268.epil = phi i64 [ %indvars.iv37.i268.epil.init, %.epil.preheader729 ], [ %indvars.iv.next38.i269.epil, %bb.ai ] ; 3 uses
  %epil.iter731 = phi i64 [ 0, %.epil.preheader729 ], [ %epil.iter731.next, %bb.ai ]
  %i.lt = trunc nuw i64 %indvars.iv37.i268.epil to i32
  %i.lu = sub nuw i32 %spec.select, %i.lt
  %i.lv = shl nuw nsw i32 %i.lu, 1
  %i.lw = shl nuw i32 1, %i.lv
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv37.i268.epil
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !36
  %i.lz = zext nneg i32 %i.lw to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ly, i8 0, i64 %i.lz, i1 false)
  %indvars.iv.next38.i269.epil = add nuw nsw i64 %indvars.iv37.i268.epil, 1
  %epil.iter731.next = add i64 %epil.iter731, 1   ; 2 uses
  %epil.iter731.cmp.not = icmp eq i64 %epil.iter731.next, %xtraiter730
  br i1 %epil.iter731.cmp.not, label %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276, label %bb.ai, !llvm.loop !135

_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276: ; preds = %bb.ai, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276.unr-lcssa
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %wide.trip.count40.i
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !36
  store i32 %i.dv, ptr %i.bw, align 8, !tbaa !43
  store i8 0, ptr %i.mb, align 1, !tbaa !41
  %i.mc = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.md = getelementptr inbounds nuw [120 x i8], ptr %i.mc, i64 %indvars.iv557
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 56
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !44
  %i.mg = load i32, ptr %i.cb, align 8, !tbaa !32 ; 2 uses
  %i.mh = load i32, ptr %i.ce, align 4, !tbaa !33 ; 2 uses
  %.not541 = icmp eq i32 %i.mh, 0
  br i1 %.not541, label %._crit_edge525.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %.not542 = icmp eq i32 %i.mg, 0
  br i1 %.not542, label %._crit_edge525.split, label %.preheader480.lr.ph

._crit_edge525.split:                             ; preds = %._crit_edge, %.lr.ph, %_ZN4ojph5local8tag_tree4initEPhPjjNS_4sizeEi.exit276
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  br label %bb.dm

.preheader480.lr.ph:                              ; preds = %.lr.ph, %._crit_edge
  %.0210524 = phi i32 [ %i.mu, %._crit_edge ], [ 0, %.lr.ph ] ; 5 uses
  %i.mj = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.mk = getelementptr inbounds nuw [120 x i8], ptr %i.mj, i64 %indvars.iv557
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 104
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !45
  %i.mn = load i32, ptr %i.ca, align 8, !tbaa !47
  %i.mo = load i32, ptr %i.mi, align 4, !tbaa !46
  %i.mp = add i32 %i.mo, %.0210524
  %i.mq = mul i32 %i.mp, %i.mf
  %i.mr = add i32 %i.mq, %i.mn
  %i.ms = zext i32 %i.mr to i64
  %i.mt = getelementptr inbounds nuw [32 x i8], ptr %i.mm, i64 %i.ms
  br label %.preheader480

.preheader480:                                    ; preds = %.preheader480.lr.ph, %.thread447
  %.0208522 = phi i32 [ 0, %.preheader480.lr.ph ], [ %i.aap, %.thread447 ] ; 4 uses
  %.0209521 = phi ptr [ %i.mt, %.preheader480.lr.ph ], [ %i.aaq, %.thread447 ] ; 7 uses
  br label %bb.aj

._crit_edge:                                      ; preds = %.thread447
  %i.mu = add nuw i32 %.0210524, 1                ; 2 uses
  %exitcond556.not = icmp eq i32 %i.mu, %i.mh
  br i1 %exitcond556.not, label %._crit_edge525.split, label %.preheader480.lr.ph, !llvm.loop !136

bb.aj:                                            ; preds = %.preheader480, %.thread443
  %indvars.iv = phi i64 [ %wide.trip.count40.i, %.preheader480 ], [ %indvars.iv.next, %.thread443 ] ; 2 uses
  %i.mv = trunc nuw i64 %indvars.iv to i32
  %i.mw = add nsw i32 %i.mv, -1                   ; 7 uses
  %i.mx = lshr i32 %.0208522, %i.mw               ; 2 uses
  %i.my = lshr i32 %.0210524, %i.mw               ; 2 uses
  %i.mz = zext i32 %i.mw to i64                   ; 2 uses
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.mz
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !36
  %notmask.i278 = shl nsw i32 -1, %i.mw
  %i.nc = xor i32 %notmask.i278, -1               ; 2 uses
  %i.nd = add i32 %i.ec, %i.nc
  %i.ne = lshr i32 %i.nd, %i.mw
  %i.nf = mul i32 %i.ne, %i.my
  %i.ng = add i32 %i.nf, %i.mx
  %i.nh = zext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nh ; 2 uses
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !41
  %i.nk = icmp eq i8 %i.nj, 1
  br i1 %i.nk, label %.thread447, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.mz
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !36
  %i.nn = add i32 %i.gg, %i.nc
  %i.no = lshr i32 %i.nn, %i.mw
  %i.np = mul i32 %i.no, %i.my
  %i.nq = add i32 %i.np, %i.mx
  %i.nr = zext i32 %i.nq to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nm, i64 %i.nr ; 2 uses
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !41
  %i.nu = icmp eq i8 %i.nt, 0
  br i1 %i.nu, label %bb.al, label %.thread443

bb.al:                                            ; preds = %bb.ak
  %i.nv = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.nw = icmp eq i32 %i.nv, 0
  br i1 %i.nw, label %bb.am, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280: ; preds = %bb.al
  %.pre.i282 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.nx = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i284 = icmp eq i32 %i.nx, 0
  br i1 %.not.i.not.i284, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #9
  store i32 0, ptr %i.k, align 4, !tbaa !35
  %i.ny = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !57
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load ptr, ptr %i.oa, align 8
  %i.oc = call noundef i64 %i.ob(ptr noundef nonnull align 8 dereferenceable(8) %i.ny, ptr noundef nonnull %i.k, i64 noundef 1), !inline_history !123
  %.not12.i.i285 = icmp eq i64 %i.oc, 1
  br i1 %.not12.i.i285, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.od = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.od, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.od, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.oe = load i32, ptr %i.k, align 4, !tbaa !35  ; 3 uses
  store i32 %i.oe, ptr %i.r, align 8, !tbaa !63
  %i.of = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i286 = sub nuw nsw i8 8, %i.of
  %i.og = zext nneg i8 %narrow13.i.i286 to i32
  %i.oh = icmp eq i32 %i.oe, 255
  %i.oi = zext i1 %i.oh to i8
  store i8 %i.oi, ptr %i.s, align 8, !tbaa !64
  %i.oj = load i32, ptr %i.q, align 4, !tbaa !62
  %i.ok = add i32 %i.oj, -1
  store i32 %i.ok, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #9
  br label %bb.ar

bb.aq:                                            ; preds = %bb.am
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.ol = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i287 = sub nuw nsw i8 8, %i.ol
  %i.om = zext nneg i8 %narrow.i.i287 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.on = add nsw i32 %i.om, -1
  store i32 %i.on, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.oo = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str, ptr %i.oo, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.oo, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ar:                                            ; preds = %bb.ap, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280
  %.ph = phi i32 [ %i.og, %bb.ap ], [ %i.nv, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %.ph438 = phi i32 [ %i.oe, %bb.ap ], [ %.pre.i282, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i280 ]
  %i.op = add nsw i32 %.ph, -1                    ; 2 uses
  store i32 %i.op, ptr %i.p, align 4, !tbaa !60
  %i.oq = lshr i32 %.ph438, %i.op                 ; 2 uses
  %14 = trunc i32 %i.oq to i1
  %i.or = trunc i32 %i.oq to i8
  %i.os = and i8 %i.or, 1
  %i.ot = xor i8 %i.os, 1
  store i8 %i.ot, ptr %i.ni, align 1, !tbaa !41
  store i8 1, ptr %i.ns, align 1, !tbaa !41
  br i1 %14, label %.thread443, label %.thread447

.thread443:                                       ; preds = %bb.ak, %bb.ar
  %.not218 = icmp eq i32 %i.mw, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %.not218, label %.preheader479, label %bb.aj, !llvm.loop !137

bb.as:                                            ; preds = %bb.ba
  %i.ou = getelementptr inbounds nuw i8, ptr %.0209521, i64 12
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !152
  %i.ow = icmp ugt i32 %.2202, %i.ov
  br i1 %i.ow, label %bb.bb, label %bb.bc

.preheader479:                                    ; preds = %.thread443, %bb.ba
  %indvars.iv554 = phi i64 [ %indvars.iv.next555, %bb.ba ], [ %wide.trip.count40.i, %.thread443 ] ; 3 uses
  %indvars.iv.next555 = add nsw i64 %indvars.iv554, -1 ; 5 uses
  %i.ox = trunc nuw i64 %indvars.iv554 to i32     ; 4 uses
  %i.oy = lshr i32 %.0208522, %i.ox
  %i.oz = lshr i32 %.0210524, %i.ox
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv554
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !36
  %notmask.i291 = shl nsw i32 -1, %i.ox
  %i.pc = xor i32 %notmask.i291, -1
  %i.pd = add i32 %i.ij, %i.pc
  %i.pe = lshr i32 %i.pd, %i.ox
  %i.pf = mul i32 %i.pe, %i.oz
  %i.pg = add i32 %i.pf, %i.oy
  %i.ph = zext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 %i.ph
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !41
  %i.pk = zext i8 %i.pj to i32                    ; 2 uses
  %i.pl = trunc nuw i64 %indvars.iv.next555 to i32 ; 5 uses
  %i.pm = lshr i32 %.0208522, %i.pl               ; 2 uses
  %i.pn = lshr i32 %.0210524, %i.pl               ; 2 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv.next555
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !36
  %notmask.i292 = shl nsw i32 -1, %i.pl
  %i.pq = xor i32 %notmask.i292, -1               ; 2 uses
  %i.pr = add i32 %i.kn, %i.pq
  %i.ps = lshr i32 %i.pr, %i.pl
  %i.pt = mul i32 %i.ps, %i.pn
  %i.pu = add i32 %i.pt, %i.pm
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pv ; 2 uses
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !41
  %i.py = icmp eq i8 %i.px, 0
  br i1 %i.py, label %.preheader.preheader, label %bb.ba

.preheader.preheader:                             ; preds = %.preheader479
  %.pre573 = load i32, ptr %i.p, align 4, !tbaa !60
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ay
  %i.pz = phi i32 [ %i.qt, %bb.ay ], [ %.pre573, %.preheader.preheader ] ; 2 uses
  %.1201518 = phi i32 [ %i.qw, %bb.ay ], [ %i.pk, %.preheader.preheader ]
  %i.qa = icmp eq i32 %i.pz, 0
  br i1 %i.qa, label %bb.at, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293: ; preds = %.preheader
  %.pre.i295 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.ay

bb.at:                                            ; preds = %.preheader
  %i.qb = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i297 = icmp eq i32 %i.qb, 0
  br i1 %.not.i.not.i297, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store i32 0, ptr %i.j, align 4, !tbaa !35
  %i.qc = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !57
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qf = load ptr, ptr %i.qe, align 8
  %i.qg = call noundef i64 %i.qf(ptr noundef nonnull align 8 dereferenceable(8) %i.qc, ptr noundef nonnull %i.j, i64 noundef 1), !inline_history !123
  %.not12.i.i298 = icmp eq i64 %i.qg, 1
  br i1 %.not12.i.i298, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.qh = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.qh, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.qh, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.qi = load i32, ptr %i.j, align 4, !tbaa !35  ; 3 uses
  store i32 %i.qi, ptr %i.r, align 8, !tbaa !63
  %i.qj = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i299 = sub nuw nsw i8 8, %i.qj
  %i.qk = zext nneg i8 %narrow13.i.i299 to i32
  %i.ql = icmp eq i32 %i.qi, 255
  %i.qm = zext i1 %i.ql to i8
  store i8 %i.qm, ptr %i.s, align 8, !tbaa !64
  %i.qn = load i32, ptr %i.q, align 4, !tbaa !62
  %i.qo = add i32 %i.qn, -1
  store i32 %i.qo, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.qp = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i300 = sub nuw nsw i8 8, %i.qp
  %i.qq = zext nneg i8 %narrow.i.i300 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.qr = add nsw i32 %i.qq, -1
  store i32 %i.qr, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.qs = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.1, ptr %i.qs, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.qs, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.ay:                                            ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293, %bb.aw
  %.ph449.a = phi i32 [ %i.qk, %bb.aw ], [ %i.pz, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %.ph450.a = phi i32 [ %i.qi, %bb.aw ], [ %.pre.i295, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i293 ]
  %i.qt = add nsw i32 %.ph449.a, -1               ; 3 uses
  store i32 %i.qt, ptr %i.p, align 4, !tbaa !60
  %i.qu = lshr i32 %.ph450.a, %i.qt
  %i.qv = and i32 %i.qu, 1                        ; 2 uses
  %reass.sub = add i32 %.1201518, 1
  %i.qw = sub i32 %reass.sub, %i.qv               ; 3 uses
  %i.qx = icmp eq i32 %i.qv, 0
  br i1 %i.qx, label %.preheader, label %bb.az, !llvm.loop !138

bb.az:                                            ; preds = %bb.ay
  %i.qy = trunc i32 %i.qw to i8
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next555
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !36
  %i.rb = add i32 %i.ij, %i.pq
  %i.rc = lshr i32 %i.rb, %i.pl
  %i.rd = mul i32 %i.rc, %i.pn
  %i.re = add i32 %i.rd, %i.pm
  %i.rf = zext i32 %i.re to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 %i.rf
  store i8 %i.qy, ptr %i.rg, align 1, !tbaa !41
  store i8 1, ptr %i.pw, align 1, !tbaa !41
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %.preheader479
  %.2202 = phi i32 [ %i.qw, %bb.az ], [ %i.pk, %.preheader479 ] ; 2 uses
  %.not219 = icmp eq i64 %indvars.iv.next555, 0
  br i1 %.not219, label %bb.as, label %.preheader479, !llvm.loop !139

bb.bb:                                            ; preds = %bb.as
  %i.rh = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.2, ptr %i.rh, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.rh, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bc:                                            ; preds = %bb.as
  %i.ri = getelementptr inbounds nuw i8, ptr %.0209521, i64 16 ; 3 uses
  store i32 %.2202, ptr %i.ri, align 8, !tbaa !49
  %i.rj = load i32, ptr %i.p, align 4, !tbaa !60  ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 0
  br i1 %i.rk, label %bb.bd, label %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304

._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304: ; preds = %bb.bc
  %.pre.i306 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %bb.bi

bb.bd:                                            ; preds = %bb.bc
  %i.rl = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i308 = icmp eq i32 %i.rl, 0
  br i1 %.not.i.not.i308, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store i32 0, ptr %i.i, align 4, !tbaa !35
  %i.rm = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !57
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8
  %i.rq = call noundef i64 %i.rp(ptr noundef nonnull align 8 dereferenceable(8) %i.rm, ptr noundef nonnull %i.i, i64 noundef 1), !inline_history !123
  %.not12.i.i309 = icmp eq i64 %i.rq, 1
  br i1 %.not12.i.i309, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.rr = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.rr, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.rr, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.rs = load i32, ptr %i.i, align 4, !tbaa !35  ; 3 uses
  store i32 %i.rs, ptr %i.r, align 8, !tbaa !63
  %i.rt = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i310 = sub nuw nsw i8 8, %i.rt
  %i.ru = zext nneg i8 %narrow13.i.i310 to i32
  %i.rv = icmp eq i32 %i.rs, 255
  %i.rw = zext i1 %i.rv to i8
  store i8 %i.rw, ptr %i.s, align 8, !tbaa !64
  %i.rx = load i32, ptr %i.q, align 4, !tbaa !62
  %i.ry = add i32 %i.rx, -1
  store i32 %i.ry, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.rz = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i311 = sub nuw nsw i8 8, %i.rz
  %i.sa = zext nneg i8 %narrow.i.i311 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  %i.sb = add nsw i32 %i.sa, -1
  store i32 %i.sb, ptr %i.p, align 4, !tbaa !60
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.sc = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.3, ptr %i.sc, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.sc, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.bi:                                            ; preds = %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304, %bb.bg
  %.ph452.a = phi i32 [ %i.ru, %bb.bg ], [ %i.rj, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304 ]
  %.pre.i315 = phi i32 [ %i.rs, %bb.bg ], [ %.pre.i306, %._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit_crit_edge.i304 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ojph5local8precinct5parseEiPjPNS_21mem_elastic_allocatorERjPNS_11infile_baseEb:bb.a
  %i.ye = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !57
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 16
  %i.yh = load ptr, ptr %i.yg, align 8
  %i.yi = call noundef i64 %i.yh(ptr noundef nonnull align 8 dereferenceable(8) %i.ye, ptr noundef nonnull %i.c, i64 noundef 1), !inline_history !140
  %.not12.i.i379 = icmp eq i64 %i.yi, 1
  br i1 %.not12.i.i379, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yj = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.yj, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.yj, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.cw:                                            ; preds = %bb.cu
  %i.yk = load i32, ptr %i.c, align 4, !tbaa !35  ; 3 uses
  store i32 %i.yk, ptr %i.r, align 8, !tbaa !63
  %i.yl = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i380 = sub nuw nsw i8 8, %i.yl
  %i.ym = zext nneg i8 %narrow13.i.i380 to i32
  %i.yn = icmp eq i32 %i.yk, 255
  %i.yo = zext i1 %i.yn to i8
  store i8 %i.yo, ptr %i.s, align 8, !tbaa !64
  %i.yp = load i32, ptr %i.q, align 4, !tbaa !62
  %i.yq = add i32 %i.yp, -1
  store i32 %i.yq, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i372

bb.cx:                                            ; preds = %bb.ct
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.yr = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i381 = sub nuw nsw i8 8, %i.yr
  %i.ys = zext nneg i8 %narrow.i.i381 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i372

_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i372: ; preds = %bb.cx, %bb.cw, %.lr.ph.i369
  %i.yt = phi i32 [ %i.ya, %.lr.ph.i369 ], [ %i.yk, %bb.cw ], [ 0, %bb.cx ] ; 2 uses
  %i.yu = phi i32 [ %i.yb, %.lr.ph.i369 ], [ %i.ym, %bb.cw ], [ %i.ys, %bb.cx ] ; 2 uses
  %.1.i373 = phi i1 [ %.023.i370, %.lr.ph.i369 ], [ true, %bb.cw ], [ false, %bb.cx ] ; 2 uses
  %..018.i374 = call i32 @llvm.smin.i32(i32 %i.yu, i32 %.01822.i371) ; 4 uses
  %i.yv = shl i32 %.4435, %..018.i374
  %i.yw = sub nsw i32 %i.yu, %..018.i374          ; 3 uses
  store i32 %i.yw, ptr %i.p, align 4, !tbaa !60
  %i.yx = sub nsw i32 %.01822.i371, %..018.i374   ; 2 uses
  %i.yy = lshr i32 %i.yt, %i.yw
  %notmask.i375 = shl nsw i32 -1, %..018.i374
  %i.yz = xor i32 %notmask.i375, -1
  %i.za = and i32 %i.yy, %i.yz
  %i.zb = or i32 %i.za, %i.yv                     ; 4 uses
  %.not.i376 = icmp eq i32 %i.yx, 0
  br i1 %.not.i376, label %_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit382, label %.lr.ph.i369, !llvm.loop !141

_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit382: ; preds = %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i372
  br i1 %.1.i373, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit382
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.zc = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.9, ptr %i.zc, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.zc, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.cz:                                            ; preds = %_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit382
  %i.zd = icmp ult i32 %i.zb, 2
  br i1 %i.zd, label %.thread464, label %bb.da

.thread464:                                       ; preds = %bb.cs, %bb.cz
  %i.ze = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.10, ptr %i.ze, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.ze, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.da:                                            ; preds = %bb.cz
  %i.zf = icmp ugt i32 %i.zb, 65534
  br i1 %i.zf, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.zg = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.11, ptr %i.zg, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.zg, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.dc:                                            ; preds = %bb.da
  store i32 %i.zb, ptr %.0209521, align 8, !tbaa !35
  %i.zh = load i32, ptr %i.wq, align 8, !tbaa !55 ; 2 uses
  %i.zi = icmp ugt i32 %i.zh, 1
  br i1 %i.zi, label %bb.dd, label %.thread447

bb.dd:                                            ; preds = %bb.dc
  %.not223 = icmp ne i32 %i.zh, 2
  %i.zj = zext i1 %.not223 to i32
  %i.zk = add nsw i32 %i.xv, %i.zj                ; 2 uses
  %.not21.i383 = icmp eq i32 %i.zk, 0
  br i1 %.not21.i383, label %.thread469, label %.lr.ph.i384.preheader

.lr.ph.i384.preheader:                            ; preds = %bb.dd
  %.pre575 = load i32, ptr %i.p, align 4, !tbaa !60
  br label %.lr.ph.i384

.lr.ph.i384:                                      ; preds = %.lr.ph.i384.preheader, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387
  %i.zl = phi i32 [ %i.aag, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387 ], [ %.pre575, %.lr.ph.i384.preheader ] ; 2 uses
  %.6 = phi i32 [ %i.aal, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387 ], [ 0, %.lr.ph.i384.preheader ]
  %.023.i385 = phi i1 [ %.1.i388, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387 ], [ true, %.lr.ph.i384.preheader ]
  %.01822.i386 = phi i32 [ %i.aah, %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387 ], [ %i.zk, %.lr.ph.i384.preheader ] ; 2 uses
  %i.zm = icmp eq i32 %i.zl, 0
  br i1 %i.zm, label %bb.de, label %.lr.ph.i384._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387_crit_edge

.lr.ph.i384._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387_crit_edge: ; preds = %.lr.ph.i384
  %.pre576 = load i32, ptr %i.r, align 8, !tbaa !63
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387

bb.de:                                            ; preds = %.lr.ph.i384
  %i.zn = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i394 = icmp eq i32 %i.zn, 0
  br i1 %.not.i.not.i394, label %bb.di, label %bb.df

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 0, ptr %i.b, align 4, !tbaa !35
  %i.zo = load ptr, ptr %7, align 8, !tbaa !61    ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !57
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8
  %i.zs = call noundef i64 %i.zr(ptr noundef nonnull align 8 dereferenceable(8) %i.zo, ptr noundef nonnull %i.b, i64 noundef 1), !inline_history !140
  %.not12.i.i395 = icmp eq i64 %i.zs, 1
  br i1 %.not12.i.i395, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.zt = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.zt, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.zt, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.zu = load i32, ptr %i.b, align 4, !tbaa !35  ; 3 uses
  store i32 %i.zu, ptr %i.r, align 8, !tbaa !63
  %i.zv = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i396 = sub nuw nsw i8 8, %i.zv
  %i.zw = zext nneg i8 %narrow13.i.i396 to i32
  %i.zx = icmp eq i32 %i.zu, 255
  %i.zy = zext i1 %i.zx to i8
  store i8 %i.zy, ptr %i.s, align 8, !tbaa !64
  %i.zz = load i32, ptr %i.q, align 4, !tbaa !62
  %i.aaa = add i32 %i.zz, -1
  store i32 %i.aaa, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387

bb.di:                                            ; preds = %bb.de
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.aab = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i397 = sub nuw nsw i8 8, %i.aab
  %i.aac = zext nneg i8 %narrow.i.i397 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  br label %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387

_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387: ; preds = %.lr.ph.i384._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387_crit_edge, %bb.di, %bb.dh
  %i.aad = phi i32 [ %.pre576, %.lr.ph.i384._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387_crit_edge ], [ %i.zu, %bb.dh ], [ 0, %bb.di ]
  %i.aae = phi i32 [ %i.zl, %.lr.ph.i384._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387_crit_edge ], [ %i.zw, %bb.dh ], [ %i.aac, %bb.di ] ; 2 uses
  %.1.i388 = phi i1 [ %.023.i385, %.lr.ph.i384._ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387_crit_edge ], [ true, %bb.dh ], [ false, %bb.di ] ; 2 uses
  %..018.i389 = call i32 @llvm.smin.i32(i32 %i.aae, i32 %.01822.i386) ; 4 uses
  %i.aaf = shl i32 %.6, %..018.i389
  %i.aag = sub nsw i32 %i.aae, %..018.i389        ; 3 uses
  store i32 %i.aag, ptr %i.p, align 4, !tbaa !60
  %i.aah = sub nsw i32 %.01822.i386, %..018.i389  ; 2 uses
  %i.aai = lshr i32 %i.aad, %i.aag
  %notmask.i390 = shl nsw i32 -1, %..018.i389
  %i.aaj = xor i32 %notmask.i390, -1
  %i.aak = and i32 %i.aai, %i.aaj
  %i.aal = or i32 %i.aak, %i.aaf                  ; 3 uses
  %.not.i391 = icmp eq i32 %i.aah, 0
  br i1 %.not.i391, label %_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit398, label %.lr.ph.i384, !llvm.loop !141

_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit398: ; preds = %_ZN4ojph5localL7bb_readEPNS0_12bit_read_bufE.exit.i387
  br i1 %.1.i388, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit398
  store i32 0, ptr %4, align 4, !tbaa !35
  %i.aam = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.12, ptr %i.aam, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.aam, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.dk:                                            ; preds = %_ZN4ojph5localL12bb_read_bitsEPNS0_12bit_read_bufEiRj.exit398
  %i.aan = icmp ugt i32 %i.aal, 2046
  br i1 %i.aan, label %bb.dl, label %.thread469

bb.dl:                                            ; preds = %bb.dk
  %i.aao = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.13, ptr %i.aao, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.aao, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

.thread469:                                       ; preds = %bb.dd, %bb.dk
  %.7468471 = phi i32 [ %i.aal, %bb.dk ], [ 0, %bb.dd ]
  store i32 %.7468471, ptr %i.wx, align 4, !tbaa !35
  br label %.thread447

.thread447:                                       ; preds = %bb.ar, %bb.aj, %bb.dc, %.thread469
  %i.aap = add nuw i32 %.0208522, 1               ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0209521, i64 32
  %exitcond.not = icmp eq i32 %i.aap, %i.mg
  br i1 %exitcond.not, label %._crit_edge, label %.preheader480, !llvm.loop !143

bb.dm:                                            ; preds = %bb.r, %bb.s, %bb.q, %._crit_edge525.split
  %.3 = phi i8 [ %.0527, %bb.q ], [ %.0527, %bb.r ], [ %.0527, %bb.s ], [ 0, %._crit_edge525.split ] ; 2 uses
  %indvars.iv.next558 = add nuw nsw i64 %indvars.iv557, 1 ; 2 uses
  %exitcond559 = icmp eq i64 %indvars.iv.next558, 4
  br i1 %exitcond559, label %bb.do, label %bb.q, !llvm.loop !144

bb.dn:                                            ; preds = %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.aas = load i8, ptr %i.aar, align 1, !tbaa !153, !range !30, !noundef !31
  %i.aat = trunc nuw i8 %i.aas to i1
  call fastcc void @_ZN4ojph5localL12bb_terminateEPNS0_12bit_read_bufEb(ptr noundef %7, i1 noundef zeroext %i.aat)
  br label %.split540.us

bb.do:                                            ; preds = %bb.dm
  %15 = trunc nuw i8 %.3 to i1
  br i1 %15, label %bb.dp, label %bb.dv

bb.dp:                                            ; preds = %bb.do
  %i.aau = load i32, ptr %i.p, align 4, !tbaa !60 ; 2 uses
  %i.aav = icmp eq i32 %i.aau, 0
  br i1 %i.aav, label %bb.dq, label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit408

bb.dq:                                            ; preds = %bb.dp
  %i.aaw = load i32, ptr %i.q, align 4, !tbaa !62
  %.not.i.not.i404 = icmp eq i32 %i.aaw, 0
  br i1 %.not.i.not.i404, label %bb.du, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !35
  %i.aax = load ptr, ptr %7, align 8, !tbaa !61   ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !57
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8
  %i.abb = call noundef i64 %i.aba(ptr noundef nonnull align 8 dereferenceable(8) %i.aax, ptr noundef nonnull %i.a, i64 noundef 1), !inline_history !123
  %.not12.i.i405 = icmp eq i64 %i.abb, 1
  br i1 %.not12.i.i405, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.abc = call ptr @__cxa_allocate_exception(i64 8) #9 ; 2 uses
  store ptr @.str.14, ptr %i.abc, align 16, !tbaa !36
  call void @__cxa_throw(ptr nonnull %i.abc, ptr nonnull @_ZTIPKc, ptr null) #10
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.abd = load i32, ptr %i.a, align 4, !tbaa !35 ; 2 uses
  store i32 %i.abd, ptr %i.r, align 8, !tbaa !63
  %i.abe = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow13.i.i406 = sub nuw nsw i8 8, %i.abe
  %i.abf = zext nneg i8 %narrow13.i.i406 to i32
  %i.abg = icmp eq i32 %i.abd, 255
  %i.abh = zext i1 %i.abg to i8
  store i8 %i.abh, ptr %i.s, align 8, !tbaa !64
  %i.abi = load i32, ptr %i.q, align 4, !tbaa !62
  %i.abj = add i32 %i.abi, -1
  store i32 %i.abj, ptr %i.q, align 4, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit408

bb.du:                                            ; preds = %bb.dq
  store i32 0, ptr %i.r, align 8, !tbaa !63
  %i.abk = load i8, ptr %i.s, align 8, !tbaa !64, !range !30, !noundef !31
  %narrow.i.i407 = sub nuw nsw i8 8, %i.abk
  %i.abl = zext nneg i8 %narrow.i.i407 to i32
  store i8 0, ptr %i.s, align 8, !tbaa !64
  br label %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit408

_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit408: ; preds = %bb.dp, %bb.dt, %bb.du
  %i.abm = phi i32 [ %i.abl, %bb.du ], [ %i.abf, %bb.dt ], [ %i.aau, %bb.dp ]
  %i.abn = add nsw i32 %i.abm, -1
  store i32 %i.abn, ptr %i.p, align 4, !tbaa !60
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN4ojph5localL11bb_read_bitEPNS0_12bit_read_bufERj.exit408, %bb.do
  %i.abo = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !153, !range !30, !noundef !31
  %i.abq = trunc nuw i8 %i.abp to i1
  call fastcc void @_ZN4ojph5localL12bb_terminateEPNS0_12bit_read_bufEb(ptr noundef %7, i1 noundef zeroext %i.abq)
  br i1 %6, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.dv
  %i.abr = load ptr, ptr %i.bk, align 8, !tbaa !19 ; 5 uses
  %i.abs = load i8, ptr %i.abr, align 8, !tbaa !29, !range !30, !noundef !31
  %i.abt = trunc nuw i8 %i.abs to i1
  br i1 %i.abt, label %.loopexit.us, label %bb.dw

bb.dw:                                            ; preds = %.split.us.preheader
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abr, i64 56
  %i.abv = load i32, ptr %i.abu, align 8, !tbaa !44
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !32 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.abz = load i32, ptr %i.aby, align 4, !tbaa !33 ; 2 uses
  %.not545 = icmp eq i32 %i.abz, 0
  br i1 %.not545, label %.loopexit.us, label %.lr.ph535.us

.lr.ph535.us:                                     ; preds = %bb.dw
  %i.aca = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.not546 = icmp eq i32 %i.abx, 0
  br i1 %.not546, label %.loopexit.us, label %.lr.ph531.us.us

.lr.ph531.us.us:                                  ; preds = %.lr.ph535.us, %._crit_edge532.split.us.us.us
  %.0195533.us.us = phi i32 [ %i.adj, %._crit_edge532.split.us.us.us ], [ 0, %.lr.ph535.us ] ; 2 uses
  %i.acb = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 104
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !45
  %i.ace = load i32, ptr %i.bl, align 8, !tbaa !47
  %i.acf = load i32, ptr %i.aca, align 4, !tbaa !46
  %i.acg = add i32 %i.acf, %.0195533.us.us
  %i.ach = mul i32 %i.acg, %i.abv
  %i.aci = add i32 %i.ach, %i.ace
  %i.acj = zext i32 %i.aci to i64
  %i.ack = getelementptr inbounds nuw [32 x i8], ptr %i.acd, i64 %i.acj
  br label %bb.dx

bb.dx:                                            ; preds = %bb.eb, %.lr.ph531.us.us
  %.0193529.us.us.us = phi i32 [ 0, %.lr.ph531.us.us ], [ %i.adh, %bb.eb ]
  %.0194528.us.us.us = phi ptr [ %i.ack, %.lr.ph531.us.us ], [ %i.adi, %bb.eb ] ; 5 uses
  %i.acl = load i32, ptr %.0194528.us.us.us, align 8, !tbaa !35
  %i.acm = getelementptr inbounds nuw i8, ptr %.0194528.us.us.us, i64 4 ; 3 uses
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !35
  %i.aco = add i32 %i.acn, %i.acl                 ; 2 uses
  %i.acp = load i32, ptr %4, align 4, !tbaa !35
  %.not215.us.us.us = icmp eq i32 %i.acp, 0
  br i1 %.not215.us.us.us, label %bb.ea, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.not216.us.us.us = icmp eq i32 %i.aco, 0
  br i1 %.not216.us.us.us, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.acq = load ptr, ptr %5, align 8, !tbaa !57
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 32
  %i.acs = load ptr, ptr %i.acr, align 8
  %i.act = call noundef i64 %i.acs(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.acu = load i32, ptr %i.q, align 4, !tbaa !62
  %i.acv = call i32 @llvm.umin.i32(i32 %i.aco, i32 %i.acu)
  %i.acw = zext i32 %i.acv to i64
  %i.acx = load ptr, ptr %5, align 8, !tbaa !57
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 24
  %i.acz = load ptr, ptr %i.acy, align 8
  %i.ada = call noundef i32 %i.acz(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.acw, i32 noundef 1) ; 0 uses
  %i.adb = load ptr, ptr %5, align 8, !tbaa !57
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 32
  %i.add = load ptr, ptr %i.adc, align 8
  %i.ade = call noundef i64 %i.add(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.neg.us.us.us = sub i64 %i.act, %i.ade
  %.neg217.us.us.us = trunc i64 %.neg.us.us.us to i32
  store i32 0, ptr %i.acm, align 4, !tbaa !35
  store i32 0, ptr %.0194528.us.us.us, align 8, !tbaa !35
  %i.adf = load i32, ptr %i.q, align 4, !tbaa !62
  %i.adg = add i32 %i.adf, %.neg217.us.us.us
  store i32 %i.adg, ptr %i.q, align 4, !tbaa !62
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx
  store i32 0, ptr %i.acm, align 4, !tbaa !35
  store i32 0, ptr %.0194528.us.us.us, align 8, !tbaa !35
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.dy
  %i.adh = add nuw i32 %.0193529.us.us.us, 1      ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.0194528.us.us.us, i64 32
  %exitcond566.not = icmp eq i32 %i.adh, %i.abx
  br i1 %exitcond566.not, label %._crit_edge532.split.us.us.us, label %bb.dx, !llvm.loop !145

._crit_edge532.split.us.us.us:                    ; preds = %bb.eb
  %i.adj = add nuw i32 %.0195533.us.us, 1         ; 2 uses
  %exitcond567.not = icmp eq i32 %i.adj, %i.abz
  br i1 %exitcond567.not, label %.loopexit.us.loopexit, label %.lr.ph531.us.us, !llvm.loop !146

.loopexit.us.loopexit:                            ; preds = %._crit_edge532.split.us.us.us
  %.pre577 = load ptr, ptr %i.bk, align 8, !tbaa !19
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.loopexit.us.loopexit, %bb.dw, %.lr.ph535.us, %.split.us.preheader
  %i.adk = phi ptr [ %.pre577, %.loopexit.us.loopexit ], [ %i.abr, %bb.dw ], [ %i.abr, %.lr.ph535.us ], [ %i.abr, %.split.us.preheader ] ; 5 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 120
  %i.adm = load i8, ptr %i.adl, align 8, !tbaa !29, !range !30, !noundef !31
  %i.adn = trunc nuw i8 %i.adm to i1
  br i1 %i.adn, label %.loopexit.us.1, label %bb.ec

bb.ec:                                            ; preds = %.loopexit.us
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adk, i64 176
  %i.adp = load i32, ptr %i.ado, align 8, !tbaa !44
  %i.adq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.adr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ads = load i32, ptr %i.adr, align 8, !tbaa !32 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.adu = load i32, ptr %i.adt, align 4, !tbaa !33 ; 2 uses
  %.not545.1 = icmp eq i32 %i.adu, 0
  br i1 %.not545.1, label %.loopexit.us.1, label %.lr.ph535.us.1

.lr.ph535.us.1:                                   ; preds = %bb.ec
  %i.adv = getelementptr inbounds nuw i8, ptr %0, i64 36
  %.not546.1 = icmp eq i32 %i.ads, 0
  br i1 %.not546.1, label %.loopexit.us.1, label %.lr.ph531.us.us.1

.lr.ph531.us.us.1:                                ; preds = %.lr.ph535.us.1, %._crit_edge532.split.us.us.us.1
  %.0195533.us.us.1 = phi i32 [ %i.afe, %._crit_edge532.split.us.us.us.1 ], [ 0, %.lr.ph535.us.1 ] ; 2 uses
  %i.adw = load ptr, ptr %i.bk, align 8, !tbaa !19
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 224
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !45
  %i.adz = load i32, ptr %i.adq, align 8, !tbaa !47
  %i.aea = load i32, ptr %i.adv, align 4, !tbaa !46
  %i.aeb = add i32 %i.aea, %.0195533.us.us.1
  %i.aec = mul i32 %i.aeb, %i.adp
  %i.aed = add i32 %i.aec, %i.adz
  %i.aee = zext i32 %i.aed to i64
  %i.aef = getelementptr inbounds nuw [32 x i8], ptr %i.ady, i64 %i.aee
  br label %bb.ed

bb.ed:                                            ; preds = %bb.eh, %.lr.ph531.us.us.1
  %.0193529.us.us.us.1 = phi i32 [ 0, %.lr.ph531.us.us.1 ], [ %i.afc, %bb.eh ]
  %.0194528.us.us.us.1 = phi ptr [ %i.aef, %.lr.ph531.us.us.1 ], [ %i.afd, %bb.eh ] ; 5 uses
  %i.aeg = load i32, ptr %.0194528.us.us.us.1, align 8, !tbaa !35
  %i.aeh = getelementptr inbounds nuw i8, ptr %.0194528.us.us.us.1, i64 4 ; 3 uses
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !35
  %i.aej = add i32 %i.aei, %i.aeg                 ; 2 uses
  %i.aek = load i32, ptr %4, align 4, !tbaa !35
  %.not215.us.us.us.1 = icmp eq i32 %i.aek, 0
  br i1 %.not215.us.us.us.1, label %bb.eg, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %.not216.us.us.us.1 = icmp eq i32 %i.aej, 0
  br i1 %.not216.us.us.us.1, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.ael = load ptr, ptr %5, align 8, !tbaa !57
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 32
  %i.aen = load ptr, ptr %i.aem, align 8
  %i.aeo = call noundef i64 %i.aen(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.aep = load i32, ptr %i.q, align 4, !tbaa !62
  %i.aeq = call i32 @llvm.umin.i32(i32 %i.aej, i32 %i.aep)
  %i.aer = zext i32 %i.aeq to i64
  %i.aes = load ptr, ptr %5, align 8, !tbaa !57
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 24
  %i.aeu = load ptr, ptr %i.aet, align 8
  %i.aev = call noundef i32 %i.aeu(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %i.aer, i32 noundef 1) ; 0 uses
  %i.aew = load ptr, ptr %5, align 8, !tbaa !57
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 32
  %i.aey = load ptr, ptr %i.aex, align 8
  %i.aez = call noundef i64 %i.aey(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %.neg.us.us.us.1 = sub i64 %i.aeo, %i.aez
  %.neg217.us.us.us.1 = trunc i64 %.neg.us.us.us.1 to i32
  store i32 0, ptr %i.aeh, align 4, !tbaa !35
  store i32 0, ptr %.0194528.us.us.us.1, align 8, !tbaa !35
  %i.afa = load i32, ptr %i.q, align 4, !tbaa !62
  %i.afb = add i32 %i.afa, %.neg217.us.us.us.1
  store i32 %i.afb, ptr %i.q, align 4, !tbaa !62
  br label %bb.eh

bb.eg:                                            ; preds = %bb.ed
  store i32 0, ptr %i.aeh, align 4, !tbaa !35
  store i32 0, ptr %.0194528.us.us.us.1, align 8, !tbaa !35
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.ee
  %i.afc = add nuw i32 %.0193529.us.us.us.1, 1    ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.0194528.us.us.us.1, i64 32
  %exitcond566.1.not = icmp eq i32 %i.afc, %i.ads
  br i1 %exitcond566.1.not, label %._crit_edge532.split.us.us.us.1, label %bb.ed, !llvm.loop !145

._crit_edge532.split.us.us.us.1:                  ; preds = %bb.eh
  %i.afe = add nuw i32 %.0195533.us.us.1, 1       ; 2 uses
  %exitcond567.1.not = icmp eq i32 %i.afe, %i.adu
  br i1 %exitcond567.1.not, label %.loopexit.us.loopexit.1, label %.lr.ph531.us.us.1, !llvm.loop !146

.loopexit.us.loopexit.1:                          ; preds = %._crit_edge532.split.us.us.us.1
  %.pre578 = load ptr, ptr %i.bk, align 8, !tbaa !19
  br label %.loopexit.us.1

.loopexit.us.1:                                   ; preds = %.loopexit.us.loopexit.1, %.lr.ph535.us.1, %bb.ec, %.loopexit.us
  %i.aff = phi ptr [ %.pre578, %.loopexit.us.loopexit.1 ], [ %i.adk, %.lr.ph535.us.1 ], [ %i.adk, %bb.ec ], [ %i.adk, %.loopexit.us ] ; 5 uses
end_hunk_1
