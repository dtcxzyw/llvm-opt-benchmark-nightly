Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 129
loop-unroll.NumUnrolled: 369
begin_hunk_0_@aes_nohw_cbc_encrypt:bb.a
  %i.na = bitcast <4 x i32> %i.mz to <2 x i64>
  %i.nb = xor <2 x i64> %i.mc, %i.na
  %i.nc = and <2 x i64> %i.nb, splat (i64 3689348814741910323) ; 2 uses
  %i.nd = bitcast <2 x i64> %i.nc to <4 x i32>
  %i.ne = shl nuw <4 x i32> %i.nd, splat (i32 2)
  %i.nf = bitcast <4 x i32> %i.ne to <2 x i64>
  %i.ng = xor <2 x i64> %i.ls, %i.nf              ; 2 uses
  %i.nh = xor <2 x i64> %i.nc, %i.mc              ; 2 uses
  %i.ni = bitcast <2 x i64> %i.lt to <4 x i32>
  %i.nj = lshr <4 x i32> %i.ni, splat (i32 2)
  %i.nk = bitcast <4 x i32> %i.nj to <2 x i64>
  %i.nl = xor <2 x i64> %i.md, %i.nk
  %i.nm = and <2 x i64> %i.nl, splat (i64 3689348814741910323) ; 2 uses
  %i.nn = bitcast <2 x i64> %i.nm to <4 x i32>
  %i.no = shl nuw <4 x i32> %i.nn, splat (i32 2)
  %i.np = bitcast <4 x i32> %i.no to <2 x i64>
  %i.nq = xor <2 x i64> %i.lt, %i.np              ; 2 uses
  %i.nr = xor <2 x i64> %i.nm, %i.md              ; 2 uses
  %i.ns = bitcast <2 x i64> %i.mm to <4 x i32>
  %i.nt = lshr <4 x i32> %i.ns, splat (i32 4)
  %i.nu = bitcast <4 x i32> %i.nt to <2 x i64>
  %i.nv = xor <2 x i64> %i.ng, %i.nu
  %i.nw = and <2 x i64> %i.nv, splat (i64 1085102592571150095) ; 2 uses
  %i.nx = bitcast <2 x i64> %i.nw to <4 x i32>
  %i.ny = shl nuw <4 x i32> %i.nx, splat (i32 4)
  %i.nz = bitcast <4 x i32> %i.ny to <2 x i64>
  %i.oa = xor <2 x i64> %i.mm, %i.nz
  store <2 x i64> %i.oa, ptr %.sroa.0.i71, align 16, !tbaa !80
  %i.ob = xor <2 x i64> %i.nw, %i.ng
  store <2 x i64> %i.ob, ptr %.sroa.0.i71.64.i71.64.i71.64..sroa_idx146, align 16, !tbaa !80
  %i.oc = bitcast <2 x i64> %i.mw to <4 x i32>
  %i.od = lshr <4 x i32> %i.oc, splat (i32 4)
  %i.oe = bitcast <4 x i32> %i.od to <2 x i64>
  %i.of = xor <2 x i64> %i.nq, %i.oe
  %i.og = and <2 x i64> %i.of, splat (i64 1085102592571150095) ; 2 uses
  %i.oh = bitcast <2 x i64> %i.og to <4 x i32>
  %i.oi = shl nuw <4 x i32> %i.oh, splat (i32 4)
  %i.oj = bitcast <4 x i32> %i.oi to <2 x i64>
  %i.ok = xor <2 x i64> %i.mw, %i.oj
  store <2 x i64> %i.ok, ptr %.sroa.0.i71.16.i71.16.i71.16..sroa_idx143, align 16, !tbaa !80
  %i.ol = xor <2 x i64> %i.og, %i.nq
  store <2 x i64> %i.ol, ptr %.sroa.0.i71.80.i71.80.i71.80..sroa_idx147, align 16, !tbaa !80
  %i.om = bitcast <2 x i64> %i.mn to <4 x i32>
  %i.on = lshr <4 x i32> %i.om, splat (i32 4)
  %i.oo = bitcast <4 x i32> %i.on to <2 x i64>
  %i.op = xor <2 x i64> %i.nh, %i.oo
  %i.oq = and <2 x i64> %i.op, splat (i64 1085102592571150095) ; 2 uses
  %i.or = bitcast <2 x i64> %i.oq to <4 x i32>
  %i.os = shl nuw <4 x i32> %i.or, splat (i32 4)
  %i.ot = bitcast <4 x i32> %i.os to <2 x i64>
  %i.ou = xor <2 x i64> %i.mn, %i.ot
  store <2 x i64> %i.ou, ptr %.sroa.0.i71.32.i71.32.i71.32..sroa_idx144, align 16, !tbaa !80
  %i.ov = xor <2 x i64> %i.oq, %i.nh
  store <2 x i64> %i.ov, ptr %.sroa.0.i71.96.i71.96.i71.96..sroa_idx148, align 16, !tbaa !80
  %i.ow = bitcast <2 x i64> %i.mx to <4 x i32>
  %i.ox = lshr <4 x i32> %i.ow, splat (i32 4)
  %i.oy = bitcast <4 x i32> %i.ox to <2 x i64>
  %i.oz = xor <2 x i64> %i.nr, %i.oy
  %i.pa = and <2 x i64> %i.oz, splat (i64 1085102592571150095) ; 2 uses
  %i.pb = bitcast <2 x i64> %i.pa to <4 x i32>
  %i.pc = shl nuw <4 x i32> %i.pb, splat (i32 4)
  %i.pd = bitcast <4 x i32> %i.pc to <2 x i64>
  %i.pe = xor <2 x i64> %i.mx, %i.pd
  store <2 x i64> %i.pe, ptr %.sroa.0.i71.48.i71.48.i71.48..sroa_idx145, align 16, !tbaa !80
  %i.pf = xor <2 x i64> %i.pa, %i.nr
  store <2 x i64> %i.pf, ptr %.sroa.0.i71.112.i71.112.i71.112..sroa_idx149, align 16, !tbaa !80
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.145, ptr nonnull align 16 %.sroa.0.i71, i64 %i.ft, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i71)
  %.0.copyload2.i88 = load <2 x i64>, ptr %.145, align 1
  %i.pg = xor <2 x i64> %.sroa.0.1, %.0.copyload2.i88
  store <2 x i64> %i.pg, ptr %.145, align 1
  %i.ph = icmp ugt i64 %.1, 1
  br i1 %i.ph, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %_ZL19aes_nohw_from_batchPhmPK14AES_NOHW_BATCH.exit
  %i.pi = getelementptr i8, ptr %i.a, i64 %i.ft
  %i.pj = getelementptr i8, ptr %i.pi, i64 -16
  %.sroa.0.0.copyload115 = load <2 x i64>, ptr %i.pj, align 16 ; 2 uses
  %i.pk = sub nuw nsw i64 %.1, %i.fs              ; 2 uses
  %i.pl = icmp eq i64 %i.pk, 0
  %i.pm = getelementptr inbounds nuw i8, ptr %.143, i64 128
  %i.pn = getelementptr inbounds nuw i8, ptr %.145, i64 128
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.pl, label %.loopexit, label %_ZL19aes_nohw_from_batchPhmPK14AES_NOHW_BATCH.exit

