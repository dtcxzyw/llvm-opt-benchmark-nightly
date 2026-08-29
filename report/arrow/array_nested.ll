Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/array_nested?download=true
inline.NumInlined: 5209
inline.NumDeleted: 1661
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10shared_ptrIN5arrow9ArrayDataEEaSEOS2_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %.pr, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bl, align 8, !tbaa !91
  %i.bp = getelementptr inbounds nuw i8, ptr %.pr, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !93
  %i.bq = load ptr, ptr %.pr, align 8, !tbaa !94
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !236
  %i.bt = load ptr, ptr %.pr, align 8, !tbaa !94
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %.pr) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bo, %bb.u ], [ %i.by, %bb.v ]
  %i.bz = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bz, label %bb.w, label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !98

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
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
  %.04047.i = phi i8 [ %i.ef, %.lr.ph.i ], [ %i.ep, %bb.ai ]
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.ej
  %i.em = load i8, ptr %i.el, align 1, !tbaa !97
  %i.en = icmp eq i8 %i.em, %i.di
  %i.eo = select i1 %i.en, i8 %.03648.i, i8 0
  %i.ep = or i8 %i.eo, %.04047.i                  ; 2 uses
  %i.eq = shl i8 %.03648.i, 1                     ; 2 uses
  %i.er = add nsw i64 %.03549.i, -1               ; 2 uses
  %i.es = icmp ne i8 %i.eq, 0
  %i.et = icmp samesign ugt i64 %.03549.i, 1
  %i.eu = select i1 %i.es, i1 %i.et, i1 false
  br i1 %i.eu, label %bb.ai, label %._crit_edge.i, !llvm.loop !942

