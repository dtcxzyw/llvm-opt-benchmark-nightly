Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpPenaltyLSAcceptor?download=true
inline.NumInlined: 1178
inline.NumDeleted: 463
begin_hunk_0_@_ZN5Ipopt17PenaltyLSAcceptor18InitThisLineSearchEb:bb.a
  %4 = alloca %"class.Ipopt::SmartPtr.3", align 8 ; 6 uses
  %5 = alloca %"class.Ipopt::SmartPtr.3", align 8 ; 7 uses
  br i1 %1, label %bb.dn, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef double %i.h(ptr noundef nonnull align 8 dereferenceable(2185) %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store double %i.i, ptr %i.j, align 8, !tbaa !54
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef double %i.n(ptr noundef nonnull align 8 dereferenceable(2185) %i.k)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.o, ptr %i.p, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.r = tail call noundef double @_ZN5Ipopt25IpoptCalculatedQuantities19curr_gradBarrTDeltaEv(ptr noundef nonnull align 8 dereferenceable(2185) %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store double %i.r, ptr %i.s, align 8, !tbaa !56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !32   ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2200
  %i.w = load double, ptr %i.v, align 8, !tbaa !206 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 2208
  %i.y = load double, ptr %i.x, align 8, !tbaa !207 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !208, !noalias !209 ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZNK5Ipopt9IpoptData5deltaEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !17, !noalias !209
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 8, !tbaa !17, !noalias !209
  br label %_ZNK5Ipopt9IpoptData5deltaEv.exit

_ZNK5Ipopt9IpoptData5deltaEv.exit:                ; preds = %bb.b, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70, !noalias !210
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !72, !noalias !210 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i, label %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i: ; preds = %_ZNK5Ipopt9IpoptData5deltaEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75, !noalias !210
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26, !noalias !210 ; 2 uses
  %.not3.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not3.i.i.i, label %_ZNK5Ipopt14IteratesVector1xEv.exit, label %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i

_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i: ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt9IpoptData5deltaEv.exit
  %.0.i3.i.i.i = phi ptr [ %i.ag, %_ZNK5Ipopt9IpoptData5deltaEv.exit ], [ %i.aj, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i3.i.i.i, i64 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !17, !noalias !211
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !17, !noalias !211
  br label %_ZNK5Ipopt14IteratesVector1xEv.exit

_ZNK5Ipopt14IteratesVector1xEv.exit:              ; preds = %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i
  %storemerge.i.i = phi ptr [ null, %_ZNK5Ipopt14CompoundVector10IsCompNullEi.exit.i.i ], [ %.0.i3.i.i.i, %_ZNK5Ipopt14CompoundVector9ConstCompEi.exit.thread.i.i.i ] ; 37 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !17
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !17
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

bb.d:                                             ; preds = %_ZNK5Ipopt14IteratesVector1xEv.exit
  %i.ar = load ptr, ptr %i.aa, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(280) %i.aa) #24, !inline_history !185
  br label %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit: ; preds = %_ZNK5Ipopt14IteratesVector1xEv.exit, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !78 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef ptr %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.av)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit unwind label %bb.aj, !inline_history !1 ; 64 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit:                 ; preds = %_ZN5Ipopt8SmartPtrIKNS_14IteratesVectorEED2Ev.exit
  %.not.i.i42 = icmp eq ptr %i.az, null
  br i1 %.not.i.i42, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !17
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit, %bb.e
  %i.bd = load ptr, ptr %i.t, align 8, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !212, !noalias !213 ; 10 uses
  %.not.i.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i43, label %_ZN5Ipopt9IpoptData1WEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !17, !noalias !213
  %i.bi = add nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !17, !noalias !213
  br label %_ZN5Ipopt9IpoptData1WEv.exit

_ZN5Ipopt9IpoptData1WEv.exit:                     ; preds = %bb.g, %bb.f
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  invoke void %i.bl(ptr noundef nonnull align 8 dereferenceable(69) %i.bf, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.az)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.ak, !inline_history !188

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %_ZN5Ipopt9IpoptData1WEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !17
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !17
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.h, label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit

bb.h:                                             ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit
  %i.bq = load ptr, ptr %i.bf, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef nonnull align 8 dereferenceable(80) %i.bf) #24, !inline_history !189
  br label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit:     ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit, %bb.h
  %i.bt = icmp eq ptr %i.az, %storemerge.i.i      ; 2 uses
  br i1 %i.bt, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !90
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !91
  %.not.i.i45 = icmp eq i32 %i.bv, %i.bx
  br i1 %.not.i.i45, label %._crit_edge.i.i, label %bb.j

._crit_edge.i.i:                                  ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %.pre.i.i = load double, ptr %.phi.trans.insert.i.i, align 8, !tbaa !92
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef double %i.ca(ptr noundef nonnull align 8 dereferenceable(205) %i.az)
          to label %.noexc unwind label %bb.am, !inline_history !190 ; 2 uses

.noexc:                                           ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store double %i.cb, ptr %i.cc, align 8, !tbaa !92
  %i.cd = load i32, ptr %i.bw, align 8, !tbaa !91
  store i32 %i.cd, ptr %i.bu, align 8, !tbaa !90
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i

_ZNK5Ipopt6Vector4Nrm2Ev.exit.i:                  ; preds = %.noexc, %._crit_edge.i.i
  %i.ce = phi double [ %.pre.i.i, %._crit_edge.i.i ], [ %i.cb, %.noexc ] ; 2 uses
  %i.cf = fmul double %i.ce, %i.ce
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

