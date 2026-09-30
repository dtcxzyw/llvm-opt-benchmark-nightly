Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/APInt?download=true
inline.NumInlined: 1403
inline.NumDeleted: 239
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZNK4llvm5APInt7umul_ovERKS0_Rb:bb.a
  %.2.i.i = phi i32 [ %i.t, %.thread.i.i ], [ %i.m, %bb.d ]
  %i.w = and i32 %i.b, 63
  %.not.i.i = icmp eq i32 %i.w, 0
  %.neg.i.i = or i32 %i.b, -64
  %.neg15.i.i = select i1 %.not.i.i, i32 0, i32 %.neg.i.i
  %i.x = add i32 %.2.i.i, %.neg15.i.i
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit

_ZNK4llvm5APInt11countl_zeroEv.exit:              ; preds = %bb.b, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i
  %i.y = phi i64 [ %i.d, %bb.b ], [ %i.n, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i ]
  %.0.i = phi i32 [ %i.g, %bb.b ], [ %i.x, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !23  ; 5 uses
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %bb.e, label %.lr.ph.i.i10

bb.e:                                             ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit
  %.neg.i21 = add nsw i32 %i.aa, -64
  %i.ac = load i64, ptr %2, align 8, !tbaa !24
  %i.ad = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 false)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = add nsw i32 %.neg.i21, %i.ae
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit22

.lr.ph.i.i10:                                     ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit
  %i.ag = zext i32 %i.aa to i64
  %i.ah = add nuw nsw i64 %i.ag, 63
  %i.ai = lshr i64 %i.ah, 6                       ; 2 uses
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = load ptr, ptr %2, align 8, !tbaa !24
  %i.al = shl i32 %i.aj, 6
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i10
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i13, %bb.g ], [ %i.ai, %.lr.ph.i.i10 ] ; 2 uses
  %.019.i.i12 = phi i32 [ %i.as, %bb.g ], [ 0, %.lr.ph.i.i10 ] ; 2 uses
  %indvars.iv.next.i13 = add nsw i64 %indvars.iv.i11, -1 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next.i13
  %i.an = load i64, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.g, label %.thread.i.i14

.thread.i.i14:                                    ; preds = %bb.f
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.an, i1 true)
  %i.aq = trunc nuw nsw i64 %i.ap to i32
  %i.ar = or disjoint i32 %.019.i.i12, %i.aq
  br label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i15

bb.g:                                             ; preds = %bb.f
  %i.as = add i32 %.019.i.i12, 64
  %i.at = icmp samesign ugt i64 %indvars.iv.i11, 1
  br i1 %i.at, label %bb.f, label %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i15, !llvm.loop !1

_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i15: ; preds = %bb.g, %.thread.i.i14
  %.2.i.i16 = phi i32 [ %i.ar, %.thread.i.i14 ], [ %i.al, %bb.g ]
  %i.au = and i32 %i.aa, 63
  %.not.i.i17 = icmp eq i32 %i.au, 0
  %.neg.i.i18 = or i32 %i.aa, -64
  %.neg15.i.i19 = select i1 %.not.i.i17, i32 0, i32 %.neg.i.i18
  %i.av = add i32 %.2.i.i16, %.neg15.i.i19
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit22

_ZNK4llvm5APInt11countl_zeroEv.exit22:            ; preds = %bb.e, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i15
  %.0.i20 = phi i32 [ %i.af, %bb.e ], [ %i.av, %_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv.exit.i15 ]
  %i.aw = add i32 %.0.i, 2
  %i.ax = add i32 %i.aw, %.0.i20
  %.not = icmp ugt i32 %i.ax, %i.b
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit22
  store i8 1, ptr %3, align 1, !tbaa !44
  tail call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %_ZNK4llvm5APInt3ultERKS0_.exit.thread

bb.i:                                             ; preds = %_ZNK4llvm5APInt11countl_zeroEv.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.b, ptr %i.ay, align 8, !tbaa !23, !alias.scope !414
  br i1 %i.c, label %_ZNK4llvm5APInt4lshrEj.exit.thread, label %.lr.ph.i.i.i.i

