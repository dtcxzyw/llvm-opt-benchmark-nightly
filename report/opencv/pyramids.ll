Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pyramids?download=true
inline.NumInlined: 448
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_ZNK2cv14PyrDownInvokerINS_7FltCastIdLi8EEEEclERKNS_5RangeE:bb.a

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.f, %bb.g
  %i.t = phi i32 [ %i.q, %bb.f ], [ %i.s, %bb.g ]
  %i.u = icmp eq i32 %i.d, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.w = load i32, ptr %i.v, align 4
  %i.x = icmp sgt i32 %i.d, -1
  %i.y = zext i1 %i.x to i32
  %i.z = select i1 %i.u, i32 %i.w, i32 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !31 ; 4 uses
  %i.ae = icmp slt i32 %i.ad, 3
  br i1 %i.ae, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.14, i32 noundef 109) #15
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %2, align 8, !tbaa !13    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i261, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260: ; preds = %bb.j
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !14
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i261

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i261: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %common.resume

bb.k:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.al = icmp sgt i32 %i.ad, 0
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 84
  %i.an = icmp eq i32 %i.ad, 2
  %i.ao = zext i1 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !19
  br label %_ZNK2cv8MatShapeclEv.exit267

bb.m:                                             ; preds = %bb.k
  %i.ar = icmp eq i32 %i.ad, 0
  %i.as = zext i1 %i.ar to i32
  br label %_ZNK2cv8MatShapeclEv.exit267

_ZNK2cv8MatShapeclEv.exit267:                     ; preds = %bb.l, %bb.m
  %i.at = phi i32 [ %i.aq, %bb.l ], [ %i.as, %bb.m ] ; 2 uses
  %i.au = load i32, ptr %i.b, align 8, !tbaa !26
  %i.av = lshr i32 %i.au, 5                       ; 9 uses
  %i.aw = and i32 %i.av, 127
  %i.ax = add nuw nsw i32 %i.aw, 1                ; 20 uses
  %i.ay = mul nsw i32 %i.ax, %i.at                ; 7 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = add nsw i64 %i.az, 15
  %i.bb = and i64 %i.ba, -16                      ; 2 uses
  %i.bc = trunc i64 %i.bb to i32                  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  %i.bd = mul i64 %i.bb, 21474836480
  %sext = add i64 %i.bd, 68719476736              ; 2 uses
  %i.be = ashr exact i64 %sext, 32                ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.bf, ptr %6, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.not.i.i = icmp ugt i64 %i.be, 136
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !99
  br i1 %.not.i.i, label %bb.n, label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

bb.n:                                             ; preds = %_ZNK2cv8MatShapeclEv.exit267
  %i.bh = icmp ugt i64 %i.be, 2305843009213693951
  %i.bi = ashr exact i64 %sext, 29
  %i.bj = select i1 %i.bh, i64 -1, i64 %i.bi
  %i.bk = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bj) #18 ; 2 uses
  store ptr %i.bk, ptr %6, align 8, !tbaa !98
  br label %_ZN2cv10AutoBufferIdLm136EEC2Em.exit

_ZN2cv10AutoBufferIdLm136EEC2Em.exit:             ; preds = %_ZNK2cv8MatShapeclEv.exit267, %bb.n
  %i.bl = phi ptr [ %i.bf, %_ZNK2cv8MatShapeclEv.exit267 ], [ %i.bk, %bb.n ] ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = add i64 %i.bm, 15
  %i.bo = and i64 %i.bn, -16                      ; 5 uses
  %i.bp = inttoptr i64 %i.bo to ptr               ; 14 uses
  %i.bq = load i32, ptr %1, align 4, !tbaa !41    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !42
  %i.bt = icmp slt i32 %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph318, label %._crit_edge319

