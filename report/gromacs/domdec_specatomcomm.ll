Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/domdec_specatomcomm?download=true
inline.NumInlined: 743
inline.NumDeleted: 330
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_Z16dd_move_f_specatPK12gmx_domdec_tP24gmx_domdec_specat_comm_tPN3gmx11BasicVectorIfEES7_:bb.a
  %i.fy = fadd float %i.fv, %i.fx
  %i.fz = load <2 x float>, ptr %i.ft, align 4, !tbaa !144
  %i.ga = load <2 x float>, ptr %.2192.1, align 4, !tbaa !144
  %i.gb = fadd <2 x float> %i.fz, %i.ga
  store <2 x float> %i.gb, ptr %i.ft, align 4, !tbaa !144
  store float %i.fy, ptr %i.fu, align 4, !tbaa !144
  %i.gc = load float, ptr %i.fq, align 4, !tbaa !144
  %i.gd = load float, ptr %i.fw, align 4, !tbaa !144
  %i.ge = fadd float %i.gc, %i.gd
  %i.gf = load <2 x float>, ptr %i.fp, align 4, !tbaa !144
  %i.gg = load <2 x float>, ptr %.2192.1, align 4, !tbaa !144
  %i.gh = fadd <2 x float> %i.gf, %i.gg
  store <2 x float> %i.gh, ptr %i.fp, align 4, !tbaa !144
  store float %i.ge, ptr %i.fq, align 4, !tbaa !144
  %i.gi = getelementptr inbounds nuw i8, ptr %.2192.1, i64 12
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0155.0191.1, i64 4 ; 2 uses
  %.not170.1 = icmp eq ptr %i.gj, %i.fn
  br i1 %.not170.1, label %.loopexit176, label %bb.m

bb.n:                                             ; preds = %bb.k
  br i1 %.not171195.1, label %.loopexit176, label %.lr.ph198.1

.lr.ph198.1:                                      ; preds = %bb.n
  %i.gk = sext i32 %i.fk to i64
  %i.gl = getelementptr inbounds [12 x i8], ptr %3, i64 %i.gk ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph198.1
  %.3197.1 = phi ptr [ %.5, %.lr.ph198.1 ], [ %i.hj, %bb.q ] ; 5 uses
  %.sroa.0151.0196.1 = phi ptr [ %i.fl, %.lr.ph198.1 ], [ %i.hk, %bb.q ] ; 2 uses
  %i.gn = load i32, ptr %.sroa.0151.0196.1, align 4, !tbaa !133
  %i.go = load float, ptr %.3197.1, align 4, !tbaa !144
  %i.gp = sext i32 %i.gn to i64
  %i.gq = getelementptr inbounds [12 x i8], ptr %2, i64 %i.gp ; 4 uses
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !144
  %i.gs = fadd float %i.go, %i.gr
  store float %i.gs, ptr %i.gq, align 4, !tbaa !144
  %i.gt = getelementptr inbounds nuw i8, ptr %.3197.1, i64 4
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !144
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 2 uses
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !144
  %i.gx = fsub float %i.gw, %i.gu
  store float %i.gx, ptr %i.gv, align 4, !tbaa !144
  %i.gy = getelementptr inbounds nuw i8, ptr %.3197.1, i64 8 ; 2 uses
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !144
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !144
  %i.hc = fsub float %i.hb, %i.gz
  store float %i.hc, ptr %i.ha, align 4, !tbaa !144
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hd = load float, ptr %i.gm, align 4, !tbaa !144
  %i.he = load float, ptr %i.gy, align 4, !tbaa !144
  %i.hf = fadd float %i.hd, %i.he
  %i.hg = load <2 x float>, ptr %i.gl, align 4, !tbaa !144
  %i.hh = load <2 x float>, ptr %.3197.1, align 4, !tbaa !144
  %i.hi = fadd <2 x float> %i.hg, %i.hh
  store <2 x float> %i.hi, ptr %i.gl, align 4, !tbaa !144
  store float %i.hf, ptr %i.gm, align 4, !tbaa !144
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.hj = getelementptr inbounds nuw i8, ptr %.3197.1, i64 12
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.0151.0196.1, i64 4 ; 2 uses
  %.not171.1 = icmp eq ptr %i.hk, %i.fn
  br i1 %.not171.1, label %.loopexit176, label %bb.o

