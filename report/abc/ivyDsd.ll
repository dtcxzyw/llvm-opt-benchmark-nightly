Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ivyDsd?download=true
inline.NumInlined: 94
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Ivy_TruthDecompose_rec:bb.a
  %i.hw = or disjoint i32 %i.hv, %.masked182
  %i.hx = or disjoint i32 %i.hw, %i.hs
  %i.hy = or disjoint i32 %i.hx, 102
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !11 ; 7 uses
  %i.ib = load i32, ptr %1, align 8, !tbaa !12
  %i.ic = icmp eq i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.cb, label %Vec_IntPush.exit121

bb.cb:                                            ; preds = %.preheader189
  %i.id = icmp slt i32 %i.ia, 16
  br i1 %i.id, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i119 = icmp eq ptr %i.if, null
  br i1 %.not9.i.i119, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ig = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.if, i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i120

bb.ce:                                            ; preds = %bb.cc
  %i.ih = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12
  br label %Vec_IntGrow.exit.i120

Vec_IntGrow.exit.i120:                            ; preds = %bb.ce, %bb.cd
  %i.ii = phi ptr [ %i.ig, %bb.cd ], [ %i.ih, %bb.ce ]
  store ptr %i.ii, ptr %i.ie, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i117

bb.cf:                                            ; preds = %bb.cb
  %i.ij = icmp samesign ult i32 %i.ia, 1073741823
  %i.ik = shl nuw nsw i32 %i.ia, 1
  %spec.select.i114 = select i1 %i.ij, i32 %i.ik, i32 2147483647 ; 3 uses
  %.not.i9.i115 = icmp samesign ult i32 %i.ia, %spec.select.i114
  br i1 %.not.i9.i115, label %bb.cg, label %Vec_IntPush.exit121

bb.cg:                                            ; preds = %bb.cf
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !13 ; 2 uses
  %.not9.i10.i116 = icmp eq ptr %i.im, null
  %i.in = zext nneg i32 %spec.select.i114 to i64
  %i.io = shl nuw nsw i64 %i.in, 2                ; 2 uses
  br i1 %.not9.i10.i116, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ip = tail call ptr @realloc(ptr noundef nonnull %i.im, i64 noundef %i.io) #11
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg
  %i.iq = tail call noalias ptr @malloc(i64 noundef %i.io) #12
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.ir = phi ptr [ %i.ip, %bb.ch ], [ %i.iq, %bb.ci ]
  store ptr %i.ir, ptr %i.il, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i117

Vec_IntGrow.exit11.sink.split.i117:               ; preds = %bb.cj, %Vec_IntGrow.exit.i120
  %spec.select.sink.i118 = phi i32 [ %spec.select.i114, %bb.cj ], [ 16, %Vec_IntGrow.exit.i120 ]
  store i32 %spec.select.sink.i118, ptr %1, align 8, !tbaa !12
  %.pre287 = load i32, ptr %i.hz, align 4, !tbaa !11
  br label %Vec_IntPush.exit121