_ZNK4llvm5APInt4lshrEj.exit.thread:               ; preds = %bb.i
  %i.az = icmp eq i32 %i.b, 1
  %i.ba = lshr i64 %i.y, 1
  %spec.select = select i1 %i.az, i64 0, i64 %i.ba
  store i64 %spec.select, ptr %4, align 8, !tbaa !24, !alias.scope !414
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %2)
  br label %_ZN4llvm5APIntD2Ev.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.i
  %i.bb = zext i32 %i.b to i64
  %i.bc = add nuw nsw i64 %i.bb, 63               ; 2 uses
  %i.bd = lshr i64 %i.bc, 3
  %i.be = and i64 %i.bd, 1073741816               ; 2 uses
  %i.bf = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.be) #21, !noalias !414 ; 13 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !24, !alias.scope !414
  %i.bg = load ptr, ptr %1, align 8, !tbaa !24, !noalias !414
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.bg, i64 %i.be, i1 false), !noalias !414
  %i.bh = lshr i64 %i.bc, 6                       ; 2 uses
  %i.bi = load i64, ptr %i.bf, align 8, !tbaa !26, !noalias !414
  %i.bj = lshr i64 %i.bi, 1                       ; 3 uses
  store i64 %i.bj, ptr %i.bf, align 8, !tbaa !26, !noalias !414
  %i.bk = add nsw i64 %i.bh, -1                   ; 3 uses
  %xtraiter = and i64 %i.bk, 1
  %i.bl = icmp eq i64 %i.bh, 2
  br i1 %i.bl, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %i.bk, -2
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.new
  %indvars.iv.next.i2.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph.i.i.i ] ; 4 uses
  %i.bm = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.new ], [ %i.cc, %.lr.ph.i.i.i ]
  %i.bn = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.new ], [ %i.cd, %.lr.ph.i.i.i ]
  %i.bo = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %.lr.ph.i.i.i ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !26, !noalias !414
  %i.bs = shl i64 %i.br, 63
  %i.bt = or disjoint i64 %i.bs, %i.bn
  store i64 %i.bt, ptr %i.bm, align 8, !tbaa !26, !noalias !414
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i2.i.i.i ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !26, !noalias !414
  %i.bw = lshr i64 %i.bv, 1                       ; 2 uses
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !26, !noalias !414
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 1 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i2.i.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !26, !noalias !414 ; 2 uses
  %i.ca = shl i64 %i.bz, 63
  %i.cb = or disjoint i64 %i.ca, %i.bw
  store i64 %i.cb, ptr %i.bu, align 8, !tbaa !26, !noalias !414
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i ; 3 uses
  %i.cd = lshr i64 %i.bz, 1                       ; 3 uses
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !26, !noalias !414
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.next.i2.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.lr.ph.i.i.i

.unr-lcssa:                                       ; preds = %.lr.ph.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.j, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.next.i2.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %.unr-lcssa ]
  %.epil.init = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %i.cc, %.unr-lcssa ]
  %.epil.init84 = phi i64 [ %i.bj, %.lr.ph.i.i.i.i ], [ %i.cd, %.unr-lcssa ]
  %.epil.init86 = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.unr-lcssa ]
  %lcmp.mod87 = trunc i64 %i.bk to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.epil.init86
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !26, !noalias !414
  %i.ch = shl i64 %i.cg, 63
  %i.ci = or disjoint i64 %i.ch, %.epil.init84
  store i64 %i.ci, ptr %.epil.init, align 8, !tbaa !26, !noalias !414
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i2.i.i.i.epil.init ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !26, !noalias !414
  %i.cl = lshr i64 %i.ck, 1
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !26, !noalias !414
  br label %bb.j