.lr.ph:                                           ; preds = %_ZL19aes_nohw_from_batchPhmPK14AES_NOHW_BATCH.exit
  %i.po = getelementptr inbounds nuw i8, ptr %.145, i64 16 ; 2 uses
  %.0.copyload2.i90 = load <2 x i64>, ptr %i.po, align 1
  %.0.copyload.i91 = load <2 x i64>, ptr %i.a, align 16
  %i.pp = xor <2 x i64> %.0.copyload.i91, %.0.copyload2.i90
  store <2 x i64> %i.pp, ptr %i.po, align 1
  %exitcond111.not = icmp eq i64 %.1, 2
  br i1 %exitcond111.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.pq = getelementptr inbounds nuw i8, ptr %.145, i64 32 ; 2 uses
  %.0.copyload2.i90.1 = load <2 x i64>, ptr %i.pq, align 1
  %.0.copyload.i91.1 = load <2 x i64>, ptr %i.ci, align 16
  %i.pr = xor <2 x i64> %.0.copyload.i91.1, %.0.copyload2.i90.1
  store <2 x i64> %i.pr, ptr %i.pq, align 1
  %exitcond111.not.1 = icmp eq i64 %.1, 3
  br i1 %exitcond111.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ps = getelementptr inbounds nuw i8, ptr %.145, i64 48 ; 2 uses
  %.0.copyload2.i90.2 = load <2 x i64>, ptr %i.ps, align 1
  %.0.copyload.i91.2 = load <2 x i64>, ptr %i.cj, align 16
  %i.pt = xor <2 x i64> %.0.copyload.i91.2, %.0.copyload2.i90.2
  store <2 x i64> %i.pt, ptr %i.ps, align 1
  %exitcond111.not.2 = icmp eq i64 %.1, 4
  br i1 %exitcond111.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.pu = getelementptr inbounds nuw i8, ptr %.145, i64 64 ; 2 uses
  %.0.copyload2.i90.3 = load <2 x i64>, ptr %i.pu, align 1
  %.0.copyload.i91.3 = load <2 x i64>, ptr %i.ck, align 16
  %i.pv = xor <2 x i64> %.0.copyload.i91.3, %.0.copyload2.i90.3
  store <2 x i64> %i.pv, ptr %i.pu, align 1
  %exitcond111.not.3 = icmp eq i64 %.1, 5
  br i1 %exitcond111.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.pw = getelementptr inbounds nuw i8, ptr %.145, i64 80 ; 2 uses
  %.0.copyload2.i90.4 = load <2 x i64>, ptr %i.pw, align 1
  %.0.copyload.i91.4 = load <2 x i64>, ptr %i.cl, align 16
  %i.px = xor <2 x i64> %.0.copyload.i91.4, %.0.copyload2.i90.4
  store <2 x i64> %i.px, ptr %i.pw, align 1
  %exitcond111.not.4 = icmp eq i64 %.1, 6
  br i1 %exitcond111.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.py = getelementptr inbounds nuw i8, ptr %.145, i64 96 ; 2 uses
  %.0.copyload2.i90.5 = load <2 x i64>, ptr %i.py, align 1
  %.0.copyload.i91.5 = load <2 x i64>, ptr %i.cm, align 16
  %i.pz = xor <2 x i64> %.0.copyload.i91.5, %.0.copyload2.i90.5
  store <2 x i64> %i.pz, ptr %i.py, align 1
  %exitcond111.not.5 = icmp eq i64 %.1, 7
  br i1 %exitcond111.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.qa = getelementptr inbounds nuw i8, ptr %.145, i64 112 ; 2 uses
  %.0.copyload2.i90.6 = load <2 x i64>, ptr %i.qa, align 1
  %.0.copyload.i91.6 = load <2 x i64>, ptr %i.cn, align 16
  %i.qb = xor <2 x i64> %.0.copyload.i91.6, %.0.copyload2.i90.6
  store <2 x i64> %i.qb, ptr %i.qa, align 1
  br label %._crit_edge