.lr.ph318:                                        ; preds = %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %i.bu = add nsw i32 %i.t, -3
  %i.bv = sdiv i32 %i.bu, 2
  %i.bw = add nsw i32 %i.bv, 1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.at, i32 %i.bw)
  %i.bx = mul i32 %i.ax, %.sroa.speculated        ; 6 uses
  %i.by = shl i32 %i.bq, 1                        ; 2 uses
  %i.bz = add nsw i32 %i.by, -2
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = shl nuw nsw i32 %i.ax, 1                ; 3 uses
  %i.cd = mul nuw nsw i32 %i.ax, 3
  %i.ce = shl nuw nsw i32 %i.ax, 2
  %trunc = trunc nuw i32 %i.ax to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = icmp sgt i32 %i.ay, 0
  %i.ci = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.cj = zext nneg i32 %i.ax to i64              ; 3 uses
  %i.ck = zext nneg i32 %i.cd to i64              ; 2 uses
  %i.cl = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cm = sext i32 %i.bx to i64                   ; 14 uses
  %i.cn = sext i32 %i.bq to i64
  %i.co = icmp eq i32 %i.ax, %i.ay
  %i.cp = icmp slt i32 %i.ax, %i.bx
  %i.cq = icmp slt i32 %i.ax, %i.bx
  %i.cr = icmp slt i32 %i.ax, %i.bx
  %i.cs = icmp slt i32 %i.ax, %i.bx
  %i.ct = icmp slt i32 %i.ax, %i.bx
  %wide.trip.count371 = zext i32 %i.ay to i64     ; 3 uses
  %i.cu = and i32 %i.av, 127
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = sub nsw i64 %i.cm, %i.cv
  %i.cx = shl nsw i64 %i.cm, 4
  %i.cy = or disjoint i64 %i.cx, 8
  %i.cz = shl nuw nsw i64 %i.cv, 4
  %i.da = sub nsw i64 %i.cy, %i.cz
  %i.db = add nsw i64 %i.cm, -2
  %i.dc = and i32 %i.av, 127
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = sub nsw i64 %i.db, %i.dd
  %i.df = lshr i64 %i.de, 1                       ; 2 uses
  %i.dg = shl i64 %i.df, 4
  %i.dh = shl i64 %i.df, 5
  %i.di = add nsw i64 %i.cm, -2
  %i.dj = and i32 %i.av, 127
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = sub nsw i64 %i.di, %i.dk
  %i.dm = udiv i64 %i.dl, 3                       ; 2 uses
  %i.dn = mul i64 %i.dm, 24
  %i.do = mul i64 %i.dm, 48
  %i.dp = add nsw i64 %i.cm, -2
  %i.dq = and i32 %i.av, 127
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = sub nsw i64 %i.dp, %i.dr
  %i.dt = lshr i64 %i.ds, 2                       ; 2 uses
  %i.du = shl i64 %i.dt, 5
  %i.dv = shl i64 %i.dt, 6
  %i.dw = and i32 %i.av, 127
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = add nsw i64 %i.cm, -2
  %i.dz = sub nsw i64 %i.dy, %i.dx                ; 3 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1
  %min.iters.check479 = icmp ult i64 %i.dz, 8
  %invariant.gep498 = getelementptr i8, ptr %i.bp, i64 %i.du
  %i.ec = and i64 %i.dz, 4
  %.not = icmp eq i64 %i.ec, 0
  %.neg = select i1 %.not, i64 -1, i64 -2
  %n.vec481 = add nsw i64 %.neg, %i.eb            ; 2 uses
  %i.ed = shl i64 %n.vec481, 2
  %i.ee = and i32 %i.av, 127
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = add nsw i64 %i.cm, -2
  %i.eh = sub nsw i64 %i.eg, %i.ef                ; 2 uses
  %i.ei = udiv i64 %i.eh, 3
  %min.iters.check461 = icmp ult i64 %i.eh, 6
  %invariant.gep500 = getelementptr i8, ptr %i.bp, i64 %i.dn
  %n.vec463 = and i64 %i.ei, 9223372036854775806  ; 2 uses
  %i.ej = mul i64 %n.vec463, 3
  %i.ek = and i32 %i.av, 127
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = add nsw i64 %i.cm, -2
  %i.en = sub nsw i64 %i.em, %i.el                ; 3 uses
  %i.eo = lshr i64 %i.en, 1
  %i.ep = add nuw i64 %i.eo, 1
  %min.iters.check444 = icmp ult i64 %i.en, 4
  %invariant.gep502 = getelementptr i8, ptr %i.bp, i64 %i.dg
  %i.eq = and i64 %i.en, 2
  %.not490 = icmp eq i64 %i.eq, 0
  %.neg491 = select i1 %.not490, i64 -1, i64 -2
  %n.vec446 = add i64 %.neg491, %i.ep             ; 2 uses
  %i.er = shl i64 %n.vec446, 1
  %i.es = and i32 %i.av, 127
  %i.et = xor i32 %i.es, -1
  %i.eu = sext i32 %i.et to i64
  %i.ev = add nsw i64 %i.eu, %i.cm                ; 3 uses
  %min.iters.check423 = icmp ult i64 %i.ev, 5
  %.neg492 = or i64 %i.ev, -2
  %n.vec425 = add nsw i64 %.neg492, %i.ev         ; 2 uses
  %min.iters.check = icmp ult i32 %i.ay, 8
  %n.vec = and i64 %wide.trip.count371, 2147483646 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count371
  br label %bb.p

._crit_edge319.loopexit:                          ; preds = %._crit_edge
  %.pre = load ptr, ptr %6, align 8, !tbaa !98
  br label %._crit_edge319