bb.j:                                             ; preds = %.unr-lcssa, %.lr.ph.i.i.i.epil.preheader
  call void @_ZNK4llvm5APIntmlERKS0_(ptr dead_on_unwind writable sret(%"class.llvm::APInt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %2)
  tail call void @_ZdaPv(ptr noundef nonnull %i.bf) #22
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZNK4llvm5APInt4lshrEj.exit.thread, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !23 ; 11 uses
  %i.co = add i32 %i.cn, -1                       ; 2 uses
  %i.cp = and i32 %i.co, 63
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = icmp ult i32 %i.cn, 65                  ; 3 uses
  %i.cs = load ptr, ptr %0, align 8               ; 9 uses
  %i.ct = lshr i32 %i.co, 6
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cu
  %.in.i.i.i = select i1 %i.cr, ptr %0, ptr %i.cv
  %i.cw = load i64, ptr %.in.i.i.i, align 8, !tbaa !24
  %i.cx = lshr i64 %i.cw, %i.cq
  %i.cy = trunc i64 %i.cx to i8
  %i.cz = and i8 %i.cy, 1
  store i8 %i.cz, ptr %3, align 1, !tbaa !44
  %i.da = ptrtoint ptr %i.cs to i64               ; 2 uses
  br i1 %i.cr, label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, label %.lr.ph.i.i28

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i:         ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.db = icmp eq i32 %i.cn, 1
  %i.dc = shl i64 %i.da, 1
  %storemerge.i = select i1 %i.db, i64 0, i64 %i.dc
  %i.dd = sub nsw i32 0, %i.cn
  %i.de = and i32 %i.dd, 63
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = lshr i64 -1, %i.df
  %i.dh = icmp eq i32 %i.cn, 0
  %.04.i.i = select i1 %i.dh, i64 0, i64 %i.dg, !prof !27
  %5 = and i64 %storemerge.i, %.04.i.i            ; 3 uses
  store i64 %5, ptr %0, align 8, !tbaa !24
  %i.di = inttoptr i64 %5 to ptr
  br label %_ZN4llvm5APIntlSEj.exit

.lr.ph.i.i28:                                     ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.dj = zext i32 %i.cn to i64
  %i.dk = add nuw nsw i64 %i.dj, 63
  %i.dl = lshr i64 %i.dk, 6                       ; 5 uses
  %indvars.iv.next.i1.i = add nsw i64 %i.dl, -1   ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next.i1.i ; 4 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !26
  %i.do = shl i64 %i.dn, 1                        ; 3 uses
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !26
  %invariant.gep.i = getelementptr i8, ptr %i.cs, i64 -8 ; 3 uses
  %i.dp = trunc nuw nsw i64 %i.dl to i32
  %i.dq = and i32 %i.dp, 1
  %lcmp.mod89.not.not = icmp eq i32 %i.dq, 0
  br i1 %lcmp.mod89.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.i28
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i1.i
  %i.dr = load i64, ptr %gep.i.prol, align 8, !tbaa !26
  %i.ds = lshr i64 %i.dr, 63
  %i.dt = or disjoint i64 %i.ds, %i.do
  store i64 %i.dt, ptr %i.dm, align 8, !tbaa !26
  %indvars.iv.next.i31.prol = add nsw i64 %i.dl, -2 ; 2 uses
  %i.du = and i64 %indvars.iv.next.i31.prol, 4294967295
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.du ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !26
  %i.dx = shl i64 %i.dw, 1                        ; 2 uses
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !26
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.i28
  %indvars.iv.i29.unr = phi i64 [ %indvars.iv.next.i1.i, %.lr.ph.i.i28 ], [ %indvars.iv.next.i31.prol, %.lr.ph.i.prol ]
  %.unr90 = phi ptr [ %i.dm, %.lr.ph.i.i28 ], [ %i.dv, %.lr.ph.i.prol ]
  %.unr91 = phi i64 [ %i.do, %.lr.ph.i.i28 ], [ %i.dx, %.lr.ph.i.prol ]
  %i.dy = icmp eq i64 %i.dl, 2
  br i1 %i.dy, label %_ZN4llvm5APInt11shlSlowCaseEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i31.1, %.lr.ph.i ], [ %indvars.iv.i29.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.dz = phi ptr [ %i.em, %.lr.ph.i ], [ %.unr90, %.lr.ph.i.prol.loopexit ]
  %i.ea = phi i64 [ %i.eo, %.lr.ph.i ], [ %.unr91, %.lr.ph.i.prol.loopexit ]
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i29
  %i.eb = load i64, ptr %gep.i, align 8, !tbaa !26
  %i.ec = lshr i64 %i.eb, 63
  %i.ed = or disjoint i64 %i.ec, %i.ea
  store i64 %i.ed, ptr %i.dz, align 8, !tbaa !26
  %indvars.iv.next.i31 = add nsw i64 %indvars.iv.i29, -1 ; 2 uses
  %i.ee = and i64 %indvars.iv.next.i31, 4294967295
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ee ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !26
  %i.eh = shl i64 %i.eg, 1                        ; 2 uses
  store i64 %i.eh, ptr %i.ef, align 8, !tbaa !26
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i31
  %i.ei = load i64, ptr %gep.i.1, align 8, !tbaa !26
  %i.ej = lshr i64 %i.ei, 63
  %i.ek = or disjoint i64 %i.ej, %i.eh
  store i64 %i.ek, ptr %i.ef, align 8, !tbaa !26
  %indvars.iv.next.i31.1 = add nsw i64 %indvars.iv.i29, -2 ; 2 uses
  %i.el = and i64 %indvars.iv.next.i31.1, 4294967295 ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.el ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !26
  %i.eo = shl i64 %i.en, 1                        ; 2 uses
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !26
  %.not33.1 = icmp eq i64 %i.el, 0
  br i1 %.not33.1, label %_ZN4llvm5APInt11shlSlowCaseEj.exit, label %.lr.ph.i

_ZN4llvm5APInt11shlSlowCaseEj.exit:               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %i.ep = sub i32 0, %i.cn
  %i.eq = and i32 %i.ep, 63
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = lshr i64 -1, %i.er
  %i.et = getelementptr [8 x i8], ptr %i.cs, i64 %i.dl
  %i.eu = getelementptr i8, ptr %i.et, i64 -8     ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !26
  %i.ew = and i64 %i.ev, %i.es
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !26
  br label %_ZN4llvm5APIntlSEj.exit

_ZN4llvm5APIntlSEj.exit:                          ; preds = %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i, %_ZN4llvm5APInt11shlSlowCaseEj.exit
  %i.ex = phi i64 [ %5, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i ], [ %i.da, %_ZN4llvm5APInt11shlSlowCaseEj.exit ]
  %i.ey = phi ptr [ %i.di, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i ], [ %i.cs, %_ZN4llvm5APInt11shlSlowCaseEj.exit ] ; 5 uses
  %i.ez = load i32, ptr %i.a, align 8, !tbaa !23
  %i.fa = icmp ult i32 %i.ez, 65
  %i.fb = load ptr, ptr %1, align 8
  %.in.i.i = select i1 %i.fa, ptr %1, ptr %i.fb
  %i.fc = load i64, ptr %.in.i.i, align 8, !tbaa !24
  %i.fd = and i64 %i.fc, 1
  %.not34 = icmp eq i64 %i.fd, 0
  br i1 %.not34, label %_ZNK4llvm5APInt3ultERKS0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm5APIntlSEj.exit
  br i1 %i.cr, label %.split, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.fe = load ptr, ptr %2, align 8, !tbaa !24    ; 3 uses
  %i.ff = zext i32 %i.cn to i64
  %i.fg = add nuw nsw i64 %i.ff, 63               ; 2 uses
  %i.fh = lshr i64 %i.fg, 6                       ; 5 uses
  %i.fi = icmp eq i64 %i.fh, 1
  br i1 %i.fi, label %.lr.ph.i.i23.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter96 = and i64 %i.fh, 134217726
  br label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph.i.i23, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i23 ] ; 4 uses
  %.02021.i.i = phi i1 [ true, %.lr.ph.preheader.i.i.new ], [ %.1.in.i.i.1, %.lr.ph.i.i23 ] ; 2 uses
  %niter97 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter97.next.1, %.lr.ph.i.i23 ]
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i.i ; 2 uses
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !26 ; 3 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !26
  %i.fn = add i64 %i.fm, %i.fk                    ; 3 uses
  %i.fo = icmp uge i64 %i.fn, %i.fk
  %i.fp = add i64 %i.fn, 1                        ; 2 uses
  %i.fq = icmp ugt i64 %i.fp, %i.fk
  %.sink.i.i = select i1 %.02021.i.i, i64 %i.fn, i64 %i.fp
  %.1.in.i.i = select i1 %.02021.i.i, i1 %i.fo, i1 %i.fq ; 2 uses
  store i64 %.sink.i.i, ptr %i.fj, align 8, !tbaa !26
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.next.i.i ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !26 ; 3 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.next.i.i
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fv = add i64 %i.fu, %i.fs                    ; 3 uses
  %i.fw = icmp uge i64 %i.fv, %i.fs
  %i.fx = add i64 %i.fv, 1                        ; 2 uses
  %i.fy = icmp ugt i64 %i.fx, %i.fs
  %.sink.i.i.1 = select i1 %.1.in.i.i, i64 %i.fv, i64 %i.fx
  %.1.in.i.i.1 = select i1 %.1.in.i.i, i1 %i.fw, i1 %i.fy ; 2 uses
  store i64 %.sink.i.i.1, ptr %i.fr, align 8, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter97.next.1 = add nuw nsw i64 %niter97, 2   ; 2 uses
  %niter97.ncmp.1 = icmp eq i64 %niter97.next.1, %unroll_iter96
  br i1 %niter97.ncmp.1, label %.unr-lcssa92, label %.lr.ph.i.i23, !llvm.loop !4

