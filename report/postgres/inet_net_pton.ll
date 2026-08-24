Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/inet_net_pton?download=true
inline.NumInlined: 7
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pg_inet_net_pton:bb.a
  %i.ee = icmp eq i32 %.298.i, 47
  br i1 %i.ee, label %bb.al, label %.thread154.i

bb.al:                                            ; preds = %.loopexit168.i
  %i.ef = tail call ptr @__ctype_b_loc() #8
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %i.eh = load i8, ptr %.3114.i, align 1          ; 2 uses
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2
  %i.el = and i16 %i.ek, 2048
  %.not140.i = icmp ne i16 %i.el, 0
  %i.em = icmp ugt ptr %.3109.i, %2
  %or.cond146.i = select i1 %.not140.i, i1 %i.em, i1 false
  br i1 %or.cond146.i, label %.preheader.i15, label %.loopexit.sink.split.i

.preheader.i15:                                   ; preds = %bb.al, %bb.ao
  %.3114.pn.i = phi ptr [ %.4115.i, %bb.ao ], [ %.3114.i, %bb.al ]
  %.399.in.i = phi i8 [ %i.es, %bb.ao ], [ %i.eh, %bb.al ]
  %.0.i16 = phi i32 [ %i.er, %bb.ao ], [ 0, %bb.al ]
  %.399.i = sext i8 %.399.in.i to i32
  %.4115.i = getelementptr inbounds nuw i8, ptr %.3114.pn.i, i64 1 ; 2 uses
  %memchr141.i = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv4.digits, i32 %.399.i, i64 11)
  %i.en = ptrtoint ptr %memchr141.i to i64
  %i.eo = trunc i64 %i.en to i32
  %i.ep = sub i32 %i.eo, ptrtoint (ptr @inet_cidr_pton_ipv4.digits to i32) ; 2 uses
  %or.cond9.i = icmp ult i32 %i.ep, 10
  br i1 %or.cond9.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader.i15
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 180, ptr noundef nonnull @__PRETTY_FUNCTION__.inet_cidr_pton_ipv4) #9
  unreachable

bb.an:                                            ; preds = %.preheader.i15
  %i.eq = mul i32 %.0.i16, 10
  %i.er = add i32 %i.ep, %i.eq                    ; 4 uses
  %i.es = load i8, ptr %.4115.i, align 1          ; 3 uses
  %.not142.i = icmp eq i8 %i.es, 0
  br i1 %.not142.i, label %.critedge147.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.eg, i64 %i.et
  %i.ev = load i16, ptr %i.eu, align 2
  %i.ew = and i16 %i.ev, 2048
  %.not143.i = icmp eq i16 %i.ew, 0
  br i1 %.not143.i, label %.loopexit.sink.split.i, label %.preheader.i15, !llvm.loop !9

.critedge147.i:                                   ; preds = %bb.an
  %i.ex = icmp sgt i32 %i.er, 32
  br i1 %i.ex, label %.loopexit.sink.split.i, label %bb.ap

.thread154.i:                                     ; preds = %.loopexit168.i
  %.not144157.i = icmp ne i32 %.298.i, 0
  %i.ey = icmp eq ptr %.3109.i, %2
  %or.cond148158.i = select i1 %.not144157.i, i1 true, i1 %i.ey
  br i1 %or.cond148158.i, label %.loopexit.sink.split.i, label %.thread160.i

bb.ap:                                            ; preds = %.critedge147.i
  %i.ez = icmp eq i32 %i.er, -1
  br i1 %i.ez, label %.thread160.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.ap
  %.pre.i = ptrtoint ptr %2 to i64                ; 2 uses
  %.pre244.i = ptrtoint ptr %.3109.i to i64
  %.pre246.i = sub i64 %.pre244.i, %.pre.i
  %.pre248.i = shl i64 %.pre246.i, 3
  br label %bb.av