bb.k:                                             ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 64 ; 2 uses
  %i.ch = invoke noundef zeroext i1 @_ZN5Ipopt13CachedResultsIdE19GetCachedResult2DepERdPKNS_12TaggedObjectES5_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(205) %i.az, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i)
          to label %.noexc46 unwind label %bb.am

.noexc46:                                         ; preds = %bb.k
  br i1 %i.ch, label %.noexc48, label %bb.l

bb.l:                                             ; preds = %.noexc46
  %i.ci = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef double %i.ck(ptr noundef nonnull align 8 dereferenceable(205) %i.az, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i)
          to label %.noexc47 unwind label %bb.am, !inline_history !190

.noexc47:                                         ; preds = %bb.l
  store double %i.cl, ptr %i.c, align 8, !tbaa !93
  invoke void @_ZN5Ipopt13CachedResultsIdE19AddCachedResult2DepERKdPKNS_12TaggedObjectES6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(205) %i.az, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i)
          to label %.noexc48 unwind label %bb.am

.noexc48:                                         ; preds = %.noexc47, %.noexc46
  %i.cm = load double, ptr %i.c, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %_ZNK5Ipopt6Vector3DotERKS0_.exit

_ZNK5Ipopt6Vector3DotERKS0_.exit:                 ; preds = %.noexc48, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i
  %.0.i = phi double [ %i.cf, %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i ], [ %i.cm, %.noexc48 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 12 uses
  store double %.0.i, ptr %i.cn, align 8, !tbaa !94
  %i.co = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(205) %i.az, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i)
          to label %.noexc49 unwind label %bb.am, !inline_history !2

.noexc49:                                         ; preds = %_ZNK5Ipopt6Vector3DotERKS0_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.az)
          to label %.noexc50 unwind label %bb.am

.noexc50:                                         ; preds = %.noexc49
  %i.cr = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 48 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !91 ; 7 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 88 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !90
  %i.cv = icmp eq i32 %i.cs, %i.cu
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.noexc50
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !91
  %i.cy = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !90
  %i.cz = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 96
  %i.da = load double, ptr %i.cz, align 8, !tbaa !92
  %i.db = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store double %i.da, ptr %i.db, align 8, !tbaa !92
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.noexc50
  %i.dc = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 104
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !95
  %i.de = icmp eq i32 %i.cs, %i.dd
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !91
  %i.dh = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !95
  %i.di = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 112
  %i.dj = load double, ptr %i.di, align 8, !tbaa !96
  %i.dk = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  store double %i.dj, ptr %i.dk, align 8, !tbaa !96
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dl = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 120
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !97
  %i.dn = icmp eq i32 %i.cs, %i.dm
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !91
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  store i32 %i.dp, ptr %i.dq, align 8, !tbaa !97
  %i.dr = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 128
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !98
  %i.dt = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  store double %i.ds, ptr %i.dt, align 8, !tbaa !98
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.du = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 136
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !99
  %i.dw = icmp eq i32 %i.cs, %i.dv
  br i1 %i.dw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !91
  %i.dz = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  store i32 %i.dy, ptr %i.dz, align 8, !tbaa !99
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 144
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !100
  %i.ec = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  store double %i.eb, ptr %i.ec, align 8, !tbaa !100
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ed = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 152
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !101
  %i.ef = icmp eq i32 %i.cs, %i.ee
  br i1 %i.ef, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.eg = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !91
  %i.ei = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !101
  %i.ej = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 160
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !102
  %i.el = getelementptr inbounds nuw i8, ptr %i.az, i64 160
  store double %i.ek, ptr %i.el, align 8, !tbaa !102
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 168
  %i.en = load i32, ptr %i.em, align 8, !tbaa !103
  %i.eo = icmp eq i32 %i.cs, %i.en
  br i1 %i.eo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ep = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !91
  %i.er = getelementptr inbounds nuw i8, ptr %i.az, i64 168
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !103
  %i.es = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 176
  %i.et = load double, ptr %i.es, align 8, !tbaa !104
  %i.eu = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  store double %i.et, ptr %i.eu, align 8, !tbaa !104
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ev = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 184
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !105
  %i.ex = icmp eq i32 %i.cs, %i.ew
  br i1 %i.ex, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !91
  %i.fa = getelementptr inbounds nuw i8, ptr %i.az, i64 184
  store i32 %i.ez, ptr %i.fa, align 8, !tbaa !105
  %i.fb = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 192
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !106
  %i.fd = getelementptr inbounds nuw i8, ptr %i.az, i64 192
  store double %i.fc, ptr %i.fd, align 8, !tbaa !106
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.fe = load ptr, ptr %i.d, align 8, !tbaa !29
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities12curr_sigma_xEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2185) %i.fe)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %bb.z
  %i.ff = load ptr, ptr %2, align 8, !tbaa !26
  %i.fg = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8
  invoke void %i.fi(ptr noundef nonnull align 8 dereferenceable(205) %i.az, ptr noundef nonnull align 8 dereferenceable(205) %i.ff)
          to label %.noexc51 unwind label %bb.ao, !inline_history !191

.noexc51:                                         ; preds = %bb.aa
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.az)
          to label %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit unwind label %bb.ao

_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit: ; preds = %.noexc51
  %i.fj = load ptr, ptr %2, align 8, !tbaa !26    ; 4 uses
  %.not.i.i53 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i53, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !17
  %i.fm = add nsw i32 %i.fl, -1                   ; 2 uses
  store i32 %i.fm, ptr %i.fk, align 8, !tbaa !17
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.ac, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fo = load ptr, ptr %i.fj, align 8, !tbaa !19
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(205) %i.fj) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit:        ; preds = %_ZN5Ipopt6Vector19ElementWiseMultiplyERKS0_.exit, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %i.bt, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %i.az, i64 88 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !90
  %i.ft = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !91
  %.not.i.i55 = icmp eq i32 %i.fs, %i.fu
  br i1 %.not.i.i55, label %._crit_edge.i.i57, label %bb.ae