.split:                                           ; preds = %bb.k
  %i.fz = load i64, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.ga = add i64 %i.ex, %i.fz
  %i.gb = sub nsw i32 0, %i.cn
  %i.gc = and i32 %i.gb, 63
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = lshr i64 -1, %i.gd
  %i.gf = icmp eq i32 %i.cn, 0
  %spec.select.i = select i1 %i.gf, i64 0, i64 %i.ge, !prof !39
  %i.gg = and i64 %i.ga, %spec.select.i           ; 2 uses
  store i64 %i.gg, ptr %0, align 8, !tbaa !24
  %i.gh = icmp ult i64 %i.gg, %i.fz
  br i1 %i.gh, label %bb.o, label %_ZNK4llvm5APInt3ultERKS0_.exit.thread

.unr-lcssa92:                                     ; preds = %.lr.ph.i.i23
  %i.gi = and i64 %i.fg, 64
  %lcmp.mod94.not = icmp eq i64 %i.gi, 0
  br i1 %lcmp.mod94.not, label %bb.l, label %.lr.ph.i.i23.epil.preheader

.lr.ph.i.i23.epil.preheader:                      ; preds = %.unr-lcssa92, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.unr-lcssa92 ] ; 2 uses
  %.02021.i.i.epil.init = phi i1 [ true, %.lr.ph.preheader.i.i ], [ %.1.in.i.i.1, %.unr-lcssa92 ]
  %lcmp.mod95 = trunc i64 %i.fh to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !26
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv.i.i.epil.init
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !26
  %i.gn = add i64 %i.gm, %i.gk
  %not..02021.i.i.epil.init = xor i1 %.02021.i.i.epil.init, true
  %i.go = zext i1 %not..02021.i.i.epil.init to i64
  %.sink.i.i.epil = add i64 %i.gn, %i.go
  store i64 %.sink.i.i.epil, ptr %i.gj, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %.unr-lcssa92, %.lr.ph.i.i23.epil.preheader
  %i.gp = sub i32 0, %i.cn
  %i.gq = and i32 %i.gp, 63
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = lshr i64 -1, %i.gr
  %i.gt = getelementptr [8 x i8], ptr %i.ey, i64 %i.fh
  %i.gu = getelementptr i8, ptr %i.gt, i64 -8     ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !26
  %i.gw = and i64 %i.gv, %i.gs
  store i64 %i.gw, ptr %i.gu, align 8, !tbaa !26
  %i.gx = load ptr, ptr %2, align 8, !tbaa !24
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %.not.i.i.i = icmp eq i64 %i.gy, 0
  br i1 %.not.i.i.i, label %_ZNK4llvm5APInt3ultERKS0_.exit.thread, label %bb.n, !llvm.loop !8

