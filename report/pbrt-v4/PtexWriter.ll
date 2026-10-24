Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexWriter?download=true
inline.NumInlined: 1329
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Ptex4v2_414PtexMainWriter24flagConstantNeighorhoodsEv:bb.a
  %i.hj = load i8, ptr %i.hi, align 2, !tbaa !96
  %i.hk = zext i8 %i.hj to i32
  %i.hl = shl nuw nsw i32 %i.he, 1
  %i.hm = lshr i32 %i.hk, %i.hl
  %.091.6 = and i32 %i.hm, 3                      ; 3 uses
  %.093.6 = load i32, ptr %i.hh, align 4, !tbaa !48 ; 6 uses
  %i.hn = zext i32 %.093.6 to i64
  %i.ho = icmp ne i64 %indvars.iv194, %i.hn
  %i.hp = icmp sgt i32 %.093.6, -1
  %or.cond.6 = and i1 %i.ho, %i.hp
  br i1 %or.cond.6, label %.lr.ph.6, label %.critedge.loopexit

.lr.ph.6:                                         ; preds = %bb.ab
  %i.hq = zext nneg i32 %.093.6 to i64
  %i.hr = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.hq ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 3
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !95  ; 2 uses
  %i.hu = trunc i8 %i.ht to i1
  br i1 %i.hu, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %.lr.ph.6
  %i.hv = mul nsw i32 %.093.6, %i.m
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.hw
  %bcmp153.7 = tail call i32 @bcmp(ptr %i.ac, ptr %i.hx, i64 %i.s)
  %.not124.7 = icmp eq i32 %bcmp153.7, 0
  br i1 %.not124.7, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.hy = and i8 %i.ht, 8                         ; 3 uses
  %i.hz = icmp eq i8 %i.hy, 0
  %i.ia = icmp ne i8 %i.gu, 0
  %i.ib = and i1 %i.ia, %i.hz
  %or.cond5.not.7 = and i1 %i.ib, %i.q
  br i1 %or.cond5.not.7, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.id = zext nneg i32 %.091.6 to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !48
  %i.ig = icmp eq i32 %i.if, %.093.5
  br i1 %i.ig, label %.critedge9, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ih = add nuw nsw i32 %.091.6, 1
  %i.ii = urem i32 %i.ih, %i.r                    ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ik = zext nneg i32 %i.ii to i64
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.in = load i8, ptr %i.im, align 2, !tbaa !96
  %i.io = zext i8 %i.in to i32
  %i.ip = shl nuw nsw i32 %i.ii, 1
  %i.iq = lshr i32 %i.io, %i.ip
  %.091.7 = and i32 %i.iq, 3                      ; 3 uses
  %.093.7 = load i32, ptr %i.il, align 4, !tbaa !48 ; 5 uses
  %i.ir = zext i32 %.093.7 to i64
  %i.is = icmp ne i64 %indvars.iv194, %i.ir
  %i.it = icmp sgt i32 %.093.7, -1
  %or.cond.7 = and i1 %i.is, %i.it
  br i1 %or.cond.7, label %.lr.ph.7, label %.critedge.loopexit