bb.r:                                             ; preds = %bb.b
  %i.hl = sub nsw i32 %.0206, %i.z                ; 5 uses
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [12 x i8], ptr %2, i64 %i.hm ; 2 uses
  %i.ho = sext i32 %i.z to i64
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %i.hn, i64 %i.ho
  %spec.select.i = select i1 %.not.i, ptr null, ptr %i.hp
  %i.hq = load ptr, ptr %i.j, align 8, !tbaa !136 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !137
  %i.ht = load ptr, ptr %i.x, align 8, !tbaa !138
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = sub i64 %i.hu, %i.hv
  %i.hx = ashr exact i64 %i.hw, 2
  %.not.i139 = icmp eq ptr %i.hq, null
  %i.hy = getelementptr inbounds nuw [12 x i8], ptr %i.hq, i64 %i.hx
  %spec.select.i140 = select i1 %.not.i139, ptr null, ptr %i.hy
  store ptr %i.hq, ptr %4, align 8
  store ptr %spec.select.i140, ptr %i.k, align 8
  %i.hz = trunc nuw nsw i64 %indvars.iv.next223 to i32
  tail call void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef nonnull %0, i32 noundef %i.hz, i32 noundef 0, ptr %i.hn, ptr %spec.select.i, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %4)
  %i.ia = load i8, ptr %i.l, align 1, !tbaa !139, !range !140, !noundef !141
  %i.ib = trunc nuw i8 %i.ia to i1
  %i.ic = icmp eq i32 %i.s, 0
  %or.cond3 = and i1 %i.ic, %i.ib
  br i1 %or.cond3, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.t
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !133 ; 2 uses
  %i.if = icmp eq i32 %i.ie, 0
  br i1 %i.if, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ig = load i32, ptr %i.u, align 4, !tbaa !133
  %i.ih = add nsw i32 %i.ig, -1
  %i.ii = icmp eq i32 %i.ie, %i.ih
  br i1 %i.ii, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ij = load ptr, ptr %i.x, align 8, !tbaa !142 ; 2 uses
  %i.ik = load ptr, ptr %i.hr, align 8, !tbaa !142 ; 2 uses
  %.not168182 = icmp eq ptr %i.ij, %i.ik
  br i1 %.not168182, label %.loopexit176, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.u
  %i.il = load ptr, ptr %i.j, align 8, !tbaa !136
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph185, %bb.v
  %indvars.iv216 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next217, %bb.v ] ; 2 uses
  %.sroa.0147.0183 = phi ptr [ %i.ij, %.lr.ph185 ], [ %i.jd, %bb.v ] ; 2 uses
  %i.im = load i32, ptr %.sroa.0147.0183, align 4, !tbaa !133
  %i.in = getelementptr inbounds nuw [12 x i8], ptr %i.il, i64 %indvars.iv216 ; 3 uses
  %i.io = load float, ptr %i.in, align 4, !tbaa !144
  %i.ip = sext i32 %i.im to i64
  %i.iq = getelementptr inbounds [12 x i8], ptr %2, i64 %i.ip ; 4 uses
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !144
  %i.is = fadd float %i.io, %i.ir
  store float %i.is, ptr %i.iq, align 4, !tbaa !144
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  %i.iu = load float, ptr %i.it, align 4, !tbaa !144
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 4 ; 2 uses
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !144
  %i.ix = fsub float %i.iw, %i.iu
  store float %i.ix, ptr %i.iv, align 4, !tbaa !144
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !144
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 2 uses
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !144
  %i.jc = fsub float %i.jb, %i.iz
  store float %i.jc, ptr %i.ja, align 4, !tbaa !144
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0147.0183, i64 4 ; 2 uses
  %.not168 = icmp eq ptr %i.jd, %i.ik
  br i1 %.not168, label %.loopexit176, label %bb.v

bb.w:                                             ; preds = %bb.t, %bb.r
  %i.je = load ptr, ptr %i.x, align 8, !tbaa !142 ; 2 uses
  %i.jf = load ptr, ptr %i.hr, align 8, !tbaa !142 ; 2 uses
  %.not167179 = icmp eq ptr %i.je, %i.jf
  br i1 %.not167179, label %.loopexit176, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.jg = load ptr, ptr %i.j, align 8, !tbaa !136
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.x
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %.sroa.0143.0180 = phi ptr [ %i.je, %.lr.ph ], [ %i.jt, %bb.x ] ; 2 uses
  %i.jh = load i32, ptr %.sroa.0143.0180, align 4, !tbaa !133
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds [12 x i8], ptr %2, i64 %i.ji ; 3 uses
  %i.jk = getelementptr inbounds nuw [12 x i8], ptr %i.jg, i64 %indvars.iv ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !144
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !144
  %i.jp = fadd float %i.jm, %i.jo
  %i.jq = load <2 x float>, ptr %i.jj, align 4, !tbaa !144
  %i.jr = load <2 x float>, ptr %i.jk, align 4, !tbaa !144
  %i.js = fadd <2 x float> %i.jq, %i.jr
  store <2 x float> %i.js, ptr %i.jj, align 4, !tbaa !144
  store float %i.jp, ptr %i.jl, align 4, !tbaa !144
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0143.0180, i64 4 ; 2 uses
  %.not167 = icmp eq ptr %i.jt, %i.jf
  br i1 %.not167, label %.loopexit176, label %bb.x