._crit_edge.i:                                    ; preds = %bb.ai, %bb.ah
  %.0 = phi i64 [ 0, %bb.ah ], [ %i.ek, %bb.ai ]
  %.040.lcssa.i = phi i8 [ %i.ef, %bb.ah ], [ %i.ep, %bb.ai ]
  %.035.lcssa.i = phi i64 [ %i.dn, %bb.ah ], [ %i.er, %bb.ai ]
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 1
  store i8 %.040.lcssa.i, ptr %i.ea, align 1, !tbaa !97
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i, %bb.ag
  %.1 = phi i64 [ 0, %bb.ag ], [ %.0, %._crit_edge.i ] ; 9 uses
  %.038.i = phi ptr [ %i.ea, %bb.ag ], [ %i.ev, %._crit_edge.i ] ; 9 uses
  %.1.i = phi i64 [ %i.dn, %bb.ag ], [ %.035.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.ew = icmp sgt i64 %.1.i, 7
  br i1 %i.ew, label %iter.check, label %._crit_edge53.i

iter.check:                                       ; preds = %bb.aj
  %i.ex = lshr i64 %.1.i, 3                       ; 9 uses
  %12 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1) ; 3 uses
  %min.iters.check = icmp ult i64 %.1.i, 32
  br i1 %min.iters.check, label %.preheader46.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %13 = icmp ne i64 %i.ex, 0                      ; 2 uses
  %umin.neg = sext i1 %13 to i64
  %i.ey = getelementptr i8, ptr %.038.i, i64 %i.ex
  %14 = getelementptr i8, ptr %i.ey, i64 1
  %scevgep = getelementptr i8, ptr %14, i64 %umin.neg
  %scevgep115 = getelementptr i8, ptr %i.dk, i64 %.1
  %i.ez = and i64 %.1.i, 9223372036854775800
  %15 = add i64 %.1, %i.ez                        ; 2 uses
  %16 = add i64 %15, 8
  %17 = select i1 %13, i64 %15, i64 %16
  %scevgep116 = getelementptr i8, ptr %i.dk, i64 %17
  %bound0 = icmp ult ptr %.038.i, %scevgep116
  %bound1 = icmp ult ptr %scevgep115, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader46.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check118 = icmp ult i64 %.1.i, 128
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %18 = and i64 %12, 12
  %n.vec = and i64 %12, 1152921504606846960       ; 6 uses
  %i.fa = shl nuw nsw i64 %n.vec, 3
  %i.fb = add i64 %.1, %i.fa                      ; 2 uses
  %19 = sub nsw i64 %i.ex, %n.vec
  %i.fc = getelementptr i8, ptr %.038.i, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fd = shl nuw i64 %index, 3
  %i.fe = add nuw i64 %.1, %i.fd                  ; 16 uses
  %next.gep = getelementptr i8, ptr %.038.i, i64 %index
  %i.ff = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fg = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 8
  %i.fi = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  %i.fk = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 24
  %i.fm = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fn = getelementptr i8, ptr %i.fm, i64 32
  %i.fo = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 40
  %i.fq = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 48
  %i.fs = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.ft = getelementptr i8, ptr %i.fs, i64 56
  %i.fu = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 64
  %i.fw = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 72
  %i.fy = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 80
  %i.ga = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 88
  %i.gc = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 96
  %i.ge = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 104
  %i.gg = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 112
  %i.gi = getelementptr i8, ptr %i.dk, i64 %i.fe  ; 8 uses
  %i.gj = getelementptr i8, ptr %i.gi, i64 120
  %i.gk = load i8, ptr %i.ff, align 1, !tbaa !97, !alias.scope !943
  %i.gl = load i8, ptr %i.fh, align 1, !tbaa !97, !alias.scope !943
  %i.gm = load i8, ptr %i.fj, align 1, !tbaa !97, !alias.scope !943
  %i.gn = load i8, ptr %i.fl, align 1, !tbaa !97, !alias.scope !943
  %i.go = load i8, ptr %i.fn, align 1, !tbaa !97, !alias.scope !943
  %i.gp = load i8, ptr %i.fp, align 1, !tbaa !97, !alias.scope !943
  %i.gq = load i8, ptr %i.fr, align 1, !tbaa !97, !alias.scope !943
  %i.gr = load i8, ptr %i.ft, align 1, !tbaa !97, !alias.scope !943
  %i.gs = load i8, ptr %i.fv, align 1, !tbaa !97, !alias.scope !943
  %i.gt = load i8, ptr %i.fx, align 1, !tbaa !97, !alias.scope !943
  %i.gu = load i8, ptr %i.fz, align 1, !tbaa !97, !alias.scope !943
  %i.gv = load i8, ptr %i.gb, align 1, !tbaa !97, !alias.scope !943
  %i.gw = load i8, ptr %i.gd, align 1, !tbaa !97, !alias.scope !943
  %i.gx = load i8, ptr %i.gf, align 1, !tbaa !97, !alias.scope !943
  %i.gy = load i8, ptr %i.gh, align 1, !tbaa !97, !alias.scope !943
  %i.gz = load i8, ptr %i.gj, align 1, !tbaa !97, !alias.scope !943
  %i.ha = insertelement <16 x i8> poison, i8 %i.gk, i64 0
  %i.hb = insertelement <16 x i8> %i.ha, i8 %i.gl, i64 1
  %i.hc = insertelement <16 x i8> %i.hb, i8 %i.gm, i64 2
  %i.hd = insertelement <16 x i8> %i.hc, i8 %i.gn, i64 3
  %i.he = insertelement <16 x i8> %i.hd, i8 %i.go, i64 4
  %i.hf = insertelement <16 x i8> %i.he, i8 %i.gp, i64 5
  %i.hg = insertelement <16 x i8> %i.hf, i8 %i.gq, i64 6
  %i.hh = insertelement <16 x i8> %i.hg, i8 %i.gr, i64 7
  %i.hi = insertelement <16 x i8> %i.hh, i8 %i.gs, i64 8
  %i.hj = insertelement <16 x i8> %i.hi, i8 %i.gt, i64 9
  %i.hk = insertelement <16 x i8> %i.hj, i8 %i.gu, i64 10
  %i.hl = insertelement <16 x i8> %i.hk, i8 %i.gv, i64 11
  %i.hm = insertelement <16 x i8> %i.hl, i8 %i.gw, i64 12
  %i.hn = insertelement <16 x i8> %i.hm, i8 %i.gx, i64 13
  %i.ho = insertelement <16 x i8> %i.hn, i8 %i.gy, i64 14
  %i.hp = insertelement <16 x i8> %i.ho, i8 %i.gz, i64 15
  %i.hq = icmp eq <16 x i8> %i.hp, %broadcast.splat
  %i.hr = zext <16 x i1> %i.hq to <16 x i8>
  %i.hs = getelementptr i8, ptr %i.ff, i64 1
  %i.ht = getelementptr i8, ptr %i.fg, i64 9
  %i.hu = getelementptr i8, ptr %i.fi, i64 17
  %i.hv = getelementptr i8, ptr %i.fk, i64 25
  %i.hw = getelementptr i8, ptr %i.fm, i64 33
  %i.hx = getelementptr i8, ptr %i.fo, i64 41
  %i.hy = getelementptr i8, ptr %i.fq, i64 49
  %i.hz = getelementptr i8, ptr %i.fs, i64 57
  %i.ia = getelementptr i8, ptr %i.fu, i64 65
  %i.ib = getelementptr i8, ptr %i.fw, i64 73
  %i.ic = getelementptr i8, ptr %i.fy, i64 81
  %i.id = getelementptr i8, ptr %i.ga, i64 89
  %i.ie = getelementptr i8, ptr %i.gc, i64 97
  %i.if = getelementptr i8, ptr %i.ge, i64 105
  %i.ig = getelementptr i8, ptr %i.gg, i64 113
  %i.ih = getelementptr i8, ptr %i.gi, i64 121
  %i.ii = load i8, ptr %i.hs, align 1, !tbaa !97, !alias.scope !943
  %i.ij = load i8, ptr %i.ht, align 1, !tbaa !97, !alias.scope !943
  %i.ik = load i8, ptr %i.hu, align 1, !tbaa !97, !alias.scope !943
  %i.il = load i8, ptr %i.hv, align 1, !tbaa !97, !alias.scope !943
  %i.im = load i8, ptr %i.hw, align 1, !tbaa !97, !alias.scope !943
  %i.in = load i8, ptr %i.hx, align 1, !tbaa !97, !alias.scope !943
  %i.io = load i8, ptr %i.hy, align 1, !tbaa !97, !alias.scope !943
  %i.ip = load i8, ptr %i.hz, align 1, !tbaa !97, !alias.scope !943
  %i.iq = load i8, ptr %i.ia, align 1, !tbaa !97, !alias.scope !943
  %i.ir = load i8, ptr %i.ib, align 1, !tbaa !97, !alias.scope !943
  %i.is = load i8, ptr %i.ic, align 1, !tbaa !97, !alias.scope !943
  %i.it = load i8, ptr %i.id, align 1, !tbaa !97, !alias.scope !943
  %i.iu = load i8, ptr %i.ie, align 1, !tbaa !97, !alias.scope !943
  %i.iv = load i8, ptr %i.if, align 1, !tbaa !97, !alias.scope !943
  %i.iw = load i8, ptr %i.ig, align 1, !tbaa !97, !alias.scope !943
  %i.ix = load i8, ptr %i.ih, align 1, !tbaa !97, !alias.scope !943
  %i.iy = insertelement <16 x i8> poison, i8 %i.ii, i64 0
  %i.iz = insertelement <16 x i8> %i.iy, i8 %i.ij, i64 1
  %i.ja = insertelement <16 x i8> %i.iz, i8 %i.ik, i64 2
  %i.jb = insertelement <16 x i8> %i.ja, i8 %i.il, i64 3
  %i.jc = insertelement <16 x i8> %i.jb, i8 %i.im, i64 4
  %i.jd = insertelement <16 x i8> %i.jc, i8 %i.in, i64 5
  %i.je = insertelement <16 x i8> %i.jd, i8 %i.io, i64 6
  %i.jf = insertelement <16 x i8> %i.je, i8 %i.ip, i64 7
  %i.jg = insertelement <16 x i8> %i.jf, i8 %i.iq, i64 8
  %i.jh = insertelement <16 x i8> %i.jg, i8 %i.ir, i64 9
  %i.ji = insertelement <16 x i8> %i.jh, i8 %i.is, i64 10
  %i.jj = insertelement <16 x i8> %i.ji, i8 %i.it, i64 11
  %i.jk = insertelement <16 x i8> %i.jj, i8 %i.iu, i64 12
  %i.jl = insertelement <16 x i8> %i.jk, i8 %i.iv, i64 13
  %i.jm = insertelement <16 x i8> %i.jl, i8 %i.iw, i64 14
  %i.jn = insertelement <16 x i8> %i.jm, i8 %i.ix, i64 15
  %i.jo = icmp eq <16 x i8> %i.jn, %broadcast.splat
  %i.jp = getelementptr i8, ptr %i.ff, i64 2
  %i.jq = getelementptr i8, ptr %i.fg, i64 10
  %i.jr = getelementptr i8, ptr %i.fi, i64 18
  %i.js = getelementptr i8, ptr %i.fk, i64 26
  %i.jt = getelementptr i8, ptr %i.fm, i64 34
  %i.ju = getelementptr i8, ptr %i.fo, i64 42
  %i.jv = getelementptr i8, ptr %i.fq, i64 50
  %i.jw = getelementptr i8, ptr %i.fs, i64 58
  %i.jx = getelementptr i8, ptr %i.fu, i64 66
  %i.jy = getelementptr i8, ptr %i.fw, i64 74
  %i.jz = getelementptr i8, ptr %i.fy, i64 82
  %i.ka = getelementptr i8, ptr %i.ga, i64 90
  %i.kb = getelementptr i8, ptr %i.gc, i64 98
  %i.kc = getelementptr i8, ptr %i.ge, i64 106
  %i.kd = getelementptr i8, ptr %i.gg, i64 114
  %i.ke = getelementptr i8, ptr %i.gi, i64 122
  %i.kf = load i8, ptr %i.jp, align 1, !tbaa !97, !alias.scope !943
  %i.kg = load i8, ptr %i.jq, align 1, !tbaa !97, !alias.scope !943
  %i.kh = load i8, ptr %i.jr, align 1, !tbaa !97, !alias.scope !943
  %i.ki = load i8, ptr %i.js, align 1, !tbaa !97, !alias.scope !943
  %i.kj = load i8, ptr %i.jt, align 1, !tbaa !97, !alias.scope !943
  %i.kk = load i8, ptr %i.ju, align 1, !tbaa !97, !alias.scope !943
  %i.kl = load i8, ptr %i.jv, align 1, !tbaa !97, !alias.scope !943
  %i.km = load i8, ptr %i.jw, align 1, !tbaa !97, !alias.scope !943
  %i.kn = load i8, ptr %i.jx, align 1, !tbaa !97, !alias.scope !943
  %i.ko = load i8, ptr %i.jy, align 1, !tbaa !97, !alias.scope !943
  %i.kp = load i8, ptr %i.jz, align 1, !tbaa !97, !alias.scope !943
  %i.kq = load i8, ptr %i.ka, align 1, !tbaa !97, !alias.scope !943
  %i.kr = load i8, ptr %i.kb, align 1, !tbaa !97, !alias.scope !943
  %i.ks = load i8, ptr %i.kc, align 1, !tbaa !97, !alias.scope !943
  %i.kt = load i8, ptr %i.kd, align 1, !tbaa !97, !alias.scope !943
  %i.ku = load i8, ptr %i.ke, align 1, !tbaa !97, !alias.scope !943
  %i.kv = insertelement <16 x i8> poison, i8 %i.kf, i64 0
  %i.kw = insertelement <16 x i8> %i.kv, i8 %i.kg, i64 1
  %i.kx = insertelement <16 x i8> %i.kw, i8 %i.kh, i64 2
  %i.ky = insertelement <16 x i8> %i.kx, i8 %i.ki, i64 3
  %i.kz = insertelement <16 x i8> %i.ky, i8 %i.kj, i64 4
  %i.la = insertelement <16 x i8> %i.kz, i8 %i.kk, i64 5
  %i.lb = insertelement <16 x i8> %i.la, i8 %i.kl, i64 6
  %i.lc = insertelement <16 x i8> %i.lb, i8 %i.km, i64 7
  %i.ld = insertelement <16 x i8> %i.lc, i8 %i.kn, i64 8
  %i.le = insertelement <16 x i8> %i.ld, i8 %i.ko, i64 9
  %i.lf = insertelement <16 x i8> %i.le, i8 %i.kp, i64 10
  %i.lg = insertelement <16 x i8> %i.lf, i8 %i.kq, i64 11
  %i.lh = insertelement <16 x i8> %i.lg, i8 %i.kr, i64 12
  %i.li = insertelement <16 x i8> %i.lh, i8 %i.ks, i64 13
  %i.lj = insertelement <16 x i8> %i.li, i8 %i.kt, i64 14
  %i.lk = insertelement <16 x i8> %i.lj, i8 %i.ku, i64 15
  %i.ll = icmp eq <16 x i8> %i.lk, %broadcast.splat
  %i.lm = getelementptr i8, ptr %i.ff, i64 3
  %i.ln = getelementptr i8, ptr %i.fg, i64 11
  %i.lo = getelementptr i8, ptr %i.fi, i64 19
  %i.lp = getelementptr i8, ptr %i.fk, i64 27
  %i.lq = getelementptr i8, ptr %i.fm, i64 35
  %i.lr = getelementptr i8, ptr %i.fo, i64 43
  %i.ls = getelementptr i8, ptr %i.fq, i64 51
  %i.lt = getelementptr i8, ptr %i.fs, i64 59
  %i.lu = getelementptr i8, ptr %i.fu, i64 67
  %i.lv = getelementptr i8, ptr %i.fw, i64 75
  %i.lw = getelementptr i8, ptr %i.fy, i64 83
  %i.lx = getelementptr i8, ptr %i.ga, i64 91
  %i.ly = getelementptr i8, ptr %i.gc, i64 99
  %i.lz = getelementptr i8, ptr %i.ge, i64 107
  %i.ma = getelementptr i8, ptr %i.gg, i64 115
  %i.mb = getelementptr i8, ptr %i.gi, i64 123
  %i.mc = load i8, ptr %i.lm, align 1, !tbaa !97, !alias.scope !943
  %i.md = load i8, ptr %i.ln, align 1, !tbaa !97, !alias.scope !943
  %i.me = load i8, ptr %i.lo, align 1, !tbaa !97, !alias.scope !943
  %i.mf = load i8, ptr %i.lp, align 1, !tbaa !97, !alias.scope !943
  %i.mg = load i8, ptr %i.lq, align 1, !tbaa !97, !alias.scope !943
  %i.mh = load i8, ptr %i.lr, align 1, !tbaa !97, !alias.scope !943
  %i.mi = load i8, ptr %i.ls, align 1, !tbaa !97, !alias.scope !943
  %i.mj = load i8, ptr %i.lt, align 1, !tbaa !97, !alias.scope !943
  %i.mk = load i8, ptr %i.lu, align 1, !tbaa !97, !alias.scope !943
  %i.ml = load i8, ptr %i.lv, align 1, !tbaa !97, !alias.scope !943
  %i.mm = load i8, ptr %i.lw, align 1, !tbaa !97, !alias.scope !943