._crit_edge319:                                   ; preds = %._crit_edge319.loopexit, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit
  %i.ew = phi ptr [ %.pre, %._crit_edge319.loopexit ], [ %i.bl, %_ZN2cv10AutoBufferIdLm136EEC2Em.exit ] ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.ew, %i.bf
  %i.ex = icmp eq ptr %i.ew, null
  %or.cond.i = or i1 %.not.i.i268, %i.ex
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge319
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #16
  br label %_ZN2cv10AutoBufferIdLm136EED2Ev.exit

_ZN2cv10AutoBufferIdLm136EED2Ev.exit:             ; preds = %._crit_edge319, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  ret void

bb.p:                                             ; preds = %.lr.ph318, %._crit_edge
  %indvars.iv373 = phi i64 [ %i.cn, %.lr.ph318 ], [ %indvars.iv.next374, %._crit_edge ] ; 3 uses
  %indvars.iv361.in = phi i32 [ %i.by, %.lr.ph318 ], [ %indvars.iv361, %._crit_edge ]
  %.0254317 = phi i32 [ %i.bz, %.lr.ph318 ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %indvars.iv361 = add i32 %indvars.iv361.in, 2   ; 2 uses
  %i.ey = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !85 ; 2 uses
  %i.fb = ptrtoaddr ptr %i.fa to i64              ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !30
  %i.fe = mul i64 %i.fd, %indvars.iv373           ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fe ; 2 uses
  %i.fg = shl nsw i64 %indvars.iv373, 1           ; 2 uses
  %i.fh = add nsw i64 %i.fg, 2
  %i.fi = sext i32 %.0254317 to i64
  %.not309 = icmp slt i64 %i.fh, %i.fi
  br i1 %.not309, label %.preheader290, label %.lr.ph311.preheader

.lr.ph311.preheader:                              ; preds = %bb.p
  %smax = call i32 @llvm.smax.i32(i32 %.0254317, i32 %indvars.iv361) ; 2 uses
  %i.fj = add i32 %smax, 1
  br label %.lr.ph311

.preheader290:                                    ; preds = %.loopexit, %bb.p
  %.1.lcssa = phi i32 [ %.0254317, %bb.p ], [ %i.fj, %.loopexit ]
  %i.fk = trunc nsw i64 %i.fg to i32              ; 2 uses
  %i.fl = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %i.fm = shufflevector <4 x i32> %i.fl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fn = or disjoint <4 x i32> %i.fm, <i32 0, i32 1, i32 0, i32 0>
  %i.fo = add <4 x i32> %i.fn, <i32 0, i32 0, i32 2, i32 3>
  %i.fp = srem <4 x i32> %i.fo, splat (i32 5)     ; 4 uses
  %i.fq = extractelement <4 x i32> %i.fp, i64 0
  %i.fr = mul i32 %i.fq, %i.bc
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fs ; 2 uses
  %i.fu = extractelement <4 x i32> %i.fp, i64 1
  %i.fv = mul i32 %i.fu, %i.bc
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.fw ; 2 uses
  %i.fy = extractelement <4 x i32> %i.fp, i64 2
  %i.fz = mul i32 %i.fy, %i.bc
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ga ; 2 uses
  %i.gc = extractelement <4 x i32> %i.fp, i64 3
  %i.gd = mul i32 %i.gc, %i.bc
  %i.ge = sext i32 %i.gd to i64                   ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ge ; 2 uses
  %i.gg = add i32 %i.fk, 4
  %i.gh = srem i32 %i.gg, 5
  %i.gi = mul i32 %i.gh, %i.bc
  %i.gj = sext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.gj ; 2 uses
  br i1 %i.ch, label %.lr.ph315.preheader, label %._crit_edge

.lr.ph315.preheader:                              ; preds = %.preheader290
  br i1 %min.iters.check, label %.lr.ph315.preheader497, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph315.preheader
  %i.gl = sub i64 %i.fb, %i.bo
  %i.gm = add i64 %i.gl, %i.fe                    ; 2 uses
  %i.gn = shl nsw i64 %i.gj, 3
  %i.go = sub i64 %i.gn, %i.gm
  %diff.check = icmp ugt i64 %i.go, -16
  %i.gp = shl nsw i64 %i.fs, 3
  %i.gq = sub i64 %i.gp, %i.gm
  %diff.check407 = icmp ugt i64 %i.gq, -16
  %conflict.rdx = or i1 %diff.check, %diff.check407
  %i.gr = shl nsw i64 %i.ge, 3
  %i.gs = add i64 %i.fe, %i.fb
  %i.gt = add i64 %i.bo, %i.gr
  %i.gu = sub i64 %i.gt, %i.gs
  %diff.check408 = icmp ugt i64 %i.gu, -16
  %conflict.rdx409 = or i1 %conflict.rdx, %diff.check408
  %i.gv = shl nsw i64 %i.fw, 3
  %i.gw = add i64 %i.fe, %i.fb
  %i.gx = add i64 %i.bo, %i.gv
  %i.gy = sub i64 %i.gx, %i.gw
  %diff.check410 = icmp ugt i64 %i.gy, -16
  %conflict.rdx411 = or i1 %conflict.rdx409, %diff.check410
  %i.gz = shl nsw i64 %i.ga, 3
  %i.ha = add i64 %i.fe, %i.fb
  %i.hb = add i64 %i.bo, %i.gz
  %i.hc = sub i64 %i.hb, %i.ha
  %diff.check412 = icmp ugt i64 %i.hc, -16
  %conflict.rdx413 = or i1 %conflict.rdx411, %diff.check412
  br i1 %conflict.rdx413, label %.lr.ph315.preheader497, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 7 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index
  %wide.load = load <2 x double>, ptr %i.hd, align 16, !tbaa !101
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %index
  %wide.load414 = load <2 x double>, ptr %i.he, align 16, !tbaa !101
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %index
  %wide.load415 = load <2 x double>, ptr %i.hf, align 16, !tbaa !101
  %i.hg = fadd <2 x double> %wide.load414, %wide.load415
  %i.hh = fmul <2 x double> %i.hg, splat (double 4.000000e+00)
  %i.hi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> splat (double 6.000000e+00), <2 x double> %i.hh)
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %index
  %wide.load416 = load <2 x double>, ptr %i.hj, align 16, !tbaa !101
  %i.hk = fadd <2 x double> %wide.load416, %i.hi
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %index
  %wide.load417 = load <2 x double>, ptr %i.hl, align 16, !tbaa !101
  %i.hm = fadd <2 x double> %wide.load417, %i.hk
  %i.hn = fmul <2 x double> %i.hm, splat (double 3.906250e-03)
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %index
  store <2 x double> %i.hn, ptr %i.ho, align 8, !tbaa !101
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph315.preheader497