.loopexit:                                        ; preds = %.lr.ph.i, %._crit_edge
  %storemerge = phi <2 x i64> [ %.sroa.0.0.copyload115, %._crit_edge ], [ %i.fo, %.lr.ph.i ]
  store <2 x i64> %storemerge, ptr %4, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cbc128_encrypt(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.c, label %.preheader51

.preheader51:                                     ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 15
  br i1 %i.b, label %.lr.ph, label %iter.check

.lr.ph:                                           ; preds = %.preheader51, %.lr.ph
  %.055 = phi ptr [ %.04553, %.lr.ph ], [ %4, %.preheader51 ] ; 2 uses
  %.04354 = phi ptr [ %i.i, %.lr.ph ], [ %0, %.preheader51 ] ; 3 uses
  %.04553 = phi ptr [ %i.j, %.lr.ph ], [ %1, %.preheader51 ] ; 8 uses
  %.04752 = phi i64 [ %i.h, %.lr.ph ], [ %2, %.preheader51 ]
  %.0.copyload.i.i = load i64, ptr %.04354, align 1
  %.0.copyload.i7.i = load i64, ptr %.055, align 1
  %i.c = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.c, ptr %.04553, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.04553, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.04354, i64 8
  %.0.copyload.i.1.i = load i64, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.f, align 1
  %i.g = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.g, ptr %i.d, align 1
  tail call void %5(ptr noundef nonnull %.04553, ptr noundef nonnull %.04553, ptr noundef %3) #36
  %i.h = add i64 %.04752, -16                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.04354, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04553, i64 16 ; 2 uses
  %i.k = icmp ugt i64 %i.h, 15
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !2

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %iter.check

iter.check:                                       ; preds = %.preheader51, %._crit_edge
  %.0.lcssa77 = phi ptr [ %.04553, %._crit_edge ], [ %4, %.preheader51 ] ; 15 uses
  %.043.lcssa76 = phi ptr [ %i.i, %._crit_edge ], [ %0, %.preheader51 ] ; 8 uses
  %.045.lcssa75 = phi ptr [ %i.j, %._crit_edge ], [ %1, %.preheader51 ] ; 18 uses
  %.047.lcssa74 = phi i64 [ %i.h, %._crit_edge ], [ %2, %.preheader51 ] ; 14 uses
  %.045.lcssa7582 = ptrtoaddr ptr %.045.lcssa75 to i64 ; 3 uses
  %.0.lcssa7784 = ptrtoaddr ptr %.0.lcssa77 to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.047.lcssa74, 4
  br i1 %min.iters.check, label %.preheader50.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.043.lcssa7683 = ptrtoaddr ptr %.043.lcssa76 to i64
  %i.l = sub i64 %.043.lcssa7683, %.045.lcssa7582
  %diff.check = icmp ugt i64 %i.l, -32
  %i.m = sub i64 %.0.lcssa7784, %.045.lcssa7582
  %diff.check85 = icmp ugt i64 %i.m, -32
  %conflict.rdx = or i1 %diff.check, %diff.check85
  br i1 %conflict.rdx, label %.preheader50.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check86 = icmp ult i64 %.047.lcssa74, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !80
  %wide.load87 = load <16 x i8>, ptr %i.o, align 1, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load88 = load <16 x i8>, ptr %i.p, align 1, !tbaa !80
  %wide.load89 = load <16 x i8>, ptr %i.q, align 1, !tbaa !80
  %i.r = xor <16 x i8> %wide.load88, %wide.load
  %i.s = xor <16 x i8> %wide.load89, %wide.load87
  %i.t = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <16 x i8> %i.r, ptr %i.t, align 1, !tbaa !80
  store <16 x i8> %i.s, ptr %i.u, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !395

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec90 = and i64 %.047.lcssa74, 12            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index91 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next94, %vec.epilog.vector.body ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %index91
  %wide.load92 = load <4 x i8>, ptr %i.v, align 1, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %index91
  %wide.load93 = load <4 x i8>, ptr %i.w, align 1, !tbaa !80
  %i.x = xor <4 x i8> %wide.load93, %wide.load92
  %i.y = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %index91
  store <4 x i8> %i.x, ptr %i.y, align 1, !tbaa !80
  %index.next94 = add nuw i64 %index91, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next94, %n.vec90
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !396

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n95 = icmp eq i64 %.047.lcssa74, %n.vec90
  br i1 %cmp.n95, label %iter.check112, label %.preheader50.preheader

.preheader50.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.04159.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec90, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.047.lcssa74, 3            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader50.prol.loopexit, label %.preheader50.prol

.preheader50.prol:                                ; preds = %.preheader50.preheader, %.preheader50.prol
  %.04159.prol = phi i64 [ %i.ag, %.preheader50.prol ], [ %.04159.ph, %.preheader50.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader50.prol ], [ 0, %.preheader50.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %.04159.prol
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !80
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.04159.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !80
  %i.ae = xor i8 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.04159.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !80
  %i.ag = add nuw nsw i64 %.04159.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader50.prol.loopexit, label %.preheader50.prol, !llvm.loop !397

.preheader50.prol.loopexit:                       ; preds = %.preheader50.prol, %.preheader50.preheader
  %.04159.unr = phi i64 [ %.04159.ph, %.preheader50.preheader ], [ %i.ag, %.preheader50.prol ]
  %i.ah = sub nsw i64 %.04159.ph, %.047.lcssa74
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %iter.check112, label %.preheader50

.preheader50:                                     ; preds = %.preheader50.prol.loopexit, %.preheader50
  %.04159 = phi i64 [ %i.bk, %.preheader50 ], [ %.04159.unr, %.preheader50.prol.loopexit ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %.04159
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.04159
  %i.am = load i8, ptr %i.al, align 1, !tbaa !80
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.04159
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !80
  %i.ap = add nuw nsw i64 %.04159, 1              ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ap
  store i8 %i.au, ptr %i.av, align 1, !tbaa !80
  %i.aw = add nuw nsw i64 %.04159, 2              ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.aw
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !80
  %i.bb = xor i8 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.aw
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !80
  %i.bd = add nuw nsw i64 %.04159, 3              ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.043.lcssa76, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.bd
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !80
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.bd
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !80
  %i.bk = add nuw nsw i64 %.04159, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.bk, %.047.lcssa74
  br i1 %exitcond.not.3, label %iter.check112, label %.preheader50, !llvm.loop !398

iter.check112:                                    ; preds = %.preheader50.prol.loopexit, %.preheader50, %vec.epilog.middle.block
  %i.bl = sub nuw nsw i64 16, %.047.lcssa74       ; 2 uses
  %min.iters.check98 = icmp ugt i64 %.047.lcssa74, 8
  %i.bm = sub i64 %.0.lcssa7784, %.045.lcssa7582
  %diff.check97 = icmp ugt i64 %i.bm, -32
  %or.cond = select i1 %min.iters.check98, i1 true, i1 %diff.check97
  br i1 %or.cond, label %.lr.ph61.preheader, label %vec.epilog.ph116

vec.epilog.ph116:                                 ; preds = %iter.check112
  %n.vec117 = and i64 %i.bl, 24                   ; 3 uses
  %i.bn = add nuw nsw i64 %.047.lcssa74, %n.vec117
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.047.lcssa74
  %wide.load120 = load <8 x i8>, ptr %i.bo, align 1, !tbaa !80
  %i.bp = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.047.lcssa74
  store <8 x i8> %wide.load120, ptr %i.bp, align 1, !tbaa !80
  %i.bq = icmp eq i64 %n.vec117, 8
  br i1 %i.bq, label %vec.epilog.middle.block122, label %vec.epilog.vector.body118.1

vec.epilog.vector.body118.1:                      ; preds = %vec.epilog.ph116
  %i.br = add nuw nsw i64 %.047.lcssa74, 8        ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.br
  %wide.load120.1 = load <8 x i8>, ptr %i.bs, align 1, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.br
  store <8 x i8> %wide.load120.1, ptr %i.bt, align 1, !tbaa !80
  br label %vec.epilog.middle.block122

vec.epilog.middle.block122:                       ; preds = %vec.epilog.vector.body118.1, %vec.epilog.ph116
  %cmp.n123 = icmp eq i64 %i.bl, %n.vec117
  br i1 %cmp.n123, label %._crit_edge62, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %iter.check112, %vec.epilog.middle.block122
  %.14260.ph = phi i64 [ %.047.lcssa74, %iter.check112 ], [ %i.bn, %vec.epilog.middle.block122 ] ; 4 uses
  %i.bu = sub i64 0, %.14260.ph
  %xtraiter127 = and i64 %i.bu, 3                 ; 2 uses
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol

.lr.ph61.prol:                                    ; preds = %.lr.ph61.preheader, %.lr.ph61.prol
  %.14260.prol = phi i64 [ %i.by, %.lr.ph61.prol ], [ %.14260.ph, %.lr.ph61.preheader ] ; 3 uses
  %prol.iter129 = phi i64 [ %prol.iter129.next, %.lr.ph61.prol ], [ 0, %.lr.ph61.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.14260.prol
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.14260.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !80
  %i.by = add i64 %.14260.prol, 1                 ; 2 uses
  %prol.iter129.next = add i64 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i64 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %.lr.ph61.prol.loopexit, label %.lr.ph61.prol, !llvm.loop !399

.lr.ph61.prol.loopexit:                           ; preds = %.lr.ph61.prol, %.lr.ph61.preheader
  %.14260.unr = phi i64 [ %.14260.ph, %.lr.ph61.preheader ], [ %i.by, %.lr.ph61.prol ]
  %i.bz = add i64 %.14260.ph, -13
  %i.ca = icmp ult i64 %i.bz, 3
  br i1 %i.ca, label %._crit_edge62, label %.lr.ph61

.lr.ph61:                                         ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61
  %.14260 = phi i64 [ %i.cq, %.lr.ph61 ], [ %.14260.unr, %.lr.ph61.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %.14260
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %.14260
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !80
  %i.ce = add i64 %.14260, 1                      ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !80
  %i.ch = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !80
  %i.ci = add i64 %.14260, 2                      ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !80
  %i.cl = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !80
  %i.cm = add i64 %.14260, 3                      ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa77, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %.045.lcssa75, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !80
  %i.cq = add i64 %.14260, 4                      ; 2 uses
  %exitcond67.not.3 = icmp eq i64 %i.cq, 16
  br i1 %exitcond67.not.3, label %._crit_edge62, label %.lr.ph61, !llvm.loop !400

._crit_edge62:                                    ; preds = %.lr.ph61.prol.loopexit, %.lr.ph61, %vec.epilog.middle.block122
  tail call void %5(ptr noundef nonnull %.045.lcssa75, ptr noundef nonnull %.045.lcssa75, ptr noundef %3) #36
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge62, %._crit_edge
  %.2 = phi ptr [ %.045.lcssa75, %._crit_edge62 ], [ %.04553, %._crit_edge ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.2, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @CRYPTO_cbc128_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.d = icmp ugt ptr %0, inttoptr (i64 31 to ptr)
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %i.f, -32
  %.not = icmp uge i64 %i.g, %i.e
  %or.cond.not94 = and i1 %i.d, %.not
  %i.h = icmp ult ptr %0, %1
  %or.cond90 = or i1 %i.h, %or.cond.not94
  %i.i = icmp ugt i64 %2, 15                      ; 2 uses
  br i1 %or.cond90, label %.preheader95, label %.preheader96

.preheader96:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph.preheader, label %iter.check

.lr.ph.preheader:                                 ; preds = %.preheader96
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.lr.ph

.preheader95:                                     ; preds = %bb.b
  br i1 %i.i, label %.lr.ph108, label %._crit_edge

.lr.ph108:                                        ; preds = %.preheader95, %.lr.ph108
  %.070107 = phi ptr [ %i.q, %.lr.ph108 ], [ %0, %.preheader95 ] ; 4 uses
  %.071106 = phi ptr [ %.070107, %.lr.ph108 ], [ %4, %.preheader95 ] ; 2 uses
  %.075105 = phi ptr [ %i.r, %.lr.ph108 ], [ %1, %.preheader95 ] ; 5 uses
  %.080104 = phi i64 [ %i.p, %.lr.ph108 ], [ %2, %.preheader95 ]
  tail call void %5(ptr noundef %.070107, ptr noundef %.075105, ptr noundef %3) #36
  %.0.copyload.i.i = load i64, ptr %.075105, align 1
  %.0.copyload.i7.i = load i64, ptr %.071106, align 1
  %i.l = xor i64 %.0.copyload.i7.i, %.0.copyload.i.i
  store i64 %i.l, ptr %.075105, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %.075105, i64 8 ; 2 uses
  %.0.copyload.i.1.i = load i64, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.071106, i64 8
  %.0.copyload.i7.1.i = load i64, ptr %i.n, align 1
  %i.o = xor i64 %.0.copyload.i7.1.i, %.0.copyload.i.1.i
  store i64 %i.o, ptr %i.m, align 1
  %i.p = add i64 %.080104, -16                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.070107, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.075105, i64 16 ; 2 uses
  %i.s = icmp ugt i64 %i.p, 15
  br i1 %i.s, label %.lr.ph108, label %._crit_edge, !llvm.loop !401

._crit_edge:                                      ; preds = %.lr.ph108, %.preheader95
  %.080.lcssa = phi i64 [ %2, %.preheader95 ], [ %i.p, %.lr.ph108 ]
  %.075.lcssa = phi ptr [ %1, %.preheader95 ], [ %i.r, %.lr.ph108 ]
  %.071.lcssa = phi ptr [ %4, %.preheader95 ], [ %.070107, %.lr.ph108 ]
  %.070.lcssa = phi ptr [ %0, %.preheader95 ], [ %i.q, %.lr.ph108 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %4, ptr noundef nonnull readonly align 1 dereferenceable(16) %.071.lcssa, i64 16, i1 false)
  br label %.loopexit97

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1101 = phi ptr [ %i.y, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 4 uses
  %.176100 = phi ptr [ %i.z, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.18199 = phi i64 [ %i.x, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  call void %5(ptr noundef %.1101, ptr noundef nonnull %i.b, ptr noundef %3) #36
  %.0.copyload.i = load i64, ptr %.1101, align 1
  %.0.copyload.i91 = load i64, ptr %i.b, align 16
  %.0.copyload.i92 = load i64, ptr %4, align 1
  %i.t = xor i64 %.0.copyload.i92, %.0.copyload.i91
  store i64 %i.t, ptr %.176100, align 1
  store i64 %.0.copyload.i, ptr %4, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.1101, i64 8
  %.0.copyload.i.1 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %.176100, i64 8
  %.0.copyload.i91.1 = load i64, ptr %i.j, align 8
  %.0.copyload.i92.1 = load i64, ptr %i.k, align 1
  %i.w = xor i64 %.0.copyload.i92.1, %.0.copyload.i91.1
  store i64 %i.w, ptr %i.v, align 1
  store i64 %.0.copyload.i.1, ptr %i.k, align 1
  %i.x = add i64 %.18199, -16                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.1101, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.176100, i64 16 ; 2 uses
  %i.aa = icmp ugt i64 %i.x, 15
  br i1 %i.aa, label %.lr.ph, label %.loopexit97, !llvm.loop !402

.loopexit97:                                      ; preds = %.lr.ph, %._crit_edge
  %.282 = phi i64 [ %.080.lcssa, %._crit_edge ], [ %i.x, %.lr.ph ] ; 2 uses
  %.277 = phi ptr [ %.075.lcssa, %._crit_edge ], [ %i.z, %.lr.ph ]
  %.2 = phi ptr [ %.070.lcssa, %._crit_edge ], [ %i.y, %.lr.ph ]
  %.not87 = icmp eq i64 %.282, 0
  br i1 %.not87, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader96, %.loopexit97
  %.2134 = phi ptr [ %.2, %.loopexit97 ], [ %0, %.preheader96 ] ; 17 uses
  %.277133 = phi ptr [ %.277, %.loopexit97 ], [ %1, %.preheader96 ] ; 9 uses
  %.282132 = phi i64 [ %.282, %.loopexit97 ], [ %2, %.preheader96 ] ; 21 uses
  %.2134195 = ptrtoaddr ptr %.2134 to i64
  call void %5(ptr noundef %.2134, ptr noundef nonnull %i.b, ptr noundef %3) #36
  %i.ab = sub nuw nsw i64 17, %.282132            ; 4 uses
  %min.iters.check = icmp ult i64 %.282132, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ac = getelementptr i8, ptr %.277133, i64 %.282132 ; 3 uses
  %i.ad = getelementptr i8, ptr %4, i64 %.282132  ; 3 uses
  %i.ae = getelementptr i8, ptr %.2134, i64 %.282132 ; 2 uses
  %i.af = getelementptr i8, ptr %i.b, i64 %.282132 ; 2 uses
  %bound0 = icmp ult ptr %.277133, %i.ad
  %bound1 = icmp ult ptr %4, %i.ac
end_hunk_0
begin_hunk_1_@EVP_EncryptFinal_ex:bb.a
bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !182  ; 6 uses
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %2, align 4, !tbaa !82
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.o = load i32, ptr %i.n, align 4, !tbaa !180  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !176
  %i.r = and i32 %i.q, 2048
  %.not38 = icmp eq i32 %i.r, 0
  br i1 %.not38, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not40 = icmp eq i32 %i.o, 0
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.15, i32 noundef 337) #36
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  store i32 0, ptr %2, align 4, !tbaa !82
  br label %.critedge

bb.l:                                             ; preds = %bb.h
  %i.s = icmp ult i32 %i.o, %i.l
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.t = sub nuw i32 %i.l, %i.o
  %i.u = trunc i32 %i.t to i8
  %i.v = zext i32 %i.o to i64
  %i.w = getelementptr i8, ptr %0, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.w, i64 68
  %i.x = xor i32 %i.o, -1
  %i.y = add i32 %i.l, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 %i.u, i64 %i.aa, i1 false), !tbaa !80
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !183
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ae = zext i32 %i.l to i64
  %i.af = tail call noundef i32 %i.ac(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.ad, i64 noundef %i.ae) #36
  %.not39 = icmp eq i32 %i.af, 0
  br i1 %.not39, label %.critedge, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  store i32 %i.l, ptr %2, align 4, !tbaa !82
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.k, %bb.m, %bb.e, %bb.d, %._crit_edge, %bb.j, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %._crit_edge ], [ 0, %bb.d ], [ 0, %bb.j ], [ 1, %bb.e ], [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_DecryptUpdate(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i32, ptr %i.a, align 8, !tbaa !169
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.15, i32 noundef 361) #36
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !164    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !182  ; 7 uses
  %i.f = icmp ugt i32 %i.e, 1                     ; 2 uses
  %i.g = sub nsw i32 2147483647, %i.e
  %i.h = icmp sgt i32 %4, %i.g
  %or.cond = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str.15, i32 noundef 369) #36
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !171
  %i.k = and i32 %i.j, 1024
  %.not55 = icmp eq i32 %i.k, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !183
  %i.n = sext i32 %4 to i64
  %i.o = tail call noundef i32 %i.m(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3, i64 noundef %i.n) #36 ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  %. = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0)
  %.62 = zext i1 %i.p to i32
  store i32 %., ptr %2, align 4, !tbaa !82
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.q = icmp slt i32 %4, 1
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !82
  %i.r = icmp eq i32 %4, 0
  %i.s = zext i1 %i.r to i32
  br label %bb.t

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !176
  %i.v = and i32 %i.u, 2048
  %.not56 = icmp eq i32 %i.v, 0
  br i1 %.not56, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !181
  %.not57 = icmp eq i32 %i.y, 0                   ; 2 uses
  br i1 %.not57, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = zext i32 %i.e to i64                     ; 2 uses
  %i.aa = icmp eq i32 %i.e, 0
  br i1 %i.aa, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.l, %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  br label %bb.n

bb.n:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.k
  %.049 = phi ptr [ %i.ac, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ %1, %bb.k ] ; 2 uses
  %i.ad = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %.049, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.f, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !180
  %.not59 = icmp eq i32 %i.af, 0
  br i1 %.not59, label %_ZL14OPENSSL_memcpyPvPKvm.exit63, label %bb.q

_ZL14OPENSSL_memcpyPvPKvm.exit63:                 ; preds = %bb.p
  %i.ag = load i32, ptr %2, align 4, !tbaa !82
  %i.ah = sub i32 %i.ag, %i.e
  store i32 %i.ah, ptr %2, align 4, !tbaa !82
  store i32 1, ptr %i.x, align 4, !tbaa !181
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aj = load i32, ptr %2, align 4, !tbaa !82
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %.049, i64 %i.ak
  %i.am = zext i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr readonly align 1 %i.al, i64 %i.am, i1 false)
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.x, align 4, !tbaa !181
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZL14OPENSSL_memcpyPvPKvm.exit63
  br i1 %.not57, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = load i32, ptr %2, align 4, !tbaa !82
  %i.ao = add i32 %i.an, %i.e
  store i32 %i.ao, ptr %2, align 4, !tbaa !82
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.j, %bb.r, %bb.s, %bb.n, %bb.b
  %.3 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %.62, %bb.f ], [ %i.s, %bb.h ], [ %i.w, %bb.j ], [ 0, %bb.n ], [ 1, %bb.s ], [ 1, %bb.r ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_DecryptFinal_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  store i32 0, ptr %2, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i32, ptr %i.c, align 8, !tbaa !169
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.15, i32 noundef 428) #36
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !164    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !171
  %i.h = and i32 %i.g, 1024
  %.not46 = icmp eq i32 %i.h, 0
  br i1 %.not46, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i64 noundef 0) #36 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.k, ptr %2, align 4, !tbaa !82
  br label %bb.r

bb.f:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !182  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !176
  %i.q = and i32 %i.p, 2048
  %.not47 = icmp eq i32 %i.q, 0
  br i1 %.not47, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.s = load i32, ptr %i.r, align 4, !tbaa !180
  %.not51 = icmp eq i32 %i.s, 0
  br i1 %.not51, label %bb.r, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 106, ptr noundef nonnull @.str.15, i32 noundef 445) #36
  br label %bb.r

bb.i:                                             ; preds = %bb.f
  %i.t = icmp ugt i32 %i.n, 1
  br i1 %i.t, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.v = load i32, ptr %i.u, align 4, !tbaa !180
  %.not48 = icmp eq i32 %i.v, 0
  br i1 %.not48, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.x = load i32, ptr %i.w, align 4, !tbaa !181
  %.not49 = icmp eq i32 %i.x, 0
  br i1 %.not49, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 123, ptr noundef nonnull @.str.15, i32 noundef 454) #36
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.z = add i32 %i.n, -1
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !80  ; 3 uses
  %i.ad = zext i8 %i.ac to i32                    ; 3 uses
  %i.ae = icmp eq i8 %i.ac, 0
  %i.af = icmp slt i32 %i.n, %i.ad
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.n, label %.preheader

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.15, i32 noundef 463) #36
  br label %bb.r