end_hunk_0
begin_hunk_1_@_ZNK5arrow16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolE:bb.a
  %i.od = load i8, ptr %i.nn, align 1, !tbaa !97, !alias.scope !943
  %i.oe = load i8, ptr %i.no, align 1, !tbaa !97, !alias.scope !943
  %i.of = load i8, ptr %i.np, align 1, !tbaa !97, !alias.scope !943
  %i.og = load i8, ptr %i.nq, align 1, !tbaa !97, !alias.scope !943
  %i.oh = load i8, ptr %i.nr, align 1, !tbaa !97, !alias.scope !943
  %i.oi = load i8, ptr %i.ns, align 1, !tbaa !97, !alias.scope !943
  %i.oj = load i8, ptr %i.nt, align 1, !tbaa !97, !alias.scope !943
  %i.ok = load i8, ptr %i.nu, align 1, !tbaa !97, !alias.scope !943
  %i.ol = load i8, ptr %i.nv, align 1, !tbaa !97, !alias.scope !943
  %i.om = load i8, ptr %i.nw, align 1, !tbaa !97, !alias.scope !943
  %i.on = load i8, ptr %i.nx, align 1, !tbaa !97, !alias.scope !943
  %i.oo = load i8, ptr %i.ny, align 1, !tbaa !97, !alias.scope !943
  %i.op = insertelement <16 x i8> poison, i8 %i.nz, i64 0
  %i.oq = insertelement <16 x i8> %i.op, i8 %i.oa, i64 1
  %i.or = insertelement <16 x i8> %i.oq, i8 %i.ob, i64 2
  %i.os = insertelement <16 x i8> %i.or, i8 %i.oc, i64 3
  %i.ot = insertelement <16 x i8> %i.os, i8 %i.od, i64 4
  %i.ou = insertelement <16 x i8> %i.ot, i8 %i.oe, i64 5
  %i.ov = insertelement <16 x i8> %i.ou, i8 %i.of, i64 6
  %i.ow = insertelement <16 x i8> %i.ov, i8 %i.og, i64 7
  %i.ox = insertelement <16 x i8> %i.ow, i8 %i.oh, i64 8
  %i.oy = insertelement <16 x i8> %i.ox, i8 %i.oi, i64 9
  %i.oz = insertelement <16 x i8> %i.oy, i8 %i.oj, i64 10
  %i.pa = insertelement <16 x i8> %i.oz, i8 %i.ok, i64 11
  %i.pb = insertelement <16 x i8> %i.pa, i8 %i.ol, i64 12
  %i.pc = insertelement <16 x i8> %i.pb, i8 %i.om, i64 13
  %i.pd = insertelement <16 x i8> %i.pc, i8 %i.on, i64 14
  %i.pe = insertelement <16 x i8> %i.pd, i8 %i.oo, i64 15
  %i.pf = icmp eq <16 x i8> %i.pe, %broadcast.splat
  %i.pg = getelementptr i8, ptr %i.ff, i64 5
  %i.ph = getelementptr i8, ptr %i.fg, i64 13
  %i.pi = getelementptr i8, ptr %i.fi, i64 21
  %i.pj = getelementptr i8, ptr %i.fk, i64 29
  %i.pk = getelementptr i8, ptr %i.fm, i64 37
  %i.pl = getelementptr i8, ptr %i.fo, i64 45
  %i.pm = getelementptr i8, ptr %i.fq, i64 53
  %i.pn = getelementptr i8, ptr %i.fs, i64 61
  %i.po = getelementptr i8, ptr %i.fu, i64 69
  %i.pp = getelementptr i8, ptr %i.fw, i64 77
  %i.pq = getelementptr i8, ptr %i.fy, i64 85
  %i.pr = getelementptr i8, ptr %i.ga, i64 93
  %i.ps = getelementptr i8, ptr %i.gc, i64 101
  %i.pt = getelementptr i8, ptr %i.ge, i64 109
  %i.pu = getelementptr i8, ptr %i.gg, i64 117
  %i.pv = getelementptr i8, ptr %i.gi, i64 125
  %i.pw = load i8, ptr %i.pg, align 1, !tbaa !97, !alias.scope !943
  %i.px = load i8, ptr %i.ph, align 1, !tbaa !97, !alias.scope !943
  %i.py = load i8, ptr %i.pi, align 1, !tbaa !97, !alias.scope !943
  %i.pz = load i8, ptr %i.pj, align 1, !tbaa !97, !alias.scope !943
  %i.qa = load i8, ptr %i.pk, align 1, !tbaa !97, !alias.scope !943
  %i.qb = load i8, ptr %i.pl, align 1, !tbaa !97, !alias.scope !943
  %i.qc = load i8, ptr %i.pm, align 1, !tbaa !97, !alias.scope !943
  %i.qd = load i8, ptr %i.pn, align 1, !tbaa !97, !alias.scope !943
  %i.qe = load i8, ptr %i.po, align 1, !tbaa !97, !alias.scope !943
  %i.qf = load i8, ptr %i.pp, align 1, !tbaa !97, !alias.scope !943
  %i.qg = load i8, ptr %i.pq, align 1, !tbaa !97, !alias.scope !943
  %i.qh = load i8, ptr %i.pr, align 1, !tbaa !97, !alias.scope !943
  %i.qi = load i8, ptr %i.ps, align 1, !tbaa !97, !alias.scope !943
  %i.qj = load i8, ptr %i.pt, align 1, !tbaa !97, !alias.scope !943
  %i.qk = load i8, ptr %i.pu, align 1, !tbaa !97, !alias.scope !943
  %i.ql = load i8, ptr %i.pv, align 1, !tbaa !97, !alias.scope !943
  %i.qm = insertelement <16 x i8> poison, i8 %i.pw, i64 0
  %i.qn = insertelement <16 x i8> %i.qm, i8 %i.px, i64 1
  %i.qo = insertelement <16 x i8> %i.qn, i8 %i.py, i64 2
  %i.qp = insertelement <16 x i8> %i.qo, i8 %i.pz, i64 3
  %i.qq = insertelement <16 x i8> %i.qp, i8 %i.qa, i64 4
  %i.qr = insertelement <16 x i8> %i.qq, i8 %i.qb, i64 5
  %i.qs = insertelement <16 x i8> %i.qr, i8 %i.qc, i64 6
  %i.qt = insertelement <16 x i8> %i.qs, i8 %i.qd, i64 7
  %i.qu = insertelement <16 x i8> %i.qt, i8 %i.qe, i64 8
  %i.qv = insertelement <16 x i8> %i.qu, i8 %i.qf, i64 9
  %i.qw = insertelement <16 x i8> %i.qv, i8 %i.qg, i64 10
  %i.qx = insertelement <16 x i8> %i.qw, i8 %i.qh, i64 11
  %i.qy = insertelement <16 x i8> %i.qx, i8 %i.qi, i64 12
  %i.qz = insertelement <16 x i8> %i.qy, i8 %i.qj, i64 13
  %i.ra = insertelement <16 x i8> %i.qz, i8 %i.qk, i64 14
  %i.rb = insertelement <16 x i8> %i.ra, i8 %i.ql, i64 15
  %i.rc = icmp eq <16 x i8> %i.rb, %broadcast.splat
  %i.rd = getelementptr i8, ptr %i.ff, i64 6
  %i.re = getelementptr i8, ptr %i.fg, i64 14
  %i.rf = getelementptr i8, ptr %i.fi, i64 22
  %i.rg = getelementptr i8, ptr %i.fk, i64 30
  %i.rh = getelementptr i8, ptr %i.fm, i64 38
  %i.ri = getelementptr i8, ptr %i.fo, i64 46
  %i.rj = getelementptr i8, ptr %i.fq, i64 54
  %i.rk = getelementptr i8, ptr %i.fs, i64 62
  %i.rl = getelementptr i8, ptr %i.fu, i64 70
  %i.rm = getelementptr i8, ptr %i.fw, i64 78
  %i.rn = getelementptr i8, ptr %i.fy, i64 86
  %i.ro = getelementptr i8, ptr %i.ga, i64 94
  %i.rp = getelementptr i8, ptr %i.gc, i64 102
  %i.rq = getelementptr i8, ptr %i.ge, i64 110
  %i.rr = getelementptr i8, ptr %i.gg, i64 118
  %i.rs = getelementptr i8, ptr %i.gi, i64 126
  %i.rt = load i8, ptr %i.rd, align 1, !tbaa !97, !alias.scope !943
  %i.ru = load i8, ptr %i.re, align 1, !tbaa !97, !alias.scope !943
  %i.rv = load i8, ptr %i.rf, align 1, !tbaa !97, !alias.scope !943
  %i.rw = load i8, ptr %i.rg, align 1, !tbaa !97, !alias.scope !943
  %i.rx = load i8, ptr %i.rh, align 1, !tbaa !97, !alias.scope !943
  %i.ry = load i8, ptr %i.ri, align 1, !tbaa !97, !alias.scope !943
  %i.rz = load i8, ptr %i.rj, align 1, !tbaa !97, !alias.scope !943
  %i.sa = load i8, ptr %i.rk, align 1, !tbaa !97, !alias.scope !943
  %i.sb = load i8, ptr %i.rl, align 1, !tbaa !97, !alias.scope !943
  %i.sc = load i8, ptr %i.rm, align 1, !tbaa !97, !alias.scope !943
  %i.sd = load i8, ptr %i.rn, align 1, !tbaa !97, !alias.scope !943
  %i.se = load i8, ptr %i.ro, align 1, !tbaa !97, !alias.scope !943
  %i.sf = load i8, ptr %i.rp, align 1, !tbaa !97, !alias.scope !943
  %i.sg = load i8, ptr %i.rq, align 1, !tbaa !97, !alias.scope !943
  %i.sh = load i8, ptr %i.rr, align 1, !tbaa !97, !alias.scope !943
  %i.si = load i8, ptr %i.rs, align 1, !tbaa !97, !alias.scope !943
  %i.sj = insertelement <16 x i8> poison, i8 %i.rt, i64 0
  %i.sk = insertelement <16 x i8> %i.sj, i8 %i.ru, i64 1
  %i.sl = insertelement <16 x i8> %i.sk, i8 %i.rv, i64 2
  %i.sm = insertelement <16 x i8> %i.sl, i8 %i.rw, i64 3
  %i.sn = insertelement <16 x i8> %i.sm, i8 %i.rx, i64 4
  %i.so = insertelement <16 x i8> %i.sn, i8 %i.ry, i64 5
  %i.sp = insertelement <16 x i8> %i.so, i8 %i.rz, i64 6
  %i.sq = insertelement <16 x i8> %i.sp, i8 %i.sa, i64 7
  %i.sr = insertelement <16 x i8> %i.sq, i8 %i.sb, i64 8
  %i.ss = insertelement <16 x i8> %i.sr, i8 %i.sc, i64 9
  %i.st = insertelement <16 x i8> %i.ss, i8 %i.sd, i64 10
  %i.su = insertelement <16 x i8> %i.st, i8 %i.se, i64 11
  %i.sv = insertelement <16 x i8> %i.su, i8 %i.sf, i64 12
  %i.sw = insertelement <16 x i8> %i.sv, i8 %i.sg, i64 13
  %i.sx = insertelement <16 x i8> %i.sw, i8 %i.sh, i64 14
  %i.sy = insertelement <16 x i8> %i.sx, i8 %i.si, i64 15
  %i.sz = icmp eq <16 x i8> %i.sy, %broadcast.splat
  %i.ta = getelementptr i8, ptr %i.ff, i64 7
  %i.tb = getelementptr i8, ptr %i.fg, i64 15
  %i.tc = getelementptr i8, ptr %i.fi, i64 23
  %i.td = getelementptr i8, ptr %i.fk, i64 31
  %i.te = getelementptr i8, ptr %i.fm, i64 39
  %i.tf = getelementptr i8, ptr %i.fo, i64 47
  %i.tg = getelementptr i8, ptr %i.fq, i64 55
  %i.th = getelementptr i8, ptr %i.fs, i64 63
  %i.ti = getelementptr i8, ptr %i.fu, i64 71
  %i.tj = getelementptr i8, ptr %i.fw, i64 79
  %i.tk = getelementptr i8, ptr %i.fy, i64 87
  %i.tl = getelementptr i8, ptr %i.ga, i64 95
  %i.tm = getelementptr i8, ptr %i.gc, i64 103
  %i.tn = getelementptr i8, ptr %i.ge, i64 111
  %i.to = getelementptr i8, ptr %i.gg, i64 119
  %i.tp = getelementptr i8, ptr %i.gi, i64 127
  %i.tq = load i8, ptr %i.ta, align 1, !tbaa !97, !alias.scope !943
  %i.tr = load i8, ptr %i.tb, align 1, !tbaa !97, !alias.scope !943
  %i.ts = load i8, ptr %i.tc, align 1, !tbaa !97, !alias.scope !943
  %i.tt = load i8, ptr %i.td, align 1, !tbaa !97, !alias.scope !943
  %i.tu = load i8, ptr %i.te, align 1, !tbaa !97, !alias.scope !943
  %i.tv = load i8, ptr %i.tf, align 1, !tbaa !97, !alias.scope !943
  %i.tw = load i8, ptr %i.tg, align 1, !tbaa !97, !alias.scope !943
  %i.tx = load i8, ptr %i.th, align 1, !tbaa !97, !alias.scope !943
  %i.ty = load i8, ptr %i.ti, align 1, !tbaa !97, !alias.scope !943
  %i.tz = load i8, ptr %i.tj, align 1, !tbaa !97, !alias.scope !943
  %i.ua = load i8, ptr %i.tk, align 1, !tbaa !97, !alias.scope !943
  %i.ub = load i8, ptr %i.tl, align 1, !tbaa !97, !alias.scope !943
  %i.uc = load i8, ptr %i.tm, align 1, !tbaa !97, !alias.scope !943
  %i.ud = load i8, ptr %i.tn, align 1, !tbaa !97, !alias.scope !943
  %i.ue = load i8, ptr %i.to, align 1, !tbaa !97, !alias.scope !943
  %i.uf = load i8, ptr %i.tp, align 1, !tbaa !97, !alias.scope !943
  %i.ug = insertelement <16 x i8> poison, i8 %i.tq, i64 0
  %i.uh = insertelement <16 x i8> %i.ug, i8 %i.tr, i64 1
  %i.ui = insertelement <16 x i8> %i.uh, i8 %i.ts, i64 2
  %i.uj = insertelement <16 x i8> %i.ui, i8 %i.tt, i64 3
  %i.uk = insertelement <16 x i8> %i.uj, i8 %i.tu, i64 4
  %i.ul = insertelement <16 x i8> %i.uk, i8 %i.tv, i64 5
  %i.um = insertelement <16 x i8> %i.ul, i8 %i.tw, i64 6
  %i.un = insertelement <16 x i8> %i.um, i8 %i.tx, i64 7
  %i.uo = insertelement <16 x i8> %i.un, i8 %i.ty, i64 8
  %i.up = insertelement <16 x i8> %i.uo, i8 %i.tz, i64 9
  %i.uq = insertelement <16 x i8> %i.up, i8 %i.ua, i64 10
  %i.ur = insertelement <16 x i8> %i.uq, i8 %i.ub, i64 11
  %i.us = insertelement <16 x i8> %i.ur, i8 %i.uc, i64 12
  %i.ut = insertelement <16 x i8> %i.us, i8 %i.ud, i64 13
  %i.uu = insertelement <16 x i8> %i.ut, i8 %i.ue, i64 14
  %i.uv = insertelement <16 x i8> %i.uu, i8 %i.uf, i64 15
  %i.uw = icmp eq <16 x i8> %i.uv, %broadcast.splat
  %i.ux = select <16 x i1> %i.jo, <16 x i8> splat (i8 2), <16 x i8> zeroinitializer
  %i.uy = or disjoint <16 x i8> %i.ux, %i.hr
  %i.uz = select <16 x i1> %i.ll, <16 x i8> splat (i8 4), <16 x i8> zeroinitializer
  %i.va = or disjoint <16 x i8> %i.uy, %i.uz
  %i.vb = select <16 x i1> %i.ni, <16 x i8> splat (i8 8), <16 x i8> zeroinitializer
  %i.vc = or disjoint <16 x i8> %i.va, %i.vb
  %i.vd = select <16 x i1> %i.pf, <16 x i8> splat (i8 16), <16 x i8> zeroinitializer
  %i.ve = or disjoint <16 x i8> %i.vc, %i.vd
  %i.vf = select <16 x i1> %i.rc, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.vg = or disjoint <16 x i8> %i.ve, %i.vf
  %i.vh = select <16 x i1> %i.sz, <16 x i8> splat (i8 64), <16 x i8> zeroinitializer
  %i.vi = or <16 x i8> %i.vg, %i.vh
  %i.vj = select <16 x i1> %i.uw, <16 x i8> splat (i8 -128), <16 x i8> zeroinitializer
  %i.vk = or <16 x i8> %i.vi, %i.vj
  store <16 x i8> %i.vk, ptr %next.gep, align 1, !tbaa !97, !alias.scope !946, !noalias !943
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.vl = icmp eq i64 %index.next, %n.vec
  br i1 %i.vl, label %middle.block, label %vector.body, !llvm.loop !948

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ex, %n.vec
  br i1 %cmp.n, label %._crit_edge53.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %18, 0
  br i1 %min.epilog.iters.check, label %.preheader46.i.preheader, label %vec.epilog.ph, !prof !949

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec121 = and i64 %12, 1152921504606846972    ; 5 uses
  %i.vm = shl nuw nsw i64 %n.vec121, 3
  %i.vn = add i64 %.1, %i.vm                      ; 2 uses
  %20 = sub nsw i64 %i.ex, %n.vec121
  %i.vo = getelementptr i8, ptr %.038.i, i64 %n.vec121 ; 2 uses
  %broadcast.splatinsert122 = insertelement <4 x i8> poison, i8 %i.di, i64 0
  %broadcast.splat123 = shufflevector <4 x i8> %broadcast.splatinsert122, <4 x i8> poison, <4 x i32> zeroinitializer ; 8 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.vp = shl nuw i64 %index124, 3
  %i.vq = add nuw i64 %.1, %i.vp                  ; 4 uses
  %next.gep125 = getelementptr i8, ptr %.038.i, i64 %index124
  %i.vr = getelementptr i8, ptr %i.dk, i64 %i.vq  ; 8 uses
  %i.vs = getelementptr i8, ptr %i.dk, i64 %i.vq  ; 8 uses
  %i.vt = getelementptr i8, ptr %i.vs, i64 8
  %i.vu = getelementptr i8, ptr %i.dk, i64 %i.vq  ; 8 uses
  %i.vv = getelementptr i8, ptr %i.vu, i64 16
  %i.vw = getelementptr i8, ptr %i.dk, i64 %i.vq  ; 8 uses
  %i.vx = getelementptr i8, ptr %i.vw, i64 24
  %i.vy = load i8, ptr %i.vr, align 1, !tbaa !97, !alias.scope !943
  %i.vz = load i8, ptr %i.vt, align 1, !tbaa !97, !alias.scope !943
  %i.wa = load i8, ptr %i.vv, align 1, !tbaa !97, !alias.scope !943
  %i.wb = load i8, ptr %i.vx, align 1, !tbaa !97, !alias.scope !943
  %i.wc = insertelement <4 x i8> poison, i8 %i.vy, i64 0
  %i.wd = insertelement <4 x i8> %i.wc, i8 %i.vz, i64 1
  %i.we = insertelement <4 x i8> %i.wd, i8 %i.wa, i64 2
  %i.wf = insertelement <4 x i8> %i.we, i8 %i.wb, i64 3
  %i.wg = icmp eq <4 x i8> %i.wf, %broadcast.splat123
  %i.wh = zext <4 x i1> %i.wg to <4 x i8>
  %i.wi = getelementptr i8, ptr %i.vr, i64 1
  %i.wj = getelementptr i8, ptr %i.vs, i64 9
  %i.wk = getelementptr i8, ptr %i.vu, i64 17
  %i.wl = getelementptr i8, ptr %i.vw, i64 25
  %i.wm = load i8, ptr %i.wi, align 1, !tbaa !97, !alias.scope !943
  %i.wn = load i8, ptr %i.wj, align 1, !tbaa !97, !alias.scope !943
  %i.wo = load i8, ptr %i.wk, align 1, !tbaa !97, !alias.scope !943
  %i.wp = load i8, ptr %i.wl, align 1, !tbaa !97, !alias.scope !943
  %i.wq = insertelement <4 x i8> poison, i8 %i.wm, i64 0
  %i.wr = insertelement <4 x i8> %i.wq, i8 %i.wn, i64 1
  %i.ws = insertelement <4 x i8> %i.wr, i8 %i.wo, i64 2
  %i.wt = insertelement <4 x i8> %i.ws, i8 %i.wp, i64 3
  %i.wu = icmp eq <4 x i8> %i.wt, %broadcast.splat123
  %i.wv = getelementptr i8, ptr %i.vr, i64 2
  %i.ww = getelementptr i8, ptr %i.vs, i64 10
  %i.wx = getelementptr i8, ptr %i.vu, i64 18
  %i.wy = getelementptr i8, ptr %i.vw, i64 26
  %i.wz = load i8, ptr %i.wv, align 1, !tbaa !97, !alias.scope !943
  %i.xa = load i8, ptr %i.ww, align 1, !tbaa !97, !alias.scope !943
  %i.xb = load i8, ptr %i.wx, align 1, !tbaa !97, !alias.scope !943
  %i.xc = load i8, ptr %i.wy, align 1, !tbaa !97, !alias.scope !943
  %i.xd = insertelement <4 x i8> poison, i8 %i.wz, i64 0
  %i.xe = insertelement <4 x i8> %i.xd, i8 %i.xa, i64 1
  %i.xf = insertelement <4 x i8> %i.xe, i8 %i.xb, i64 2
  %i.xg = insertelement <4 x i8> %i.xf, i8 %i.xc, i64 3
  %i.xh = icmp eq <4 x i8> %i.xg, %broadcast.splat123
  %i.xi = getelementptr i8, ptr %i.vr, i64 3
  %i.xj = getelementptr i8, ptr %i.vs, i64 11
  %i.xk = getelementptr i8, ptr %i.vu, i64 19
  %i.xl = getelementptr i8, ptr %i.vw, i64 27
  %i.xm = load i8, ptr %i.xi, align 1, !tbaa !97, !alias.scope !943
  %i.xn = load i8, ptr %i.xj, align 1, !tbaa !97, !alias.scope !943
  %i.xo = load i8, ptr %i.xk, align 1, !tbaa !97, !alias.scope !943
  %i.xp = load i8, ptr %i.xl, align 1, !tbaa !97, !alias.scope !943
  %i.xq = insertelement <4 x i8> poison, i8 %i.xm, i64 0
  %i.xr = insertelement <4 x i8> %i.xq, i8 %i.xn, i64 1
  %i.xs = insertelement <4 x i8> %i.xr, i8 %i.xo, i64 2
  %i.xt = insertelement <4 x i8> %i.xs, i8 %i.xp, i64 3
  %i.xu = icmp eq <4 x i8> %i.xt, %broadcast.splat123
  %i.xv = getelementptr i8, ptr %i.vr, i64 4
  %i.xw = getelementptr i8, ptr %i.vs, i64 12
  %i.xx = getelementptr i8, ptr %i.vu, i64 20
  %i.xy = getelementptr i8, ptr %i.vw, i64 28
  %i.xz = load i8, ptr %i.xv, align 1, !tbaa !97, !alias.scope !943
  %i.ya = load i8, ptr %i.xw, align 1, !tbaa !97, !alias.scope !943
  %i.yb = load i8, ptr %i.xx, align 1, !tbaa !97, !alias.scope !943
  %i.yc = load i8, ptr %i.xy, align 1, !tbaa !97, !alias.scope !943
  %i.yd = insertelement <4 x i8> poison, i8 %i.xz, i64 0
  %i.ye = insertelement <4 x i8> %i.yd, i8 %i.ya, i64 1
  %i.yf = insertelement <4 x i8> %i.ye, i8 %i.yb, i64 2
  %i.yg = insertelement <4 x i8> %i.yf, i8 %i.yc, i64 3
  %i.yh = icmp eq <4 x i8> %i.yg, %broadcast.splat123
  %i.yi = getelementptr i8, ptr %i.vr, i64 5
  %i.yj = getelementptr i8, ptr %i.vs, i64 13
  %i.yk = getelementptr i8, ptr %i.vu, i64 21
  %i.yl = getelementptr i8, ptr %i.vw, i64 29
  %i.ym = load i8, ptr %i.yi, align 1, !tbaa !97, !alias.scope !943
  %i.yn = load i8, ptr %i.yj, align 1, !tbaa !97, !alias.scope !943
  %i.yo = load i8, ptr %i.yk, align 1, !tbaa !97, !alias.scope !943
  %i.yp = load i8, ptr %i.yl, align 1, !tbaa !97, !alias.scope !943
  %i.yq = insertelement <4 x i8> poison, i8 %i.ym, i64 0
  %i.yr = insertelement <4 x i8> %i.yq, i8 %i.yn, i64 1
  %i.ys = insertelement <4 x i8> %i.yr, i8 %i.yo, i64 2
  %i.yt = insertelement <4 x i8> %i.ys, i8 %i.yp, i64 3
  %i.yu = icmp eq <4 x i8> %i.yt, %broadcast.splat123
  %i.yv = getelementptr i8, ptr %i.vr, i64 6
  %i.yw = getelementptr i8, ptr %i.vs, i64 14
  %i.yx = getelementptr i8, ptr %i.vu, i64 22
  %i.yy = getelementptr i8, ptr %i.vw, i64 30
  %i.yz = load i8, ptr %i.yv, align 1, !tbaa !97, !alias.scope !943
  %i.za = load i8, ptr %i.yw, align 1, !tbaa !97, !alias.scope !943
  %i.zb = load i8, ptr %i.yx, align 1, !tbaa !97, !alias.scope !943
  %i.zc = load i8, ptr %i.yy, align 1, !tbaa !97, !alias.scope !943
  %i.zd = insertelement <4 x i8> poison, i8 %i.yz, i64 0
  %i.ze = insertelement <4 x i8> %i.zd, i8 %i.za, i64 1
  %i.zf = insertelement <4 x i8> %i.ze, i8 %i.zb, i64 2
  %i.zg = insertelement <4 x i8> %i.zf, i8 %i.zc, i64 3
  %i.zh = icmp eq <4 x i8> %i.zg, %broadcast.splat123
  %i.zi = getelementptr i8, ptr %i.vr, i64 7
  %i.zj = getelementptr i8, ptr %i.vs, i64 15
  %i.zk = getelementptr i8, ptr %i.vu, i64 23
  %i.zl = getelementptr i8, ptr %i.vw, i64 31
  %i.zm = load i8, ptr %i.zi, align 1, !tbaa !97, !alias.scope !943
  %i.zn = load i8, ptr %i.zj, align 1, !tbaa !97, !alias.scope !943
  %i.zo = load i8, ptr %i.zk, align 1, !tbaa !97, !alias.scope !943
  %i.zp = load i8, ptr %i.zl, align 1, !tbaa !97, !alias.scope !943
  %i.zq = insertelement <4 x i8> poison, i8 %i.zm, i64 0
  %i.zr = insertelement <4 x i8> %i.zq, i8 %i.zn, i64 1
  %i.zs = insertelement <4 x i8> %i.zr, i8 %i.zo, i64 2
  %i.zt = insertelement <4 x i8> %i.zs, i8 %i.zp, i64 3
  %i.zu = icmp eq <4 x i8> %i.zt, %broadcast.splat123
  %i.zv = select <4 x i1> %i.wu, <4 x i8> splat (i8 2), <4 x i8> zeroinitializer
  %i.zw = or disjoint <4 x i8> %i.zv, %i.wh
  %i.zx = select <4 x i1> %i.xh, <4 x i8> splat (i8 4), <4 x i8> zeroinitializer
  %i.zy = or disjoint <4 x i8> %i.zw, %i.zx
  %i.zz = select <4 x i1> %i.xu, <4 x i8> splat (i8 8), <4 x i8> zeroinitializer
  %i.aaa = or disjoint <4 x i8> %i.zy, %i.zz
  %i.aab = select <4 x i1> %i.yh, <4 x i8> splat (i8 16), <4 x i8> zeroinitializer
  %i.aac = or disjoint <4 x i8> %i.aaa, %i.aab
  %i.aad = select <4 x i1> %i.yu, <4 x i8> splat (i8 32), <4 x i8> zeroinitializer
  %i.aae = or disjoint <4 x i8> %i.aac, %i.aad
  %i.aaf = select <4 x i1> %i.zh, <4 x i8> splat (i8 64), <4 x i8> zeroinitializer
  %i.aag = or <4 x i8> %i.aae, %i.aaf
  %i.aah = select <4 x i1> %i.zu, <4 x i8> splat (i8 -128), <4 x i8> zeroinitializer
  %i.aai = or <4 x i8> %i.aag, %i.aah
  store <4 x i8> %i.aai, ptr %next.gep125, align 1, !tbaa !97, !alias.scope !946, !noalias !943
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.aaj = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.aaj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !950

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n127 = icmp eq i64 %i.ex, %n.vec121
  br i1 %cmp.n127, label %._crit_edge53.i, label %.preheader46.i.preheader

