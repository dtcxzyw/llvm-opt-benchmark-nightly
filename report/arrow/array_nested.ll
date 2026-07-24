inline.NumInlined: 5209
inline.NumDeleted: 1661
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %.pre = load ptr, ptr %6, align 16, !tbaa !33
  br label %bb.y

bb.x:                                             ; preds = %bb.j
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.bx

bb.y:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.i
  %i.cb = phi ptr [ %.pre, %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.aj, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !178 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !90 ; 2 uses
  %i.ch = load <2 x ptr>, ptr %i.cd, align 8, !tbaa !84
  store <2 x ptr> %i.ch, ptr %8, align 16, !tbaa !84
  %.not.i.i.i24 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i24, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i25 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i.i25, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load i32, ptr %i.ci, align 4, !tbaa !3
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.ci, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cm = atomicrmw volatile add ptr %i.ci, i32 1 acq_rel, align 4 ; 0 uses
  %.pre82 = load ptr, ptr %6, align 16, !tbaa !33
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.y, %bb.aa, %bb.ab
  %i.cn = phi ptr [ %i.cb, %bb.y ], [ %i.cb, %bb.aa ], [ %.pre82, %bb.ab ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !145 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !39
  %i.cs = add nsw i64 %i.cr, %i.cp
  invoke void @_ZN5arrow19AllocateEmptyBitmapElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.144") align 8 %9, i64 noundef %i.cs, ptr noundef %3)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.ct = load ptr, ptr %9, align 8, !tbaa !80
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.af, label %bb.ad, !prof !83

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #23
  br label %bb.bb

bb.ae:                                            ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !932)
  call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.cz = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !84, !noalias !938
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !179, !noalias !938 ; 5 uses
  store ptr null, ptr %i.cy, align 8, !tbaa !90, !noalias !938
  store <2 x ptr> %i.cz, ptr %10, align 16, !tbaa !84, !alias.scope !938
  store ptr null, ptr %i.cw, align 8, !tbaa !179, !noalias !938
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !939
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load i32, ptr %i.a, align 4, !tbaa !3
  %i.df = sext i32 %i.de to i64
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !940
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !97  ; 7 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !911 ; 27 uses
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !39 ; 5 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 9
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !182, !range !111, !noundef !112
  %i.dr = trunc nuw i8 %i.dq to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dt = load i8, ptr %i.ds, align 8, !range !111
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = select i1 %i.dr, i1 %i.du, i1 false, !prof !83
  %i.dw = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = select i1 %i.dv, ptr %i.dx, ptr null, !prof !83
  %i.dz = sdiv i64 %i.cp, 8
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz ; 4 uses
  %i.eb = srem i64 %i.cp, 8                       ; 3 uses
  %.not.i26 = icmp eq i64 %i.eb, 0
  br i1 %.not.i26, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !97
  %i.ed = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL17kPrecedingBitmaskE, i64 %i.eb
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !97
  %i.ef = and i8 %i.ee, %i.ec                     ; 2 uses
  %i.eg = icmp sgt i64 %i.dn, 0
  br i1 %i.eg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.eb
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !97
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i
  %i.ej = phi i64 [ 0, %.lr.ph.i ], [ %i.ek, %bb.ai ] ; 2 uses
  %.03549.i = phi i64 [ %i.dn, %.lr.ph.i ], [ %i.er, %bb.ai ] ; 2 uses
  %.03648.i = phi i8 [ %i.ei, %.lr.ph.i ], [ %i.eq, %bb.ai ] ; 2 uses
  %.03847.i = phi i8 [ %i.ef, %.lr.ph.i ], [ %i.ep, %bb.ai ]
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !tbaa !97
  %i.en = icmp eq i8 %i.em, %i.di
  %i.eo = select i1 %i.en, i8 %.03648.i, i8 0
  %i.ep = or i8 %i.eo, %.03847.i                  ; 2 uses
  %i.eq = shl i8 %.03648.i, 1                     ; 2 uses
  %i.er = add nsw i64 %.03549.i, -1               ; 2 uses
  %i.es = icmp ne i8 %i.eq, 0
  %i.et = icmp samesign ugt i64 %.03549.i, 1
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %bb.ai, label %._crit_edge.i, !llvm.loop !942

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ah
  %.0 = phi i64 [ 0, %bb.ah ], [ %i.ek, %bb.ai ]
  %.038.lcssa.i = phi i8 [ %i.ef, %bb.ah ], [ %i.ep, %bb.ai ]
  %.035.lcssa.i = phi i64 [ %i.dn, %bb.ah ], [ %i.er, %bb.ai ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %.038.lcssa.i, ptr %i.ea, align 1, !tbaa !97
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ag
  %.1 = phi i64 [ 0, %bb.ag ], [ %.0, %._crit_edge.i ] ; 9 uses
  %.040.i = phi ptr [ %i.ea, %bb.ag ], [ %i.ev, %._crit_edge.i ] ; 9 uses
  %.1.i = phi i64 [ %i.dn, %bb.ag ], [ %.035.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.ew = icmp sgt i64 %.1.i, 7
  br i1 %i.ew, label %iter.check, label %._crit_edge53.i

iter.check:                                       ; preds = %bb.aj
  %i.ex = lshr i64 %.1.i, 3                       ; 9 uses
  %i.ey = call i64 @llvm.umax.i64(i64 %i.ex, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %.1.i, 32
  br i1 %min.iters.check, label %.preheader46.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ez = icmp ne i64 %i.ex, 0                    ; 2 uses
  %umin.neg = sext i1 %i.ez to i64
  %i.fa = getelementptr i8, ptr %.040.i, i64 %i.ex
  %i.fb = getelementptr i8, ptr %i.fa, i64 1
  %scevgep = getelementptr i8, ptr %i.fb, i64 %umin.neg
  %scevgep115 = getelementptr i8, ptr %i.dk, i64 %.1
  %i.fc = and i64 %.1.i, 9223372036854775800
  %i.fd = add i64 %.1, %i.fc                      ; 2 uses
  %i.fe = add i64 %i.fd, 8
  %i.ff = select i1 %i.ez, i64 %i.fd, i64 %i.fe
  %scevgep116 = getelementptr i8, ptr %i.dk, i64 %i.ff
  %bound0 = icmp ult ptr %.040.i, %scevgep116
  %bound1 = icmp ult ptr %scevgep115, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader46.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check118 = icmp ult i64 %.1.i, 128
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ey, 12
  %n.vec = and i64 %i.ey, 1152921504606846960     ; 6 uses
  %i.fg = shl nuw nsw i64 %n.vec, 3
  %i.fh = add i64 %.1, %i.fg                      ; 2 uses
  %i.fi = sub nsw i64 %i.ex, %n.vec
  %i.fj = getelementptr i8, ptr %.040.i, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fk = shl i64 %index, 3
  %i.fl = add i64 %.1, %i.fk                      ; 16 uses
  %next.gep = getelementptr i8, ptr %.040.i, i64 %index
  %i.fm = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.fn = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 8
  %i.fp = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 16
  %i.fr = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 24
  %i.ft = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.fu = getelementptr i8, ptr %i.ft, i64 32
  %i.fv = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 40
  %i.fx = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 48
  %i.fz = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 56
  %i.gb = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 64
  %i.gd = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.ge = getelementptr i8, ptr %i.gd, i64 72
  %i.gf = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.gg = getelementptr i8, ptr %i.gf, i64 80
  %i.gh = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 88
  %i.gj = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 96
  %i.gl = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 104
  %i.gn = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 112
  %i.gp = getelementptr i8, ptr %i.dk, i64 %i.fl  ; 8 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 120
  %i.gr = load i8, ptr %i.fm, align 1, !tbaa !97, !alias.scope !943
  %i.gs = load i8, ptr %i.fo, align 1, !tbaa !97, !alias.scope !943
  %i.gt = load i8, ptr %i.fq, align 1, !tbaa !97, !alias.scope !943
  %i.gu = load i8, ptr %i.fs, align 1, !tbaa !97, !alias.scope !943
  %i.gv = load i8, ptr %i.fu, align 1, !tbaa !97, !alias.scope !943
  %i.gw = load i8, ptr %i.fw, align 1, !tbaa !97, !alias.scope !943
  %i.gx = load i8, ptr %i.fy, align 1, !tbaa !97, !alias.scope !943
  %i.gy = load i8, ptr %i.ga, align 1, !tbaa !97, !alias.scope !943
  %i.gz = load i8, ptr %i.gc, align 1, !tbaa !97, !alias.scope !943
  %i.ha = load i8, ptr %i.ge, align 1, !tbaa !97, !alias.scope !943
  %i.hb = load i8, ptr %i.gg, align 1, !tbaa !97, !alias.scope !943
  %i.hc = load i8, ptr %i.gi, align 1, !tbaa !97, !alias.scope !943
  %i.hd = load i8, ptr %i.gk, align 1, !tbaa !97, !alias.scope !943
  %i.he = load i8, ptr %i.gm, align 1, !tbaa !97, !alias.scope !943
  %i.hf = load i8, ptr %i.go, align 1, !tbaa !97, !alias.scope !943
  %i.hg = load i8, ptr %i.gq, align 1, !tbaa !97, !alias.scope !943
  %i.hh = insertelement <16 x i8> poison, i8 %i.gr, i64 0
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 1
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 2
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 3
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 4
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 5
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 6
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 7
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 8
  %i.hq = insertelement <16 x i8> %i.hp, i8 %i.ha, i64 9
  %i.hr = insertelement <16 x i8> %i.hq, i8 %i.hb, i64 10
  %i.hs = insertelement <16 x i8> %i.hr, i8 %i.hc, i64 11
  %i.ht = insertelement <16 x i8> %i.hs, i8 %i.hd, i64 12
  %i.hu = insertelement <16 x i8> %i.ht, i8 %i.he, i64 13
  %i.hv = insertelement <16 x i8> %i.hu, i8 %i.hf, i64 14
  %i.hw = insertelement <16 x i8> %i.hv, i8 %i.hg, i64 15
  %i.hx = icmp eq <16 x i8> %i.hw, %broadcast.splat
  %i.hy = zext <16 x i1> %i.hx to <16 x i8>
  %i.hz = getelementptr i8, ptr %i.fm, i64 1
  %i.ia = getelementptr i8, ptr %i.fn, i64 9
  %i.ib = getelementptr i8, ptr %i.fp, i64 17
  %i.ic = getelementptr i8, ptr %i.fr, i64 25
  %i.id = getelementptr i8, ptr %i.ft, i64 33
  %i.ie = getelementptr i8, ptr %i.fv, i64 41
  %i.if = getelementptr i8, ptr %i.fx, i64 49
  %i.ig = getelementptr i8, ptr %i.fz, i64 57
  %i.ih = getelementptr i8, ptr %i.gb, i64 65
  %i.ii = getelementptr i8, ptr %i.gd, i64 73
  %i.ij = getelementptr i8, ptr %i.gf, i64 81
  %i.ik = getelementptr i8, ptr %i.gh, i64 89
  %i.il = getelementptr i8, ptr %i.gj, i64 97
  %i.im = getelementptr i8, ptr %i.gl, i64 105
  %i.in = getelementptr i8, ptr %i.gn, i64 113
  %i.io = getelementptr i8, ptr %i.gp, i64 121
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !97, !alias.scope !943
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !97, !alias.scope !943
  %i.ir = load i8, ptr %i.ib, align 1, !tbaa !97, !alias.scope !943
  %i.is = load i8, ptr %i.ic, align 1, !tbaa !97, !alias.scope !943
  %i.it = load i8, ptr %i.id, align 1, !tbaa !97, !alias.scope !943
  %i.iu = load i8, ptr %i.ie, align 1, !tbaa !97, !alias.scope !943
  %i.iv = load i8, ptr %i.if, align 1, !tbaa !97, !alias.scope !943
  %i.iw = load i8, ptr %i.ig, align 1, !tbaa !97, !alias.scope !943
  %i.ix = load i8, ptr %i.ih, align 1, !tbaa !97, !alias.scope !943
  %i.iy = load i8, ptr %i.ii, align 1, !tbaa !97, !alias.scope !943
  %i.iz = load i8, ptr %i.ij, align 1, !tbaa !97, !alias.scope !943
  %i.ja = load i8, ptr %i.ik, align 1, !tbaa !97, !alias.scope !943
  %i.jb = load i8, ptr %i.il, align 1, !tbaa !97, !alias.scope !943
  %i.jc = load i8, ptr %i.im, align 1, !tbaa !97, !alias.scope !943
  %i.jd = load i8, ptr %i.in, align 1, !tbaa !97, !alias.scope !943
  %i.je = load i8, ptr %i.io, align 1, !tbaa !97, !alias.scope !943
  %i.jf = insertelement <16 x i8> poison, i8 %i.ip, i64 0
  %i.jg = insertelement <16 x i8> %i.jf, i8 %i.iq, i64 1
  %i.jh = insertelement <16 x i8> %i.jg, i8 %i.ir, i64 2
  %i.ji = insertelement <16 x i8> %i.jh, i8 %i.is, i64 3
  %i.jj = insertelement <16 x i8> %i.ji, i8 %i.it, i64 4
  %i.jk = insertelement <16 x i8> %i.jj, i8 %i.iu, i64 5
  %i.jl = insertelement <16 x i8> %i.jk, i8 %i.iv, i64 6
  %i.jm = insertelement <16 x i8> %i.jl, i8 %i.iw, i64 7
  %i.jn = insertelement <16 x i8> %i.jm, i8 %i.ix, i64 8
  %i.jo = insertelement <16 x i8> %i.jn, i8 %i.iy, i64 9
  %i.jp = insertelement <16 x i8> %i.jo, i8 %i.iz, i64 10
  %i.jq = insertelement <16 x i8> %i.jp, i8 %i.ja, i64 11
  %i.jr = insertelement <16 x i8> %i.jq, i8 %i.jb, i64 12
  %i.js = insertelement <16 x i8> %i.jr, i8 %i.jc, i64 13
  %i.jt = insertelement <16 x i8> %i.js, i8 %i.jd, i64 14
  %i.ju = insertelement <16 x i8> %i.jt, i8 %i.je, i64 15
  %i.jv = icmp eq <16 x i8> %i.ju, %broadcast.splat
  %i.jw = getelementptr i8, ptr %i.fm, i64 2
  %i.jx = getelementptr i8, ptr %i.fn, i64 10
  %i.jy = getelementptr i8, ptr %i.fp, i64 18
  %i.jz = getelementptr i8, ptr %i.fr, i64 26
  %i.ka = getelementptr i8, ptr %i.ft, i64 34
  %i.kb = getelementptr i8, ptr %i.fv, i64 42
  %i.kc = getelementptr i8, ptr %i.fx, i64 50
  %i.kd = getelementptr i8, ptr %i.fz, i64 58
  %i.ke = getelementptr i8, ptr %i.gb, i64 66
  %i.kf = getelementptr i8, ptr %i.gd, i64 74
  %i.kg = getelementptr i8, ptr %i.gf, i64 82
  %i.kh = getelementptr i8, ptr %i.gh, i64 90
  %i.ki = getelementptr i8, ptr %i.gj, i64 98
  %i.kj = getelementptr i8, ptr %i.gl, i64 106
  %i.kk = getelementptr i8, ptr %i.gn, i64 114
  %i.kl = getelementptr i8, ptr %i.gp, i64 122
  %i.km = load i8, ptr %i.jw, align 1, !tbaa !97, !alias.scope !943
  %i.kn = load i8, ptr %i.jx, align 1, !tbaa !97, !alias.scope !943
  %i.ko = load i8, ptr %i.jy, align 1, !tbaa !97, !alias.scope !943
  %i.kp = load i8, ptr %i.jz, align 1, !tbaa !97, !alias.scope !943
  %i.kq = load i8, ptr %i.ka, align 1, !tbaa !97, !alias.scope !943
  %i.kr = load i8, ptr %i.kb, align 1, !tbaa !97, !alias.scope !943
  %i.ks = load i8, ptr %i.kc, align 1, !tbaa !97, !alias.scope !943
  %i.kt = load i8, ptr %i.kd, align 1, !tbaa !97, !alias.scope !943
  %i.ku = load i8, ptr %i.ke, align 1, !tbaa !97, !alias.scope !943
  %i.kv = load i8, ptr %i.kf, align 1, !tbaa !97, !alias.scope !943
  %i.kw = load i8, ptr %i.kg, align 1, !tbaa !97, !alias.scope !943
  %i.kx = load i8, ptr %i.kh, align 1, !tbaa !97, !alias.scope !943
  %i.ky = load i8, ptr %i.ki, align 1, !tbaa !97, !alias.scope !943
  %i.kz = load i8, ptr %i.kj, align 1, !tbaa !97, !alias.scope !943
  %i.la = load i8, ptr %i.kk, align 1, !tbaa !97, !alias.scope !943
  %i.lb = load i8, ptr %i.kl, align 1, !tbaa !97, !alias.scope !943
  %i.lc = insertelement <16 x i8> poison, i8 %i.km, i64 0
  %i.ld = insertelement <16 x i8> %i.lc, i8 %i.kn, i64 1
  %i.le = insertelement <16 x i8> %i.ld, i8 %i.ko, i64 2
  %i.lf = insertelement <16 x i8> %i.le, i8 %i.kp, i64 3
  %i.lg = insertelement <16 x i8> %i.lf, i8 %i.kq, i64 4
  %i.lh = insertelement <16 x i8> %i.lg, i8 %i.kr, i64 5
  %i.li = insertelement <16 x i8> %i.lh, i8 %i.ks, i64 6
  %i.lj = insertelement <16 x i8> %i.li, i8 %i.kt, i64 7
  %i.lk = insertelement <16 x i8> %i.lj, i8 %i.ku, i64 8
  %i.ll = insertelement <16 x i8> %i.lk, i8 %i.kv, i64 9
  %i.lm = insertelement <16 x i8> %i.ll, i8 %i.kw, i64 10
  %i.ln = insertelement <16 x i8> %i.lm, i8 %i.kx, i64 11
  %i.lo = insertelement <16 x i8> %i.ln, i8 %i.ky, i64 12
  %i.lp = insertelement <16 x i8> %i.lo, i8 %i.kz, i64 13
  %i.lq = insertelement <16 x i8> %i.lp, i8 %i.la, i64 14
  %i.lr = insertelement <16 x i8> %i.lq, i8 %i.lb, i64 15
  %i.ls = icmp eq <16 x i8> %i.lr, %broadcast.splat
  %i.lt = getelementptr i8, ptr %i.fm, i64 3
  %i.lu = getelementptr i8, ptr %i.fn, i64 11
  %i.lv = getelementptr i8, ptr %i.fp, i64 19
  %i.lw = getelementptr i8, ptr %i.fr, i64 27
  %i.lx = getelementptr i8, ptr %i.ft, i64 35
  %i.ly = getelementptr i8, ptr %i.fv, i64 43
  %i.lz = getelementptr i8, ptr %i.fx, i64 51
  %i.ma = getelementptr i8, ptr %i.fz, i64 59
  %i.mb = getelementptr i8, ptr %i.gb, i64 67
  %i.mc = getelementptr i8, ptr %i.gd, i64 75
  %i.md = getelementptr i8, ptr %i.gf, i64 83
  %i.me = getelementptr i8, ptr %i.gh, i64 91
  %i.mf = getelementptr i8, ptr %i.gj, i64 99
  %i.mg = getelementptr i8, ptr %i.gl, i64 107
  %i.mh = getelementptr i8, ptr %i.gn, i64 115
  %i.mi = getelementptr i8, ptr %i.gp, i64 123
  %i.mj = load i8, ptr %i.lt, align 1, !tbaa !97, !alias.scope !943
  %i.mk = load i8, ptr %i.lu, align 1, !tbaa !97, !alias.scope !943
  %i.ml = load i8, ptr %i.lv, align 1, !tbaa !97, !alias.scope !943
  %i.mm = load i8, ptr %i.lw, align 1, !tbaa !97, !alias.scope !943
  %i.mn = load i8, ptr %i.lx, align 1, !tbaa !97, !alias.scope !943
  %i.mo = load i8, ptr %i.ly, align 1, !tbaa !97, !alias.scope !943
  %i.mp = load i8, ptr %i.lz, align 1, !tbaa !97, !alias.scope !943
  %i.mq = load i8, ptr %i.ma, align 1, !tbaa !97, !alias.scope !943
  %i.mr = load i8, ptr %i.mb, align 1, !tbaa !97, !alias.scope !943
  %i.ms = load i8, ptr %i.mc, align 1, !tbaa !97, !alias.scope !943
  %i.mt = load i8, ptr %i.md, align 1, !tbaa !97, !alias.scope !943
  %i.mu = load i8, ptr %i.me, align 1, !tbaa !97, !alias.scope !943
  %i.mv = load i8, ptr %i.mf, align 1, !tbaa !97, !alias.scope !943
  %i.mw = load i8, ptr %i.mg, align 1, !tbaa !97, !alias.scope !943
  %i.mx = load i8, ptr %i.mh, align 1, !tbaa !97, !alias.scope !943
  %i.my = load i8, ptr %i.mi, align 1, !tbaa !97, !alias.scope !943
  %i.mz = insertelement <16 x i8> poison, i8 %i.mj, i64 0
  %i.na = insertelement <16 x i8> %i.mz, i8 %i.mk, i64 1
  %i.nb = insertelement <16 x i8> %i.na, i8 %i.ml, i64 2
  %i.nc = insertelement <16 x i8> %i.nb, i8 %i.mm, i64 3
end_hunk_0
begin_hunk_1_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
  %i.pa = insertelement <16 x i8> %i.oz, i8 %i.ok, i64 4
  %i.pb = insertelement <16 x i8> %i.pa, i8 %i.ol, i64 5
  %i.pc = insertelement <16 x i8> %i.pb, i8 %i.om, i64 6
  %i.pd = insertelement <16 x i8> %i.pc, i8 %i.on, i64 7
  %i.pe = insertelement <16 x i8> %i.pd, i8 %i.oo, i64 8
  %i.pf = insertelement <16 x i8> %i.pe, i8 %i.op, i64 9
  %i.pg = insertelement <16 x i8> %i.pf, i8 %i.oq, i64 10
  %i.ph = insertelement <16 x i8> %i.pg, i8 %i.or, i64 11
  %i.pi = insertelement <16 x i8> %i.ph, i8 %i.os, i64 12
  %i.pj = insertelement <16 x i8> %i.pi, i8 %i.ot, i64 13
  %i.pk = insertelement <16 x i8> %i.pj, i8 %i.ou, i64 14
  %i.pl = insertelement <16 x i8> %i.pk, i8 %i.ov, i64 15
  %i.pm = icmp eq <16 x i8> %i.pl, %broadcast.splat
  %i.pn = getelementptr i8, ptr %i.fm, i64 5
  %i.po = getelementptr i8, ptr %i.fn, i64 13
  %i.pp = getelementptr i8, ptr %i.fp, i64 21
  %i.pq = getelementptr i8, ptr %i.fr, i64 29
  %i.pr = getelementptr i8, ptr %i.ft, i64 37
  %i.ps = getelementptr i8, ptr %i.fv, i64 45
  %i.pt = getelementptr i8, ptr %i.fx, i64 53
  %i.pu = getelementptr i8, ptr %i.fz, i64 61
  %i.pv = getelementptr i8, ptr %i.gb, i64 69
  %i.pw = getelementptr i8, ptr %i.gd, i64 77
  %i.px = getelementptr i8, ptr %i.gf, i64 85
  %i.py = getelementptr i8, ptr %i.gh, i64 93
  %i.pz = getelementptr i8, ptr %i.gj, i64 101
  %i.qa = getelementptr i8, ptr %i.gl, i64 109
  %i.qb = getelementptr i8, ptr %i.gn, i64 117
  %i.qc = getelementptr i8, ptr %i.gp, i64 125
  %i.qd = load i8, ptr %i.pn, align 1, !tbaa !97, !alias.scope !943
  %i.qe = load i8, ptr %i.po, align 1, !tbaa !97, !alias.scope !943
  %i.qf = load i8, ptr %i.pp, align 1, !tbaa !97, !alias.scope !943
  %i.qg = load i8, ptr %i.pq, align 1, !tbaa !97, !alias.scope !943
  %i.qh = load i8, ptr %i.pr, align 1, !tbaa !97, !alias.scope !943
  %i.qi = load i8, ptr %i.ps, align 1, !tbaa !97, !alias.scope !943
  %i.qj = load i8, ptr %i.pt, align 1, !tbaa !97, !alias.scope !943
  %i.qk = load i8, ptr %i.pu, align 1, !tbaa !97, !alias.scope !943
  %i.ql = load i8, ptr %i.pv, align 1, !tbaa !97, !alias.scope !943
  %i.qm = load i8, ptr %i.pw, align 1, !tbaa !97, !alias.scope !943
  %i.qn = load i8, ptr %i.px, align 1, !tbaa !97, !alias.scope !943
  %i.qo = load i8, ptr %i.py, align 1, !tbaa !97, !alias.scope !943
  %i.qp = load i8, ptr %i.pz, align 1, !tbaa !97, !alias.scope !943
  %i.qq = load i8, ptr %i.qa, align 1, !tbaa !97, !alias.scope !943
  %i.qr = load i8, ptr %i.qb, align 1, !tbaa !97, !alias.scope !943
  %i.qs = load i8, ptr %i.qc, align 1, !tbaa !97, !alias.scope !943
  %i.qt = insertelement <16 x i8> poison, i8 %i.qd, i64 0
  %i.qu = insertelement <16 x i8> %i.qt, i8 %i.qe, i64 1
  %i.qv = insertelement <16 x i8> %i.qu, i8 %i.qf, i64 2
  %i.qw = insertelement <16 x i8> %i.qv, i8 %i.qg, i64 3
  %i.qx = insertelement <16 x i8> %i.qw, i8 %i.qh, i64 4
  %i.qy = insertelement <16 x i8> %i.qx, i8 %i.qi, i64 5
  %i.qz = insertelement <16 x i8> %i.qy, i8 %i.qj, i64 6
  %i.ra = insertelement <16 x i8> %i.qz, i8 %i.qk, i64 7
  %i.rb = insertelement <16 x i8> %i.ra, i8 %i.ql, i64 8
  %i.rc = insertelement <16 x i8> %i.rb, i8 %i.qm, i64 9
  %i.rd = insertelement <16 x i8> %i.rc, i8 %i.qn, i64 10
  %i.re = insertelement <16 x i8> %i.rd, i8 %i.qo, i64 11
  %i.rf = insertelement <16 x i8> %i.re, i8 %i.qp, i64 12
  %i.rg = insertelement <16 x i8> %i.rf, i8 %i.qq, i64 13
  %i.rh = insertelement <16 x i8> %i.rg, i8 %i.qr, i64 14
  %i.ri = insertelement <16 x i8> %i.rh, i8 %i.qs, i64 15
  %i.rj = icmp eq <16 x i8> %i.ri, %broadcast.splat
  %i.rk = getelementptr i8, ptr %i.fm, i64 6
  %i.rl = getelementptr i8, ptr %i.fn, i64 14
  %i.rm = getelementptr i8, ptr %i.fp, i64 22
  %i.rn = getelementptr i8, ptr %i.fr, i64 30
  %i.ro = getelementptr i8, ptr %i.ft, i64 38
  %i.rp = getelementptr i8, ptr %i.fv, i64 46
  %i.rq = getelementptr i8, ptr %i.fx, i64 54
  %i.rr = getelementptr i8, ptr %i.fz, i64 62
  %i.rs = getelementptr i8, ptr %i.gb, i64 70
  %i.rt = getelementptr i8, ptr %i.gd, i64 78
  %i.ru = getelementptr i8, ptr %i.gf, i64 86
  %i.rv = getelementptr i8, ptr %i.gh, i64 94
  %i.rw = getelementptr i8, ptr %i.gj, i64 102
  %i.rx = getelementptr i8, ptr %i.gl, i64 110
  %i.ry = getelementptr i8, ptr %i.gn, i64 118
  %i.rz = getelementptr i8, ptr %i.gp, i64 126
  %i.sa = load i8, ptr %i.rk, align 1, !tbaa !97, !alias.scope !943
  %i.sb = load i8, ptr %i.rl, align 1, !tbaa !97, !alias.scope !943
  %i.sc = load i8, ptr %i.rm, align 1, !tbaa !97, !alias.scope !943
  %i.sd = load i8, ptr %i.rn, align 1, !tbaa !97, !alias.scope !943
  %i.se = load i8, ptr %i.ro, align 1, !tbaa !97, !alias.scope !943
  %i.sf = load i8, ptr %i.rp, align 1, !tbaa !97, !alias.scope !943
  %i.sg = load i8, ptr %i.rq, align 1, !tbaa !97, !alias.scope !943
  %i.sh = load i8, ptr %i.rr, align 1, !tbaa !97, !alias.scope !943
  %i.si = load i8, ptr %i.rs, align 1, !tbaa !97, !alias.scope !943
  %i.sj = load i8, ptr %i.rt, align 1, !tbaa !97, !alias.scope !943
  %i.sk = load i8, ptr %i.ru, align 1, !tbaa !97, !alias.scope !943
  %i.sl = load i8, ptr %i.rv, align 1, !tbaa !97, !alias.scope !943
  %i.sm = load i8, ptr %i.rw, align 1, !tbaa !97, !alias.scope !943
  %i.sn = load i8, ptr %i.rx, align 1, !tbaa !97, !alias.scope !943
  %i.so = load i8, ptr %i.ry, align 1, !tbaa !97, !alias.scope !943
  %i.sp = load i8, ptr %i.rz, align 1, !tbaa !97, !alias.scope !943
  %i.sq = insertelement <16 x i8> poison, i8 %i.sa, i64 0
  %i.sr = insertelement <16 x i8> %i.sq, i8 %i.sb, i64 1
  %i.ss = insertelement <16 x i8> %i.sr, i8 %i.sc, i64 2
  %i.st = insertelement <16 x i8> %i.ss, i8 %i.sd, i64 3
  %i.su = insertelement <16 x i8> %i.st, i8 %i.se, i64 4
  %i.sv = insertelement <16 x i8> %i.su, i8 %i.sf, i64 5
  %i.sw = insertelement <16 x i8> %i.sv, i8 %i.sg, i64 6
  %i.sx = insertelement <16 x i8> %i.sw, i8 %i.sh, i64 7
  %i.sy = insertelement <16 x i8> %i.sx, i8 %i.si, i64 8
  %i.sz = insertelement <16 x i8> %i.sy, i8 %i.sj, i64 9
  %i.ta = insertelement <16 x i8> %i.sz, i8 %i.sk, i64 10
  %i.tb = insertelement <16 x i8> %i.ta, i8 %i.sl, i64 11
  %i.tc = insertelement <16 x i8> %i.tb, i8 %i.sm, i64 12
  %i.td = insertelement <16 x i8> %i.tc, i8 %i.sn, i64 13
  %i.te = insertelement <16 x i8> %i.td, i8 %i.so, i64 14
  %i.tf = insertelement <16 x i8> %i.te, i8 %i.sp, i64 15
  %i.tg = icmp eq <16 x i8> %i.tf, %broadcast.splat
  %i.th = getelementptr i8, ptr %i.fm, i64 7
  %i.ti = getelementptr i8, ptr %i.fn, i64 15
  %i.tj = getelementptr i8, ptr %i.fp, i64 23
  %i.tk = getelementptr i8, ptr %i.fr, i64 31
  %i.tl = getelementptr i8, ptr %i.ft, i64 39
  %i.tm = getelementptr i8, ptr %i.fv, i64 47
  %i.tn = getelementptr i8, ptr %i.fx, i64 55
  %i.to = getelementptr i8, ptr %i.fz, i64 63
  %i.tp = getelementptr i8, ptr %i.gb, i64 71
  %i.tq = getelementptr i8, ptr %i.gd, i64 79
  %i.tr = getelementptr i8, ptr %i.gf, i64 87
  %i.ts = getelementptr i8, ptr %i.gh, i64 95
  %i.tt = getelementptr i8, ptr %i.gj, i64 103
  %i.tu = getelementptr i8, ptr %i.gl, i64 111
  %i.tv = getelementptr i8, ptr %i.gn, i64 119
  %i.tw = getelementptr i8, ptr %i.gp, i64 127
  %i.tx = load i8, ptr %i.th, align 1, !tbaa !97, !alias.scope !943
  %i.ty = load i8, ptr %i.ti, align 1, !tbaa !97, !alias.scope !943
  %i.tz = load i8, ptr %i.tj, align 1, !tbaa !97, !alias.scope !943
  %i.ua = load i8, ptr %i.tk, align 1, !tbaa !97, !alias.scope !943
  %i.ub = load i8, ptr %i.tl, align 1, !tbaa !97, !alias.scope !943
  %i.uc = load i8, ptr %i.tm, align 1, !tbaa !97, !alias.scope !943
  %i.ud = load i8, ptr %i.tn, align 1, !tbaa !97, !alias.scope !943
  %i.ue = load i8, ptr %i.to, align 1, !tbaa !97, !alias.scope !943
  %i.uf = load i8, ptr %i.tp, align 1, !tbaa !97, !alias.scope !943
  %i.ug = load i8, ptr %i.tq, align 1, !tbaa !97, !alias.scope !943
  %i.uh = load i8, ptr %i.tr, align 1, !tbaa !97, !alias.scope !943
  %i.ui = load i8, ptr %i.ts, align 1, !tbaa !97, !alias.scope !943
  %i.uj = load i8, ptr %i.tt, align 1, !tbaa !97, !alias.scope !943
  %i.uk = load i8, ptr %i.tu, align 1, !tbaa !97, !alias.scope !943
  %i.ul = load i8, ptr %i.tv, align 1, !tbaa !97, !alias.scope !943
  %i.um = load i8, ptr %i.tw, align 1, !tbaa !97, !alias.scope !943
  %i.un = insertelement <16 x i8> poison, i8 %i.tx, i64 0
  %i.uo = insertelement <16 x i8> %i.un, i8 %i.ty, i64 1
  %i.up = insertelement <16 x i8> %i.uo, i8 %i.tz, i64 2
  %i.uq = insertelement <16 x i8> %i.up, i8 %i.ua, i64 3
  %i.ur = insertelement <16 x i8> %i.uq, i8 %i.ub, i64 4
  %i.us = insertelement <16 x i8> %i.ur, i8 %i.uc, i64 5
  %i.ut = insertelement <16 x i8> %i.us, i8 %i.ud, i64 6
  %i.uu = insertelement <16 x i8> %i.ut, i8 %i.ue, i64 7
  %i.uv = insertelement <16 x i8> %i.uu, i8 %i.uf, i64 8
  %i.uw = insertelement <16 x i8> %i.uv, i8 %i.ug, i64 9
  %i.ux = insertelement <16 x i8> %i.uw, i8 %i.uh, i64 10
  %i.uy = insertelement <16 x i8> %i.ux, i8 %i.ui, i64 11
  %i.uz = insertelement <16 x i8> %i.uy, i8 %i.uj, i64 12
  %i.va = insertelement <16 x i8> %i.uz, i8 %i.uk, i64 13
  %i.vb = insertelement <16 x i8> %i.va, i8 %i.ul, i64 14
  %i.vc = insertelement <16 x i8> %i.vb, i8 %i.um, i64 15
  %i.vd = icmp eq <16 x i8> %i.vc, %broadcast.splat
  %i.ve = select <16 x i1> %i.jv, <16 x i8> splat (i8 2), <16 x i8> zeroinitializer
  %i.vf = or disjoint <16 x i8> %i.ve, %i.hy
  %i.vg = select <16 x i1> %i.ls, <16 x i8> splat (i8 4), <16 x i8> zeroinitializer
  %i.vh = or disjoint <16 x i8> %i.vf, %i.vg
  %i.vi = select <16 x i1> %i.np, <16 x i8> splat (i8 8), <16 x i8> zeroinitializer
  %i.vj = or disjoint <16 x i8> %i.vh, %i.vi
  %i.vk = select <16 x i1> %i.pm, <16 x i8> splat (i8 16), <16 x i8> zeroinitializer
  %i.vl = or disjoint <16 x i8> %i.vj, %i.vk
  %i.vm = select <16 x i1> %i.rj, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.vn = or disjoint <16 x i8> %i.vl, %i.vm
  %i.vo = select <16 x i1> %i.tg, <16 x i8> splat (i8 64), <16 x i8> zeroinitializer
  %i.vp = or <16 x i8> %i.vn, %i.vo
  %i.vq = select <16 x i1> %i.vd, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer
  %i.vr = or <16 x i8> %i.vp, %i.vq
  store <16 x i8> %i.vr, ptr %next.gep, align 1, !tbaa !97, !alias.scope !946, !noalias !943
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.vs = icmp eq i64 %index.next, %n.vec
  br i1 %i.vs, label %middle.block, label %vector.body, !llvm.loop !948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %._crit_edge53.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader46.i.preheader, label %vec.epilog.ph, !prof !949

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ey, 1152921504606846972  ; 5 uses
  %i.vt = shl nuw nsw i64 %n.vec122, 3
  %i.vu = add i64 %.1, %i.vt                      ; 2 uses
  %i.vv = sub nsw i64 %i.ex, %n.vec122
  %i.vw = getelementptr i8, ptr %.040.i, i64 %n.vec122 ; 2 uses
  %broadcast.splatinsert123 = insertelement <4 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat124 = shufflevector <4 x i8> %broadcast.splatinsert123, <4 x i8> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index125 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %i.vx = shl i64 %index125, 3
  %i.vy = add i64 %.1, %i.vx                      ; 4 uses
  %next.gep126 = getelementptr i8, ptr %.040.i, i64 %index125
  %i.vz = getelementptr i8, ptr %i.dk, i64 %i.vy  ; 8 uses
  %i.wa = getelementptr i8, ptr %i.dk, i64 %i.vy  ; 8 uses
  %i.wb = getelementptr i8, ptr %i.wa, i64 8
  %i.wc = getelementptr i8, ptr %i.dk, i64 %i.vy  ; 8 uses
  %i.wd = getelementptr i8, ptr %i.wc, i64 16
  %i.we = getelementptr i8, ptr %i.dk, i64 %i.vy  ; 8 uses
  %i.wf = getelementptr i8, ptr %i.we, i64 24
  %i.wg = load i8, ptr %i.vz, align 1, !tbaa !97, !alias.scope !943
  %i.wh = load i8, ptr %i.wb, align 1, !tbaa !97, !alias.scope !943
  %i.wi = load i8, ptr %i.wd, align 1, !tbaa !97, !alias.scope !943
  %i.wj = load i8, ptr %i.wf, align 1, !tbaa !97, !alias.scope !943
  %i.wk = insertelement <4 x i8> poison, i8 %i.wg, i64 0
  %i.wl = insertelement <4 x i8> %i.wk, i8 %i.wh, i64 1
  %i.wm = insertelement <4 x i8> %i.wl, i8 %i.wi, i64 2
  %i.wn = insertelement <4 x i8> %i.wm, i8 %i.wj, i64 3
  %i.wo = icmp eq <4 x i8> %i.wn, %broadcast.splat124
  %i.wp = zext <4 x i1> %i.wo to <4 x i8>
  %i.wq = getelementptr i8, ptr %i.vz, i64 1
  %i.wr = getelementptr i8, ptr %i.wa, i64 9
  %i.ws = getelementptr i8, ptr %i.wc, i64 17
  %i.wt = getelementptr i8, ptr %i.we, i64 25
  %i.wu = load i8, ptr %i.wq, align 1, !tbaa !97, !alias.scope !943
  %i.wv = load i8, ptr %i.wr, align 1, !tbaa !97, !alias.scope !943
  %i.ww = load i8, ptr %i.ws, align 1, !tbaa !97, !alias.scope !943
  %i.wx = load i8, ptr %i.wt, align 1, !tbaa !97, !alias.scope !943
  %i.wy = insertelement <4 x i8> poison, i8 %i.wu, i64 0
  %i.wz = insertelement <4 x i8> %i.wy, i8 %i.wv, i64 1
  %i.xa = insertelement <4 x i8> %i.wz, i8 %i.ww, i64 2
  %i.xb = insertelement <4 x i8> %i.xa, i8 %i.wx, i64 3
  %i.xc = icmp eq <4 x i8> %i.xb, %broadcast.splat124
  %i.xd = getelementptr i8, ptr %i.vz, i64 2
  %i.xe = getelementptr i8, ptr %i.wa, i64 10
  %i.xf = getelementptr i8, ptr %i.wc, i64 18
  %i.xg = getelementptr i8, ptr %i.we, i64 26
  %i.xh = load i8, ptr %i.xd, align 1, !tbaa !97, !alias.scope !943
  %i.xi = load i8, ptr %i.xe, align 1, !tbaa !97, !alias.scope !943
  %i.xj = load i8, ptr %i.xf, align 1, !tbaa !97, !alias.scope !943
  %i.xk = load i8, ptr %i.xg, align 1, !tbaa !97, !alias.scope !943
  %i.xl = insertelement <4 x i8> poison, i8 %i.xh, i64 0
  %i.xm = insertelement <4 x i8> %i.xl, i8 %i.xi, i64 1
  %i.xn = insertelement <4 x i8> %i.xm, i8 %i.xj, i64 2
  %i.xo = insertelement <4 x i8> %i.xn, i8 %i.xk, i64 3
  %i.xp = icmp eq <4 x i8> %i.xo, %broadcast.splat124
  %i.xq = getelementptr i8, ptr %i.vz, i64 3
  %i.xr = getelementptr i8, ptr %i.wa, i64 11
  %i.xs = getelementptr i8, ptr %i.wc, i64 19
  %i.xt = getelementptr i8, ptr %i.we, i64 27
  %i.xu = load i8, ptr %i.xq, align 1, !tbaa !97, !alias.scope !943
  %i.xv = load i8, ptr %i.xr, align 1, !tbaa !97, !alias.scope !943
  %i.xw = load i8, ptr %i.xs, align 1, !tbaa !97, !alias.scope !943
  %i.xx = load i8, ptr %i.xt, align 1, !tbaa !97, !alias.scope !943
  %i.xy = insertelement <4 x i8> poison, i8 %i.xu, i64 0
  %i.xz = insertelement <4 x i8> %i.xy, i8 %i.xv, i64 1
  %i.ya = insertelement <4 x i8> %i.xz, i8 %i.xw, i64 2
  %i.yb = insertelement <4 x i8> %i.ya, i8 %i.xx, i64 3
  %i.yc = icmp eq <4 x i8> %i.yb, %broadcast.splat124
  %i.yd = getelementptr i8, ptr %i.vz, i64 4
  %i.ye = getelementptr i8, ptr %i.wa, i64 12
  %i.yf = getelementptr i8, ptr %i.wc, i64 20
  %i.yg = getelementptr i8, ptr %i.we, i64 28
  %i.yh = load i8, ptr %i.yd, align 1, !tbaa !97, !alias.scope !943
  %i.yi = load i8, ptr %i.ye, align 1, !tbaa !97, !alias.scope !943
  %i.yj = load i8, ptr %i.yf, align 1, !tbaa !97, !alias.scope !943
  %i.yk = load i8, ptr %i.yg, align 1, !tbaa !97, !alias.scope !943
  %i.yl = insertelement <4 x i8> poison, i8 %i.yh, i64 0
  %i.ym = insertelement <4 x i8> %i.yl, i8 %i.yi, i64 1
  %i.yn = insertelement <4 x i8> %i.ym, i8 %i.yj, i64 2
  %i.yo = insertelement <4 x i8> %i.yn, i8 %i.yk, i64 3
  %i.yp = icmp eq <4 x i8> %i.yo, %broadcast.splat124
  %i.yq = getelementptr i8, ptr %i.vz, i64 5
  %i.yr = getelementptr i8, ptr %i.wa, i64 13
  %i.ys = getelementptr i8, ptr %i.wc, i64 21
  %i.yt = getelementptr i8, ptr %i.we, i64 29
  %i.yu = load i8, ptr %i.yq, align 1, !tbaa !97, !alias.scope !943
  %i.yv = load i8, ptr %i.yr, align 1, !tbaa !97, !alias.scope !943
  %i.yw = load i8, ptr %i.ys, align 1, !tbaa !97, !alias.scope !943
  %i.yx = load i8, ptr %i.yt, align 1, !tbaa !97, !alias.scope !943
  %i.yy = insertelement <4 x i8> poison, i8 %i.yu, i64 0
  %i.yz = insertelement <4 x i8> %i.yy, i8 %i.yv, i64 1
  %i.za = insertelement <4 x i8> %i.yz, i8 %i.yw, i64 2
  %i.zb = insertelement <4 x i8> %i.za, i8 %i.yx, i64 3
  %i.zc = icmp eq <4 x i8> %i.zb, %broadcast.splat124
  %i.zd = getelementptr i8, ptr %i.vz, i64 6
  %i.ze = getelementptr i8, ptr %i.wa, i64 14
  %i.zf = getelementptr i8, ptr %i.wc, i64 22
  %i.zg = getelementptr i8, ptr %i.we, i64 30
  %i.zh = load i8, ptr %i.zd, align 1, !tbaa !97, !alias.scope !943
  %i.zi = load i8, ptr %i.ze, align 1, !tbaa !97, !alias.scope !943
  %i.zj = load i8, ptr %i.zf, align 1, !tbaa !97, !alias.scope !943
  %i.zk = load i8, ptr %i.zg, align 1, !tbaa !97, !alias.scope !943
  %i.zl = insertelement <4 x i8> poison, i8 %i.zh, i64 0
  %i.zm = insertelement <4 x i8> %i.zl, i8 %i.zi, i64 1
  %i.zn = insertelement <4 x i8> %i.zm, i8 %i.zj, i64 2
  %i.zo = insertelement <4 x i8> %i.zn, i8 %i.zk, i64 3
  %i.zp = icmp eq <4 x i8> %i.zo, %broadcast.splat124
  %i.zq = getelementptr i8, ptr %i.vz, i64 7
  %i.zr = getelementptr i8, ptr %i.wa, i64 15
  %i.zs = getelementptr i8, ptr %i.wc, i64 23
  %i.zt = getelementptr i8, ptr %i.we, i64 31
  %i.zu = load i8, ptr %i.zq, align 1, !tbaa !97, !alias.scope !943
  %i.zv = load i8, ptr %i.zr, align 1, !tbaa !97, !alias.scope !943
  %i.zw = load i8, ptr %i.zs, align 1, !tbaa !97, !alias.scope !943
  %i.zx = load i8, ptr %i.zt, align 1, !tbaa !97, !alias.scope !943
  %i.zy = insertelement <4 x i8> poison, i8 %i.zu, i64 0
  %i.zz = insertelement <4 x i8> %i.zy, i8 %i.zv, i64 1
  %i.aaa = insertelement <4 x i8> %i.zz, i8 %i.zw, i64 2
  %i.aab = insertelement <4 x i8> %i.aaa, i8 %i.zx, i64 3
  %i.aac = icmp eq <4 x i8> %i.aab, %broadcast.splat124
  %i.aad = select <4 x i1> %i.xc, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.aae = or disjoint <4 x i8> %i.aad, %i.wp
  %i.aaf = select <4 x i1> %i.xp, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.aag = or disjoint <4 x i8> %i.aae, %i.aaf
  %i.aah = select <4 x i1> %i.yc, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.aai = or disjoint <4 x i8> %i.aag, %i.aah
  %i.aaj = select <4 x i1> %i.yp, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.aak = or disjoint <4 x i8> %i.aai, %i.aaj
  %i.aal = select <4 x i1> %i.zc, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.aam = or disjoint <4 x i8> %i.aak, %i.aal
  %i.aan = select <4 x i1> %i.zp, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.aao = or <4 x i8> %i.aam, %i.aan
  %i.aap = select <4 x i1> %i.aac, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.aaq = or <4 x i8> %i.aao, %i.aap
  store <4 x i8> %i.aaq, ptr %next.gep126, align 1, !tbaa !97, !alias.scope !946, !noalias !943
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %i.aar = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.aar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !950

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.ex, %n.vec122
  br i1 %cmp.n128, label %._crit_edge53.i, label %.preheader46.i.preheader

.preheader46.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.fh, %vec.epilog.iter.check ], [ %i.vu, %vec.epilog.middle.block ]
  %.in.i.ph = phi i64 [ %i.ex, %iter.check ], [ %i.ex, %vector.memcheck ], [ %i.fi, %vec.epilog.iter.check ], [ %i.vv, %vec.epilog.middle.block ]
  %.14152.i.ph = phi ptr [ %.040.i, %iter.check ], [ %.040.i, %vector.memcheck ], [ %i.fj, %vec.epilog.iter.check ], [ %i.vw, %vec.epilog.middle.block ]
  %i.aas = insertelement <8 x i8> poison, i8 %i.di, i64 0
  %i.aat = shufflevector <8 x i8> %i.aas, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %.preheader46.i.preheader, %.preheader46.i
  %.3 = phi i64 [ %i.aav, %.preheader46.i ], [ %.3.ph, %.preheader46.i.preheader ] ; 2 uses
  %.in.i = phi i64 [ %i.aaw, %.preheader46.i ], [ %.in.i.ph, %.preheader46.i.preheader ] ; 2 uses
  %.14152.i = phi ptr [ %i.aaz, %.preheader46.i ], [ %.14152.i.ph, %.preheader46.i.preheader ] ; 2 uses
  %i.aau = getelementptr i8, ptr %i.dk, i64 %.3
  %i.aav = add nuw nsw i64 %.3, 8                 ; 2 uses
  %i.aaw = add nsw i64 %.in.i, -1
  %i.aax = load <8 x i8>, ptr %i.aau, align 1, !tbaa !97
  %i.aay = icmp eq <8 x i8> %i.aax, %i.aat
  %i.aaz = getelementptr inbounds nuw i8, ptr %.14152.i, i64 1 ; 2 uses
  store <8 x i1> %i.aay, ptr %.14152.i, align 1, !tbaa !97
  %i.aba = icmp samesign ugt i64 %.in.i, 1
  br i1 %i.aba, label %.preheader46.i, label %._crit_edge53.i, !llvm.loop !951

._crit_edge53.i:                                  ; preds = %.preheader46.i, %middle.block, %vec.epilog.middle.block, %bb.aj
  %.2 = phi i64 [ %.1, %bb.aj ], [ %i.vu, %vec.epilog.middle.block ], [ %i.fh, %middle.block ], [ %i.aav, %.preheader46.i ] ; 2 uses
  %.141.lcssa.i = phi ptr [ %.040.i, %bb.aj ], [ %i.vw, %vec.epilog.middle.block ], [ %i.fj, %middle.block ], [ %i.aaz, %.preheader46.i ]
  %i.abb = srem i64 %.1.i, 8                      ; 6 uses
  %.not45.i = icmp eq i64 %i.abb, 0
  br i1 %.not45.i, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge53.i
  %i.abc = icmp sgt i64 %i.abb, 0
  br i1 %i.abc, label %.lr.ph58.i.preheader, label %._crit_edge59.i

.lr.ph58.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %i.abb, 1
  %i.abd = icmp eq i64 %i.abb, 1
  br i1 %i.abd, label %.lr.ph58.i.epil.preheader, label %.lr.ph58.i.preheader.new

.lr.ph58.i.preheader.new:                         ; preds = %.lr.ph58.i.preheader
  %unroll_iter = and i64 %i.abb, 9223372036854775806
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i, %.lr.ph58.i.preheader.new
  %i.abe = phi i64 [ %.2, %.lr.ph58.i.preheader.new ], [ %i.abl, %.lr.ph58.i ] ; 3 uses
  %.13756.i = phi i8 [ 1, %.lr.ph58.i.preheader.new ], [ %i.abs, %.lr.ph58.i ] ; 3 uses
  %.13955.i = phi i8 [ 0, %.lr.ph58.i.preheader.new ], [ %i.abr, %.lr.ph58.i ]
  %niter = phi i64 [ 0, %.lr.ph58.i.preheader.new ], [ %niter.next.1, %.lr.ph58.i ]
  %i.abf = getelementptr inbounds i8, ptr %i.dk, i64 %i.abe
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !97
  %i.abh = icmp eq i8 %i.abg, %i.di
  %i.abi = select i1 %i.abh, i8 %.13756.i, i8 0
  %i.abj = or i8 %i.abi, %.13955.i
  %i.abk = shl nuw i8 %.13756.i, 1
  %i.abl = add nsw i64 %i.abe, 2                  ; 2 uses
  %i.abm = getelementptr i8, ptr %i.dk, i64 %i.abe
  %i.abn = getelementptr i8, ptr %i.abm, i64 1
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !97
  %i.abp = icmp eq i8 %i.abo, %i.di
  %i.abq = select i1 %i.abp, i8 %i.abk, i8 0
  %i.abr = or i8 %i.abq, %i.abj                   ; 3 uses
  %i.abs = shl nuw i8 %.13756.i, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge59.i.loopexit.unr-lcssa, label %.lr.ph58.i, !llvm.loop !952

._crit_edge59.i.loopexit.unr-lcssa:               ; preds = %.lr.ph58.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge59.i, label %.lr.ph58.i.epil.preheader
end_hunk_1