.loopexit176:                                     ; preds = %bb.x, %bb.v, %.lr.ph189.1, %bb.m, %bb.q, %.thread164.1, %bb.l, %bb.n, %bb.w, %bb.u
  %.1 = phi i32 [ %i.hl, %bb.w ], [ %i.hl, %bb.u ], [ %i.ae, %bb.m ], [ %i.ae, %.thread164.1 ], [ %i.ae, %.lr.ph189.1 ], [ %i.hl, %bb.v ], [ %i.ae, %bb.q ], [ %i.ae, %bb.n ], [ %i.ae, %bb.l ], [ %i.hl, %bb.x ]
  %i.ju = icmp sgt i64 %indvars.iv222, 1
  br i1 %i.ju, label %bb.b, label %._crit_edge, !llvm.loop !168
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_Z17dd_sendrecv2_rvecPK12gmx_domdec_tiPA3_fiS3_iS3_iS3_i(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z10ddSendrecvIN3gmx11BasicVectorIfEEEvPK12gmx_domdec_tiiNS0_8ArrayRefIT_EES8_(ptr noundef, i32 noundef, i32 noundef, ptr, ptr, ptr noundef byval(%"class.gmx::ArrayRef") align 8) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_Z16dd_move_x_specatPK12gmx_domdec_tP24gmx_domdec_specat_comm_tPA3_KfPN3gmx11BasicVectorIfEESA_b(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef captures(address_is_null) %4, i1 noundef zeroext %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %7 = alloca %"class.gmx::ArrayRef", align 8     ; 3 uses
  %.not = icmp eq ptr %4, null                    ; 7 uses
  %spec.select = select i1 %.not, i32 1, i32 2    ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !119
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph345, label %._crit_edge346

.lr.ph345:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.e = load i32, ptr %i.d, align 8, !tbaa !146
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.not.i237 = icmp eq ptr %3, null
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %xtraiter609 = and i32 %spec.select, 1
  %unroll_iter614 = and i32 %spec.select, 2
  %lcmp.mod611.not = icmp eq i32 %xtraiter609, 0
  %lcmp.mod613 = trunc i32 %spec.select to i1
  %i.q = select i1 %.not, ptr %3, ptr %4
  %xtraiter626 = and i32 %spec.select, 1
  %unroll_iter630 = and i32 %spec.select, 2
  %lcmp.mod628.not = icmp eq i32 %xtraiter626, 0
  %lcmp.mod629 = trunc i32 %spec.select to i1
  %i.r = select i1 %.not, ptr %3, ptr %4
  br label %bb.b

._crit_edge346:                                   ; preds = %bb.aa, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph345, %bb.aa
  %indvars.iv388 = phi i64 [ 0, %.lr.ph345 ], [ %indvars.iv.next389, %bb.aa ] ; 8 uses
  %.0211342 = phi i32 [ %i.e, %.lr.ph345 ], [ %.1, %bb.aa ] ; 6 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv388
  %i.t = load i32, ptr %i.s, align 4, !tbaa !133  ; 3 uses
  %i.u = sext i32 %i.t to i64                     ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.u ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !133
  %i.x = icmp sgt i32 %i.w, 2
  br i1 %i.x, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !136  ; 4 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %indvars.iv388 ; 16 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.u ; 2 uses
  %i.ab = icmp eq i32 %i.t, 0                     ; 2 uses
  %i.ac = getelementptr inbounds [12 x i8], ptr %2, i64 %i.u ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !133
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.split319.preheader, label %.split319.us

.split319.preheader:                              ; preds = %bb.c
  %i.ag = load i8, ptr %i.j, align 1, !tbaa !139, !range !140, !noundef !141
  %i.ah = load <2 x float>, ptr %i.ac, align 4, !tbaa !144 ; 3 uses
  %i.ai = load float, ptr %i.ad, align 4, !tbaa !144 ; 2 uses
  %i.aj = trunc nuw i8 %i.ag to i1
  %i.ak = and i1 %i.ab, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.am = extractelement <2 x float> %i.ah, i64 0
  %i.an = extractelement <2 x float> %i.ah, i64 1
  br label %.split319

.split319.us:                                     ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 8 uses
  %i.ap = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !142
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %.split321.us, label %.split319.us.split.preheader

.split319.us.split.preheader:                     ; preds = %.split319.us
  br i1 %.not, label %.split319.us.split.epil.preheader, label %.split319.us.split

.split319.us.split:                               ; preds = %.split319.us.split.preheader, %.loopexit276.us.1625
  %.1216318.us = phi ptr [ %.2.lcssa.us.1624, %.loopexit276.us.1625 ], [ %i.y, %.split319.us.split.preheader ] ; 2 uses
  %.0233317.us = phi i32 [ %i.bi, %.loopexit276.us.1625 ], [ 0, %.split319.us.split.preheader ] ; 2 uses
  %niter615 = phi i32 [ %niter615.next.1, %.loopexit276.us.1625 ], [ 0, %.split319.us.split.preheader ]
  %i.as = icmp eq i32 %.0233317.us, 0
  %i.at = select i1 %i.as, ptr %3, ptr %4
  %i.au = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !142 ; 2 uses
  %.not272299.us = icmp eq ptr %i.au, %i.av
  br i1 %.not272299.us, label %.loopexit276.us, label %.lr.ph303.us

.lr.ph303.us:                                     ; preds = %.split319.us.split, %.lr.ph303.us
  %.2301.us = phi ptr [ %i.az, %.lr.ph303.us ], [ %.1216318.us, %.split319.us.split ] ; 2 uses
  %.sroa.0267.0300.us = phi ptr [ %i.ba, %.lr.ph303.us ], [ %i.au, %.split319.us.split ] ; 2 uses
  %i.aw = load i32, ptr %.sroa.0267.0300.us, align 4, !tbaa !133
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [12 x i8], ptr %i.at, i64 %i.ax
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2301.us, ptr noundef nonnull align 4 dereferenceable(12) %i.ay, i64 12, i1 false), !tbaa.struct !148
  %i.az = getelementptr inbounds nuw i8, ptr %.2301.us, i64 12 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0267.0300.us, i64 4 ; 2 uses
  %.not272.us = icmp eq ptr %i.ba, %i.av
  br i1 %.not272.us, label %.loopexit276.us, label %.lr.ph303.us

.loopexit276.us:                                  ; preds = %.lr.ph303.us, %.split319.us.split
  %.2.lcssa.us = phi ptr [ %.1216318.us, %.split319.us.split ], [ %i.az, %.lr.ph303.us ] ; 2 uses
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !142 ; 2 uses
  %.not272299.us.1618 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not272299.us.1618, label %.loopexit276.us.1625, label %.lr.ph303.us.1623

.lr.ph303.us.1623:                                ; preds = %.loopexit276.us, %.lr.ph303.us.1623
  %.2301.us.1620 = phi ptr [ %i.bg, %.lr.ph303.us.1623 ], [ %.2.lcssa.us, %.loopexit276.us ] ; 2 uses
  %.sroa.0267.0300.us.1621 = phi ptr [ %i.bh, %.lr.ph303.us.1623 ], [ %i.bb, %.loopexit276.us ] ; 2 uses
  %i.bd = load i32, ptr %.sroa.0267.0300.us.1621, align 4, !tbaa !133
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [12 x i8], ptr %4, i64 %i.be
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2301.us.1620, ptr noundef nonnull align 4 dereferenceable(12) %i.bf, i64 12, i1 false), !tbaa.struct !148
  %i.bg = getelementptr inbounds nuw i8, ptr %.2301.us.1620, i64 12 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0267.0300.us.1621, i64 4 ; 2 uses
  %.not272.us.1622 = icmp eq ptr %i.bh, %i.bc
  br i1 %.not272.us.1622, label %.loopexit276.us.1625, label %.lr.ph303.us.1623