.preheader46.i.preheader:                         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3.ph = phi i64 [ %.1, %iter.check ], [ %.1, %vector.memcheck ], [ %i.fb, %vec.epilog.iter.check ], [ %i.vn, %vec.epilog.middle.block ]
  %.in.i.ph = phi i64 [ %i.ex, %iter.check ], [ %i.ex, %vector.memcheck ], [ %19, %vec.epilog.iter.check ], [ %20, %vec.epilog.middle.block ]
  %.13952.i.ph = phi ptr [ %.038.i, %iter.check ], [ %.038.i, %vector.memcheck ], [ %i.fc, %vec.epilog.iter.check ], [ %i.vo, %vec.epilog.middle.block ]
  %i.aak = insertelement <8 x i8> poison, i8 %i.di, i64 0
  %i.aal = shufflevector <8 x i8> %i.aak, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.preheader46.i

.preheader46.i:                                   ; preds = %.preheader46.i.preheader, %.preheader46.i
  %.3 = phi i64 [ %i.aan, %.preheader46.i ], [ %.3.ph, %.preheader46.i.preheader ] ; 2 uses
  %.in.i = phi i64 [ %i.aao, %.preheader46.i ], [ %.in.i.ph, %.preheader46.i.preheader ] ; 2 uses
  %.13952.i = phi ptr [ %i.aar, %.preheader46.i ], [ %.13952.i.ph, %.preheader46.i.preheader ] ; 2 uses
  %i.aam = getelementptr i8, ptr %i.dk, i64 %.3
  %i.aan = add nuw nsw i64 %.3, 8                 ; 2 uses
  %i.aao = add nsw i64 %.in.i, -1
  %i.aap = load <8 x i8>, ptr %i.aam, align 1, !tbaa !97
  %i.aaq = icmp eq <8 x i8> %i.aap, %i.aal
  %i.aar = getelementptr inbounds nuw i8, ptr %.13952.i, i64 1 ; 2 uses
  store <8 x i1> %i.aaq, ptr %.13952.i, align 1, !tbaa !97
  %i.aas = icmp samesign ugt i64 %.in.i, 1
  br i1 %i.aas, label %.preheader46.i, label %._crit_edge53.i, !llvm.loop !951