.lr.ph.7:                                         ; preds = %bb.af
  %i.iu = zext nneg i32 %.093.7 to i64
  %i.iv = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.iu ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 3
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !95  ; 2 uses
  %i.iy = trunc i8 %i.ix to i1
  br i1 %i.iy, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %.lr.ph.7
  %i.iz = mul nsw i32 %.093.7, %i.m
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ja
  %bcmp153.8 = tail call i32 @bcmp(ptr %i.ac, ptr %i.jb, i64 %i.s)
  %.not124.8 = icmp eq i32 %bcmp153.8, 0
  br i1 %.not124.8, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.jc = and i8 %i.ix, 8                         ; 2 uses
  %i.jd = icmp eq i8 %i.jc, 0
  %i.je = icmp ne i8 %i.hy, 0
  %i.jf = and i1 %i.je, %i.jd
  %or.cond5.not.8 = and i1 %i.jf, %i.q
  br i1 %or.cond5.not.8, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.jh = zext nneg i32 %.091.7 to i64
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !48
  %i.jk = icmp eq i32 %i.jj, %.093.6
  br i1 %i.jk, label %.critedge9, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jl = add nuw nsw i32 %.091.7, 1
  %i.jm = urem i32 %i.jl, %i.r                    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.jo = zext nneg i32 %i.jm to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.iv, i64 2
  %i.jr = load i8, ptr %i.jq, align 2, !tbaa !96
  %i.js = zext i8 %i.jr to i32
  %i.jt = shl nuw nsw i32 %i.jm, 1
  %i.ju = lshr i32 %i.js, %i.jt
  %.091.8 = and i32 %i.ju, 3
  %.093.8 = load i32, ptr %i.jp, align 4, !tbaa !48 ; 3 uses
  %i.jv = zext i32 %.093.8 to i64
  %i.jw = icmp ne i64 %indvars.iv194, %i.jv
  %i.jx = icmp sgt i32 %.093.8, -1
  %or.cond.8 = and i1 %i.jw, %i.jx
  br i1 %or.cond.8, label %.critedge9, label %.critedge.loopexit

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.jy = zext nneg i32 %.093162 to i64
  %i.jz = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.jy ; 4 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 3
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !95  ; 2 uses
  %i.kc = trunc i8 %i.kb to i1
  br i1 %i.kc, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.lr.ph.preheader
  %i.kd = mul nsw i32 %.093162, %i.m
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ke
  %bcmp153 = tail call i32 @bcmp(ptr %i.ac, ptr %i.kf, i64 %i.s)
  %.not124 = icmp eq i32 %bcmp153, 0
  br i1 %.not124, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak
  %i.kg = and i8 %i.kb, 8                         ; 3 uses
  %i.kh = icmp eq i8 %i.kg, 0
  %or.cond5.not.reass = and i1 %i.kh, %invariant.op
  br i1 %or.cond5.not.reass, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kj = zext nneg i32 %.091161 to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !48
  %i.km = icmp eq i32 %i.kl, %i.ai
  br i1 %i.km, label %.critedge9, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.kn = add nuw nsw i32 %.091161, 1
  %i.ko = urem i32 %i.kn, %i.r                    ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jz, i64 4
  %i.kq = zext nneg i32 %i.ko to i64
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jz, i64 2
  %i.kt = load i8, ptr %i.ks, align 2, !tbaa !96
  %i.ku = zext i8 %i.kt to i32
  %i.kv = shl nuw nsw i32 %i.ko, 1
  %i.kw = lshr i32 %i.ku, %i.kv
  %.091 = and i32 %i.kw, 3                        ; 3 uses
  %.093 = load i32, ptr %i.kr, align 4, !tbaa !48 ; 6 uses
  %i.kx = zext i32 %.093 to i64
  %i.ky = icmp ne i64 %indvars.iv194, %i.kx
  %i.kz = icmp sgt i32 %.093, -1
  %or.cond = and i1 %i.ky, %i.kz
  br i1 %or.cond, label %.lr.ph, label %.critedge.loopexit

.critedge.loopexit:                               ; preds = %bb.aj, %bb.af, %bb.ab, %bb.x, %bb.t, %bb.p, %bb.l, %bb.h, %bb.an
  %.lobit154.lcssa229.in = phi i8 [ %i.kg, %bb.an ], [ %i.ba, %bb.h ], [ %i.ce, %bb.l ], [ %i.di, %bb.p ], [ %i.em, %bb.t ], [ %i.fq, %bb.x ], [ %i.gu, %bb.ab ], [ %i.hy, %bb.af ], [ %i.jc, %bb.aj ]
  %.091.lcssa228 = phi i32 [ %.091, %bb.an ], [ %.091.1, %bb.h ], [ %.091.2, %bb.l ], [ %.091.3, %bb.p ], [ %.091.4, %bb.t ], [ %.091.5, %bb.x ], [ %.091.6, %bb.ab ], [ %.091.7, %bb.af ], [ %.091.8, %bb.aj ]
  %.093.lcssa227 = phi i32 [ %.093, %bb.an ], [ %.093.1, %bb.h ], [ %.093.2, %bb.l ], [ %.093.3, %bb.p ], [ %.093.4, %bb.t ], [ %.093.5, %bb.x ], [ %.093.6, %bb.ab ], [ %.093.7, %bb.af ], [ %.093.8, %bb.aj ]
  %.lobit154.lcssa229 = lshr exact i8 %.lobit154.lcssa229.in, 3
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.d
  %.0103.lcssa = phi i8 [ %i.ad, %bb.d ], [ %.lobit154.lcssa229, %.critedge.loopexit ]
  %.091.lcssa = phi i32 [ %.091161, %bb.d ], [ %.091.lcssa228, %.critedge.loopexit ]
  %.093.lcssa = phi i32 [ %.093162, %bb.d ], [ %.093.lcssa227, %.critedge.loopexit ]
  %i.la = icmp slt i32 %.093.lcssa, 0
  br i1 %i.la, label %bb.ao, label %.critedge9

bb.ao:                                            ; preds = %.critedge
  br i1 %or.cond219, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.lb = add nuw nsw i32 %i.v, %.091.lcssa
  %i.lc = urem i32 %i.lb, %i.r                    ; 2 uses
  %i.ld = zext nneg i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ld
  %.497171 = load i32, ptr %i.le, align 4, !tbaa !48 ; 3 uses
  %i.lf = zext i32 %.497171 to i64
  %i.lg = icmp ne i64 %indvars.iv194, %i.lf
  %i.lh = icmp sgt i32 %.497171, -1
  %or.cond7172 = and i1 %i.lg, %i.lh
  br i1 %or.cond7172, label %.lr.ph177.preheader, label %.critedge9