.loopexit276.us.1625:                             ; preds = %.lr.ph303.us.1623, %.loopexit276.us
  %.2.lcssa.us.1624 = phi ptr [ %.2.lcssa.us, %.loopexit276.us ], [ %i.bg, %.lr.ph303.us.1623 ] ; 3 uses
  %i.bi = add nuw nsw i32 %.0233317.us, 2
  %niter615.next.1 = add i32 %niter615, 2         ; 2 uses
  %niter615.ncmp.1 = icmp eq i32 %niter615.next.1, %unroll_iter614
  br i1 %niter615.ncmp.1, label %.split321.us.loopexit583.unr-lcssa, label %.split319.us.split, !llvm.loop !169

.split321.us.loopexit583.unr-lcssa:               ; preds = %.loopexit276.us.1625
  br i1 %lcmp.mod611.not, label %.split321.us, label %.split319.us.split.epil.preheader

.split319.us.split.epil.preheader:                ; preds = %.split321.us.loopexit583.unr-lcssa, %.split319.us.split.preheader
  %.1216318.us.epil.init = phi ptr [ %i.y, %.split319.us.split.preheader ], [ %.2.lcssa.us.1624, %.split321.us.loopexit583.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod613)
  %i.bj = load ptr, ptr %i.z, align 8, !tbaa !142 ; 2 uses
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !142 ; 2 uses
  %.not272299.us.epil = icmp eq ptr %i.bj, %i.bk
  br i1 %.not272299.us.epil, label %.split321.us, label %.lr.ph303.us.epil