.thread160.i:                                     ; preds = %bb.ap, %.thread154.i
  %i.fa = load i8, ptr %2, align 1                ; 5 uses
  %i.fb = icmp ugt i8 %i.fa, -17
  br i1 %i.fb, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.thread160.i
  %i.fc = icmp ugt i8 %i.fa, -33
  br i1 %i.fc, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fd = icmp ugt i8 %i.fa, -65
  br i1 %i.fd, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fe = icmp slt i8 %i.fa, 0
  %i.ff = select i1 %i.fe, i64 16, i64 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %.thread160.i
  %.2.i = phi i64 [ 24, %bb.ar ], [ 32, %.thread160.i ], [ 8, %bb.aq ], [ %i.ff, %bb.as ]
  %i.fg = ptrtoint ptr %.3109.i to i64
  %i.fh = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = shl i64 %i.fi, 3                        ; 3 uses
  %spec.select162.i = tail call i64 @llvm.smax.i64(i64 %i.fj, i64 %.2.i)
  %spec.select.i = trunc i64 %spec.select162.i to i32 ; 2 uses
  %i.fk = icmp eq i32 %spec.select.i, 8
  br i1 %i.fk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fl = icmp eq i8 %i.fa, -32
  %spec.select149.i = select i1 %i.fl, i32 4, i32 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %._crit_edge.i
  %.pre-phi249.i = phi i64 [ %.pre248.i, %._crit_edge.i ], [ %i.fj, %bb.au ], [ %i.fj, %bb.at ]
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.fh, %bb.au ], [ %i.fh, %bb.at ] ; 3 uses
  %.4.i = phi i32 [ %i.er, %._crit_edge.i ], [ %spec.select149.i, %bb.au ], [ %spec.select.i, %bb.at ] ; 3 uses
  %i.fm = sext i32 %.4.i to i64                   ; 3 uses
  %i.fn = icmp slt i64 %.pre-phi249.i, %i.fm
  br i1 %i.fn, label %.lr.ph222.i.preheader, label %inet_net_pton_ipv4.exit

.lr.ph222.i.preheader:                            ; preds = %bb.av
  %i.fo = ptrtoaddr ptr %.3109.i to i64           ; 2 uses
  %i.fp = add i64 %i.fo, 1
  %i.fq = sub i64 %i.fp, %.pre-phi.i
  %i.fr = shl i64 %i.fq, 3
  %i.fs = tail call i64 @llvm.smax.i64(i64 %i.fr, i64 %i.fm)
  %i.ft = shl i64 %.pre-phi.i, 3
  %i.fu = shl i64 %i.fo, 3
  %i.fv = add i64 %i.fs, %i.ft
  %i.fw = xor i64 %i.fu, -1
  %i.fx = add i64 %i.fv, %i.fw
  %.fr = freeze i64 %i.fx
  %i.fy = lshr i64 %.fr, 3
  %i.fz = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 %.3104.i) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.fz, 32
  br i1 %min.iters.check, label %.lr.ph222.i.preheader152, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph222.i.preheader
  %i.ga = add nuw nsw i64 %i.fz, 1                ; 2 uses
  %i.gb = and i64 %i.ga, 31                       ; 2 uses
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = select i1 %i.gc, i64 32, i64 %i.gb
  %n.vec = sub nsw i64 %i.ga, %i.gd               ; 3 uses
  %i.ge = sub i64 %.3104.i, %n.vec
  %i.gf = getelementptr i8, ptr %.3109.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.3109.i, i64 %index ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> zeroinitializer, ptr %next.gep, align 1
  store <16 x i8> zeroinitializer, ptr %i.gg, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %.lr.ph222.i.preheader152, label %vector.body, !llvm.loop !10

.lr.ph222.i.preheader152:                         ; preds = %vector.body, %.lr.ph222.i.preheader
  %.4105221.i.ph = phi i64 [ %.3104.i, %.lr.ph222.i.preheader ], [ %i.ge, %vector.body ]
  %.4110220.i.ph = phi ptr [ %.3109.i, %.lr.ph222.i.preheader ], [ %i.gf, %vector.body ]
  br label %.lr.ph222.i

.lr.ph222.i:                                      ; preds = %.lr.ph222.i.preheader152, %bb.aw
  %.4105221.i = phi i64 [ %i.gj, %bb.aw ], [ %.4105221.i.ph, %.lr.ph222.i.preheader152 ] ; 2 uses
  %.4110220.i = phi ptr [ %i.gk, %bb.aw ], [ %.4110220.i.ph, %.lr.ph222.i.preheader152 ] ; 2 uses
  %i.gi = icmp eq i64 %.4105221.i, 0
  br i1 %i.gi, label %.loopexit.sink.split.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph222.i
  %i.gj = add i64 %.4105221.i, -1
  %i.gk = getelementptr inbounds nuw i8, ptr %.4110220.i, i64 1 ; 2 uses
  store i8 0, ptr %.4110220.i, align 1
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = sub i64 %i.gl, %.pre-phi.i
  %i.gn = shl i64 %i.gm, 3
  %i.go = icmp slt i64 %i.gn, %i.fm
  br i1 %i.go, label %.lr.ph222.i, label %inet_net_pton_ipv4.exit, !llvm.loop !13