._crit_edge53.i:                                  ; preds = %.preheader46.i, %middle.block, %vec.epilog.middle.block, %bb.aj
  %.2 = phi i64 [ %.1, %bb.aj ], [ %i.vn, %vec.epilog.middle.block ], [ %i.fb, %middle.block ], [ %i.aan, %.preheader46.i ] ; 2 uses
  %.139.lcssa.i = phi ptr [ %.038.i, %bb.aj ], [ %i.vo, %vec.epilog.middle.block ], [ %i.fc, %middle.block ], [ %i.aar, %.preheader46.i ]
  %i.aat = srem i64 %.1.i, 8                      ; 6 uses
  %.not45.i = icmp eq i64 %i.aat, 0
  br i1 %.not45.i, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit", label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge53.i
  %i.aau = icmp sgt i64 %i.aat, 0
  br i1 %i.aau, label %.lr.ph58.i.preheader, label %._crit_edge59.i

.lr.ph58.i.preheader:                             ; preds = %.preheader.i
  %xtraiter = and i64 %i.aat, 1
  %i.aav = icmp eq i64 %i.aat, 1
  br i1 %i.aav, label %.lr.ph58.i.epil.preheader, label %.lr.ph58.i.preheader.new

.lr.ph58.i.preheader.new:                         ; preds = %.lr.ph58.i.preheader
  %unroll_iter = and i64 %i.aat, 9223372036854775806
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i, %.lr.ph58.i.preheader.new
  %i.aaw = phi i64 [ %.2, %.lr.ph58.i.preheader.new ], [ %i.abd, %.lr.ph58.i ] ; 3 uses
  %.13756.i = phi i8 [ 1, %.lr.ph58.i.preheader.new ], [ %i.abk, %.lr.ph58.i ] ; 3 uses
  %.14155.i = phi i8 [ 0, %.lr.ph58.i.preheader.new ], [ %i.abj, %.lr.ph58.i ]
  %niter = phi i64 [ 0, %.lr.ph58.i.preheader.new ], [ %niter.next.1, %.lr.ph58.i ]
  %i.aax = getelementptr inbounds i8, ptr %i.dk, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !97
  %i.aaz = icmp eq i8 %i.aay, %i.di
  %i.aba = select i1 %i.aaz, i8 %.13756.i, i8 0
  %i.abb = or i8 %i.aba, %.14155.i
  %i.abc = shl nuw i8 %.13756.i, 1
  %i.abd = add nsw i64 %i.aaw, 2                  ; 2 uses
  %i.abe = getelementptr i8, ptr %i.dk, i64 %i.aaw
  %i.abf = getelementptr i8, ptr %i.abe, i64 1
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !97
  %i.abh = icmp eq i8 %i.abg, %i.di
  %i.abi = select i1 %i.abh, i8 %i.abc, i8 0
  %i.abj = or i8 %i.abi, %i.abb                   ; 3 uses
  %i.abk = shl nuw i8 %.13756.i, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge59.i.loopexit.unr-lcssa, label %.lr.ph58.i, !llvm.loop !952