.lr.ph315.preheader497:                           ; preds = %vector.memcheck, %.lr.ph315.preheader, %middle.block
  %indvars.iv368.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph315.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph315

.lr.ph311:                                        ; preds = %.lr.ph311.preheader, %.loopexit
  %.1310 = phi i32 [ %i.afh, %.loopexit ], [ %.0254317, %.lr.ph311.preheader ] ; 4 uses
  %i.hq = add nsw i32 %.1310, 2
  %i.hr = srem i32 %i.hq, 5
  %i.hs = mul i32 %i.hr, %i.bc
  %i.ht = sext i32 %i.hs to i64                   ; 6 uses
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %i.ht ; 11 uses
  %i.hv = load i32, ptr %i.ca, align 8, !tbaa !80
  %i.hw = invoke noundef i32 @_ZN2cv17borderInterpolateEiii(i32 noundef %.1310, i32 noundef %i.z, i32 noundef %i.hv)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %.lr.ph311
  %i.hx = load ptr, ptr %i.a, align 8, !tbaa !78  ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !85 ; 9 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 128
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !30
  %i.ic = sext i32 %i.hw to i64
  %i.id = mul i64 %i.ib, %i.ic                    ; 9 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.id ; 27 uses
  %i.if = load ptr, ptr %i.cb, align 8, !tbaa !83
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !36 ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ci
  %invariant.gep393 = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.cj
  %invariant.gep395 = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.ck
  %invariant.gep397 = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.cl
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.r
  %indvars.iv331 = phi i64 [ 1, %bb.q ], [ %indvars.iv.next332, %bb.r ] ; 18 uses
  %indvars.iv = phi i64 [ 0, %bb.q ], [ %indvars.iv.next, %bb.r ] ; 16 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ih = load i32, ptr %gep, align 4, !tbaa !19
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.ii
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !101
  %gep394 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep393, i64 %indvars.iv
  %i.il = load i32, ptr %gep394, align 4, !tbaa !19
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.im
  %i.io = load double, ptr %i.in, align 8, !tbaa !101
  %gep396 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep395, i64 %indvars.iv
  %i.ip = load i32, ptr %gep396, align 4, !tbaa !19
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.iq
  %i.is = load double, ptr %i.ir, align 8, !tbaa !101
  %i.it = fadd double %i.io, %i.is
  %i.iu = fmul double %i.it, 4.000000e+00
  %i.iv = call double @llvm.fmuladd.f64(double %i.ik, double 6.000000e+00, double %i.iu)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %indvars.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !19
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %i.iy
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !101
  %i.jb = fadd double %i.ja, %i.iv
  %gep398 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep397, i64 %indvars.iv
  %i.jc = load i32, ptr %gep398, align 4, !tbaa !19
end_hunk_0
