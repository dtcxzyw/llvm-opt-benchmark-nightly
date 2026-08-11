inline.NumInlined: 40
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn24DeconvolutionDepthWise3D7forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37
  %i.v = add nsw i32 %i.u, -1
  %i.w = mul nsw i32 %i.v, %i.s
  %i.x = add nsw i32 %i.w, 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !38
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = mul nsw i32 %i.ac, %i.z
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !39
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = mul nsw i32 %i.aj, %i.ag
  %i.al = add nsw i32 %i.ak, 1
  %i.am = add nsw i32 %i.k, -1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43
  %i.ap = mul nsw i32 %i.ao, %i.am
  %i.aq = add nsw i32 %i.x, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !52
  %i.at = add nsw i32 %i.aq, %i.as
  %i.au = add nsw i32 %i.m, -1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !44
  %i.ax = mul nsw i32 %i.aw, %i.au
  %i.ay = add nsw i32 %i.ae, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !53
  %i.bb = add nsw i32 %i.ay, %i.ba
  %i.bc = add nsw i32 %i.o, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  %i.bf = mul nsw i32 %i.be, %i.bc
  %i.bg = add nsw i32 %i.al, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !54
  %i.bj = add nsw i32 %i.bg, %i.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 3 uses
  store i64 0, ptr %i.bs, align 16, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 248
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !46
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.thread.invoke, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !47
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.thread.invoke, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !48
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %.thread.invoke, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !49
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.thread.invoke, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !50
  %i.ch = icmp sgt i32 %i.cg, 0
  br i1 %i.ch, label %.thread.invoke, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !51
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.thread.invoke, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !55
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !56
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !57
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.thread.invoke, label %bb.k

bb.j:                                             ; preds = %.thread.invoke, %bb.o
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !11 ; 2 uses
  %.not.i43 = icmp eq ptr %i.cw, null
  br i1 %.not.i43, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cx = atomicrmw add ptr %i.cw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cy = atomicrmw add ptr %.pre, i32 -1 acq_rel, align 4
  %i.cz = icmp eq i32 %i.cy, 1
  br i1 %i.cz, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.da = load ptr, ptr %i.bn, align 16, !tbaa !17 ; 3 uses
  %.not3.i.i = icmp eq ptr %i.da, null
  %i.db = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  invoke void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.da, ptr noundef %i.db)
          to label %.thread unwind label %bb.j, !inline_history !62

bb.p:                                             ; preds = %bb.n
  %.not.i18.i = icmp eq ptr %i.db, null
  br i1 %.not.i18.i, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.db) #9
  br label %.thread

.thread:                                          ; preds = %bb.k, %bb.m, %bb.l, %bb.o, %bb.q, %bb.p
  %i.df = load <2 x ptr>, ptr %2, align 8, !tbaa !63
  store <2 x ptr> %i.df, ptr %4, align 16, !tbaa !63
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !64
  store i64 %i.dh, ptr %i.bl, align 16, !tbaa !64
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !65
  store i32 %i.dj, ptr %i.bm, align 8, !tbaa !65
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !17
  store ptr %i.dl, ptr %i.bn, align 16, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dn = load <4 x i32>, ptr %i.dm, align 8, !tbaa !66
  store <4 x i32> %i.dn, ptr %i.bo, align 8, !tbaa !66
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !67
  store i32 %i.dp, ptr %i.br, align 8, !tbaa !67
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !20
  store i64 %i.dr, ptr %i.bs, align 16, !tbaa !20
  br label %.thread.invoke

.thread.invoke:                                   ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %.thread
  %.sink69 = phi i64 [ 8, %.thread ], [ 16, %bb.i ], [ 16, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 16, %bb.c ], [ 16, %bb.b ], [ 16, %bb.a ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !21
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 %.sink69
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !71
  invoke void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.at, i32 noundef %i.bb, i32 noundef %i.bj, i32 noundef %i.dt, i64 noundef %i.q, ptr noundef %i.dv)
          to label %bb.r unwind label %bb.j

bb.r:                                             ; preds = %.thread.invoke
  %i.dw = load ptr, ptr %4, align 16, !tbaa !18
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %_ZNK4ncnn3Mat5emptyEv.exit45.thread, label %_ZNK4ncnn3Mat5emptyEv.exit45