.loopexit.sink.split.i:                           ; preds = %bb.y, %bb.ak, %bb.aj, %.critedge5.i, %bb.ag, %bb.ao, %.lr.ph222.i, %.thread154.i, %.critedge147.i, %bb.al, %bb.ad, %bb.ab, %.preheader169.i, %bb.u
  %.sink.i = phi i32 [ 2, %bb.ad ], [ 90, %.critedge147.i ], [ 90, %bb.ab ], [ 90, %.lr.ph222.i ], [ 2, %bb.aj ], [ 2, %.preheader169.i ], [ 2, %bb.al ], [ 2, %.thread154.i ], [ 2, %bb.ag ], [ 2, %bb.ao ], [ 90, %bb.u ], [ 90, %.critedge5.i ], [ 2, %bb.ak ], [ 90, %bb.y ]
  %i.gp = tail call ptr @__errno_location() #8
  store i32 %.sink.i, ptr %i.gp, align 4
  br label %inet_net_pton_ipv4.exit

bb.ax:                                            ; preds = %bb.a
  %i.gq = icmp eq i64 %3, -1
  br i1 %i.gq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gr = tail call fastcc range(i32 -2147483648, 129) i32 @inet_cidr_pton_ipv6(ptr noundef readonly %1, ptr noundef %2, i64 noundef 16)
  br label %inet_net_pton_ipv4.exit

bb.az:                                            ; preds = %bb.ax
  %i.gs = tail call fastcc i32 @inet_cidr_pton_ipv6(ptr noundef %1, ptr noundef %2, i64 noundef %3)
  br label %inet_net_pton_ipv4.exit

bb.ba:                                            ; preds = %bb.a
  %i.gt = tail call ptr @__errno_location() #8
  store i32 97, ptr %i.gt, align 4
  br label %inet_net_pton_ipv4.exit