.lr.ph303.us.epil:                                ; preds = %.split319.us.split.epil.preheader, %.lr.ph303.us.epil
  %.2301.us.epil = phi ptr [ %i.bo, %.lr.ph303.us.epil ], [ %.1216318.us.epil.init, %.split319.us.split.epil.preheader ] ; 2 uses
  %.sroa.0267.0300.us.epil = phi ptr [ %i.bp, %.lr.ph303.us.epil ], [ %i.bj, %.split319.us.split.epil.preheader ] ; 2 uses
  %i.bl = load i32, ptr %.sroa.0267.0300.us.epil, align 4, !tbaa !133
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2301.us.epil, ptr noundef nonnull align 4 dereferenceable(12) %i.bn, i64 12, i1 false), !tbaa.struct !148
  %i.bo = getelementptr inbounds nuw i8, ptr %.2301.us.epil, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0267.0300.us.epil, i64 4 ; 2 uses
  %.not272.us.epil = icmp eq ptr %i.bp, %i.bk
  br i1 %.not272.us.epil, label %.split321.us, label %.lr.ph303.us.epil

.split321.us:                                     ; preds = %.split321.us.loopexit583.unr-lcssa, %.lr.ph303.us.epil, %.split319.us.split.epil.preheader, %.loopexit, %.split319.us
  %i.bq = phi ptr [ %i.al, %.loopexit ], [ %i.ao, %.split319.us ], [ %i.ao, %.split319.us.split.epil.preheader ], [ %i.ao, %.lr.ph303.us.epil ], [ %i.ao, %.split321.us.loopexit583.unr-lcssa ]
  %.us-phi = phi ptr [ %.5, %.loopexit ], [ %i.y, %.split319.us ], [ %.2.lcssa.us.1624, %.split321.us.loopexit583.unr-lcssa ], [ %.1216318.us.epil.init, %.split319.us.split.epil.preheader ], [ %i.bo, %.lr.ph303.us.epil ] ; 3 uses
  %i.br = load i32, ptr %i.aa, align 4, !tbaa !133
  %i.bs = load i32, ptr %i.v, align 4, !tbaa !133
  %i.bt = add nsw i32 %i.bs, -1
  %i.bu = icmp eq i32 %i.br, %i.bt
  br i1 %i.bu, label %.split319.preheader.1, label %.split319.us.1

.split319.us.1:                                   ; preds = %.split321.us
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 4 uses
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !142
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !142
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %.split321.us.1, label %.split319.us.split.1.preheader

.split319.us.split.1.preheader:                   ; preds = %.split319.us.1
  br i1 %.not, label %.split319.us.split.1.epil.preheader, label %.split319.us.split.1

.split319.us.split.1:                             ; preds = %.split319.us.split.1.preheader, %.loopexit276.us.1.1
  %.1216318.us.1 = phi ptr [ %.2.lcssa.us.1.1, %.loopexit276.us.1.1 ], [ %.us-phi, %.split319.us.split.1.preheader ] ; 2 uses
  %.0233317.us.1 = phi i32 [ %i.cq, %.loopexit276.us.1.1 ], [ 0, %.split319.us.split.1.preheader ] ; 2 uses
  %niter631 = phi i32 [ %niter631.next.1, %.loopexit276.us.1.1 ], [ 0, %.split319.us.split.1.preheader ]
  %i.ca = icmp eq i32 %.0233317.us.1, 0
  %i.cb = select i1 %i.ca, ptr %3, ptr %4
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !142 ; 2 uses
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !142 ; 2 uses
  %.not272299.us.1 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not272299.us.1, label %.loopexit276.us.1, label %.lr.ph303.us.1