._crit_edge.i.i57:                                ; preds = %bb.ad
  %.phi.trans.insert.i.i58 = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %.pre.i.i59 = load double, ptr %.phi.trans.insert.i.i58, align 8, !tbaa !92
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i56

bb.ae:                                            ; preds = %bb.ad
  %i.fv = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef double %i.fx(ptr noundef nonnull align 8 dereferenceable(205) %i.az)
          to label %.noexc60 unwind label %bb.am, !inline_history !190 ; 2 uses

.noexc60:                                         ; preds = %bb.ae
  %i.fz = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  store double %i.fy, ptr %i.fz, align 8, !tbaa !92
  %i.ga = load i32, ptr %i.ft, align 8, !tbaa !91
  store i32 %i.ga, ptr %i.fr, align 8, !tbaa !90
  br label %_ZNK5Ipopt6Vector4Nrm2Ev.exit.i56
end_hunk_0
begin_hunk_1_@_ZN5Ipopt17PenaltyLSAcceptor18InitThisLineSearchEb:bb.a
  invoke void (ptr, i32, i32, ptr, ...) %i.ol(ptr noundef nonnull align 8 dereferenceable(40) %i.oi, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.15, double noundef %i.og)
          to label %bb.cb unwind label %bb.bu

bb.cb:                                            ; preds = %bb.ca
  %i.om = load double, ptr %i.cn, align 8, !tbaa !94
  %i.on = fcmp ugt double %i.om, 0.000000e+00
  br i1 %i.on, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !94
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.oo = load ptr, ptr %i.d, align 8, !tbaa !29
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities20curr_jac_c_times_vecERKNS_6VectorE(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2185) %i.oo, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i)
          to label %bb.ce unwind label %bb.da

bb.ce:                                            ; preds = %bb.cd
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.oq = load ptr, ptr %4, align 8, !tbaa !26    ; 5 uses
  %.not.i.i.i113 = icmp eq ptr %i.oq, null
  br i1 %.not.i.i.i113, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 2 uses
  %i.os = load i32, ptr %i.or, align 8, !tbaa !17
  %i.ot = add nsw i32 %i.os, 1
  store i32 %i.ot, ptr %i.or, align 8, !tbaa !17
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ou = load ptr, ptr %i.op, align 8, !tbaa !26 ; 4 uses
  %.not.i.i.i.i114 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i.i114, label %bb.cj, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8 ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 8, !tbaa !17
  %i.ox = add nsw i32 %i.ow, -1                   ; 2 uses
  store i32 %i.ox, ptr %i.ov, align 8, !tbaa !17
  %i.oy = icmp eq i32 %i.ox, 0
  br i1 %i.oy, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.oz = load ptr, ptr %i.ou, align 8, !tbaa !19
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8
  call void %i.pb(ptr noundef nonnull align 8 dereferenceable(205) %i.ou) #24, !inline_history !203
  %.pre214 = load ptr, ptr %4, align 8, !tbaa !26
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg
  %i.pc = phi ptr [ %.pre214, %bb.ci ], [ %i.oq, %bb.ch ], [ %i.oq, %bb.cg ] ; 4 uses
  store ptr %i.oq, ptr %i.op, align 8, !tbaa !26
  %.not.i.i115 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i115, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit116, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.pe = load i32, ptr %i.pd, align 8, !tbaa !17
  %i.pf = add nsw i32 %i.pe, -1                   ; 2 uses
  store i32 %i.pf, ptr %i.pd, align 8, !tbaa !17
  %i.pg = icmp eq i32 %i.pf, 0
  br i1 %i.pg, label %bb.cl, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit116

bb.cl:                                            ; preds = %bb.ck
  %i.ph = load ptr, ptr %i.pc, align 8, !tbaa !19
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pj = load ptr, ptr %i.pi, align 8
  call void %i.pj(ptr noundef nonnull align 8 dereferenceable(205) %i.pc) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit116

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit116:     ; preds = %bb.cj, %bb.ck, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.pk = load ptr, ptr %i.is, align 8, !tbaa !78 ; 2 uses
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !19
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8
  %i.po = invoke noundef ptr %i.pn(ptr noundef nonnull align 8 dereferenceable(16) %i.pk)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit118 unwind label %bb.bu, !inline_history !1 ; 13 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit118:              ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit116
  %.not.i.i119 = icmp eq ptr %i.po, null
  br i1 %.not.i.i119, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit118
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 2 uses
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !17
  %i.pr = add nsw i32 %i.pq, 1
  store i32 %i.pr, ptr %i.pp, align 8, !tbaa !17
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit118, %bb.cm
  %i.ps = load i32, ptr %i.lo, align 8, !tbaa !17
  %i.pt = add nsw i32 %i.ps, -1                   ; 2 uses
  store i32 %i.pt, ptr %i.lo, align 8, !tbaa !17
  %i.pu = icmp eq i32 %i.pt, 0
  br i1 %i.pu, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.pv = load ptr, ptr %i.ix, align 8, !tbaa !19
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(205) %i.ix) #24, !inline_history !202
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cn, %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.py = load ptr, ptr %i.d, align 8, !tbaa !29
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities20curr_jac_d_times_vecERKNS_6VectorE(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(2185) %i.py, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i)
          to label %bb.cq unwind label %bb.db