_ZNK4ncnn3Mat5emptyEv.exit45:                     ; preds = %bb.r
  %i.dy = load i64, ptr %i.bs, align 16, !tbaa !20
  %i.dz = load i32, ptr %i.br, align 8, !tbaa !67
  %i.ea = sext i32 %i.dz to i64
  %i.eb = mul i64 %i.dy, %i.ea
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_ZNK4ncnn3Mat5emptyEv.exit45.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit45
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.ef = load i32, ptr %i.t, align 4, !tbaa !37  ; 7 uses
  %i.eg = load i32, ptr %i.aa, align 8, !tbaa !38 ; 4 uses
  %i.eh = load i32, ptr %i.ah, align 4, !tbaa !39 ; 3 uses
  %i.ei = load i32, ptr %i.an, align 4, !tbaa !43
  %i.ej = load i32, ptr %i.av, align 8, !tbaa !44
  %i.ek = load i32, ptr %i.bd, align 4, !tbaa !45
  %i.el = load i32, ptr %i.r, align 8, !tbaa !40  ; 4 uses
  %i.em = load i32, ptr %i.y, align 4, !tbaa !41  ; 2 uses
  %i.en = load i32, ptr %i.af, align 8, !tbaa !42
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !60 ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !61
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.et = call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store i32 %i.ei, ptr %i.a, align 4, !tbaa !66
  store i32 %i.ej, ptr %i.b, align 4, !tbaa !66
  store i32 %i.ek, ptr %i.c, align 4, !tbaa !66
  store i32 %i.ep, ptr %i.d, align 4, !tbaa !66
  store i32 %i.er, ptr %i.e, align 4, !tbaa !66
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !67 ; 2 uses
  %i.ew = load i32, ptr %i.bp, align 4, !tbaa !68 ; 2 uses
  %i.ex = load i32, ptr %i.bq, align 16, !tbaa !69
  %i.ey = load i32, ptr %i.br, align 8, !tbaa !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.ez = mul nsw i32 %i.eg, %i.ef                ; 2 uses
  %i.fa = mul nsw i32 %i.ez, %i.eh                ; 4 uses
  store i32 %i.fa, ptr %i.f, align 4, !tbaa !66
  %i.fb = sext i32 %i.fa to i64                   ; 3 uses
  %i.fc = icmp slt i32 %i.fa, 0
  br i1 %i.fc, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #19
          to label %.noexc46 unwind label %bb.x

.noexc46:                                         ; preds = %.noexc.i
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.s
  %.not.i.i.i.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %.noexc59.i

.noexc59.i:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.fd = shl nuw nsw i64 %i.fb, 2
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #20
          to label %.noexc47 unwind label %bb.x   ; 5 uses