.lr.ph177.preheader:                              ; preds = %bb.ap
  %i.li = shl nuw nsw i32 %i.lc, 1
  %i.lj = lshr i32 %i.ah, %i.li
  %i.lk = and i32 %i.lj, 3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.au, %.lr.ph177.preheader
  %i.ll = phi i32 [ 1, %.lr.ph177.preheader ], [ %i.mn, %bb.au ] ; 2 uses
  %.4107173218 = phi i8 [ %.0103.lcssa, %.lr.ph177.preheader ], [ %.lobit149, %bb.au ]
  %.4174217 = phi i32 [ %i.lk, %.lr.ph177.preheader ], [ %.6, %bb.au ]
  %.497176216 = phi i32 [ %.497171, %.lr.ph177.preheader ], [ %.497, %bb.au ] ; 2 uses
  %i.lm = zext nneg i32 %.497176216 to i64
  %i.ln = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.lm ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 3
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !95  ; 2 uses
  %i.lq = trunc i8 %i.lp to i1
  br i1 %i.lq, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.lr = mul nsw i32 %.497176216, %i.m
  %i.ls = sext i32 %i.lr to i64
  %i.lt = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ls
  %bcmp = tail call i32 @bcmp(ptr %i.ac, ptr %i.lt, i64 %i.s)
  %.not126 = icmp eq i32 %bcmp, 0
  br i1 %.not126, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.lu = add nsw i32 %i.v, %.4174217
  %i.lv = urem i32 %i.lu, %i.r                    ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.ly = load i8, ptr %i.lx, align 2, !tbaa !96
  %i.lz = zext i8 %i.ly to i32                    ; 2 uses
  %i.ma = shl nuw nsw i32 %i.lv, 1
  %i.mb = lshr i32 %i.lz, %i.ma
  %.fr151 = freeze i32 %i.mb
  %i.mc = and i32 %.fr151, 3                      ; 3 uses
  %i.md = and i8 %i.lp, 8                         ; 2 uses
  %.not150 = icmp eq i8 %i.md, 0
  %.lobit149 = lshr exact i8 %i.md, 3
  %i.me = trunc i8 %.4107173218 to i1
  %or.cond12 = select i1 %.not150, i1 true, i1 %i.me
  br i1 %or.cond12, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.urem = add nsw i32 %i.mc, -1
  %.cmp = icmp eq i32 %i.mc, 0
  %i.mf = select i1 %.cmp, i32 3, i32 %.urem      ; 2 uses
  %i.mg = shl nuw nsw i32 %i.mf, 1
  %i.mh = lshr i32 %i.lz, %i.mg
  %.fr152 = freeze i32 %i.mh
  %i.mi = and i32 %.fr152, 3                      ; 2 uses
  %.urem146 = add nsw i32 %i.mi, -1
  %.cmp147 = icmp eq i32 %i.mi, 0
  %i.mj = select i1 %.cmp147, i32 3, i32 %.urem146
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.pn.in = phi i32 [ %i.lv, %bb.as ], [ %i.mf, %bb.at ]
  %.6 = phi i32 [ %i.mc, %bb.as ], [ %i.mj, %bb.at ]
  %.pn = sext i32 %.pn.in to i64
  %.699.in = getelementptr inbounds [4 x i8], ptr %i.lw, i64 %.pn
  %.497 = load i32, ptr %.699.in, align 4, !tbaa !48 ; 3 uses
  %i.mk = zext i32 %.497 to i64
  %i.ml = icmp eq i64 %indvars.iv194, %i.mk
  %i.mm = icmp slt i32 %.497, 0
  %or.cond7.not223 = or i1 %i.ml, %i.mm
  %i.mn = add nuw nsw i32 %i.ll, 1
  %exitcond192.not = icmp eq i32 %i.ll, 9
  %or.cond220 = select i1 %or.cond7.not223, i1 true, i1 %exitcond192.not
  br i1 %or.cond220, label %.critedge9, label %bb.aq

.critedge9:                                       ; preds = %bb.am, %bb.g, %bb.k, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.ai, %bb.aj, %bb.au, %bb.ap, %.critedge
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.mo = icmp samesign ult i64 %indvars.iv.next, %i.w
  br i1 %i.mo, label %bb.d, label %.thread, !llvm.loop !293