.lr.ph303.us.1:                                   ; preds = %.split319.us.split.1, %.lr.ph303.us.1
  %.2301.us.1 = phi ptr [ %i.ch, %.lr.ph303.us.1 ], [ %.1216318.us.1, %.split319.us.split.1 ] ; 2 uses
  %.sroa.0267.0300.us.1 = phi ptr [ %i.ci, %.lr.ph303.us.1 ], [ %i.cc, %.split319.us.split.1 ] ; 2 uses
  %i.ce = load i32, ptr %.sroa.0267.0300.us.1, align 4, !tbaa !133
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [12 x i8], ptr %i.cb, i64 %i.cf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2301.us.1, ptr noundef nonnull align 4 dereferenceable(12) %i.cg, i64 12, i1 false), !tbaa.struct !148
  %i.ch = getelementptr inbounds nuw i8, ptr %.2301.us.1, i64 12 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0267.0300.us.1, i64 4 ; 2 uses
  %.not272.us.1 = icmp eq ptr %i.ci, %i.cd
  br i1 %.not272.us.1, label %.loopexit276.us.1, label %.lr.ph303.us.1

.loopexit276.us.1:                                ; preds = %.lr.ph303.us.1, %.split319.us.split.1
  %.2.lcssa.us.1 = phi ptr [ %.1216318.us.1, %.split319.us.split.1 ], [ %i.ch, %.lr.ph303.us.1 ] ; 2 uses
  %i.cj = load ptr, ptr %i.bv, align 8, !tbaa !142 ; 2 uses
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !142 ; 2 uses
  %.not272299.us.1.1 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not272299.us.1.1, label %.loopexit276.us.1.1, label %.lr.ph303.us.1.1

.lr.ph303.us.1.1:                                 ; preds = %.loopexit276.us.1, %.lr.ph303.us.1.1
  %.2301.us.1.1 = phi ptr [ %i.co, %.lr.ph303.us.1.1 ], [ %.2.lcssa.us.1, %.loopexit276.us.1 ] ; 2 uses
  %.sroa.0267.0300.us.1.1 = phi ptr [ %i.cp, %.lr.ph303.us.1.1 ], [ %i.cj, %.loopexit276.us.1 ] ; 2 uses
  %i.cl = load i32, ptr %.sroa.0267.0300.us.1.1, align 4, !tbaa !133
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [12 x i8], ptr %4, i64 %i.cm
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2301.us.1.1, ptr noundef nonnull align 4 dereferenceable(12) %i.cn, i64 12, i1 false), !tbaa.struct !148
  %i.co = getelementptr inbounds nuw i8, ptr %.2301.us.1.1, i64 12 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0267.0300.us.1.1, i64 4 ; 2 uses
  %.not272.us.1.1 = icmp eq ptr %i.cp, %i.ck
  br i1 %.not272.us.1.1, label %.loopexit276.us.1.1, label %.lr.ph303.us.1.1

.loopexit276.us.1.1:                              ; preds = %.lr.ph303.us.1.1, %.loopexit276.us.1
  %.2.lcssa.us.1.1 = phi ptr [ %.2.lcssa.us.1, %.loopexit276.us.1 ], [ %i.co, %.lr.ph303.us.1.1 ] ; 2 uses
  %i.cq = add nuw nsw i32 %.0233317.us.1, 2
  %niter631.next.1 = add i32 %niter631, 2         ; 2 uses
  %niter631.ncmp.1 = icmp eq i32 %niter631.next.1, %unroll_iter630
  br i1 %niter631.ncmp.1, label %.split321.us.1.loopexit582.unr-lcssa, label %.split319.us.split.1, !llvm.loop !169

.split319.preheader.1:                            ; preds = %.split321.us
  %i.cr = load i8, ptr %i.j, align 1, !tbaa !139, !range !140, !noundef !141
  %i.cs = load <2 x float>, ptr %i.ac, align 4, !tbaa !144 ; 3 uses
  %i.ct = load float, ptr %i.ad, align 4, !tbaa !144 ; 2 uses
  %i.cu = trunc nuw i8 %i.cr to i1
  %i.cv = and i1 %i.ab, %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.cy = extractelement <2 x float> %i.cs, i64 0
  %i.cz = extractelement <2 x float> %i.cs, i64 1
  br label %.split319.1

.split319.1:                                      ; preds = %.loopexit.1, %.split319.preheader.1
  %.1216318.1 = phi ptr [ %.5.1, %.loopexit.1 ], [ %.us-phi, %.split319.preheader.1 ] ; 6 uses
  %.0233317.1 = phi i32 [ %i.en, %.loopexit.1 ], [ 0, %.split319.preheader.1 ] ; 3 uses
  %i.da = icmp eq i32 %.0233317.1, 0
  %i.db = select i1 %i.da, ptr %3, ptr %4         ; 2 uses
  %i.dc = icmp ne i32 %.0233317.1, 1
  %or.cond.1 = or i1 %5, %i.dc
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !142 ; 4 uses
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !142 ; 4 uses
  %.not274311.1 = icmp eq ptr %i.dd, %i.de        ; 3 uses
  br i1 %or.cond.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split319.1
  br i1 %.not274311.1, label %.loopexit.1, label %.lr.ph303.1