inet_net_pton_ipv4.exit:                          ; preds = %bb.aw, %.loopexit.sink.split.i, %bb.av, %.loopexit100.i, %.critedge7.i, %.lr.ph.preheader.i, %.preheader.i, %bb.ay, %bb.az, %bb.ba
  %.0 = phi i32 [ -1, %bb.ba ], [ %.254.i, %.lr.ph.preheader.i ], [ %i.gs, %bb.az ], [ %i.gr, %bb.ay ], [ -1, %.critedge7.i ], [ -1, %.loopexit100.i ], [ %.254.i, %.preheader.i ], [ %.4.i, %bb.av ], [ -1, %.loopexit.sink.split.i ], [ %.4.i, %bb.aw ]
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483648, 129) i32 @inet_cidr_pton_ipv6(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef range(i64 0, -1) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp ult i64 %2, 16
  br i1 %i.b, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 6 uses
  %i.c = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.c, label %.lr.ph.preheader [
    i8 58, label %bb.c
    i8 0, label %getv4.exit.thread125
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.e, 58
  br i1 %.not, label %.lr.ph.preheader, label %getv4.exit.thread125

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  %.ph = phi i8 [ 58, %bb.c ], [ %i.c, %bb.b ]
  %.072210.ph = phi ptr [ %i.d, %bb.c ], [ %0, %bb.b ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %getv4.exit
  %i.f = phi i8 [ %i.bw, %getv4.exit ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %.pn = phi ptr [ %i.g, %getv4.exit ], [ %.072210.ph, %.lr.ph.preheader ]
  %.078.ptr.ptr214 = phi ptr [ %.078.ptr.ptr, %getv4.exit ], [ %i.a, %.lr.ph.preheader ] ; 5 uses
  %.065213 = phi i32 [ %.166, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.067212 = phi i32 [ %.168, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %.069211 = phi i32 [ %.170, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.072210 = phi ptr [ %.173, %getv4.exit ], [ %.072210.ph, %.lr.ph.preheader ] ; 2 uses
  %.075209 = phi ptr [ %.176, %getv4.exit ], [ null, %.lr.ph.preheader ] ; 6 uses
  %.078.idx208 = phi i64 [ %.179.idx, %getv4.exit ], [ 0, %.lr.ph.preheader ] ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 6 uses
  %i.h = sext i8 %i.f to i32                      ; 2 uses
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv6.xdigits_l, i32 %i.h, i64 17) ; 2 uses
  %i.i = icmp eq ptr %memchr, null
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %.lr.ph
  %memchr92 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @inet_cidr_pton_ipv6.xdigits_u, i32 %i.h, i64 17) ; 2 uses
  %.not93 = icmp eq ptr %memchr92, null
  br i1 %.not93, label %bb.e, label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d
  %.064117 = phi ptr [ %memchr92, %bb.d ], [ %memchr, %.lr.ph ]
  %.074116 = phi ptr [ @inet_cidr_pton_ipv6.xdigits_u, %bb.d ], [ @inet_cidr_pton_ipv6.xdigits_l, %.lr.ph ]
  %i.j = shl i32 %.067212, 4
  %i.k = ptrtoint ptr %.064117 to i64
  %i.l = ptrtoint ptr %.074116 to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = or i32 %i.j, %i.n
  %i.p = add i32 %.065213, 1                      ; 2 uses
  %i.q = icmp sgt i32 %i.p, 4
  br i1 %i.q, label %getv4.exit.thread125, label %getv4.exit

bb.e:                                             ; preds = %bb.d
  switch i8 %i.f, label %getv4.exit.thread125 [
    i8 58, label %bb.f
    i8 46, label %bb.j
    i8 47, label %.loopexit159
  ]

bb.f:                                             ; preds = %bb.e
  %.not98 = icmp eq i32 %.069211, 0
  br i1 %.not98, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.not99 = icmp eq ptr %.075209, null
  br i1 %.not99, label %getv4.exit, label %getv4.exit.thread125, !llvm.loop !14

bb.h:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.g, align 1
  %i.s = icmp eq i8 %i.r, 0
  %i.t = icmp ugt i64 %.078.idx208, 14
  %or.cond = select i1 %i.s, i1 true, i1 %i.t
  br i1 %or.cond, label %getv4.exit.thread125, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = lshr i32 %.067212, 8
  %i.v = trunc i32 %i.u to i8
  %.ptr96 = getelementptr inbounds nuw i8, ptr %.078.ptr.ptr214, i64 1
  store i8 %i.v, ptr %.078.ptr.ptr214, align 1
  %i.w = trunc i32 %.067212 to i8
  %.add = add nuw nsw i64 %.078.idx208, 2
  store i8 %i.w, ptr %.ptr96, align 1
  br label %getv4.exit, !llvm.loop !14

bb.j:                                             ; preds = %bb.e
  %.078.add = add nuw nsw i64 %.078.idx208, 4     ; 2 uses
  %.not94 = icmp sgt i64 %.078.idx208, 12
  br i1 %.not94, label %getv4.exit.thread125, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = ptrtoint ptr %.078.ptr.ptr214 to i64     ; 2 uses
  br label %getbits.exit.outer.i

getbits.exit.outer.i:                             ; preds = %bb.o, %bb.k
  %.036.ph.i = phi ptr [ %i.y, %bb.o ], [ %.072210, %bb.k ]
  %.034.ph.i = phi ptr [ %i.aq, %bb.o ], [ %.078.ptr.ptr214, %bb.k ] ; 5 uses
  br label %getbits.exit.i

getbits.exit.i:                                   ; preds = %.split.i, %getbits.exit.outer.i
  %.036.i = phi ptr [ %i.y, %.split.i ], [ %.036.ph.i, %getbits.exit.outer.i ] ; 2 uses
  %.030.i = phi i32 [ %i.ad, %.split.i ], [ 0, %getbits.exit.outer.i ] ; 3 uses
  %.029.i = phi i32 [ %i.ai, %.split.i ], [ 0, %getbits.exit.outer.i ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.036.i, i64 1 ; 3 uses
  %i.z = load i8, ptr %.036.i, align 1            ; 4 uses
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %getbits.exit.i
  %i.aa = sext i8 %i.z to i32
  %memchr.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @getv4.digits, i32 %i.aa, i64 11) ; 2 uses
  %.not41.i = icmp eq ptr %memchr.i, null
  br i1 %.not41.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = icmp ne i32 %.030.i, 0
  %i.ac = icmp eq i32 %.029.i, 0
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %getv4.exit.thread125, label %.split.i

.split.i:                                         ; preds = %bb.m
  %i.ad = add i32 %.030.i, 1
  %i.ae = mul nuw nsw i32 %.029.i, 10
  %i.af = ptrtoint ptr %memchr.i to i64
  %i.ag = trunc i64 %i.af to i32
  %i.ah = sub i32 %i.ag, ptrtoint (ptr @getv4.digits to i32)
  %i.ai = add i32 %i.ah, %i.ae                    ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 256
  br i1 %i.aj, label %getbits.exit.i, label %getv4.exit.thread125

bb.n:                                             ; preds = %bb.l
  %i.ak = and i8 %i.z, -2
  %or.cond4.i = icmp ne i8 %i.ak, 46
  %i.al = ptrtoint ptr %.034.ph.i to i64
  %i.am = sub i64 %i.al, %i.x
  %i.an = icmp sgt i64 %i.am, 3
  %or.cond45.i = select i1 %or.cond4.i, i1 true, i1 %i.an
  br i1 %or.cond45.i, label %getv4.exit.thread125, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ao = icmp eq i8 %i.z, 47
  %i.ap = trunc nuw i32 %.029.i to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.034.ph.i, i64 1
  store i8 %i.ap, ptr %.034.ph.i, align 1
  br i1 %i.ao, label %.preheader.i, label %getbits.exit.outer.i, !llvm.loop !15

.preheader.i:                                     ; preds = %bb.o, %bb.r
  %.019.i.i = phi ptr [ %i.ar, %bb.r ], [ %i.y, %bb.o ] ; 2 uses
  %.015.i.i = phi i32 [ %i.aw, %bb.r ], [ 0, %bb.o ] ; 3 uses
  %.014.i.i = phi i32 [ %i.bb, %bb.r ], [ 0, %bb.o ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.019.i.i, i64 1
  %i.as = load i8, ptr %.019.i.i, align 1         ; 2 uses
  %.not.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %.preheader.i
  %i.at = sext i8 %i.as to i32
  %memchr.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @getbits.digits, i32 %i.at, i64 11) ; 2 uses
  %.not24.i.i = icmp eq ptr %memchr.i.i, null
  br i1 %.not24.i.i, label %getv4.exit.thread125, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = icmp ne i32 %.015.i.i, 0
  %i.av = icmp eq i32 %.014.i.i, 0
  %or.cond.i.i = and i1 %i.au, %i.av
  br i1 %or.cond.i.i, label %getv4.exit.thread125, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = add i32 %.015.i.i, 1
  %i.ax = mul i32 %.014.i.i, 10
  %i.ay = ptrtoint ptr %memchr.i.i to i64
  %i.az = trunc i64 %i.ay to i32
  %i.ba = sub i32 %i.az, ptrtoint (ptr @getbits.digits to i32)
  %i.bb = add i32 %i.ba, %i.ax                    ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 129
  br i1 %i.bc, label %.preheader.i, label %getv4.exit.thread125

bb.s:                                             ; preds = %.preheader.i
  %i.bd = icmp eq i32 %.015.i.i, 0
  br i1 %i.bd, label %getv4.exit.thread125, label %getv4.exit.thread135.thread

bb.t:                                             ; preds = %getbits.exit.i
  %i.be = icmp eq i32 %.030.i, 0
  %i.bf = ptrtoint ptr %.034.ph.i to i64
  %i.bg = sub i64 %i.bf, %i.x
  %i.bh = icmp sgt i64 %i.bg, 3
  %or.cond49.i = select i1 %i.be, i1 true, i1 %i.bh
  br i1 %or.cond49.i, label %getv4.exit.thread125, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bi = trunc nuw i32 %.029.i to i8
  store i8 %i.bi, ptr %.034.ph.i, align 1
  br label %getv4.exit.thread135.thread.thread

.loopexit159:                                     ; preds = %bb.e, %bb.x
  %.019.i = phi ptr [ %i.bj, %bb.x ], [ %i.g, %bb.e ] ; 2 uses
  %.015.i = phi i32 [ %i.bo, %bb.x ], [ 0, %bb.e ] ; 3 uses
  %.014.i = phi i32 [ %i.bt, %bb.x ], [ 0, %bb.e ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.019.i, i64 1
  %i.bk = load i8, ptr %.019.i, align 1           ; 2 uses
  %.not.i105 = icmp eq i8 %i.bk, 0
  br i1 %.not.i105, label %bb.y, label %bb.v

bb.v:                                             ; preds = %.loopexit159
  %i.bl = sext i8 %i.bk to i32
  %memchr.i106 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @getbits.digits, i32 %i.bl, i64 11) ; 2 uses
  %.not24.i = icmp eq ptr %memchr.i106, null
  br i1 %.not24.i, label %getv4.exit.thread125, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = icmp ne i32 %.015.i, 0
  %i.bn = icmp eq i32 %.014.i, 0
  %or.cond.i107 = and i1 %i.bm, %i.bn
  br i1 %or.cond.i107, label %getv4.exit.thread125, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = add i32 %.015.i, 1
  %i.bp = mul i32 %.014.i, 10
  %i.bq = ptrtoint ptr %memchr.i106 to i64
  %i.br = trunc i64 %i.bq to i32
  %i.bs = sub i32 %i.br, ptrtoint (ptr @getbits.digits to i32)
  %i.bt = add i32 %i.bs, %i.bp                    ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 129
  br i1 %i.bu, label %.loopexit159, label %getv4.exit.thread125

bb.y:                                             ; preds = %.loopexit159
  %i.bv = icmp eq i32 %.015.i, 0
  br i1 %i.bv, label %getv4.exit.thread125, label %getv4.exit.thread135

getv4.exit:                                       ; preds = %bb.g, %.thread, %bb.i
  %.179.idx = phi i64 [ %.078.idx208, %.thread ], [ %.add, %bb.i ], [ %.078.idx208, %bb.g ] ; 3 uses
  %.176 = phi ptr [ %.075209, %.thread ], [ %.075209, %bb.i ], [ %.078.ptr.ptr214, %bb.g ] ; 2 uses
  %.173 = phi ptr [ %.072210, %.thread ], [ %i.g, %bb.i ], [ %i.g, %bb.g ]
  %.170 = phi i32 [ 1, %.thread ], [ 0, %bb.i ], [ 0, %bb.g ] ; 2 uses
  %.168 = phi i32 [ %i.o, %.thread ], [ 0, %bb.i ], [ %.067212, %bb.g ] ; 2 uses
  %.166 = phi i32 [ %i.p, %.thread ], [ 0, %bb.i ], [ %.065213, %bb.g ]
  %.078.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.179.idx
  %i.bw = load i8, ptr %i.g, align 1              ; 2 uses
  %.not91 = icmp eq i8 %i.bw, 0
  br i1 %.not91, label %getv4.exit.thread135, label %.lr.ph

getv4.exit.thread135:                             ; preds = %getv4.exit, %bb.y
  %.078.idx205 = phi i64 [ %.078.idx208, %bb.y ], [ %.179.idx, %getv4.exit ] ; 4 uses
  %.075200 = phi ptr [ %.075209, %bb.y ], [ %.176, %getv4.exit ] ; 2 uses
  %.069191 = phi i32 [ %.069211, %bb.y ], [ %.170, %getv4.exit ]
  %.067186 = phi i32 [ %.067212, %bb.y ], [ %.168, %getv4.exit ] ; 2 uses
  %.5 = phi i32 [ %.014.i, %bb.y ], [ -1, %getv4.exit ] ; 2 uses
  %.280.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.078.idx205 ; 2 uses
  %.not100 = icmp eq i32 %.069191, 0
  br i1 %.not100, label %getv4.exit.thread135.thread, label %bb.z

bb.z:                                             ; preds = %getv4.exit.thread135
  %i.bx = icmp sgt i64 %.078.idx205, 14
  br i1 %i.bx, label %getv4.exit.thread125, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = lshr i32 %.067186, 8
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %.280.ptr.ptr, i64 1
  store i8 %i.bz, ptr %.280.ptr.ptr, align 1
  %i.cb = trunc i32 %.067186 to i8
  %.280.ptr.add = add nuw nsw i64 %.078.idx205, 2
  store i8 %i.cb, ptr %i.ca, align 1
  br label %getv4.exit.thread135.thread

getv4.exit.thread135.thread:                      ; preds = %bb.s, %bb.aa, %getv4.exit.thread135
  %.075199 = phi ptr [ %.075200, %bb.aa ], [ %.075200, %getv4.exit.thread135 ], [ %.075209, %bb.s ]
  %.5155 = phi i32 [ %.5, %bb.aa ], [ %.5, %getv4.exit.thread135 ], [ %.014.i.i, %bb.s ]
  %.3.idx = phi i64 [ %.280.ptr.add, %bb.aa ], [ %.078.idx205, %getv4.exit.thread135 ], [ %.078.add, %bb.s ]
  %.5155.fr = freeze i32 %.5155                   ; 2 uses
  %i.cc = icmp eq i32 %.5155.fr, -1
  %spec.select = select i1 %i.cc, i32 128, i32 %.5155.fr
  br label %getv4.exit.thread135.thread.thread

getv4.exit.thread135.thread.thread:               ; preds = %getv4.exit.thread135.thread, %bb.u
  %.3.idx292 = phi i64 [ %.3.idx, %getv4.exit.thread135.thread ], [ %.078.add, %bb.u ] ; 3 uses
  %.075199290 = phi ptr [ %.075199, %getv4.exit.thread135.thread ], [ %.075209, %bb.u ] ; 9 uses
  %i.cd = phi i32 [ %spec.select, %getv4.exit.thread135.thread ], [ 128, %bb.u ]
  %.not101 = icmp eq ptr %.075199290, null
  br i1 %.not101, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %getv4.exit.thread135.thread.thread
  %.3.ptr.ptr = getelementptr i8, ptr %i.a, i64 %.3.idx292
  %i.ce = ptrtoint ptr %.3.ptr.ptr to i64
  %i.cf = ptrtoint ptr %.075199290 to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = icmp eq i64 %.3.idx292, 16
  br i1 %i.ci, label %getv4.exit.thread125, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %.not102218 = icmp slt i32 %i.ch, 1
  br i1 %.not102218, label %.thread147, label %iter.check

iter.check:                                       ; preds = %.preheader
  %3 = and i64 %i.cg, 2147483647                  ; 7 uses
  %i.cj = add nuw i32 %i.ch, 1                    ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.cj, i32 2)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 6 uses
  %i.ck = add nsw i64 %wide.trip.count, -1        ; 5 uses
  %min.iters.check = icmp slt i32 %i.cj, 9
  br i1 %min.iters.check, label %.lr.ph220.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cl = sub nsw i64 17, %wide.trip.count
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.cl
  %i.cm = add nuw nsw i64 %3, 1
  %i.cn = sub nsw i64 %i.cm, %wide.trip.count
  %i.co = getelementptr i8, ptr %.075199290, i64 %i.cn
  %scevgep386 = getelementptr i8, ptr %.075199290, i64 %3
  %bound0 = icmp ult ptr %scevgep, %scevgep386
  %bound1 = icmp ult ptr %i.co, %.ptr
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph220.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check387 = icmp slt i32 %i.cj, 33
  br i1 %min.iters.check387, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cp = and i64 %i.ck, 24
  %n.vec = and i64 %i.ck, -32                     ; 4 uses
  %i.cq = or disjoint i64 %n.vec, 1
  %4 = getelementptr i8, ptr %.075199290, i64 %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %.neg = xor i64 %index, -1
  %i.cr = getelementptr i8, ptr %4, i64 %.neg     ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -15 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 -31 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.cs, align 1, !alias.scope !16
  %wide.load388 = load <16 x i8>, ptr %i.ct, align 1, !alias.scope !16
  %i.cu = xor i64 %index, -1
  %i.cv = getelementptr inbounds i8, ptr %.ptr, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -15
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -31
  store <16 x i8> %wide.load, ptr %i.cw, align 16, !alias.scope !19, !noalias !16
  store <16 x i8> %wide.load388, ptr %i.cx, align 16, !alias.scope !19, !noalias !16
  store <16 x i8> zeroinitializer, ptr %i.cs, align 1, !alias.scope !16
  store <16 x i8> zeroinitializer, ptr %i.ct, align 1, !alias.scope !16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %.thread147, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph220.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec389 = and i64 %i.ck, -8                   ; 3 uses
  %i.cz = or disjoint i64 %n.vec389, 1
  %5 = getelementptr i8, ptr %.075199290, i64 %3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index390 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next392, %vec.epilog.vector.body ] ; 3 uses
  %.neg396 = xor i64 %index390, -1
  %i.da = getelementptr i8, ptr %5, i64 %.neg396
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 -7 ; 2 uses
  %wide.load391 = load <8 x i8>, ptr %i.db, align 1, !alias.scope !16
  %i.dc = xor i64 %index390, -1
  %i.dd = getelementptr inbounds i8, ptr %.ptr, i64 %i.dc
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -7
  store <8 x i8> %wide.load391, ptr %i.de, align 8, !alias.scope !19, !noalias !16
  store <8 x i8> zeroinitializer, ptr %i.db, align 1, !alias.scope !16
  %index.next392 = add nuw i64 %index390, 8       ; 2 uses
  %i.df = icmp eq i64 %index.next392, %n.vec389
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n393 = icmp eq i64 %i.ck, %n.vec389
  br i1 %cmp.n393, label %.thread147, label %.lr.ph220.preheader

.lr.ph220.preheader:                              ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 1, %iter.check ], [ 1, %vector.memcheck ], [ %i.cq, %vec.epilog.iter.check ], [ %i.cz, %vec.epilog.middle.block ] ; 5 uses
  %i.dg = and i64 %wide.trip.count, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph220.prol, label %.lr.ph220.prol.loopexit

.lr.ph220.prol:                                   ; preds = %.lr.ph220.preheader
  %i.dh = sub nuw nsw i64 %3, %indvars.iv.ph
  %i.di = getelementptr inbounds nuw i8, ptr %.075199290, i64 %i.dh ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = sub nsw i64 0, %indvars.iv.ph
  %i.dl = getelementptr inbounds i8, ptr %.ptr, i64 %i.dk
  store i8 %i.dj, ptr %i.dl, align 1
  store i8 0, ptr %i.di, align 1
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %.lr.ph220.prol.loopexit

.lr.ph220.prol.loopexit:                          ; preds = %.lr.ph220.prol, %.lr.ph220.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph220.preheader ], [ %indvars.iv.next.prol, %.lr.ph220.prol ]
  %i.dm = add nsw i64 %wide.trip.count, -1
  %i.dn = icmp eq i64 %indvars.iv.ph, %i.dm
  br i1 %i.dn, label %.thread147, label %.lr.ph220.preheader.new

.lr.ph220.preheader.new:                          ; preds = %.lr.ph220.prol.loopexit
  %6 = getelementptr i8, ptr %.075199290, i64 %3
  br label %.lr.ph220

.lr.ph220:                                        ; preds = %.lr.ph220, %.lr.ph220.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph220.preheader.new ], [ %indvars.iv.next.1, %.lr.ph220 ] ; 5 uses
  %i.do = sub nuw nsw i64 %3, %indvars.iv
  %i.dp = getelementptr inbounds nuw i8, ptr %.075199290, i64 %i.do ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = sub nsw i64 0, %indvars.iv
  %i.ds = getelementptr inbounds i8, ptr %.ptr, i64 %i.dr
  store i8 %i.dq, ptr %i.ds, align 1
  store i8 0, ptr %i.dp, align 1
  %indvars.iv.next.neg = xor i64 %indvars.iv, -1
  %i.dt = getelementptr i8, ptr %6, i64 %indvars.iv.next.neg ; 2 uses
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = xor i64 %indvars.iv, -1
  %i.dw = getelementptr inbounds i8, ptr %.ptr, i64 %i.dv
  store i8 %i.du, ptr %i.dw, align 1
  store i8 0, ptr %i.dt, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1, label %.thread147, label %.lr.ph220, !llvm.loop !24