bb.cq:                                            ; preds = %bb.cp
  %i.pz = load ptr, ptr %5, align 8, !tbaa !26
  %i.qa = load ptr, ptr %i.po, align 8, !tbaa !19
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 192
  %i.qc = load ptr, ptr %i.qb, align 8
  invoke void %i.qc(ptr noundef nonnull align 8 dereferenceable(205) %i.po, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.pz, double noundef -1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i77, double noundef 0.000000e+00)
          to label %.noexc122 unwind label %bb.dc, !inline_history !3

.noexc122:                                        ; preds = %bb.cq
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.po)
          to label %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit unwind label %bb.dc

_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit: ; preds = %.noexc122
  %i.qd = load ptr, ptr %5, align 8, !tbaa !26    ; 4 uses
  %.not.i.i124 = icmp eq ptr %i.qd, null
  br i1 %.not.i.i124, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !17
  %i.qg = add nsw i32 %i.qf, -1                   ; 2 uses
  store i32 %i.qg, ptr %i.qe, align 8, !tbaa !17
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.qi = load ptr, ptr %i.qd, align 8, !tbaa !19
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  %i.qk = load ptr, ptr %i.qj, align 8
  call void %i.qk(ptr noundef nonnull align 8 dereferenceable(205) %i.qd) #24, !inline_history !0
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %_ZN5Ipopt6Vector13AddTwoVectorsEdRKS0_dS2_d.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ql = getelementptr inbounds nuw i8, ptr %i.po, i64 8 ; 6 uses
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !17, !noalias !217
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.qo = add nsw i32 %i.qm, 2
  store i32 %i.qo, ptr %i.ql, align 8, !tbaa !17
  %i.qp = load ptr, ptr %i.qn, align 8, !tbaa !26 ; 4 uses
  %.not.i.i.i.i128 = icmp eq ptr %i.qp, null
  br i1 %.not.i.i.i.i128, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8 ; 2 uses
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !17
  %i.qs = add nsw i32 %i.qr, -1                   ; 2 uses
  store i32 %i.qs, ptr %i.qq, align 8, !tbaa !17
  %i.qt = icmp eq i32 %i.qs, 0
  br i1 %i.qt, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.qu = load ptr, ptr %i.qp, align 8, !tbaa !19
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8
  call void %i.qw(ptr noundef nonnull align 8 dereferenceable(205) %i.qp) #24, !inline_history !203
  br label %bb.cw

bb.cw:                                            ; preds = %bb.ct, %bb.cu, %bb.cv
  store ptr %i.po, ptr %i.qn, align 8, !tbaa !26
  %i.qx = load i32, ptr %i.ql, align 8, !tbaa !17
  %i.qy = add nsw i32 %i.qx, -1                   ; 2 uses
  store i32 %i.qy, ptr %i.ql, align 8, !tbaa !17
  %i.qz = icmp eq i32 %i.qy, 0
  br i1 %i.qz, label %bb.cx, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit131

bb.cx:                                            ; preds = %bb.cw
  %i.ra = load ptr, ptr %i.po, align 8, !tbaa !19
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(205) %i.po) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit131

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit131:     ; preds = %bb.cw, %bb.cx
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double -1.000000e+00, ptr %i.rd, align 8, !tbaa !107
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double -1.000000e+00, ptr %i.re, align 8, !tbaa !108
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !109 ; 4 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.rg, ptr %i.rh, align 8, !tbaa !110
  %i.ri = load double, ptr %i.j, align 8, !tbaa !54 ; 2 uses
  %i.rj = fcmp ogt double %i.ri, 0.000000e+00
  br i1 %i.rj, label %bb.cy, label %bb.df

bb.cy:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit131
  %6 = load double, ptr %i.s, align 8, !tbaa !56
  %7 = load double, ptr %i.cn, align 8, !tbaa !94
  %8 = fmul double %7, 5.000000e-01
  %9 = fadd double %6, %8
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.rl = load double, ptr %i.rk, align 8, !tbaa !218
  %i.rm = fsub double 1.000000e+00, %i.rl
  %i.rn = fmul double %i.ri, %i.rm
  %i.ro = fdiv double %9, %i.rn                   ; 2 uses
  %i.rp = fcmp olt double %i.rg, %i.ro
  br i1 %i.rp, label %bb.cz, label %bb.df

bb.cz:                                            ; preds = %bb.cy
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !219
  %i.rs = fadd double %i.ro, %i.rr                ; 2 uses
  store double %i.rs, ptr %i.rf, align 8, !tbaa !109
  br label %bb.df

bb.da:                                            ; preds = %bb.cd
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.thread

bb.db:                                            ; preds = %bb.cp
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135

bb.dc:                                            ; preds = %.noexc122, %bb.cq
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.rw = load ptr, ptr %5, align 8, !tbaa !26    ; 4 uses
  %.not.i.i134 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i134, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !17
  %i.rz = add nsw i32 %i.ry, -1                   ; 2 uses
  store i32 %i.rz, ptr %i.rx, align 8, !tbaa !17
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %bb.de, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135