.thread:                                          ; preds = %.critedge9
  %i.mp = or i8 %i.z, 4
  store i8 %i.mp, ptr %i.y, align 1, !tbaa !95
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ao, %.lr.ph.preheader, %bb.ak, %.lr.ph, %bb.e, %.lr.ph.1, %bb.i, %.lr.ph.2, %bb.m, %.lr.ph.3, %bb.q, %.lr.ph.4, %bb.u, %.lr.ph.5, %bb.y, %.lr.ph.6, %bb.ac, %.lr.ph.7, %bb.ag, %bb.aq, %bb.ar, %.thread, %bb.b
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond197.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count
  br i1 %exitcond197.not, label %._crit_edge, label %bb.b, !llvm.loop !294
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexMainWriter13writeMetaDataEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(656) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = lshr exact i64 %i.n, 6                   ; 2 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %wide.trip.count = and i64 %i.o, 2147483647
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit
  %i.s = ptrtoint ptr %.sroa.11101.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.15.1, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.11101.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  %.sroa.095.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.095.1, %._crit_edge.loopexit ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.u = load i32, ptr %i.t, align 4, !tbaa !299
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.095.0162 = phi ptr [ null, %.lr.ph ], [ %.sroa.095.1, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 8 uses
  %.sroa.11101.0161 = phi ptr [ null, %.lr.ph ], [ %.sroa.11101.1, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 7 uses
  %.sroa.15.0160 = phi ptr [ null, %.lr.ph ], [ %.sroa.15.1, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit ] ; 8 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.v, i64 %indvars.iv ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !107
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32                  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 1024
  br i1 %i.af, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.11101.0161, %.sroa.15.0160
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.w, ptr %.sroa.11101.0161, align 8, !tbaa !164
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.11101.0161, i64 8
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.ah = ptrtoint ptr %.sroa.11101.0161 to i64
  %i.ai = ptrtoint ptr %.sroa.095.0162 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #32
          to label %.noexc unwind label %.loopexit.split-lp133.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNKSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #27
          to label %.noexc60 unwind label %.loopexit.split-lp133.loopexit ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %i.w, ptr %i.as, align 8, !tbaa !164
  %i.at = icmp sgt i64 %i.aj, 0
  br i1 %i.at, label %bb.g, label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %.noexc60
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ar, ptr align 8 %.sroa.095.0162, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %.noexc60
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.095.0162, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0162, i64 noundef %i.aj) #28
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !19
  %i.ay = trunc i64 %i.ax to i8
  %i.az = add i8 %i.ay, 1
  store i8 %i.az, ptr %i.a, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !106
  %i.bc = trunc i32 %i.bb to i8
  store i8 %i.bc, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !48
  %i.bd = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1, i1 noundef zeroext false)
          to label %.noexc61 unwind label %.loopexit.split-lp133.loopexit ; 0 uses

.noexc61:                                         ; preds = %bb.i
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.bf = load i8, ptr %i.a, align 1, !tbaa !50
  %i.bg = zext i8 %i.bf to i32
  %i.bh = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %i.be, i32 noundef %i.bg, i1 noundef zeroext false)
          to label %.noexc62 unwind label %.loopexit.split-lp133.loopexit ; 0 uses

.noexc62:                                         ; preds = %.noexc61
  %i.bi = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1, i1 noundef zeroext false)
          to label %.noexc63 unwind label %.loopexit.split-lp133.loopexit ; 0 uses

.noexc63:                                         ; preds = %.noexc62
  %i.bj = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef 4, i1 noundef zeroext false)
          to label %.noexc64 unwind label %.loopexit.split-lp133.loopexit ; 0 uses

.noexc64:                                         ; preds = %.noexc63
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !84
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !48
  %i.bm = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.bk, i32 noundef %i.bl, i1 noundef zeroext false)
          to label %bb.j unwind label %.loopexit.split-lp133.loopexit ; 0 uses

bb.j:                                             ; preds = %.noexc64
  %i.bn = load i8, ptr %i.a, align 1, !tbaa !50
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nuw nsw i32 %i.bo, 6
  %i.bq = load i32, ptr %i.c, align 4, !tbaa !48
  %i.br = add i32 %i.bp, %i.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.bs = load i32, ptr %i.r, align 4, !tbaa !299
  %i.bt = add i32 %i.br, %i.bs
  store i32 %i.bt, ptr %i.r, align 4, !tbaa !299
  br label %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.j
  %.sroa.15.1 = phi ptr [ %.sroa.15.0160, %bb.j ], [ %i.av, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.15.0160, %bb.d ] ; 2 uses
  %.sroa.11101.1 = phi ptr [ %.sroa.11101.0161, %bb.j ], [ %i.au, %_ZNSt6vectorIPN4Ptex4v2_414PtexWriterBase9MetaEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ag, %bb.d ] ; 2 uses
end_hunk_0