bb.ac:                                            ; preds = %getv4.exit.thread135.thread.thread
  %.not103 = icmp eq i64 %.3.idx292, 16
  br i1 %.not103, label %.thread147, label %getv4.exit.thread125

.thread147:                                       ; preds = %.lr.ph220.prol.loopexit, %.lr.ph220, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.ae

getv4.exit.thread125:                             ; preds = %.thread, %bb.e, %bb.g, %bb.h, %bb.w, %bb.v, %bb.x, %bb.n, %.split.i, %bb.m, %bb.q, %bb.p, %bb.r, %bb.b, %bb.s, %bb.t, %bb.y, %bb.j, %bb.ab, %bb.ac, %bb.z, %bb.c
  %i.dx = tail call ptr @__errno_location() #8
  store i32 2, ptr %i.dx, align 4
  br label %bb.ae

bb.ad:                                            ; preds = %bb.a
  %i.dy = tail call ptr @__errno_location() #8
  store i32 90, ptr %i.dy, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %getv4.exit.thread125, %.thread147
  %.081 = phi i32 [ -1, %bb.ad ], [ -1, %getv4.exit.thread125 ], [ %i.cd, %.thread147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.081
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !5, !12, !11}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !5, !11, !12}
!22 = !{!"branch_weights", i32 8, i32 24}
!23 = distinct !{!23, !5, !11, !12}
!24 = distinct !{!24, !5, !11}
end_hunk_0