.noexc47:                                         ; preds = %.noexc59.i
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fb ; 2 uses
  store i32 0, ptr %i.fe, align 4, !tbaa !66
  %i.fg = add nsw i64 %i.fb, -1                   ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc47
  %i.fi = getelementptr i8, ptr %i.fe, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fg, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.fi, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !66
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc47, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.9.0.i = phi ptr [ %i.ff, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ff, %.noexc47 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.060.0.i = phi ptr [ %i.fe, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.fe, %.noexc47 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store ptr %.sroa.060.0.i, ptr %i.g, align 8, !tbaa !72
  %i.fj = mul i32 %i.ew, %i.em
  %i.fk = mul i32 %i.el, %i.ef
  %i.fl = sub i32 %i.fj, %i.fk
  %i.fm = icmp sgt i32 %i.eh, 0
  br i1 %i.fm, label %.preheader63.lr.ph.i, label %._crit_edge.split.i

.preheader63.lr.ph.i:                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.fn = mul i32 %i.em, %i.eg
  %i.fo = mul i32 %i.ex, %i.en
  %i.fp = icmp sgt i32 %i.eg, 0
  %reass.add.i = sub i32 %i.fo, %i.fn
  %reass.mul.i = mul i32 %reass.add.i, %i.ew
  %i.fq = icmp sgt i32 %i.ef, 0
  %or.cond94.i = and i1 %i.fq, %i.fp
  br i1 %or.cond94.i, label %.preheader63.us.i.preheader, label %._crit_edge.split.i

.preheader63.us.i.preheader:                      ; preds = %.preheader63.lr.ph.i
  %i.fr = zext nneg i32 %i.ef to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ef, 8
  %n.vec = and i64 %i.fr, 2147483640              ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.el, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.fs = trunc nuw nsw i64 %n.vec to i32         ; 2 uses
  %i.ft = mul i32 %i.el, %i.fs
  %i.fu = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %i.fv = mul nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %invariant.op = add <4 x i32> %i.fu, %i.fu
  %cmp.n = icmp eq i64 %n.vec, %i.fr
  br label %.preheader63.us.i

.preheader63.us.i:                                ; preds = %.preheader63.us.i.preheader, %._crit_edge71.split.us.us.i
  %.05377.us.i = phi i32 [ %i.gi, %._crit_edge71.split.us.us.i ], [ 0, %.preheader63.us.i.preheader ]
  %.05476.us.i = phi i32 [ %7, %._crit_edge71.split.us.us.i ], [ 0, %.preheader63.us.i.preheader ] ; 2 uses
  %.05575.us.i = phi i32 [ %i.gh, %._crit_edge71.split.us.us.i ], [ 0, %.preheader63.us.i.preheader ]
  br label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.us.us.i, %.preheader63.us.i
  %.05270.us.us.i.a = phi i32 [ %i.gg, %._crit_edge.us.us.i ], [ %.05476.us.i, %.preheader63.us.i ] ; 2 uses
  %.05270.us.us.i = phi i32 [ %i.gf, %._crit_edge.us.us.i ], [ 0, %.preheader63.us.i ]
  %.15668.us.us.i = phi i32 [ %6, %._crit_edge.us.us.i ], [ %.05575.us.i, %.preheader63.us.i ] ; 3 uses
  %5 = sext i32 %.05270.us.us.i.a to i64          ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.i
  %i.fw = add nsw i64 %n.vec, %5
  %i.fx = add i32 %.15668.us.us.i, %i.ft          ; 2 uses
  %broadcast.splatinsert71 = insertelement <4 x i32> poison, i32 %.15668.us.us.i, i64 0
  %broadcast.splat72 = shufflevector <4 x i32> %broadcast.splatinsert71, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat72, %i.fv
  %i.fy = getelementptr [4 x i8], ptr %.sroa.060.0.i, i64 %5
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, %i.fu
  %i.fz = getelementptr [4 x i8], ptr %i.fy, i64 %index ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x i32> %vec.ind, ptr %i.fz, align 4, !tbaa !66
  store <4 x i32> %step.add, ptr %i.ga, align 4, !tbaa !66
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %5, %.preheader.us.us.i ], [ %i.fw, %middle.block ]
  %.066.us.us.i.ph = phi i32 [ 0, %.preheader.us.us.i ], [ %i.fs, %middle.block ]
  %.25764.us.us.i.ph = phi i32 [ %.15668.us.us.i, %.preheader.us.us.i ], [ %i.fx, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.a, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.066.us.us.i = phi i32 [ %i.ge, %scalar.ph ], [ %.066.us.us.i.ph, %scalar.ph.preheader ]
  %.25764.us.us.i = phi i32 [ %i.gd, %scalar.ph ], [ %.25764.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %.sroa.060.0.i, i64 %indvars.iv.i
  store i32 %.25764.us.us.i, ptr %i.gc, align 4, !tbaa !66
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i, 1
  %i.gd = add nsw i32 %.25764.us.us.i, %i.el      ; 2 uses
  %i.ge = add nuw nsw i32 %.066.us.us.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ge, %i.ef
  br i1 %exitcond.not.i, label %._crit_edge.us.us.i, label %scalar.ph, !llvm.loop !77

._crit_edge.us.us.i:                              ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.fx, %middle.block ], [ %i.gd, %scalar.ph ]
  %6 = add nsw i32 %.lcssa, %i.fl                 ; 2 uses
  %i.gf = add nuw nsw i32 %.05270.us.us.i, 1      ; 2 uses
  %i.gg = add i32 %.05270.us.us.i.a, %i.ef
  %exitcond85.not.i = icmp eq i32 %i.gf, %i.eg
  br i1 %exitcond85.not.i, label %._crit_edge71.split.us.us.i, label %.preheader.us.us.i, !llvm.loop !78

._crit_edge71.split.us.us.i:                      ; preds = %._crit_edge.us.us.i
  %7 = add i32 %.05476.us.i, %i.ez
  %i.gh = add i32 %6, %reass.mul.i
  %i.gi = add nuw nsw i32 %.05377.us.i, 1         ; 2 uses
  %exitcond86.not.i = icmp eq i32 %i.gi, %i.eh
  br i1 %exitcond86.not.i, label %._crit_edge.split.i, label %.preheader63.us.i, !llvm.loop !79

._crit_edge.split.i:                              ; preds = %._crit_edge71.split.us.us.i, %.preheader63.lr.ph.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.gj = icmp eq i32 %i.ev, %i.ep
  %i.gk = icmp eq i32 %i.ep, %i.ey
  %or.cond.i = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %or.cond.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.split.i
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !80
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.et, i32 %i.gm)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL24deconvolutiondepthwise3dERKNS_3MatERS0_S2_S2_iiiiiiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %i.ed, ptr nonnull %i.f, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %i.ee, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.g, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %i.es)
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.gn = sdiv i32 %i.ev, %i.ep
  store i32 %i.gn, ptr %i.h, align 4, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.go = sdiv i32 %i.ey, %i.ep
  store i32 %i.go, ptr %i.i, align 4, !tbaa !66
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !80
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.et, i32 %i.gq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 14, ptr nonnull @_ZN4ncnnL24deconvolutiondepthwise3dERKNS_3MatERS0_S2_S2_iiiiiiiiiiiS2_RKNS_6OptionE.omp_outlined.1, ptr nonnull %i.d, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %4, ptr nonnull align 8 dereferenceable(72) %i.ed, ptr nonnull %i.f, ptr nonnull %i.h, ptr nonnull align 8 dereferenceable(72) %i.ee, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.g, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %.not.i.i.i.i = icmp eq ptr %.sroa.060.0.i, null
  br i1 %.not.i.i.i.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gr = ptrtoint ptr %.sroa.9.0.i to i64
  %i.gs = ptrtoint ptr %.sroa.060.0.i to i64
  %i.gt = sub i64 %i.gr, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.060.0.i, i64 noundef %i.gt) #18
  br label %bb.y