bb.o:                                             ; preds = %.preheader
  %i.ag = add nuw nsw i32 %.04052, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %i.ad
  br i1 %exitcond.not, label %bb.q, label %.preheader, !llvm.loop !1045

.preheader:                                       ; preds = %bb.m, %bb.o
  %.053 = phi i32 [ %i.ah, %bb.o ], [ %i.n, %bb.m ]
  %.04052 = phi i32 [ %i.ag, %bb.o ], [ 0, %bb.m ]
  %i.ah = add i32 %.053, -1                       ; 2 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %.not50 = icmp eq i8 %i.ak, %i.ac
  br i1 %.not50, label %bb.o, label %bb.p

bb.p:                                             ; preds = %.preheader
  tail call void @ERR_put_error(i32 noundef 30, i32 noundef 0, i32 noundef 101, ptr noundef nonnull @.str.15, i32 noundef 469) #36
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.al = sub nuw nsw i32 %i.n, %i.ad             ; 5 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.q
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 8 uses
  %min.iters.check = icmp ult i32 %i.al, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = sub i64 %i.b, %i.a
  %i.ao = add i64 %i.an, -113
  %diff.check = icmp ult i64 %i.ao, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check62 = icmp ult i32 %i.al, 32
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <16 x i8>, ptr %i.aq, align 1, !tbaa !80
  %wide.load63 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store <16 x i8> %wide.load, ptr %i.as, align 1, !tbaa !80
  store <16 x i8> %wide.load63, ptr %i.at, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !1046

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec64 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index65 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next67, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %index65
  %wide.load66 = load <4 x i8>, ptr %i.av, align 1, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %index65
  store <4 x i8> %wide.load66, ptr %i.aw, align 1, !tbaa !80
  %index.next67 = add nuw i64 %index65, 4         ; 2 uses
  %i.ax = icmp eq i64 %index.next67, %n.vec64
  br i1 %i.ax, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1047

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n68 = icmp eq i64 %n.vec64, %wide.trip.count
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec64, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.prol
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !80
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !80
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1048

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.bb = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !80
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !80
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond56.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1049

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.q
  store i32 %i.al, ptr %2, align 4, !tbaa !82
  br label %bb.r