bb.de:                                            ; preds = %bb.dd
  %i.sb = load ptr, ptr %i.rw, align 8, !tbaa !19
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(205) %i.rw) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135:     ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %.pn32 = phi { ptr, i32 } [ %i.ru, %bb.db ], [ %i.rv, %bb.dc ], [ %i.rv, %bb.dd ], [ %i.rv, %bb.de ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %.thread

bb.df:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit131, %bb.cz, %bb.cy
  %i.se = phi double [ %i.rg, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit131 ], [ %i.rs, %bb.cz ], [ %i.rg, %bb.cy ]
  %i.sf = load ptr, ptr %i.oh, align 8, !tbaa !38 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !19
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = load ptr, ptr %i.sh, align 8
  invoke void (ptr, i32, i32, ptr, ...) %i.si(ptr noundef nonnull align 8 dereferenceable(40) %i.sf, i32 noundef 6, i32 noundef 8, ptr noundef nonnull @.str.16, double noundef %i.se)
          to label %bb.dg unwind label %bb.bu

bb.dg:                                            ; preds = %bb.df
  %i.sj = getelementptr inbounds nuw i8, ptr %storemerge.i.i77, i64 8 ; 2 uses
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !17
  %i.sl = add nsw i32 %i.sk, -1                   ; 2 uses
  store i32 %i.sl, ptr %i.sj, align 8, !tbaa !17
  %i.sm = icmp eq i32 %i.sl, 0
  br i1 %i.sm, label %bb.dh, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit139

bb.dh:                                            ; preds = %bb.dg
  %i.sn = load ptr, ptr %storemerge.i.i77, align 8, !tbaa !19
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.sp = load ptr, ptr %i.so, align 8
  call void %i.sp(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i77) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit139

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit139:     ; preds = %bb.dh, %bb.dg
  %i.sq = load i32, ptr %i.ql, align 8, !tbaa !17
  %i.sr = add nsw i32 %i.sq, -1                   ; 2 uses
  store i32 %i.sr, ptr %i.ql, align 8, !tbaa !17
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %bb.di, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

bb.di:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit139
  %i.st = load ptr, ptr %i.po, align 8, !tbaa !19
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(205) %i.po) #24, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit:         ; preds = %bb.di, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit139
  %i.sw = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !17
  %i.sy = add nsw i32 %i.sx, -1                   ; 2 uses
  store i32 %i.sy, ptr %i.sw, align 8, !tbaa !17
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.dj, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit142

bb.dj:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit
  %i.ta = load ptr, ptr %storemerge.i.i, align 8, !tbaa !19
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit142

.thread:                                          ; preds = %bb.bu, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit112, %bb.bz, %bb.da, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135
  %.pn36199 = phi { ptr, i32 } [ %i.nu, %bb.bu ], [ %.pn28, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit112 ], [ %i.of, %bb.bz ], [ %i.rt, %bb.da ], [ %.pn32, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135 ] ; 2 uses
  %.sroa.0164.1196 = phi ptr [ %.sroa.0164.0, %bb.bu ], [ %i.ix, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit112 ], [ %i.ix, %bb.bz ], [ %i.ix, %bb.da ], [ %i.po, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit135 ] ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %storemerge.i.i77, i64 8 ; 2 uses
  %i.te = load i32, ptr %i.td, align 8, !tbaa !17
  %i.tf = add nsw i32 %i.te, -1                   ; 2 uses
  store i32 %i.tf, ptr %i.td, align 8, !tbaa !17
  %i.tg = icmp eq i32 %i.tf, 0
  br i1 %i.tg, label %bb.dk, label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69

bb.dk:                                            ; preds = %.thread
  %i.th = load ptr, ptr %storemerge.i.i77, align 8, !tbaa !19
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tj = load ptr, ptr %i.ti, align 8
  call void %i.tj(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i77) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69

_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69:   ; preds = %.thread, %bb.dk
  %.not.i.i145 = icmp eq ptr %.sroa.0164.1196, null
  br i1 %.not.i.i145, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit146, label %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69.thread

_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69.thread: ; preds = %bb.ak, %bb.al, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit71, %bb.am, %bb.ar, %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69
  %.pn36.pn.pn205 = phi { ptr, i32 } [ %i.ha, %bb.al ], [ %.pn36199, %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69 ], [ %i.ha, %bb.ak ], [ %.pn24, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit71 ], [ %i.hi, %bb.am ], [ %i.ht, %bb.ar ] ; 2 uses
  %.sroa.0164.2204 = phi ptr [ %i.az, %bb.al ], [ %.sroa.0164.1196, %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69 ], [ %i.az, %bb.ak ], [ %i.az, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit71 ], [ %i.az, %bb.am ], [ %i.az, %bb.ar ] ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.0164.2204, i64 8 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 8, !tbaa !17
  %i.tm = add nsw i32 %i.tl, -1                   ; 2 uses
  store i32 %i.tm, ptr %i.tk, align 8, !tbaa !17
  %i.tn = icmp eq i32 %i.tm, 0
  br i1 %i.tn, label %bb.dl, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit146

bb.dl:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69.thread
  %i.to = load ptr, ptr %.sroa.0164.2204, align 8, !tbaa !19
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 8
  %i.tq = load ptr, ptr %i.tp, align 8
  call void %i.tq(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0164.2204) #24, !inline_history !4
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit146

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit146:      ; preds = %bb.aj, %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69, %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69.thread, %bb.dl
  %.pn36.pn.pn.pn = phi { ptr, i32 } [ %i.gz, %bb.aj ], [ %.pn36199, %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69 ], [ %.pn36.pn.pn205, %_ZN5Ipopt8SmartPtrIKNS_9SymMatrixEED2Ev.exit69.thread ], [ %.pn36.pn.pn205, %bb.dl ]
  %i.tr = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 8 ; 2 uses
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !17
  %i.tt = add nsw i32 %i.ts, -1                   ; 2 uses
  store i32 %i.tt, ptr %i.tr, align 8, !tbaa !17
  %i.tu = icmp eq i32 %i.tt, 0
  br i1 %i.tu, label %bb.dm, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit148