bb.x:                                             ; preds = %.noexc59.i, %.noexc.i, %bb.y
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.y:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_ZNK4ncnn24DeconvolutionDepthWise3D11cut_paddingERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(528) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %bb.z unwind label %bb.x

bb.z:                                             ; preds = %bb.y
  %i.gv = load ptr, ptr %2, align 8, !tbaa !18
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit

_ZNK4ncnn3Mat5emptyEv.exit:                       ; preds = %bb.z
  %i.gx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !20
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !67
  %i.hb = sext i32 %i.ha to i64
  %i.hc = mul i64 %i.gy, %i.hb
  %.fr = freeze i64 %i.hc
  %i.hd = icmp eq i64 %.fr, 0
  br i1 %i.hd, label %_ZNK4ncnn3Mat5emptyEv.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit45.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.z, %_ZNK4ncnn3Mat5emptyEv.exit
  br label %_ZNK4ncnn3Mat5emptyEv.exit45.thread

_ZNK4ncnn3Mat5emptyEv.exit45.thread:              ; preds = %bb.r, %_ZNK4ncnn3Mat5emptyEv.exit.thread, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZNK4ncnn3Mat5emptyEv.exit45
  %.1 = phi i32 [ 0, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit45 ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ -100, %bb.r ]
  %i.he = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.he, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.aa

bb.aa:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit45.thread
  %i.hf = atomicrmw add ptr %i.he, i32 -1 acq_rel, align 4
  %i.hg = icmp eq i32 %i.hf, 1
  br i1 %i.hg, label %bb.ab, label %_ZN4ncnn3MatD2Ev.exit35

bb.ab:                                            ; preds = %bb.aa
  %i.hh = load ptr, ptr %i.bn, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.hh, null
  %i.hi = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hj = load ptr, ptr %i.hh, align 8, !tbaa !9
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  invoke void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, ptr noundef %i.hi)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.af, !inline_history !19

bb.ad:                                            ; preds = %bb.ab
  %.not.i41 = icmp eq ptr %i.hi, null
  br i1 %.not.i41, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.hi) #9
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.af:                                            ; preds = %bb.ac
  %i.hm = landingpad { ptr, i32 }
          catch ptr null
  %i.hn = extractvalue { ptr, i32 } %i.hm, 0
  call void @__clang_call_terminate(ptr %i.hn) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.aa, %_ZNK4ncnn3Mat5emptyEv.exit45.thread, %bb.ac, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.1

bb.ag:                                            ; preds = %bb.x, %bb.j
  %.pn = phi { ptr, i32 } [ %i.gu, %bb.x ], [ %i.cu, %bb.j ]
  %i.ho = load ptr, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %.not.i36 = icmp eq ptr %i.ho, null
  br i1 %.not.i36, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hp = atomicrmw add ptr %i.ho, i32 -1 acq_rel, align 4
  %i.hq = icmp eq i32 %i.hp, 1
  br i1 %i.hq, label %bb.ai, label %_ZN4ncnn3MatD2Ev.exit

bb.ai:                                            ; preds = %bb.ah
  %i.hr = load ptr, ptr %i.bn, align 16, !tbaa !17 ; 3 uses
  %.not3.i37 = icmp eq ptr %i.hr, null
  %i.hs = load ptr, ptr %4, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i37, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ht = load ptr, ptr %i.hr, align 8, !tbaa !9
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 24
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %i.hr, ptr noundef %i.hs)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.am, !inline_history !19

bb.ak:                                            ; preds = %bb.ai
  %.not.i40 = icmp eq ptr %i.hs, null
  br i1 %.not.i40, label %_ZN4ncnn3MatD2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @free(ptr noundef nonnull %i.hs) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.am:                                            ; preds = %bb.aj
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #17
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.ah, %bb.ag, %bb.aj, %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  resume { ptr, i32 } %.pn
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn24DeconvolutionDepthWise3DC2Ev(ptr noundef nonnull align 8 dereferenceable(528) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn24DeconvolutionDepthWise3DE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i64 0, ptr %i.g, align 8, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.a, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  store i8 1, ptr %i.h, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1, !tbaa !83
  ret void
}

declare void @_ZN4ncnn5LayerC2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
end_hunk_0