bb.r:                                             ; preds = %bb.i, %bb.g, %bb.e, %._crit_edge, %bb.d, %bb.p, %bb.n, %bb.l, %bb.h, %bb.b
  %.041 = phi i32 [ 0, %bb.b ], [ 0, %bb.p ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.n ], [ 1, %._crit_edge ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.i ]
  ret i32 %.041
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @EVP_Cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #36
  ret i32 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_CipherUpdate(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !173
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_EncryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @EVP_DecryptUpdate(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @EVP_CipherFinal_ex(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !173
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_EncryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @EVP_DecryptFinal_ex(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @EVP_CIPHER_CTX_cipher(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !164
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @EVP_CIPHER_CTX_nid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !164
  %i.b = load i32, ptr %i.a, align 8, !tbaa !184
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @EVP_CIPHER_CTX_encrypting(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !173
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @EVP_CIPHER_CTX_block_size(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !164
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !182
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @EVP_CIPHER_CTX_key_length(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2_@CMAC_Init:bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !80  ; 2 uses
  %i.bv = call i8 @llvm.fshl.i8(i8 %i.bq, i8 %i.bu, i8 1) ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 166
  store i8 %i.bv, ptr %i.bw, align 2, !tbaa !80
  %i.bx = shl i8 %i.bu, 1
  %isneg.i = icmp slt i8 %i.p, 0
  %i.by = select i1 %isneg.i, i8 -121, i8 0
  %i.bz = xor i8 %i.bx, %i.by                     ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 167
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !80
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cc = call i8 @llvm.fshl.i8(i8 %i.s, i8 %i.v, i8 1)
  store i8 %i.cc, ptr %i.cb, align 8, !tbaa !80
  %i.cd = call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.z, i8 1)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !80
  %i.cf = call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ad, i8 1)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.cf, ptr %i.cg, align 2, !tbaa !80
  %i.ch = call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ah, i8 1)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !80
  %i.cj = call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.al, i8 1)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.cj, ptr %i.ck, align 4, !tbaa !80
  %i.cl = call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ap, i8 1)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !80
  %i.cn = call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.at, i8 1)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 174
  store i8 %i.cn, ptr %i.co, align 2, !tbaa !80
  %i.cp = call i8 @llvm.fshl.i8(i8 %i.at, i8 %i.ax, i8 1)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 175
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !80
  %i.cr = call i8 @llvm.fshl.i8(i8 %i.ax, i8 %i.bb, i8 1)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.cr, ptr %i.cs, align 8, !tbaa !80
  %i.ct = call i8 @llvm.fshl.i8(i8 %i.bb, i8 %i.bf, i8 1)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 %i.ct, ptr %i.cu, align 1, !tbaa !80
  %i.cv = call i8 @llvm.fshl.i8(i8 %i.bf, i8 %i.bj, i8 1)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 %i.cv, ptr %i.cw, align 2, !tbaa !80
  %i.cx = call i8 @llvm.fshl.i8(i8 %i.bj, i8 %i.bn, i8 1)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 179
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !80
  %i.cz = call i8 @llvm.fshl.i8(i8 %i.bn, i8 %i.br, i8 1)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i8 %i.cz, ptr %i.da, align 4, !tbaa !80
  %i.db = call i8 @llvm.fshl.i8(i8 %i.br, i8 %i.bv, i8 1)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 %i.db, ptr %i.dc, align 1, !tbaa !80
  %i.dd = call i8 @llvm.fshl.i8(i8 %i.bv, i8 %i.bz, i8 1)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.de = shl i8 %i.ao, 1                         ; 2 uses
  %isneg.i24 = icmp slt i8 %i.p, 0
  %i.df = select i1 %isneg.i24, i8 27, i8 0
  %i.dg = xor i8 %i.de, %i.df                     ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 159
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !80
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dj = call i8 @llvm.fshl.i8(i8 %i.s, i8 %i.v, i8 1)
  store i8 %i.dj, ptr %i.di, align 8, !tbaa !80
  %i.dk = call i8 @llvm.fshl.i8(i8 %i.v, i8 %i.z, i8 1)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 169
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !80
  %i.dm = call i8 @llvm.fshl.i8(i8 %i.z, i8 %i.ad, i8 1)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 170
  store i8 %i.dm, ptr %i.dn, align 2, !tbaa !80
  %i.do = call i8 @llvm.fshl.i8(i8 %i.ad, i8 %i.ah, i8 1)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 171
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !80
  %i.dq = call i8 @llvm.fshl.i8(i8 %i.ah, i8 %i.al, i8 1)
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 %i.dq, ptr %i.dr, align 4, !tbaa !80
  %i.ds = call i8 @llvm.fshl.i8(i8 %i.al, i8 %i.ap, i8 1)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 173
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !80
  %i.du = call i8 @llvm.fshl.i8(i8 %i.ap, i8 %i.de, i8 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink33 = phi i64 [ 174, %bb.h ], [ 182, %bb.g ]
  %.sink31 = phi i8 [ %i.du, %bb.h ], [ %i.dd, %bb.g ]
  %.sink30 = phi i8 [ %i.dg, %bb.h ], [ %i.bz, %bb.g ]
  %.sink = phi i8 [ 27, %bb.h ], [ -121, %bb.g ]
  %.sink27 = phi i64 [ 175, %bb.h ], [ 183, %bb.g ]
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %.sink33
  store i8 %.sink31, ptr %i.dv, align 1, !tbaa !80
  %i.dw = shl i8 %.sink30, 1
  %isneg.i25 = icmp slt i8 %i.s, 0
  %i.dx = select i1 %isneg.i25, i8 %.sink, i8 0
  %i.dy = xor i8 %i.dw, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink27
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !80
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.ea, align 8, !tbaa !187
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.i
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %bb.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CMAC_Update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !164    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !182
  %i.e = zext i32 %i.d to i64                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !187  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = sub nsw i64 %i.e, %i.h
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.i) ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.k = icmp eq i64 %spec.select, 0
  br i1 %i.k, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr readonly align 1 %1, i64 %spec.select, i1 false)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !187
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %i.g, %bb.b ], [ %.pre, %bb.c ]
  %i.n = sub nuw i64 %2, %spec.select             ; 2 uses
  %i.o = trunc i64 %spec.select to i32
  %i.p = add i32 %i.m, %i.o
  store i32 %i.p, ptr %i.f, align 8, !tbaa !187
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183
  %i.u = call noundef i32 %i.t(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j, i64 noundef %i.e) #36, !inline_history !188
  %.not48 = icmp eq i32 %i.u, 0
  br i1 %.not48, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.041 = phi ptr [ %1, %bb.a ], [ %i.r, %bb.d ]  ; 2 uses
  %.039 = phi i64 [ %2, %bb.a ], [ %i.n, %bb.d ]  ; 3 uses
  %i.v = icmp ugt i64 %.039, %i.e
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.14056 = phi i64 [ %i.ab, %bb.f ], [ %.039, %bb.e ]
  %.14255 = phi ptr [ %i.aa, %bb.f ], [ %.041, %bb.e ] ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !164
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !183
  %i.z = call noundef i32 %i.y(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef %.14255, i64 noundef %i.e) #36, !inline_history !188
  %.not49 = icmp eq i32 %i.z, 0
  br i1 %.not49, label %.thread, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %.14255, i64 %i.e ; 2 uses
  %i.ab = sub nuw i64 %.14056, %i.e               ; 3 uses
  %i.ac = icmp ugt i64 %i.ab, %i.e
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.f, %bb.e
  %.142.lcssa = phi ptr [ %.041, %bb.e ], [ %i.aa, %bb.f ]
  %.140.lcssa = phi i64 [ %.039, %bb.e ], [ %i.ab, %bb.f ] ; 3 uses
  %i.ad = icmp eq i64 %.140.lcssa, 0
  br i1 %i.ad, label %_ZL14OPENSSL_memcpyPvPKvm.exit50, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr readonly align 1 %.142.lcssa, i64 %.140.lcssa, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit50