._crit_edge59.i.loopexit.unr-lcssa:               ; preds = %.lr.ph58.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge59.i, label %.lr.ph58.i.epil.preheader

.lr.ph58.i.epil.preheader:                        ; preds = %._crit_edge59.i.loopexit.unr-lcssa, %.lr.ph58.i.preheader
  %.epil.init = phi i64 [ %.2, %.lr.ph58.i.preheader ], [ %i.abd, %._crit_edge59.i.loopexit.unr-lcssa ]
  %.13756.i.epil.init = phi i8 [ 1, %.lr.ph58.i.preheader ], [ %i.abk, %._crit_edge59.i.loopexit.unr-lcssa ]
  %.14155.i.epil.init = phi i8 [ 0, %.lr.ph58.i.preheader ], [ %i.abj, %._crit_edge59.i.loopexit.unr-lcssa ]
  %lcmp.mod137 = trunc i64 %i.aat to i1
  call void @llvm.assume(i1 %lcmp.mod137)
  %i.abl = getelementptr inbounds i8, ptr %i.dk, i64 %.epil.init
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !97
  %i.abn = icmp eq i8 %i.abm, %i.di
  %i.abo = select i1 %i.abn, i8 %.13756.i.epil.init, i8 0
  %i.abp = or i8 %i.abo, %.14155.i.epil.init
  br label %._crit_edge59.i