Vec_IntPush.exit121:                              ; preds = %.preheader189, %bb.cf, %Vec_IntGrow.exit11.sink.split.i117
  %i.is = phi i32 [ %i.ia, %.preheader189 ], [ %i.ia, %bb.cf ], [ %.pre287, %Vec_IntGrow.exit11.sink.split.i117 ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !13
  %i.iv = add nsw i32 %i.is, 1
  store i32 %i.iv, ptr %i.hz, align 4, !tbaa !11
  %i.iw = sext i32 %i.is to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %i.iw
  store i32 %i.hy, ptr %i.ix, align 4, !tbaa !14
  %.val.i = load i32, ptr %i.hz, align 4, !tbaa !11
  %i.iy = shl i32 %.val.i, 1
  %i.iz = add i32 %i.iy, -2
  br label %Ivy_TruthRecognizeMuxMaj.exit

bb.ck:                                            ; preds = %bb.bj
  %.not341 = icmp eq i32 %.187.4317, 0
  br i1 %.not341, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %.not342 = icmp eq i32 %.185.4318, 0
  br i1 %.not342, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ja = xor i32 %0, -1
  br label %bb.cp

bb.cn:                                            ; preds = %bb.cl
  %.not343 = icmp eq i32 %.183.4319, 0
  br i1 %.not343, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.ck, %bb.cm, %bb.cn, %bb.co
  %.sroa.0.0 = phi i32 [ 0, %bb.cn ], [ 3, %bb.cm ], [ 4, %bb.co ], [ 3, %bb.ck ]
  %.092 = phi i32 [ %0, %bb.cn ], [ %i.ja, %bb.cm ], [ %0, %bb.co ], [ %0, %bb.ck ] ; 2 uses
  %.090 = phi ptr [ null, %bb.cn ], [ %i.c, %bb.cm ], [ %i.d, %bb.co ], [ %i.b, %bb.ck ]
  %.081 = phi i32 [ 0, %bb.cn ], [ %.185.4318, %bb.cm ], [ %.183.4319, %bb.co ], [ %.187.4317, %bb.ck ] ; 4 uses
  %.078 = phi i32 [ 0, %bb.cn ], [ 1, %bb.cm ], [ 0, %bb.co ], [ 0, %bb.ck ] ; 3 uses
  %i.jb = icmp ne i32 %.189.4316, 0               ; 2 uses
  %i.jc = zext i1 %i.jb to i32
  %i.jd = add nuw nsw i32 %.081, %i.jc
  %i.je = shl nuw nsw i32 %i.jd, 5
  %i.jf = and i32 %i.je, 224
  %i.jg = or disjoint i32 %i.jf, %.sroa.0.0       ; 2 uses
  %.not344 = icmp eq i32 %.081, 0
  br i1 %.not344, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.cp
  %wide.trip.count = zext nneg i32 %.081 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Ivy_DecSetVar.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %Ivy_DecSetVar.exit ] ; 3 uses
  %.0198 = phi i32 [ %.092, %.lr.ph.preheader ], [ %.0.i110, %Ivy_DecSetVar.exit ]
  %.sroa.0.1196 = phi i32 [ %i.jg, %.lr.ph.preheader ], [ %.sroa.0.3, %Ivy_DecSetVar.exit ] ; 7 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.090, i64 %indvars.iv
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !14 ; 8 uses
  %i.jj = ashr i32 %i.ji, 1                       ; 2 uses
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr @s_Masks, i64 %i.jk
  %i.jm = and i32 %i.ji, 1                        ; 2 uses
  %i.jn = xor i32 %i.jm, 1
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !14
  %i.jr = and i32 %i.jq, %.0198                   ; 3 uses
  %i.js = shl nuw i32 1, %i.jj                    ; 2 uses
  %.not.i108 = icmp eq i32 %i.jm, 0
  %i.jt = shl i32 %i.jr, %i.js
  %i.ju = lshr i32 %i.jr, %i.js
  %.pn.i109 = select i1 %.not.i108, i32 %i.ju, i32 %i.jt
  %.0.i110 = or i32 %.pn.i109, %i.jr              ; 2 uses
  %i.jv = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.jv, label %Ivy_DecSetVar.exit [
    i32 0, label %bb.cq
    i32 1, label %bb.cr
    i32 2, label %bb.cs
    i32 3, label %bb.ct
    i32 4, label %bb.cu
    i32 5, label %bb.cv
  ]

bb.cq:                                            ; preds = %.lr.ph
  %i.jw = shl i32 %i.ji, 8
  %i.jx = and i32 %i.jw, 3840
  %i.jy = and i32 %.sroa.0.1196, -3841
  %i.jz = or disjoint i32 %i.jx, %i.jy
  br label %Ivy_DecSetVar.exit

bb.cr:                                            ; preds = %.lr.ph
  %i.ka = shl i32 %i.ji, 12
  %i.kb = and i32 %i.ka, 61440
  %i.kc = and i32 %.sroa.0.1196, -61441
  %i.kd = or disjoint i32 %i.kb, %i.kc
  br label %Ivy_DecSetVar.exit

bb.cs:                                            ; preds = %.lr.ph
  %i.ke = shl i32 %i.ji, 16
  %i.kf = and i32 %i.ke, 983040
  %i.kg = and i32 %.sroa.0.1196, -983041
  %i.kh = or disjoint i32 %i.kf, %i.kg
  br label %Ivy_DecSetVar.exit

bb.ct:                                            ; preds = %.lr.ph
  %i.ki = shl i32 %i.ji, 20
  %i.kj = and i32 %i.ki, 15728640
  %i.kk = and i32 %.sroa.0.1196, -15728641
  %i.kl = or disjoint i32 %i.kj, %i.kk
  br label %Ivy_DecSetVar.exit

bb.cu:                                            ; preds = %.lr.ph
  %i.km = shl i32 %i.ji, 24
  %i.kn = and i32 %i.km, 251658240
  %i.ko = and i32 %.sroa.0.1196, -251658241
  %i.kp = or disjoint i32 %i.kn, %i.ko
  br label %Ivy_DecSetVar.exit