_ZL14OPENSSL_memcpyPvPKvm.exit50:                 ; preds = %._crit_edge, %bb.g
  %i.af = trunc nuw i64 %.140.lcssa to i32
  store i32 %i.af, ptr %i.f, align 8, !tbaa !187
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d, %_ZL14OPENSSL_memcpyPvPKvm.exit, %_ZL14OPENSSL_memcpyPvPKvm.exit50
  %.2 = phi i32 [ 0, %bb.d ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit50 ], [ 1, %_ZL14OPENSSL_memcpyPvPKvm.exit ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret i32 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @CMAC_Final(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !164    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !182  ; 6 uses
  %i.f = zext i32 %i.e to i64                     ; 11 uses
  store i64 %i.f, ptr %2, align 8, !tbaa !96
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !187  ; 2 uses
  %.not = icmp eq i32 %i.i, %i.e
  br i1 %.not, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 -128, ptr %i.l, align 1, !tbaa !80
  %i.m = load i32, ptr %i.h, align 8, !tbaa !187  ; 2 uses
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = icmp eq i32 %i.e, %i.n
  br i1 %i.o, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = zext i32 %i.n to i64
  %i.q = sub nsw i64 %i.f, %i.p
  %i.r = zext i32 %i.m to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.t, i8 0, i64 %i.q, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.d, %bb.c, %bb.b
  %i.u = phi i64 [ 152, %bb.b ], [ 168, %bb.c ], [ 168, %bb.d ] ; 2 uses
  %.not40 = icmp eq i32 %i.e, 0
  br i1 %.not40, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.x = add i64 %i.u, %i.a
  %i.y = sub i64 %i.x, %i.b
  %diff.check = icmp ugt i64 %i.y, -32
  %i.z = sub i64 %i.b, %i.a
  %i.aa = add i64 %i.z, -185
  %diff.check45 = icmp ult i64 %i.aa, 31
  %conflict.rdx = or i1 %diff.check, %diff.check45
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check46 = icmp ult i32 %i.e, 32
  br i1 %min.iters.check46, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.f, 28
  %n.vec = and i64 %i.f, 4294967264               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <16 x i8>, ptr %i.ac, align 1, !tbaa !80
  %wide.load47 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load48 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !80
  %wide.load49 = load <16 x i8>, ptr %i.af, align 1, !tbaa !80
  %i.ag = xor <16 x i8> %wide.load48, %wide.load
  %i.ah = xor <16 x i8> %wide.load49, %wide.load47
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %i.ag, ptr %i.ai, align 1, !tbaa !80
  store <16 x i8> %i.ah, ptr %i.aj, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !1055

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec50 = and i64 %i.f, 4294967292             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index51 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 %index51
  %wide.load52 = load <4 x i8>, ptr %i.al, align 1, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 %index51
  %wide.load53 = load <4 x i8>, ptr %i.am, align 1, !tbaa !80
  %i.an = xor <4 x i8> %wide.load53, %wide.load52
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %index51
  store <4 x i8> %i.an, ptr %i.ao, align 1, !tbaa !80
  %index.next54 = add nuw i64 %index51, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next54, %n.vec50
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1056

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %n.vec50, %i.f
  br i1 %cmp.n55, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec50, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.prol
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.prol
  %i.at = load i8, ptr %i.as, align 1, !tbaa !80
  %i.au = xor i8 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  store i8 %i.au, ptr %i.av, align 1, !tbaa !80
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1057

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.aw = sub nsw i64 %indvars.iv.ph, %i.f
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !80
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !80
  %i.bc = xor i8 %i.bb, %i.az
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !80
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !80
  %i.bi = xor i8 %i.bh, %i.bf
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !80
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !80
  %i.bo = xor i8 %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !80
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.2
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !80
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !80
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.f
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !1058

._crit_edge.loopexit:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %0, align 8, !tbaa !164
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZL14OPENSSL_memsetPvim.exit
  %i.bw = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %_ZL14OPENSSL_memsetPvim.exit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !183
  %i.bz = tail call noundef i32 %i.by(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %1, i64 noundef %i.f) #36, !inline_history !188
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.a
  %.02938 = phi i32 [ 1, %bb.a ], [ %i.bz, %._crit_edge ]
  ret i32 %.02938
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @CMAC_CTX_new() local_unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @OPENSSL_malloc(i64 noundef 208) #36 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(152) %i.a, i8 0, i64 152, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @CMAC_CTX_free(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !164    ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !166  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.d, null
  br i1 %.not7.i.i, label %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.d(ptr noundef nonnull %0) #36, !inline_history !30
  br label %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit

_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit:         ; preds = %bb.b, %bb.c, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !167
  tail call void @OPENSSL_free(ptr noundef %i.f) #36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.g, i64 noundef 16) #36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.h, i64 noundef 16) #36
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @OPENSSL_cleanse(ptr noundef nonnull %i.i, i64 noundef 16) #36
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #36
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZL16CMAC_CTX_cleanupP11cmac_ctx_st.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @CMAC_CTX_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
end_hunk_2
begin_hunk_3_@_ZL16bn_mul_recursivePmPKmS1_iiiS_:bb.a
  %.12956.i249 = phi ptr [ %i.pi, %.lr.ph59.i246 ], [ %i.ov, %.preheader.i238 ] ; 3 uses
  %.14154.i251 = phi i64 [ %i.ph, %.lr.ph59.i246 ], [ %i.ou, %.preheader.i238 ]
  %i.oy = load i64, ptr %.12956.i249, align 8, !tbaa !96
  %i.oz = load i64, ptr %.12757.i248, align 8, !tbaa !96
  %i.pa = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oy, i64 %i.oz) ; 2 uses
  %i.pb = extractvalue { i64, i1 } %i.pa, 1
  %i.pc = extractvalue { i64, i1 } %i.pa, 0
  %i.pd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pc, i64 %.14154.i251) ; 2 uses
  %i.pe = extractvalue { i64, i1 } %i.pd, 1
  %i.pf = extractvalue { i64, i1 } %i.pd, 0
  %i.pg = or i1 %i.pb, %i.pe
  %i.ph = zext i1 %i.pg to i64                    ; 2 uses
  store i64 %i.pf, ptr %.12956.i249, align 8, !tbaa !96
  %i.pi = getelementptr i8, ptr %.12956.i249, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %.12757.i248, i64 8
  %i.pk = add nsw i64 %.158.i247, -1              ; 2 uses
  %.not34.i252 = icmp eq i64 %i.pk, 0
  br i1 %.not34.i252, label %bn_add_words.exit254, label %.lr.ph59.i246, !llvm.loop !12