._crit_edge59.i:                                  ; preds = %.lr.ph58.i.epil.preheader, %._crit_edge59.i.loopexit.unr-lcssa, %.preheader.i
  %.141.lcssa.i = phi i8 [ 0, %.preheader.i ], [ %i.abj, %._crit_edge59.i.loopexit.unr-lcssa ], [ %i.abp, %.lr.ph58.i.epil.preheader ]
  store i8 %.141.lcssa.i, ptr %.139.lcssa.i, align 1, !tbaa !97
  %.pre83.pre = load ptr, ptr %10, align 16, !tbaa !179
  br label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit"

"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit": ; preds = %._crit_edge59.i, %._crit_edge53.i, %bb.af
  %.pre83 = phi ptr [ %.pre83.pre, %._crit_edge59.i ], [ %i.da, %._crit_edge53.i ], [ %i.da, %bb.af ] ; 4 uses
  %i.abq = load ptr, ptr %8, align 16, !tbaa !179 ; 3 uses
  %.not71 = icmp eq ptr %i.abq, null
  br i1 %.not71, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit"
  %i.abr = getelementptr inbounds nuw i8, ptr %.pre83, i64 9
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !182, !range !111, !noundef !112
  %i.abt = trunc nuw i8 %i.abs to i1              ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.pre83, i64 16
  %i.abv = load ptr, ptr %i.abu, align 8          ; 2 uses
  %i.abw = select i1 %i.abt, ptr %i.abv, ptr null, !prof !83
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abq, i64 9
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !182, !range !111, !noundef !112
  %i.abz = trunc nuw i8 %i.aby to i1
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abq, i64 16
  %i.acb = load ptr, ptr %i.aca, align 8
  %i.acc = select i1 %i.abz, ptr %i.acb, ptr null, !prof !83
  %i.acd = load ptr, ptr %6, align 16, !tbaa !33
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !39
  %i.acg = getelementptr inbounds nuw i8, ptr %.pre83, i64 8
  %i.ach = load i8, ptr %i.acg, align 8, !range !111
  %i.aci = trunc nuw i8 %i.ach to i1
  %i.acj = select i1 %i.abt, i1 %i.aci, i1 false, !prof !83
  %i.ack = select i1 %i.acj, ptr %i.abv, ptr null, !prof !83
  invoke void @_ZN5arrow8internal9BitmapAndEPKhlS2_lllPh(ptr noundef %i.abw, i64 noundef %i.cp, ptr noundef %i.acc, i64 noundef %i.cp, i64 noundef %i.acf, i64 noundef %i.cp, ptr noundef %i.ack)
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.am:                                            ; preds = %bb.ak, %"_ZN5arrow8internal20GenerateBitsUnrolledIZNKS_16SparseUnionArray17GetFlattenedFieldEiPNS_10MemoryPoolEE3$_0EEvPhllOT_.exit"
  %i.acm = load ptr, ptr %6, align 16, !tbaa !33
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 40
  %i.aco = load ptr, ptr %i.acn, align 8, !tbaa !178 ; 2 uses
  %i.acp = load ptr, ptr %i.cx, align 8, !tbaa !90
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store ptr %.pre83, ptr %i.aco, align 8, !tbaa !271
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 8 ; 2 uses
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !90 ; 8 uses
  store ptr %i.acp, ptr %i.acq, align 8, !tbaa !90
  %.not.i.i.i.i27 = icmp eq ptr %i.acr, null
  br i1 %.not.i.i.i.i27, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 8 ; 4 uses
  %i.act = load atomic i64, ptr %i.acs acquire, align 8 ; 2 uses
  %i.acu = icmp eq i64 %i.act, 4294967297
  %i.acv = trunc i64 %i.act to i32                ; 2 uses
  br i1 %i.acu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 0, ptr %i.acs, align 8, !tbaa !91
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acr, i64 12
  store i32 0, ptr %i.acw, align 4, !tbaa !93
  %i.acx = load ptr, ptr %i.acr, align 8, !tbaa !94
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 16
  %i.acz = load ptr, ptr %i.acy, align 8
  call void %i.acz(ptr noundef nonnull align 8 dereferenceable(16) %i.acr) #23, !inline_history !883
  %i.ada = load ptr, ptr %i.acr, align 8, !tbaa !94
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 24
  %i.adc = load ptr, ptr %i.adb, align 8
  call void %i.adc(ptr noundef nonnull align 8 dereferenceable(16) %i.acr) #23, !inline_history !883
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