bb.cv:                                            ; preds = %.lr.ph
  %i.kq = shl i32 %i.ji, 28
  %i.kr = and i32 %.sroa.0.1196, 268435455
  %i.ks = or disjoint i32 %i.kq, %i.kr
  br label %Ivy_DecSetVar.exit

Ivy_DecSetVar.exit:                               ; preds = %bb.cq, %bb.cr, %bb.cs, %bb.ct, %bb.cu, %bb.cv, %.lr.ph
  %.sroa.0.3 = phi i32 [ %.sroa.0.1196, %.lr.ph ], [ %i.ks, %bb.cv ], [ %i.kp, %bb.cu ], [ %i.kl, %bb.ct ], [ %i.kh, %bb.cs ], [ %i.kd, %bb.cr ], [ %i.jz, %bb.cq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %Ivy_DecSetVar.exit, %bb.cp
  %.sroa.0.1.lcssa = phi i32 [ %i.jg, %bb.cp ], [ %.sroa.0.3, %Ivy_DecSetVar.exit ] ; 10 uses
  %.0.lcssa = phi i32 [ %.092, %bb.cp ], [ %.0.i110, %Ivy_DecSetVar.exit ] ; 2 uses
  %i.kt = and i32 %.sroa.0.1.lcssa, 15
  %i.ku = icmp eq i32 %i.kt, 4                    ; 4 uses
  %i.kv = lshr i32 %.sroa.0.1.lcssa, 5
  %.lobit = and i32 %i.kv, 1
  %2 = xor i32 %.078, %.lobit
  %i.kw = xor i32 %2, 1                           ; 2 uses
  %.179 = select i1 %i.ku, i32 %i.kw, i32 %.078
  br i1 %i.jb, label %bb.cw, label %bb.de

bb.cw:                                            ; preds = %._crit_edge
  %i.kx = tail call fastcc i32 @Ivy_TruthDecompose_rec(i32 noundef %.0.lcssa, ptr noundef %1) ; 4 uses
  %i.ky = icmp eq i32 %i.kx, -1
  br i1 %i.ky, label %Ivy_TruthRecognizeMuxMaj.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.not = trunc i32 %i.kx to i1
  %or.cond100.not = and i1 %i.ku, %.not
  %i.kz = and i32 %i.kx, -2
  %.080 = select i1 %i.ku, i32 %i.kz, i32 %i.kx   ; 6 uses
  %3 = zext i1 %or.cond100.not to i32
  %.2.a = xor i32 %.179, %3                       ; 6 uses
  switch i32 %.081, label %default.unreachable [
    i32 0, label %bb.cy
    i32 1, label %bb.cz
    i32 2, label %bb.da
    i32 3, label %bb.db
    i32 4, label %bb.dc
    i32 5, label %bb.dd
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.la = shl i32 %.080, 8
  %i.lb = and i32 %i.la, 3840
  %i.lc = and i32 %.sroa.0.1.lcssa, -3841
  %i.ld = or disjoint i32 %i.lb, %i.lc
  br label %Ivy_DecSetVar.exit113

bb.cz:                                            ; preds = %bb.cx
  %i.le = shl i32 %.080, 12
  %i.lf = and i32 %i.le, 61440
  %i.lg = and i32 %.sroa.0.1.lcssa, -61441
  %i.lh = or disjoint i32 %i.lf, %i.lg
  br label %Ivy_DecSetVar.exit113

bb.da:                                            ; preds = %bb.cx
  %i.li = shl i32 %.080, 16
  %i.lj = and i32 %i.li, 983040
  %i.lk = and i32 %.sroa.0.1.lcssa, -983041
  %i.ll = or disjoint i32 %i.lj, %i.lk
  br label %Ivy_DecSetVar.exit113

bb.db:                                            ; preds = %bb.cx
  %i.lm = shl i32 %.080, 20
  %i.ln = and i32 %i.lm, 15728640
  %i.lo = and i32 %.sroa.0.1.lcssa, -15728641
  %i.lp = or disjoint i32 %i.ln, %i.lo
  br label %Ivy_DecSetVar.exit113

bb.dc:                                            ; preds = %bb.cx
  %i.lq = shl i32 %.080, 24
  %i.lr = and i32 %i.lq, 251658240
  %i.ls = and i32 %.sroa.0.1.lcssa, -251658241
  %i.lt = or disjoint i32 %i.lr, %i.ls
  br label %Ivy_DecSetVar.exit113

bb.dd:                                            ; preds = %bb.cx
  %i.lu = shl i32 %.080, 28
  %i.lv = and i32 %.sroa.0.1.lcssa, 268435455
  %i.lw = or disjoint i32 %i.lu, %i.lv
  br label %Ivy_DecSetVar.exit113

bb.de:                                            ; preds = %._crit_edge
  br i1 %i.ku, label %bb.df, label %Ivy_DecSetVar.exit113

bb.df:                                            ; preds = %bb.de
  %i.lx = icmp eq i32 %.0.lcssa, 0
  %i.ly = zext i1 %i.lx to i32
  %i.lz = xor i32 %i.kw, %i.ly
  br label %Ivy_DecSetVar.exit113

default.unreachable:                              ; preds = %bb.cx
  unreachable

Ivy_DecSetVar.exit113:                            ; preds = %bb.dd, %bb.dc, %bb.db, %bb.da, %bb.cz, %bb.cy, %bb.de, %bb.df
  %.sroa.0.2 = phi i32 [ %.sroa.0.1.lcssa, %bb.de ], [ %.sroa.0.1.lcssa, %bb.df ], [ %i.ld, %bb.cy ], [ %i.lw, %bb.dd ], [ %i.lt, %bb.dc ], [ %i.lp, %bb.db ], [ %i.ll, %bb.da ], [ %i.lh, %bb.cz ]
  %.3 = phi i32 [ %.078, %bb.de ], [ %i.lz, %bb.df ], [ %.2.a, %bb.cy ], [ %.2.a, %bb.dd ], [ %.2.a, %bb.dc ], [ %.2.a, %bb.db ], [ %.2.a, %bb.da ], [ %.2.a, %bb.cz ]
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !11 ; 7 uses
  %i.mc = load i32, ptr %1, align 8, !tbaa !12
  %i.md = icmp eq i32 %i.mb, %i.mc
  br i1 %i.md, label %bb.dg, label %Vec_IntPush.exit

bb.dg:                                            ; preds = %Ivy_DecSetVar.exit113
  %i.me = icmp slt i32 %i.mb, 16
  br i1 %i.me, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %bb.dg
  %i.mf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !13 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.mg, null
  br i1 %.not9.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.mh = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mg, i64 noundef 64) #11
  br label %Vec_IntGrow.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.mi = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #12
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.dj, %bb.di
  %i.mj = phi ptr [ %i.mh, %bb.di ], [ %i.mi, %bb.dj ]
  store ptr %i.mj, ptr %i.mf, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i

bb.dk:                                            ; preds = %bb.dg
  %i.mk = icmp samesign ult i32 %i.mb, 1073741823
  %i.ml = shl nuw nsw i32 %i.mb, 1
  %spec.select.i = select i1 %i.mk, i32 %i.ml, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.mb, %spec.select.i
  br i1 %.not.i9.i, label %bb.dl, label %Vec_IntPush.exit

bb.dl:                                            ; preds = %bb.dk
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !13 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.mn, null
  %i.mo = zext nneg i32 %spec.select.i to i64
  %i.mp = shl nuw nsw i64 %i.mo, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mq = tail call ptr @realloc(ptr noundef nonnull %i.mn, i64 noundef %i.mp) #11
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.mr = tail call noalias ptr @malloc(i64 noundef %i.mp) #12
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.ms = phi ptr [ %i.mq, %bb.dm ], [ %i.mr, %bb.dn ]
  store ptr %i.ms, ptr %i.mm, align 8, !tbaa !13
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.do, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.do ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %1, align 8, !tbaa !12
  %.pre = load i32, ptr %i.ma, align 4, !tbaa !11
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Ivy_DecSetVar.exit113, %bb.dk, %Vec_IntGrow.exit11.sink.split.i
  %i.mt = phi i32 [ %i.mb, %Ivy_DecSetVar.exit113 ], [ %i.mb, %bb.dk ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !13
  %i.mw = add nsw i32 %i.mt, 1
  store i32 %i.mw, ptr %i.ma, align 4, !tbaa !11
  %i.mx = sext i32 %i.mt to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.mv, i64 %i.mx
  store i32 %.sroa.0.2, ptr %i.my, align 4, !tbaa !14
  %.val = load i32, ptr %i.ma, align 4, !tbaa !11
  %i.mz = shl i32 %.val, 1
  %i.na = add i32 %i.mz, -2
  %i.nb = or i32 %i.na, %.3
  br label %Ivy_TruthRecognizeMuxMaj.exit

Ivy_TruthRecognizeMuxMaj.exit:                    ; preds = %Vec_IntPush.exit121, %.loopexit190, %Vec_IntPush.exit135, %bb.cw, %Vec_IntPush.exit, %bb.bi
  %.091 = phi i32 [ %i.bs, %bb.bi ], [ -1, %bb.cw ], [ %i.nb, %Vec_IntPush.exit ], [ %i.eq, %Vec_IntPush.exit135 ], [ -1, %.loopexit190 ], [ %i.iz, %Vec_IntPush.exit121 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.091
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Ivy_TruthDsdCompute(ptr nofree noundef readonly %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !11
  %i.b = add nsw i32 %.val, -1
  %i.c = tail call i32 @Ivy_TruthDsdCompute_rec(i32 noundef %i.b, ptr noundef %0)
  ret i32 %i.c
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Ivy_TruthDsdCompute_rec(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %accumulator.tr = phi i32 [ 0, %bb.a ], [ %i.at, %bb.d ] ; 2 uses
  %.tr = phi i32 [ %0, %bb.a ], [ %i.ar, %bb.d ]
  %i.b = sext i32 %.tr to i64                     ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !14   ; 27 uses
  %i.e = and i32 %i.d, 15                         ; 2 uses
  switch i32 %i.e, label %.loopexit [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
    i32 3, label %.preheader
    i32 4, label %.preheader84
    i32 5, label %bb.s
    i32 6, label %bb.s
  ]

.preheader84:                                     ; preds = %tailrecurse
  %i.f = lshr i32 %i.d, 5
  %i.g = and i32 %i.f, 7                          ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader84
  %i.h = lshr i32 %i.d, 28
  %i.i = lshr i32 %i.d, 24
  %i.j = and i32 %i.i, 15
  %i.k = lshr i32 %i.d, 20
  %i.l = and i32 %i.k, 15
  %i.m = lshr i32 %i.d, 16
  %i.n = and i32 %i.m, 15
  %i.o = lshr i32 %i.d, 12
  %i.p = and i32 %i.o, 15
  %i.q = lshr i32 %i.d, 8
  %i.r = and i32 %i.q, 15
  br label %bb.l

.preheader:                                       ; preds = %tailrecurse
  %i.s = lshr i32 %i.d, 5
  %i.t = and i32 %i.s, 7                          ; 2 uses
  %.not115 = icmp eq i32 %i.t, 0
  br i1 %.not115, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %.preheader
  %i.u = lshr i32 %i.d, 28
  %i.v = lshr i32 %i.d, 24
  %i.w = and i32 %i.v, 15
  %i.x = lshr i32 %i.d, 20
  %i.y = and i32 %i.x, 15
  %i.z = lshr i32 %i.d, 16
  %i.aa = and i32 %i.z, 15
  %i.ab = lshr i32 %i.d, 12
  %i.ac = and i32 %i.ab, 15
  %i.ad = lshr i32 %i.d, 8
  %i.ae = and i32 %i.ad, 15
  br label %bb.e

bb.b:                                             ; preds = %tailrecurse
  %i.af = lshr i32 %i.d, 4
  %.lobit64 = and i32 %i.af, 1
  %i.ag = xor i32 %.lobit64, 1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr getelementptr inbounds nuw (i8, ptr @s_Masks, i64 40), i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !14
  br label %.loopexit

bb.c:                                             ; preds = %tailrecurse
  %i.ak = getelementptr inbounds [8 x i8], ptr @s_Masks, i64 %i.b
  %i.al = lshr exact i32 %i.d, 4
  %.lobit = and i32 %i.al, 1
  %i.am = xor i32 %.lobit, 1
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !14
  br label %.loopexit

bb.d:                                             ; preds = %tailrecurse
  %i.aq = lshr i32 %i.d, 9
  %i.ar = and i32 %i.aq, 7
  %i.as = shl i32 %i.d, 27
  %sext61 = ashr i32 %i.as, 31
  %i.at = xor i32 %sext61, %accumulator.tr
  br label %tailrecurse

bb.e:                                             ; preds = %.lr.ph112, %Ivy_DecGetVar.exit
  %.0111 = phi i32 [ 0, %.lr.ph112 ], [ %i.ay, %Ivy_DecGetVar.exit ] ; 2 uses
  %.051110 = phi i32 [ -1, %.lr.ph112 ], [ %i.ax, %Ivy_DecGetVar.exit ]
  switch i32 %.0111, label %Ivy_DecGetVar.exit [
    i32 0, label %bb.f
    i32 1, label %bb.g
end_hunk_0