bn_add_words.exit254:                             ; preds = %.lr.ph59.i246, %.preheader.i238
  %.032.i253 = phi i64 [ %i.ou, %.preheader.i238 ], [ %i.ph, %.lr.ph59.i246 ]
  %i.pl = add nuw nsw i32 %i.s, %3                ; 2 uses
  %i.pm = icmp samesign ult i32 %i.pl, %i.gb
  br i1 %i.pm, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit254
  %i.pn = add i64 %i.na, %.032.i253               ; 2 uses
  %i.po = zext nneg i32 %i.pl to i64              ; 3 uses
  %i.pp = sub nsw i32 %3, %i.s
  %.neg = add nuw nsw i32 %i.s, 1
  %xtraiter428 = and i32 %i.pp, 1
  %lcmp.mod429.not = icmp eq i32 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.po ; 2 uses
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !96 ; 2 uses
  %i.ps = add i64 %i.pr, %i.pn                    ; 2 uses
  store i64 %i.ps, ptr %i.pq, align 8, !tbaa !96
  %i.pt = icmp ult i64 %i.ps, %i.pr
  %i.pu = zext i1 %i.pt to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.po, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.po, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0168278.unr = phi i64 [ %i.pn, %.lr.ph.preheader ], [ %i.pu, %.lr.ph.prol ]
  %i.pv = icmp eq i32 %3, %.neg
  br i1 %i.pv, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0168278 = phi i64 [ %i.qg, %.lr.ph ], [ %.0168278.unr, %.lr.ph.prol.loopexit ]
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !96 ; 2 uses
  %i.py = add i64 %i.px, %.0168278                ; 2 uses
  store i64 %i.py, ptr %i.pw, align 8, !tbaa !96
  %i.pz = icmp ult i64 %i.py, %i.px
  %i.qa = zext i1 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !96 ; 2 uses
  %i.qe = add i64 %i.qd, %i.qa                    ; 2 uses
  store i64 %i.qe, ptr %i.qc, align 8, !tbaa !96
  %i.qf = icmp ult i64 %i.qe, %i.qd
  %i.qg = zext i1 %i.qf to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qh = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.qi = icmp sgt i32 %i.gb, %i.qh
  br i1 %i.qi, label %.lr.ph, label %.loopexit, !llvm.loop !1501

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit254, %bb.d, %_ZL14OPENSSL_memsetPvim.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 0, 2) i32 @_ZL12aes_init_keyP17evp_cipher_ctx_stPKhS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !164
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171
  %i.f = and i32 %i.e, 63                         ; 3 uses
  %i.g = icmp eq i32 %i.f, 5                      ; 2 uses
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 2                      ; 2 uses
  %i.i = add nsw i32 %i.f, -3
  %or.cond = icmp ult i32 %i.i, -2
  %i.j = icmp ne i32 %3, 0
  %or.cond3 = or i1 %i.j, %or.cond
  br i1 %or.cond3, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !175
  %i.m = shl i32 %i.l, 3
  %i.n = tail call range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %1, i32 noundef %i.m, ptr noundef %i.b) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_nohw_decrypt, ptr %i.o, align 8, !tbaa !372
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %spec.store.select70 = select i1 %i.h, ptr @aes_nohw_cbc_encrypt, ptr null
  store ptr %spec.store.select70, ptr %i.p, align 8, !tbaa !80
  br label %.thread76

.thread:                                          ; preds = %bb.a, %bb.b
  %i.q = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !175
  %i.t = shl i32 %i.s, 3
  %i.u = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %1, i32 noundef %i.t, ptr noundef %i.b) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_nohw_encrypt, ptr %i.v, align 8, !tbaa !372
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  store ptr null, ptr %i.w, align 8, !tbaa !80
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  store ptr @aes_nohw_cbc_encrypt, ptr %i.w, align 8, !tbaa !80
  br label %.thread76

bb.e:                                             ; preds = %.thread
  br i1 %i.g, label %bb.f, label %.thread76

bb.f:                                             ; preds = %bb.e
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.w, align 8, !tbaa !80
  br label %.thread76

.thread76:                                        ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_cbc_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !173
  tail call void %i.d(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %i.g) #36
  br label %CRYPTO_cbc128_encrypt.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !173
  %.not21 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !372  ; 3 uses
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %CRYPTO_cbc128_encrypt.exit, label %.preheader51.i

.preheader51.i:                                   ; preds = %bb.d
  %i.n = icmp ugt i64 %3, 15
  br i1 %i.n, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader51.i, %.lr.ph.i
  %.055.i = phi ptr [ %.04553.i, %.lr.ph.i ], [ %i.j, %.preheader51.i ] ; 2 uses
  %.04354.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %.preheader51.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.v, %.lr.ph.i ], [ %1, %.preheader51.i ] ; 8 uses
  %.04752.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %.preheader51.i ]
  %.0.copyload.i.i.i = load i64, ptr %.04354.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.055.i, align 1
  %i.o = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.o, ptr %.04553.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04553.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.04354.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.r, align 1
  %i.s = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.s, ptr %i.p, align 1
  tail call void %i.l(ptr noundef nonnull %.04553.i, ptr noundef nonnull %.04553.i, ptr noundef nonnull %i.b) #36, !inline_history !1512
  %i.t = add i64 %.04752.i, -16                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04354.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04553.i, i64 16 ; 2 uses
  %i.w = icmp ugt i64 %i.t, 15
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader51.i
  %.0.lcssa77.i = phi ptr [ %.04553.i, %._crit_edge.i ], [ %i.j, %.preheader51.i ] ; 15 uses
  %.043.lcssa76.i = phi ptr [ %i.u, %._crit_edge.i ], [ %2, %.preheader51.i ] ; 8 uses
  %.045.lcssa75.i = phi ptr [ %i.v, %._crit_edge.i ], [ %1, %.preheader51.i ] ; 18 uses
  %.047.lcssa74.i = phi i64 [ %i.t, %._crit_edge.i ], [ %3, %.preheader51.i ] ; 14 uses
  %.045.lcssa75.i33 = ptrtoaddr ptr %.045.lcssa75.i to i64 ; 3 uses
  %.0.lcssa77.i35 = ptrtoaddr ptr %.0.lcssa77.i to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.047.lcssa74.i, 4
  br i1 %min.iters.check, label %.preheader50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.043.lcssa76.i34 = ptrtoaddr ptr %.043.lcssa76.i to i64
  %i.x = sub i64 %.043.lcssa76.i34, %.045.lcssa75.i33
  %diff.check = icmp ugt i64 %i.x, -32
  %i.y = sub i64 %.0.lcssa77.i35, %.045.lcssa75.i33
  %diff.check36 = icmp ugt i64 %i.y, -32
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.preheader50.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %.047.lcssa74.i, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !80
  %wide.load38 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load39 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !80
  %wide.load40 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !80
  %i.ad = xor <16 x i8> %wide.load39, %wide.load
  %i.ae = xor <16 x i8> %wide.load40, %wide.load38
  %i.af = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !80
  store <16 x i8> %i.ae, ptr %i.ag, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !1506

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec41 = and i64 %.047.lcssa74.i, 12          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %index42
  %wide.load43 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %index42
  %wide.load44 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !80
  %i.aj = xor <4 x i8> %wide.load44, %wide.load43
  %i.ak = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %index42
  store <4 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !80
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1507

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.047.lcssa74.i, %n.vec41
  br i1 %cmp.n46, label %iter.check63, label %.preheader50.i.preheader

.preheader50.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.04159.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.047.lcssa74.i, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader50.i.prol.loopexit, label %.preheader50.i.prol