bb.ap:                                            ; preds = %bb.an
  %i.add = load i8, ptr @__libc_single_threaded, align 1, !tbaa !97
  %.not.i.i.i.i.i28 = icmp eq i8 %i.add, 0
  br i1 %.not.i.i.i.i.i28, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ade = add nsw i32 %i.acv, -1
  store i32 %i.ade, ptr %i.acs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29

bb.ar:                                            ; preds = %bb.ap
  %i.adf = atomicrmw volatile add ptr %i.acs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i30 = phi i32 [ %i.acv, %bb.aq ], [ %i.adf, %bb.ar ]
  %i.adg = icmp eq i32 %.0.i.i.i.i.i.i30, 1
  br i1 %i.adg, label %bb.as, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit, !prof !98

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.acr) #23
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit:   ; preds = %bb.am, %bb.ao, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i29, %bb.as
  %i.adh = load ptr, ptr %6, align 16, !tbaa !33
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 24
  store atomic i64 -1, ptr %i.adi seq_cst, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN5arrow9MakeArrayERKSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.az

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEaSEOS2_.exit
  store ptr null, ptr %0, align 8, !tbaa !80
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.adk = load <2 x ptr>, ptr %11, align 16, !tbaa !84
  store <2 x ptr> %i.adk, ptr %i.adj, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.adl = load ptr, ptr %i.cx, align 8, !tbaa !90 ; 8 uses
  %.not.i.i35 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i35, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 8 ; 4 uses
  %i.adn = load atomic i64, ptr %i.adm acquire, align 8 ; 2 uses
  %i.ado = icmp eq i64 %i.adn, 4294967297
  %i.adp = trunc i64 %i.adn to i32                ; 2 uses
end_hunk_1