.lr.ph303.1:                                      ; preds = %bb.d, %.lr.ph303.1
  %.2301.1 = phi ptr [ %i.di, %.lr.ph303.1 ], [ %.1216318.1, %bb.d ] ; 2 uses
  %.sroa.0267.0300.1 = phi ptr [ %i.dj, %.lr.ph303.1 ], [ %i.dd, %bb.d ] ; 2 uses
  %i.df = load i32, ptr %.sroa.0267.0300.1, align 4, !tbaa !133
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [12 x i8], ptr %4, i64 %i.dg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2301.1, ptr noundef nonnull align 4 dereferenceable(12) %i.dh, i64 12, i1 false), !tbaa.struct !148
  %i.di = getelementptr inbounds nuw i8, ptr %.2301.1, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0267.0300.1, i64 4 ; 2 uses
  %.not272.1 = icmp eq ptr %i.dj, %i.de
  br i1 %.not272.1, label %.loopexit.1, label %.lr.ph303.1

bb.e:                                             ; preds = %.split319.1
  br i1 %i.cv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %.not274311.1, label %.loopexit.1, label %.lr.ph309.1

.lr.ph309.1:                                      ; preds = %bb.f, %.lr.ph309.1
  %.3307.1 = phi ptr [ %i.ds, %.lr.ph309.1 ], [ %.1216318.1, %bb.f ] ; 3 uses
  %.sroa.0263.0306.1 = phi ptr [ %i.dt, %.lr.ph309.1 ], [ %i.dd, %bb.f ] ; 2 uses
  %i.dk = load i32, ptr %.sroa.0263.0306.1, align 4, !tbaa !133
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [12 x i8], ptr %i.db, i64 %i.dl ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dm, align 4, !tbaa !144
  %i.do = fsub <2 x float> %i.dn, %i.cs
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !144
  %i.dr = fsub float %i.dq, %i.ct
  store <2 x float> %i.do, ptr %.3307.1, align 4
  %.sroa.4.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.3307.1, i64 8
  store float %i.dr, ptr %.sroa.4.0..sroa_idx.1, align 4, !tbaa !147
  %i.ds = getelementptr inbounds nuw i8, ptr %.3307.1, i64 12 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0263.0306.1, i64 4 ; 2 uses
  %.not273.1 = icmp eq ptr %i.dt, %i.de
  br i1 %.not273.1, label %.loopexit.1, label %.lr.ph309.1

bb.g:                                             ; preds = %bb.e
  br i1 %.not274311.1, label %.loopexit.1, label %.lr.ph315.1

.lr.ph315.1:                                      ; preds = %bb.g, %.lr.ph315.1
  %.4313.1 = phi ptr [ %i.el, %.lr.ph315.1 ], [ %.1216318.1, %bb.g ] ; 4 uses
  %.sroa.0259.0312.1 = phi ptr [ %i.em, %.lr.ph315.1 ], [ %i.dd, %bb.g ] ; 2 uses
  %i.du = load i32, ptr %.sroa.0259.0312.1, align 4, !tbaa !133
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [12 x i8], ptr %i.db, i64 %i.dv ; 3 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !144
  %i.dy = fsub float %i.dx, %i.cy
  store float %i.dy, ptr %.4313.1, align 4, !tbaa !144
  %i.dz = load float, ptr %i.l, align 4, !tbaa !144
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !144
  %i.ec = fsub float %i.dz, %i.eb
  %i.ed = fsub float %i.ec, %i.cz
  %i.ee = getelementptr inbounds nuw i8, ptr %.4313.1, i64 4
  store float %i.ed, ptr %i.ee, align 4, !tbaa !144
  %i.ef = load float, ptr %i.m, align 4, !tbaa !144
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !144
  %i.ei = fsub float %i.ef, %i.eh
  %i.ej = fsub float %i.ei, %i.ct
  %i.ek = getelementptr inbounds nuw i8, ptr %.4313.1, i64 8
  store float %i.ej, ptr %i.ek, align 4, !tbaa !144
  %i.el = getelementptr inbounds nuw i8, ptr %.4313.1, i64 12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0259.0312.1, i64 4 ; 2 uses
  %.not274.1 = icmp eq ptr %i.em, %i.de
  br i1 %.not274.1, label %.loopexit.1, label %.lr.ph315.1