bb.dm:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit146
  %i.tv = load ptr, ptr %storemerge.i.i, align 8, !tbaa !19
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %i.tx = load ptr, ptr %i.tw, align 8
  call void %i.tx(ptr noundef nonnull align 8 dereferenceable(205) %storemerge.i.i) #24, !inline_history !0
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit148

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit148:     ; preds = %bb.dm, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit146
  resume { ptr, i32 } %.pn36.pn.pn.pn

bb.dn:                                            ; preds = %bb.a
  %i.ty = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ua = load <2 x double>, ptr %i.ty, align 8, !tbaa !93
  store <2 x double> %i.ua, ptr %i.tz, align 8, !tbaa !93
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.uc = load double, ptr %i.ub, align 8, !tbaa !220
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.uc, ptr %i.ud, align 8, !tbaa !107
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit142

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit142:     ; preds = %bb.dj, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit, %bb.dn
  ret void
}

declare noundef double @_ZN5Ipopt25IpoptCalculatedQuantities19curr_gradBarrTDeltaEv(ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #6

declare void @_ZN5Ipopt25IpoptCalculatedQuantities12curr_sigma_xEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.3") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

declare void @_ZN5Ipopt25IpoptCalculatedQuantities12curr_sigma_sEv(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.3") align 8, ptr noundef nonnull align 8 dereferenceable(2185)) local_unnamed_addr #6

declare void @_ZN5Ipopt25IpoptCalculatedQuantities20curr_jac_c_times_vecERKNS_6VectorE(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.3") align 8, ptr noundef nonnull align 8 dereferenceable(2185), ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #6

declare void @_ZN5Ipopt25IpoptCalculatedQuantities20curr_jac_d_times_vecERKNS_6VectorE(ptr dead_on_unwind writable sret(%"class.Ipopt::SmartPtr.3") align 8, ptr noundef nonnull align 8 dereferenceable(2185), ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef double @_ZN5Ipopt17PenaltyLSAcceptor8CalcPredEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %0, double noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Ipopt::SmartPtr.3", align 8 ; 8 uses
  %3 = alloca %"class.Ipopt::SmartPtr.3", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  call void @_ZN5Ipopt25IpoptCalculatedQuantities6curr_cEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.3") align 8 %2, ptr noundef nonnull align 8 dereferenceable(2185) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !29
  invoke void @_ZN5Ipopt25IpoptCalculatedQuantities14curr_d_minus_sEv(ptr dead_on_unwind nonnull writable sret(%"class.Ipopt::SmartPtr.3") align 8 %3, ptr noundef nonnull align 8 dereferenceable(2185) %i.c)
          to label %bb.b unwind label %bb.i

end_hunk_1
begin_hunk_2_@_ZN5Ipopt8Observer13RequestDetachENS0_10NotifyTypeEPKNS_7SubjectE:bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.br = add nsw i64 %.052.i.i.i.i, -1
  %i.bs = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.bs, label %bb.p, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !319

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.t
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.az, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bb, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.aw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread ] ; 5 uses
  %i.bt = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.bt, label %_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bu = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !168
  %i.bv = icmp eq ptr %i.bu, %0
  br i1 %i.bv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.v, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.bw, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !168
  %i.by = icmp eq ptr %i.bx, %0
  br i1 %i.by, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.w, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.bz, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ca = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !168
  %i.cb = icmp eq ptr %i.ca, %0
  %spec.select.i.i.i.i = select i1 %i.cb, ptr %.sroa.032.2.i.i.i.i, ptr %i.ay
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit54: ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit56: ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i: ; preds = %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit56, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.u
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.u ], [ %i.ce, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit56 ], [ %i.cc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.cd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit54 ], [ %.sroa.032.051.i.i.i.i, %bb.p ] ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.ay
  br i1 %.not9.i, label %_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i
  %i.cf = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.cg = sub i64 %i.cf, %i.ba
  %i.ch = getelementptr inbounds i8, ptr %i.aw, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ci, %i.ay
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.az, %i.cj                    ; 3 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.z, label %bb.aa, !prof !160

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ch, ptr nonnull align 8 %i.ci, i64 %i.ck, i1 false)
  %.pre.i.i.i4 = load ptr, ptr %i.ax, align 8, !tbaa !166
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %bb.ab, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !168
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !168
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.co = phi ptr [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %.pre.i.i.i4, %bb.z ], [ %i.ay, %bb.x ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  store ptr %i.cp, ptr %i.ax, align 8, !tbaa !166
  br label %_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit

_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit: ; preds = %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, %._crit_edge.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #18

declare void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #6

declare void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265), i32 noundef, ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #1 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #18

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14INTERNAL_ABORTD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !45
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25, !inline_history !115
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #25, !inline_history !115
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN5Ipopt14IpoptExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !45
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #25, !inline_history !115
  br label %_ZN5Ipopt14IpoptExceptionD2Ev.exit

_ZN5Ipopt14IpoptExceptionD2Ev.exit:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #25
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noreturn }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind memory(none) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nounwind }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null, null}
!5 = distinct !{null}
!6 = distinct !{!6, !154}
!7 = distinct !{!7, !154}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"_ZTSN5Ipopt16ReferencedObjectE", !13, i64 8}
!17 = !{!16, !13, i64 8}
!18 = !{!"vtable pointer", !11, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"any pointer", !12, i64 0}
!21 = !{!"p1 _ZTSN5Ipopt14PDSystemSolverE", !20, i64 0}
!22 = !{!"_ZTSN5Ipopt8SmartPtrINS_14PDSystemSolverEEE", !21, i64 0}
!23 = !{!22, !21, i64 0}
!24 = !{!"p1 _ZTSN5Ipopt6VectorE", !20, i64 0}
!25 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_6VectorEEE", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"p1 _ZTSN5Ipopt25IpoptCalculatedQuantitiesE", !20, i64 0}
!28 = !{!"_ZTSN5Ipopt8SmartPtrINS_25IpoptCalculatedQuantitiesEEE", !27, i64 0}
!29 = !{!28, !27, i64 0}
!30 = !{!"p1 _ZTSN5Ipopt9IpoptDataE", !20, i64 0}
!31 = !{!"_ZTSN5Ipopt8SmartPtrINS_9IpoptDataEEE", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"p1 _ZTSN5Ipopt8IpoptNLPE", !20, i64 0}
!34 = !{!"_ZTSN5Ipopt8SmartPtrINS_8IpoptNLPEEE", !33, i64 0}
!35 = !{!34, !33, i64 0}
!36 = !{!"p1 _ZTSN5Ipopt10JournalistE", !20, i64 0}
!37 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_10JournalistEEE", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!"p1 omnipotent char", !20, i64 0}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !39, i64 0}
!41 = !{!40, !39, i64 0}
!42 = !{!"long", !12, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !42, i64 8, !12, i64 16}
!44 = !{!43, !42, i64 8}
!45 = !{!12, !12, i64 0}
!46 = !{!42, !42, i64 0}
!47 = !{!43, !39, i64 0}
!48 = !{!"bool", !12, i64 0}
!49 = !{!"_ZTSN5Ipopt23AlgorithmStrategyObjectE", !16, i64 0, !37, i64 16, !34, i64 24, !31, i64 32, !28, i64 40, !48, i64 48}
!50 = !{!"_ZTSN5Ipopt22BacktrackingLSAcceptorE", !49, i64 0}
!51 = !{!"double", !12, i64 0}
!52 = !{!"_ZTSN5Ipopt17PenaltyLSAcceptorE", !50, i64 0, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !13, i64 88, !51, i64 96, !13, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !25, i64 144, !25, i64 152, !51, i64 160, !51, i64 168, !51, i64 176, !51, i64 184, !51, i64 192, !51, i64 200, !51, i64 208, !22, i64 216}
!53 = !{!52, !13, i64 88}
!54 = !{!52, !51, i64 112}
!55 = !{!52, !51, i64 120}
!56 = !{!52, !51, i64 128}
!57 = !{!"p1 _ZTSN5Ipopt14IteratesVectorE", !20, i64 0}
!58 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_14IteratesVectorEEE", !57, i64 0}
!59 = !{!"p1 _ZTSN5Ipopt9SymMatrixE", !20, i64 0}
!60 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_9SymMatrixEEE", !59, i64 0}
!61 = !{!"p1 _ZTSN5Ipopt19IteratesVectorSpaceE", !20, i64 0}
!62 = !{!"_ZTSN5Ipopt8SmartPtrINS_19IteratesVectorSpaceEEE", !61, i64 0}
!63 = !{!"_ZTSN5Ipopt9TimedTaskE", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !48, i64 48, !48, i64 49, !48, i64 50}
!64 = !{!"_ZTSN5Ipopt16TimingStatisticsE", !16, i64 0, !63, i64 16, !63, i64 72, !63, i64 128, !63, i64 184, !63, i64 240, !63, i64 296, !63, i64 352, !63, i64 408, !63, i64 464, !63, i64 520, !63, i64 576, !63, i64 632, !63, i64 688, !63, i64 744, !63, i64 800, !63, i64 856, !63, i64 912, !63, i64 968, !63, i64 1024, !63, i64 1080, !63, i64 1136, !63, i64 1192, !63, i64 1248, !63, i64 1304, !63, i64 1360, !63, i64 1416, !63, i64 1472, !63, i64 1528, !63, i64 1584, !63, i64 1640, !63, i64 1696, !63, i64 1752, !63, i64 1808, !63, i64 1864, !63, i64 1920}
!65 = !{!"p1 _ZTSN5Ipopt19IpoptAdditionalDataE", !20, i64 0}
!66 = !{!"_ZTSN5Ipopt8SmartPtrINS_19IpoptAdditionalDataEEE", !65, i64 0}
!67 = !{!"_ZTSN5Ipopt9IpoptDataE", !16, i64 0, !58, i64 16, !58, i64 24, !60, i64 32, !58, i64 40, !48, i64 48, !58, i64 56, !48, i64 64, !13, i64 68, !51, i64 72, !48, i64 80, !51, i64 88, !48, i64 96, !48, i64 97, !48, i64 98, !51, i64 104, !48, i64 112, !48, i64 113, !51, i64 120, !51, i64 128, !12, i64 136, !51, i64 144, !13, i64 152, !48, i64 156, !43, i64 160, !51, i64 192, !13, i64 200, !62, i64 208, !64, i64 216, !66, i64 2192, !51, i64 2200, !51, i64 2208, !51, i64 2216, !51, i64 2224}
!68 = !{!"p1 _ZTSN5Ipopt8SmartPtrINS_6VectorEEE", !20, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!69, !68, i64 0}
!71 = !{!"_ZTSN5Ipopt8SmartPtrINS_6VectorEEE", !24, i64 0}
!72 = !{!71, !24, i64 0}
!73 = !{!"p1 _ZTSN5Ipopt8SmartPtrIKNS_6VectorEEE", !20, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!74, !73, i64 0}
!76 = !{!"p1 _ZTSN5Ipopt11VectorSpaceE", !20, i64 0}
!77 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_11VectorSpaceEEE", !76, i64 0}
!78 = !{!77, !76, i64 0}
!79 = !{!"any p2 pointer", !20, i64 0}
!80 = !{!"p2 _ZTSN5Ipopt8ObserverE", !79, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIPN5Ipopt8ObserverESaIS2_EE", !83, i64 0}
!85 = !{!"_ZTSN5Ipopt7SubjectE", !84, i64 8}
!86 = !{!"_ZTSN5Ipopt12TaggedObjectE", !16, i64 0, !85, i64 16, !13, i64 48, !13, i64 52}
!87 = !{!"p1 _ZTSNSt7__cxx114listIPN5Ipopt15DependentResultIdEESaIS4_EEE", !20, i64 0}
!88 = !{!"_ZTSN5Ipopt13CachedResultsIdEE", !13, i64 8, !87, i64 16}
!89 = !{!"_ZTSN5Ipopt6VectorE", !86, i64 0, !77, i64 56, !88, i64 64, !13, i64 88, !51, i64 96, !13, i64 104, !51, i64 112, !13, i64 120, !51, i64 128, !13, i64 136, !51, i64 144, !13, i64 152, !51, i64 160, !13, i64 168, !51, i64 176, !13, i64 184, !51, i64 192, !13, i64 200, !48, i64 204}
!90 = !{!89, !13, i64 88}
!91 = !{!86, !13, i64 48}
!92 = !{!89, !51, i64 96}
!93 = !{!51, !51, i64 0}
!94 = !{!52, !51, i64 136}
!95 = !{!89, !13, i64 104}
!96 = !{!89, !51, i64 112}
!97 = !{!89, !13, i64 120}
!98 = !{!89, !51, i64 128}
!99 = !{!89, !13, i64 136}
!100 = !{!89, !51, i64 144}
!101 = !{!89, !13, i64 152}
!102 = !{!89, !51, i64 160}
!103 = !{!89, !13, i64 168}
!104 = !{!89, !51, i64 176}
!105 = !{!89, !13, i64 184}
!106 = !{!89, !51, i64 192}
!107 = !{!52, !51, i64 160}
!108 = !{!52, !51, i64 208}
!109 = !{!52, !51, i64 192}
!110 = !{!52, !51, i64 200}
!111 = !{!52, !51, i64 72}
!112 = !{}
!113 = !{!"_ZTSN5Ipopt14IpoptExceptionE", !43, i64 8, !43, i64 40, !13, i64 72, !43, i64 80}
!114 = !{!113, !13, i64 72}
!115 = !{ptr @_ZN5Ipopt14IpoptExceptionD2Ev}
!116 = !{!"p2 _ZTSN5Ipopt12TaggedObjectE", !79, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseIPKN5Ipopt12TaggedObjectESaIS3_EE17_Vector_impl_dataE", !116, i64 0, !116, i64 8, !116, i64 16}
!118 = !{!117, !116, i64 0}
!119 = !{!117, !116, i64 16}
!120 = !{!117, !116, i64 8}
!121 = !{!"p1 _ZTSN5Ipopt12TaggedObjectE", !20, i64 0}
!122 = !{!121, !121, i64 0}
!123 = !{!"p1 double", !20, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!124, !123, i64 0}
!126 = !{!124, !123, i64 16}
!127 = !{!88, !87, i64 16}
!128 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !20, i64 0}
!129 = !{!"_ZTSNSt8__detail15_List_node_baseE", !128, i64 0, !128, i64 8}
!130 = !{!129, !128, i64 0}
!131 = !{!"p1 _ZTSN5Ipopt15DependentResultIdEE", !20, i64 0}
!132 = !{!131, !131, i64 0}
!133 = !{!"p2 _ZTSN5Ipopt7SubjectE", !79, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIPKN5Ipopt7SubjectESaIS3_EE17_Vector_impl_dataE", !133, i64 0, !133, i64 8, !133, i64 16}
!135 = !{!"_ZTSNSt12_Vector_baseIPKN5Ipopt7SubjectESaIS3_EE12_Vector_implE", !134, i64 0}
!136 = !{!"_ZTSSt12_Vector_baseIPKN5Ipopt7SubjectESaIS3_EE", !135, i64 0}
!137 = !{!"_ZTSSt6vectorIPKN5Ipopt7SubjectESaIS3_EE", !136, i64 0}
!138 = !{!"_ZTSN5Ipopt8ObserverE", !137, i64 8}
!139 = !{!"p1 int", !20, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !139, i64 0, !139, i64 8, !139, i64 16}
!141 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !140, i64 0}
!142 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !141, i64 0}
!143 = !{!"_ZTSSt6vectorIjSaIjEE", !142, i64 0}
!144 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !124, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !144, i64 0}
!146 = !{!"_ZTSSt6vectorIdSaIdEE", !145, i64 0}
!147 = !{!"_ZTSN5Ipopt15DependentResultIdEE", !138, i64 0, !48, i64 32, !51, i64 40, !143, i64 48, !146, i64 72}
!148 = !{!147, !48, i64 32}
!149 = !{i8 0, i8 2}
!150 = !{!"_ZTSNSt8__detail17_List_node_headerE", !129, i64 0, !42, i64 16}
!151 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EE10_List_implE", !150, i64 0}
!152 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EEE", !151, i64 0}
!153 = !{!152, !42, i64 16}
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!140, !139, i64 8}
!156 = !{!140, !139, i64 0}
!157 = !{!124, !123, i64 8}
!158 = !{!13, !13, i64 0}
!159 = !{!140, !139, i64 16}
!160 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!161 = !{!134, !133, i64 8}
!162 = !{!134, !133, i64 16}
!163 = !{!"p1 _ZTSN5Ipopt7SubjectE", !20, i64 0}
!164 = !{!163, !163, i64 0}
!165 = !{!134, !133, i64 0}
end_hunk_2