bb.n:                                             ; preds = %bb.l, %bb.m
  %indvars.iv.i.i.i73 = phi i64 [ %i.fh, %bb.l ], [ %i.gy, %bb.m ]
  %i.gy = add nsw i64 %indvars.iv.i.i.i73, -1     ; 4 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.gy
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !26 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gy
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !26 ; 2 uses
  %.not13.i.i.i = icmp eq i64 %i.ha, %i.hc
  br i1 %.not13.i.i.i, label %bb.m, label %_ZNK4llvm5APInt3ultERKS0_.exit, !llvm.loop !8

_ZNK4llvm5APInt3ultERKS0_.exit:                   ; preds = %bb.n
  %.not35 = icmp ugt i64 %i.ha, %i.hc
  br i1 %.not35, label %_ZNK4llvm5APInt3ultERKS0_.exit.thread, label %bb.o

bb.o:                                             ; preds = %.split, %_ZNK4llvm5APInt3ultERKS0_.exit
  store i8 1, ptr %3, align 1, !tbaa !44
  br label %_ZNK4llvm5APInt3ultERKS0_.exit.thread

_ZNK4llvm5APInt3ultERKS0_.exit.thread:            ; preds = %bb.m, %.split, %_ZN4llvm5APIntlSEj.exit, %bb.o, %_ZNK4llvm5APInt3ultERKS0_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm5APInt7sshl_ovERKS0_Rb(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::APInt") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !23   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !23   ; 5 uses
  %i.f = icmp ult i32 %i.e, 65                    ; 2 uses
  %.pre.i.i = load ptr, ptr %2, align 8           ; 4 uses
  %i.g = ptrtoint ptr %.pre.i.i to i64
  br i1 %i.f, label %_ZNK4llvm5APInt3ugtEm.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = add nuw nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = shl i32 %i.k, 6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.c ], [ %i.j, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.019.i.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ 0, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.n = load i64, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.b
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.q = trunc nuw nsw i64 %i.p to i32
  %i.r = or disjoint i32 %.019.i.i.i.i.i, %i.q
  br label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.s = add i32 %.019.i.i.i.i.i, 64
  %i.t = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.t, label %bb.b, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, !llvm.loop !1

_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i:        ; preds = %bb.c, %.thread.i.i.i.i.i
  %.2.i.i.i.i.i = phi i32 [ %i.r, %.thread.i.i.i.i.i ], [ %i.l, %bb.c ]
  %i.u = and i32 %i.e, 63
  %.not.i.i.i.i.i = icmp eq i32 %i.u, 0
  %.neg.i.i.i.i.i = or i32 %i.e, -64
  %.neg15.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 0, i32 %.neg.i.i.i.i.i
  %i.v = add i32 %.neg15.i.i.i.i.i, %.2.i.i.i.i.i
  %i.w = sub i32 %i.e, %i.v
  %i.x = icmp ugt i32 %i.w, 64
  br i1 %i.x, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i

_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i: ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i
  %.0.i.i.pre.i = load i64, ptr %.pre.i.i, align 8, !tbaa !24
  br label %_ZNK4llvm5APInt3ugtEm.exit.i

_ZNK4llvm5APInt3ugtEm.exit.i:                     ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i, %bb.a
  %.0.i.i.i = phi i64 [ %.0.i.i.pre.i, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i._ZNK4llvm5APInt3ugtEm.exit_crit_edge.i ], [ %i.g, %bb.a ]
  %i.y = icmp ugt i64 %.0.i.i.i, %i.c
  br i1 %i.y, label %_ZNK4llvm5APInt15getLimitedValueEm.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvm5APInt3ugtEm.exit.i
  %spec.select.i.i = select i1 %i.f, ptr %2, ptr %.pre.i.i
  %.0.i.i = load i64, ptr %spec.select.i.i, align 8, !tbaa !24
  %i.z = trunc i64 %.0.i.i to i32
  br label %_ZNK4llvm5APInt15getLimitedValueEm.exit

_ZNK4llvm5APInt15getLimitedValueEm.exit:          ; preds = %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i, %_ZNK4llvm5APInt3ugtEm.exit.i, %bb.d
  %i.aa = phi i32 [ %i.z, %bb.d ], [ %i.b, %_ZNK4llvm5APInt3ugtEm.exit.i ], [ %i.b, %_ZNK4llvm5APInt13getActiveBitsEv.exit.i.i ]
end_hunk_0