.loopexit.1:                                      ; preds = %.lr.ph303.1, %.lr.ph309.1, %.lr.ph315.1, %bb.g, %bb.f, %bb.d
  %.5.1 = phi ptr [ %i.ds, %.lr.ph309.1 ], [ %i.el, %.lr.ph315.1 ], [ %.1216318.1, %bb.g ], [ %.1216318.1, %bb.f ], [ %.1216318.1, %bb.d ], [ %i.di, %.lr.ph303.1 ]
  %i.en = add nuw nsw i32 %.0233317.1, 1          ; 2 uses
  %exitcond367.1.not = icmp eq i32 %i.en, %spec.select
  br i1 %exitcond367.1.not, label %.split321.us.1, label %.split319.1, !llvm.loop !170

.split321.us.1.loopexit582.unr-lcssa:             ; preds = %.loopexit276.us.1.1
  br i1 %lcmp.mod628.not, label %.split321.us.1, label %.split319.us.split.1.epil.preheader

.split319.us.split.1.epil.preheader:              ; preds = %.split321.us.1.loopexit582.unr-lcssa, %.split319.us.split.1.preheader
  %.1216318.us.1.epil.init = phi ptr [ %.us-phi, %.split319.us.split.1.preheader ], [ %.2.lcssa.us.1.1, %.split321.us.1.loopexit582.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod629)
  %i.eo = load ptr, ptr %i.bv, align 8, !tbaa !142 ; 2 uses
  %i.ep = load ptr, ptr %i.bw, align 8, !tbaa !142 ; 2 uses
  %.not272299.us.1.epil = icmp eq ptr %i.eo, %i.ep
  br i1 %.not272299.us.1.epil, label %.split321.us.1, label %.lr.ph303.us.1.epil

.lr.ph303.us.1.epil:                              ; preds = %.split319.us.split.1.epil.preheader, %.lr.ph303.us.1.epil
  %.2301.us.1.epil = phi ptr [ %i.et, %.lr.ph303.us.1.epil ], [ %.1216318.us.1.epil.init, %.split319.us.split.1.epil.preheader ] ; 2 uses
  %.sroa.0267.0300.us.1.epil = phi ptr [ %i.eu, %.lr.ph303.us.1.epil ], [ %i.eo, %.split319.us.split.1.epil.preheader ] ; 2 uses
  %i.eq = load i32, ptr %.sroa.0267.0300.us.1.epil, align 4, !tbaa !133
  %i.er = sext i32 %i.eq to i64
  %i.es = getelementptr inbounds [12 x i8], ptr %i.r, i64 %i.er
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.2301.us.1.epil, ptr noundef nonnull align 4 dereferenceable(12) %i.es, i64 12, i1 false), !tbaa.struct !148
  %i.et = getelementptr inbounds nuw i8, ptr %.2301.us.1.epil, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.0267.0300.us.1.epil, i64 4 ; 2 uses
  %.not272.us.1.epil = icmp eq ptr %i.eu, %i.ep
  br i1 %.not272.us.1.epil, label %.split321.us.1, label %.lr.ph303.us.1.epil

.split321.us.1:                                   ; preds = %.split321.us.1.loopexit582.unr-lcssa, %.lr.ph303.us.1.epil, %.split319.us.split.1.epil.preheader, %.loopexit.1, %.split319.us.1
  %i.ev = phi ptr [ %i.bv, %.split319.us.1 ], [ %i.cw, %.loopexit.1 ], [ %i.bv, %.split319.us.split.1.epil.preheader ], [ %i.bv, %.lr.ph303.us.1.epil ], [ %i.bv, %.split321.us.1.loopexit582.unr-lcssa ]
  %i.ew = load ptr, ptr %i.bq, align 8, !tbaa !137
  %i.ex = load ptr, ptr %i.z, align 8, !tbaa !138
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = lshr exact i64 %i.fa, 2
  %i.fc = trunc i64 %i.fb to i32                  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !135 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !137
  %i.fh = load ptr, ptr %i.ev, align 8, !tbaa !138
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj
  %i.fl = lshr exact i64 %i.fk, 2
  %i.fm = trunc i64 %i.fl to i32                  ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !135 ; 4 uses
  %i.fp = load ptr, ptr %i.i, align 8, !tbaa !136 ; 4 uses
  br i1 %.not, label %bb.l, label %bb.m

.split319:                                        ; preds = %.split319.preheader, %.loopexit
  %.1216318 = phi ptr [ %.5, %.loopexit ], [ %i.y, %.split319.preheader ] ; 6 uses
end_hunk_0