.preheader50.i.prol:                              ; preds = %.preheader50.i.preheader, %.preheader50.i.prol
  %.04159.i.prol = phi i64 [ %i.as, %.preheader50.i.prol ], [ %.04159.i.ph, %.preheader50.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader50.i.prol ], [ 0, %.preheader50.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %.04159.i.prol
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.04159.i.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.04159.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !80
  %i.as = add nuw nsw i64 %.04159.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader50.i.prol.loopexit, label %.preheader50.i.prol, !llvm.loop !1508

.preheader50.i.prol.loopexit:                     ; preds = %.preheader50.i.prol, %.preheader50.i.preheader
  %.04159.i.unr = phi i64 [ %.04159.i.ph, %.preheader50.i.preheader ], [ %i.as, %.preheader50.i.prol ]
  %i.at = sub nsw i64 %.04159.i.ph, %.047.lcssa74.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %iter.check63, label %.preheader50.i

.preheader50.i:                                   ; preds = %.preheader50.i.prol.loopexit, %.preheader50.i
  %.04159.i = phi i64 [ %i.bw, %.preheader50.i ], [ %.04159.i.unr, %.preheader50.i.prol.loopexit ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %.04159.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.04159.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.04159.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !80
  %i.bb = add nuw nsw i64 %.04159.i, 1            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = xor i8 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.bb
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !80
  %i.bi = add nuw nsw i64 %.04159.i, 2            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.bi
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !80
  %i.bn = xor i8 %i.bm, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.bi
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !80
  %i.bp = add nuw nsw i64 %.04159.i, 3            ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !80
  %i.bu = xor i8 %i.bt, %i.br
  %i.bv = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.bp
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !80
  %i.bw = add nuw nsw i64 %.04159.i, 4            ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bw, %.047.lcssa74.i
  br i1 %exitcond.not.i.3, label %iter.check63, label %.preheader50.i, !llvm.loop !1509

iter.check63:                                     ; preds = %.preheader50.i.prol.loopexit, %.preheader50.i, %vec.epilog.middle.block
  %i.bx = sub nuw nsw i64 16, %.047.lcssa74.i     ; 2 uses
  %min.iters.check49 = icmp ugt i64 %.047.lcssa74.i, 8
  %i.by = sub i64 %.0.lcssa77.i35, %.045.lcssa75.i33
  %diff.check48 = icmp ugt i64 %i.by, -32
  %or.cond = select i1 %min.iters.check49, i1 true, i1 %diff.check48
  br i1 %or.cond, label %.lr.ph61.i.preheader, label %vec.epilog.ph67

vec.epilog.ph67:                                  ; preds = %iter.check63
  %n.vec68 = and i64 %i.bx, 24                    ; 3 uses
  %i.bz = add nuw nsw i64 %.047.lcssa74.i, %n.vec68
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.047.lcssa74.i
  %wide.load71 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !80
  %i.cb = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.047.lcssa74.i
  store <8 x i8> %wide.load71, ptr %i.cb, align 1, !tbaa !80
  %i.cc = icmp eq i64 %n.vec68, 8
  br i1 %i.cc, label %vec.epilog.middle.block73, label %vec.epilog.vector.body69.1

vec.epilog.vector.body69.1:                       ; preds = %vec.epilog.ph67
  %i.cd = add nuw nsw i64 %.047.lcssa74.i, 8      ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cd
  %wide.load71.1 = load <8 x i8>, ptr %i.ce, align 1, !tbaa !80
  %i.cf = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cd
  store <8 x i8> %wide.load71.1, ptr %i.cf, align 1, !tbaa !80
  br label %vec.epilog.middle.block73

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body69.1, %vec.epilog.ph67
  %cmp.n74 = icmp eq i64 %i.bx, %n.vec68
  br i1 %cmp.n74, label %._crit_edge62.i, label %.lr.ph61.i.preheader

.lr.ph61.i.preheader:                             ; preds = %iter.check63, %vec.epilog.middle.block73
  %.14260.i.ph = phi i64 [ %.047.lcssa74.i, %iter.check63 ], [ %i.bz, %vec.epilog.middle.block73 ] ; 4 uses
  %i.cg = sub i64 0, %.14260.i.ph
  %xtraiter78 = and i64 %i.cg, 3                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.lr.ph61.i.prol.loopexit, label %.lr.ph61.i.prol

.lr.ph61.i.prol:                                  ; preds = %.lr.ph61.i.preheader, %.lr.ph61.i.prol
  %.14260.i.prol = phi i64 [ %i.ck, %.lr.ph61.i.prol ], [ %.14260.i.ph, %.lr.ph61.i.preheader ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.lr.ph61.i.prol ], [ 0, %.lr.ph61.i.preheader ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.14260.i.prol
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !80
  %i.cj = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.14260.i.prol
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !80
  %i.ck = add i64 %.14260.i.prol, 1               ; 2 uses
  %prol.iter80.next = add i64 %prol.iter80, 1     ; 2 uses
  %prol.iter80.cmp.not = icmp eq i64 %prol.iter80.next, %xtraiter78
  br i1 %prol.iter80.cmp.not, label %.lr.ph61.i.prol.loopexit, label %.lr.ph61.i.prol, !llvm.loop !1510

.lr.ph61.i.prol.loopexit:                         ; preds = %.lr.ph61.i.prol, %.lr.ph61.i.preheader
  %.14260.i.unr = phi i64 [ %.14260.i.ph, %.lr.ph61.i.preheader ], [ %i.ck, %.lr.ph61.i.prol ]
  %i.cl = add i64 %.14260.i.ph, -13
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %._crit_edge62.i, label %.lr.ph61.i

.lr.ph61.i:                                       ; preds = %.lr.ph61.i.prol.loopexit, %.lr.ph61.i
  %.14260.i = phi i64 [ %i.dc, %.lr.ph61.i ], [ %.14260.i.unr, %.lr.ph61.i.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.14260.i
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !80
  %i.cp = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.14260.i
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !80
  %i.cq = add i64 %.14260.i, 1                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !80
  %i.ct = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cq
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !80
  %i.cu = add i64 %.14260.i, 2                    ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !80
  %i.cx = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cu
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !80
  %i.cy = add i64 %.14260.i, 3                    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !80
  %i.db = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.cy
  store i8 %i.da, ptr %i.db, align 1, !tbaa !80
  %i.dc = add i64 %.14260.i, 4                    ; 2 uses
  %exitcond67.not.i.3 = icmp eq i64 %i.dc, 16
  br i1 %exitcond67.not.i.3, label %._crit_edge62.i, label %.lr.ph61.i, !llvm.loop !1511

._crit_edge62.i:                                  ; preds = %.lr.ph61.i.prol.loopexit, %.lr.ph61.i, %vec.epilog.middle.block73
  tail call void %i.l(ptr noundef nonnull %.045.lcssa75.i, ptr noundef nonnull %.045.lcssa75.i, ptr noundef nonnull %i.b) #36, !inline_history !1512
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge62.i, %._crit_edge.i
  %.2.i = phi ptr [ %.045.lcssa75.i, %._crit_edge62.i ], [ %.04553.i, %._crit_edge.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(16) %.2.i, i64 16, i1 false)
  br label %CRYPTO_cbc128_encrypt.exit

bb.f:                                             ; preds = %bb.c
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.j, ptr noundef %i.l)
  br label %CRYPTO_cbc128_encrypt.exit

CRYPTO_cbc128_encrypt.exit:                       ; preds = %bb.e, %bb.d, %bb.f, %bb.b
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_ctr_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80
  tail call void @CRYPTO_ctr128_encrypt_ctr32(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef %i.g)
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_ofb_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !372  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !82   ; 3 uses
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i64 %3, 0
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %.038.lcssa.i = phi i64 [ %3, %bb.a ], [ %i.t, %.lr.ph.i ] ; 3 uses
  %.036.lcssa.i = phi ptr [ %1, %bb.a ], [ %i.s, %.lr.ph.i ] ; 2 uses
  %.034.lcssa.i = phi ptr [ %2, %bb.a ], [ %i.m, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.g, %bb.a ], [ %i.v, %.lr.ph.i ]
  %i.k = icmp ugt i64 %.038.lcssa.i, 15
  br i1 %i.k, label %.lr.ph52.i, label %._crit_edge.i

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.045.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.g, %bb.a ] ; 2 uses
  %.03444.i = phi ptr [ %i.m, %.lr.ph.i ], [ %2, %bb.a ] ; 2 uses
  %.03643.i = phi ptr [ %i.s, %.lr.ph.i ], [ %1, %bb.a ] ; 2 uses
  %.03842.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %.03444.i, i64 1 ; 2 uses
  %i.n = load i8, ptr %.03444.i, align 1, !tbaa !80
  %i.o = zext i32 %.045.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !80
  %i.r = xor i8 %i.q, %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %.03643.i, i64 1 ; 2 uses
  store i8 %i.r, ptr %.03643.i, align 1, !tbaa !80
  %i.t = add i64 %.03842.i, -1                    ; 3 uses
  %i.u = add i32 %.045.i, 1
  %i.v = and i32 %i.u, 15                         ; 3 uses
  %i.w = icmp ne i32 %i.v, 0
  %i.x = icmp ne i64 %i.t, 0
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i, !llvm.loop !6

bb.b:                                             ; preds = %bb.b, %.lr.ph52.i
  %.13551.i = phi ptr [ %.034.lcssa.i, %.lr.ph52.i ], [ %i.af, %bb.b ] ; 3 uses
  %.13750.i = phi ptr [ %.036.lcssa.i, %.lr.ph52.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.13949.i = phi i64 [ %.038.lcssa.i, %.lr.ph52.i ], [ %i.ad, %bb.b ]
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36, !inline_history !1513
  %.0.copyload.i.i.i = load i64, ptr %.13551.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %i.c, align 4
  %i.z = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.z, ptr %.13750.i, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.13750.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.13551.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.ab, align 1
  %.0.copyload.i7.1.i.i = load i64, ptr %i.l, align 4
  %i.ac = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.ac, ptr %i.aa, align 1
  %i.ad = add i64 %.13949.i, -16                  ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.13750.i, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.13551.i, i64 16 ; 2 uses
  %i.ag = icmp ugt i64 %i.ad, 15
  br i1 %i.ag, label %bb.b, label %._crit_edge.i, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %.139.lcssa.i = phi i64 [ %.038.lcssa.i, %.preheader.i ], [ %i.ad, %bb.b ] ; 5 uses
  %.137.lcssa.i = phi ptr [ %.036.lcssa.i, %.preheader.i ], [ %i.ae, %bb.b ] ; 3 uses
  %.135.lcssa.i = phi ptr [ %.034.lcssa.i, %.preheader.i ], [ %i.af, %bb.b ] ; 3 uses
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader.i ], [ 0, %bb.b ] ; 4 uses
  %.not.i = icmp eq i64 %.139.lcssa.i, 0
  br i1 %.not.i, label %CRYPTO_ofb128_encrypt.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  tail call void %i.f(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #36, !inline_history !1513
  %xtraiter = and i64 %.139.lcssa.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.c
  %i.ah = add nsw i64 %.139.lcssa.i, -1
  %i.ai = zext i32 %.1.lcssa.i to i64             ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.135.lcssa.i, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ai
  %i.am = load i8, ptr %i.al, align 1, !tbaa !80
  %i.an = xor i8 %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw i8, ptr %.137.lcssa.i, i64 %i.ai
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !80
end_hunk_3
