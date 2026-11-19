Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomdata?download=true
inline.NumInlined: 1593
inline.NumDeleted: 777
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN3gmx16nbnxn_atomdata_tC2ENS_13PinningPolicyERKNS_8MDLoggerENS_15NbnxmKernelTypeERKSt8optionalINS_17LJCombinationRuleEES7_NS_8ArrayRefIKfEEbii:bb.a
  br label %bb.bg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.kw = load i64, ptr %i.ke, align 8, !tbaa !99
  store ptr %i.kk, ptr %13, align 8, !tbaa !98
  %i.kx = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ky = load <2 x i64>, ptr %i.kx, align 8, !tbaa !99
  store <2 x i64> %i.ky, ptr %i.kf, align 8, !tbaa !99
  %.not.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ki, ptr %14, align 8, !tbaa !98
  store i64 %i.kw, ptr %i.kl, align 8, !tbaa !99
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.bg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.kl, ptr %14, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.bg, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.kz = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.ki, %bb.bf ], [ %i.kl, %bb.bg ]
  %i.la = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 0, ptr %i.la, align 8, !tbaa !102
  store i8 0, ptr %i.kz, align 1, !tbaa !99
  %i.lb = load ptr, ptr %14, align 8, !tbaa !98   ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.ld = icmp eq ptr %i.lb, %i.lc
  br i1 %i.ld, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.le = load i64, ptr %i.lc, align 8, !tbaa !99
  %i.lf = add i64 %i.le, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.lf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bi

bb.bh:                                            ; preds = %bb.ba
  %i.lg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %bb.bn

bb.bi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.ay
  %i.lh = phi ptr [ %i.kf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ka, %bb.ay ]
  %i.li = phi ptr [ %i.ke, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.jz, %bb.ay ] ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !291 ; 3 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.lm = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lm, i8 0, i64 24, i1 false)
  store ptr %i.lm, ptr %15, align 8, !tbaa !100
  %i.ln = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ln, align 8, !tbaa !102
  %i.lo = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 1, ptr %i.lo, align 8, !tbaa !294
  %i.lp = load i64, ptr %i.lh, align 8, !tbaa !102 ; 2 uses
  %i.lq = icmp ugt i64 %i.lp, 4611686018427387903
  br i1 %i.lq, label %bb.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #33
          to label %.noexc.i unwind label %bb.bl

.noexc.i:                                         ; preds = %bb.bk
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i: ; preds = %bb.bj
  %i.lr = load ptr, ptr %13, align 8, !tbaa !98
  %i.ls = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %i.lr, i64 noundef %i.lp)
          to label %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i unwind label %bb.bl ; 0 uses

_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i
  %i.lt = load ptr, ptr %i.lk, align 8, !tbaa !81
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 16
  %i.lv = load ptr, ptr %i.lu, align 8
  invoke void %i.lv(ptr noundef nonnull align 8 dereferenceable(8) %i.lk, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i unwind label %bb.bl, !inline_history !267

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i: ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.lw = load ptr, ptr %15, align 8, !tbaa !98   ; 2 uses
  %i.lx = icmp eq ptr %i.lw, %i.lm
  br i1 %i.lx, label %_ZN3gmx14LogEntryWriterD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i
  %i.ly = load i64, ptr %i.lm, align 8, !tbaa !99
  %i.lz = add i64 %i.ly, 1
  call void @_ZdlPvm(ptr noundef %i.lw, i64 noundef %i.lz) #36
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit.i

_ZN3gmx14LogEntryWriterD2Ev.exit.i:               ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN3gmx14LogEntryWriter10appendTextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i, %bb.bk
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %i.mb = load ptr, ptr %15, align 8, !tbaa !98   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lm
  br i1 %i.mc, label %_ZN3gmx14LogEntryWriterD2Ev.exit225.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223.i: ; preds = %bb.bl
  %i.md = load i64, ptr %i.lm, align 8, !tbaa !99
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #36
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit225.i

_ZN3gmx14LogEntryWriterD2Ev.exit225.i:            ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bn

bb.bm:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit.i, %bb.bi
  %i.mf = load ptr, ptr %13, align 8, !tbaa !98   ; 2 uses
  %i.mg = icmp eq ptr %i.mf, %i.li
  br i1 %i.mg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i: ; preds = %bb.bm
  %i.mh = load i64, ptr %i.li, align 8, !tbaa !99
  %i.mi = add i64 %i.mh, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mi) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.bo

bb.bn:                                            ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit225.i, %bb.bh, %bb.az
  %i.mj = phi ptr [ %i.ke, %bb.bh ], [ %i.jz, %bb.az ], [ %i.li, %_ZN3gmx14LogEntryWriterD2Ev.exit225.i ] ; 2 uses
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.lg, %bb.bh ], [ %i.kc, %bb.az ], [ %i.ma, %_ZN3gmx14LogEntryWriterD2Ev.exit225.i ]
  %i.mk = load ptr, ptr %13, align 8, !tbaa !98   ; 2 uses
  %i.ml = icmp eq ptr %i.mk, %i.mj
  br i1 %i.ml, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i: ; preds = %bb.bn
  %i.mm = load i64, ptr %i.mj, align 8, !tbaa !99
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mk, i64 noundef %i.mn) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231.i: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %.body52

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228.i, %.critedge.i
  %i.mo = and i32 %3, -2
  %i.mp = icmp eq i32 %i.mo, 2
  %i.mq = load i32, ptr %0, align 8, !tbaa !109   ; 12 uses
  br i1 %i.mp, label %bb.bp, label %..loopexit90_crit_edge.i.i

..loopexit90_crit_edge.i.i:                       ; preds = %bb.bo
  %.pre.i232.i = shl i32 %i.mq, 1
  br label %.loopexit90.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ms = shl i32 %i.mq, 1                        ; 3 uses
  %i.mt = mul i32 %i.ms, %i.mq
  %i.mu = zext nneg i32 %i.mt to i64              ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !105 ; 2 uses
  %i.mx = load ptr, ptr %i.mr, align 8, !tbaa !91 ; 2 uses
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = ashr exact i64 %i.na, 2                 ; 3 uses
  %i.nc = icmp ult i64 %i.nb, %i.mu
  br i1 %i.nc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nd = sub nuw nsw i64 %i.mu, %i.nb
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.mr, i64 noundef %i.nd)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bp
  %i.ne = icmp ugt i64 %i.nb, %i.mu
  br i1 %i.ne, label %bb.bs, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i

bb.bs:                                            ; preds = %bb.br
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %i.mu ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mw, %i.nf
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store ptr %i.nf, ptr %i.mv, align 8, !tbaa !105
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i: ; preds = %bb.bq, %bb.bt, %bb.bs, %bb.br
  %i.ng = icmp sgt i32 %i.mq, 0
  br i1 %i.ng, label %.preheader89.lr.ph.i.i, label %.loopexit90.i.i

.preheader89.lr.ph.i.i:                           ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i
  %i.nh = load ptr, ptr %i.bm, align 8, !tbaa !76 ; 15 uses
  %i.ni = load ptr, ptr %i.mr, align 8, !tbaa !91 ; 15 uses
  %i.nj = zext nneg i32 %i.mq to i64              ; 12 uses
  %23 = mul nuw nsw i64 %i.nj, %i.nj
  %i.nk = shl i64 %23, 3                          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.nh, i64 %i.nk
  %scevgep189 = getelementptr i8, ptr %i.ni, i64 %i.nk
  %min.iters.check190 = icmp ult i32 %i.mq, 4
  %bound0 = icmp ult ptr %i.ni, %scevgep
  %bound1 = icmp ult ptr %i.nh, %scevgep189
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check192 = icmp ult i32 %i.mq, 16
  %i.nl = and i64 %i.nj, 12
  %n.vec194 = and i64 %i.nj, 2147483632           ; 4 uses
  %cmp.n204 = icmp eq i64 %n.vec194, %i.nj
  %min.epilog.iters.check208 = icmp eq i64 %i.nl, 0
  %n.vec211 = and i64 %i.nj, 2147483644           ; 3 uses
  %cmp.n220 = icmp eq i64 %n.vec211, %i.nj
  %xtraiter = and i64 %i.nj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check205

iter.check205:                                    ; preds = %._crit_edge.i.i, %.preheader89.lr.ph.i.i
  %indvars.iv98.i.i = phi i64 [ 0, %.preheader89.lr.ph.i.i ], [ %indvars.iv.next99.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.nm = mul nuw nsw i64 %indvars.iv98.i.i, %i.nj ; 8 uses
  %brmerge = select i1 %min.iters.check190, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph207.preheader, label %vector.main.loop.iter.check191

vector.main.loop.iter.check191:                   ; preds = %iter.check205
  br i1 %min.iters.check192, label %vec.epilog.ph209, label %vector.body195

vector.body195:                                   ; preds = %vector.main.loop.iter.check191, %vector.body195
  %index196 = phi i64 [ %index.next202, %vector.body195 ], [ 0, %vector.main.loop.iter.check191 ] ; 3 uses
  %i.nn = or disjoint i64 %index196, 8
  %i.no = add nuw nsw i64 %index196, %i.nm
  %i.np = add nuw nsw i64 %i.nn, %i.nm
  %i.nq = shl nuw nsw i64 %i.no, 1                ; 2 uses
  %i.nr = shl nuw nsw i64 %i.np, 1                ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nq
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.nr
  %wide.vec = load <16 x float>, ptr %i.ns, align 4, !tbaa !79, !alias.scope !295
  %wide.vec198 = load <16 x float>, ptr %i.nt, align 4, !tbaa !79, !alias.scope !295
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nq
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.nr
  store <16 x float> %wide.vec, ptr %i.nu, align 4, !tbaa !79, !alias.scope !296, !noalias !295
  store <16 x float> %wide.vec198, ptr %i.nv, align 4, !tbaa !79, !alias.scope !296, !noalias !295
  %index.next202 = add nuw i64 %index196, 16      ; 2 uses
  %i.nw = icmp eq i64 %index.next202, %n.vec194
  br i1 %i.nw, label %middle.block203, label %vector.body195, !llvm.loop !271

middle.block203:                                  ; preds = %vector.body195
  br i1 %cmp.n204, label %._crit_edge.i.i, label %vec.epilog.iter.check206

vec.epilog.iter.check206:                         ; preds = %middle.block203
  br i1 %min.epilog.iters.check208, label %vec.epilog.scalar.ph207.preheader, label %vec.epilog.ph209, !prof !297

vec.epilog.ph209:                                 ; preds = %vector.main.loop.iter.check191, %vec.epilog.iter.check206
  %vec.epilog.resume.val210 = phi i64 [ %n.vec194, %vec.epilog.iter.check206 ], [ 0, %vector.main.loop.iter.check191 ]
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph209
  %index213 = phi i64 [ %vec.epilog.resume.val210, %vec.epilog.ph209 ], [ %index.next218, %vec.epilog.vector.body212 ] ; 2 uses
  %i.nx = add nuw nsw i64 %index213, %i.nm
  %i.ny = shl nuw nsw i64 %i.nx, 1                ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ny
  %wide.vec214 = load <8 x float>, ptr %i.nz, align 4, !tbaa !79, !alias.scope !295
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ny
  store <8 x float> %wide.vec214, ptr %i.oa, align 4, !tbaa !79, !alias.scope !296, !noalias !295
  %index.next218 = add nuw i64 %index213, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next218, %n.vec211
  br i1 %i.ob, label %vec.epilog.middle.block219, label %vec.epilog.vector.body212, !llvm.loop !272

vec.epilog.middle.block219:                       ; preds = %vec.epilog.vector.body212
  br i1 %cmp.n220, label %._crit_edge.i.i, label %vec.epilog.scalar.ph207.preheader

vec.epilog.scalar.ph207.preheader:                ; preds = %iter.check205, %vec.epilog.iter.check206, %vec.epilog.middle.block219
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check205 ], [ %n.vec211, %vec.epilog.middle.block219 ], [ %n.vec194, %vec.epilog.iter.check206 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol

vec.epilog.scalar.ph207.prol:                     ; preds = %vec.epilog.scalar.ph207.preheader, %vec.epilog.scalar.ph207.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph207.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph207.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph207.prol ], [ 0, %vec.epilog.scalar.ph207.preheader ]
  %i.oc = add nuw nsw i64 %indvars.iv.i.i.prol, %i.nm
  %i.od = shl nuw nsw i64 %i.oc, 1                ; 3 uses
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.od
  %i.of = load float, ptr %i.oe, align 4, !tbaa !79
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.od
  store float %i.of, ptr %i.og, align 4, !tbaa !79
  %i.oh = or disjoint i64 %i.od, 1                ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.oh
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !79
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.oh
  store float %i.oj, ptr %i.ok, align 4, !tbaa !79
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol, !llvm.loop !273

vec.epilog.scalar.ph207.prol.loopexit:            ; preds = %vec.epilog.scalar.ph207.prol, %vec.epilog.scalar.ph207.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph207.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph207.prol ]
  %i.ol = sub nsw i64 %indvars.iv.i.i.ph, %i.nj
  %i.om = icmp ugt i64 %i.ol, -4
  br i1 %i.om, label %._crit_edge.i.i, label %vec.epilog.scalar.ph207.preheader.new

vec.epilog.scalar.ph207.preheader.new:            ; preds = %vec.epilog.scalar.ph207.prol.loopexit
  %invariant.op = add nuw nsw i64 1, %i.nm
  %invariant.op233 = add nuw nsw i64 2, %i.nm
  %invariant.op235 = add nuw nsw i64 3, %i.nm
  br label %vec.epilog.scalar.ph207

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207, %vec.epilog.middle.block219, %middle.block203
  %indvars.iv.next99.i.i = add nuw nsw i64 %indvars.iv98.i.i, 1 ; 2 uses
  %exitcond102.not.i.i = icmp eq i64 %indvars.iv.next99.i.i, %i.nj
  br i1 %exitcond102.not.i.i, label %.loopexit90.i.i, label %iter.check205, !llvm.loop !274

vec.epilog.scalar.ph207:                          ; preds = %vec.epilog.scalar.ph207, %vec.epilog.scalar.ph207.preheader.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph207.preheader.new ], [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph207 ] ; 5 uses
  %i.on = add nuw nsw i64 %indvars.iv.i.i, %i.nm
  %i.oo = shl nuw nsw i64 %i.on, 1                ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.oo
  %i.oq = load float, ptr %i.op, align 4, !tbaa !79
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.oo
  store float %i.oq, ptr %i.or, align 4, !tbaa !79
  %i.os = or disjoint i64 %i.oo, 1                ; 2 uses
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.os
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !79
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.os
  store float %i.ou, ptr %i.ov, align 4, !tbaa !79
  %.reass = add nuw nsw i64 %indvars.iv.i.i, %invariant.op
  %i.ow = shl nuw nsw i64 %.reass, 1              ; 3 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.ow
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !79
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ow
  store float %i.oy, ptr %i.oz, align 4, !tbaa !79
  %i.pa = or disjoint i64 %i.ow, 1                ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pa
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !79
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pa
  store float %i.pc, ptr %i.pd, align 4, !tbaa !79
  %.reass234 = add nuw nsw i64 %indvars.iv.i.i, %invariant.op233
  %i.pe = shl nuw nsw i64 %.reass234, 1           ; 3 uses
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pe
  %i.pg = load float, ptr %i.pf, align 4, !tbaa !79
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pe
  store float %i.pg, ptr %i.ph, align 4, !tbaa !79
  %i.pi = or disjoint i64 %i.pe, 1                ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pi
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !79
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pi
  store float %i.pk, ptr %i.pl, align 4, !tbaa !79
  %.reass236 = add nuw nsw i64 %indvars.iv.i.i, %invariant.op235
  %i.pm = shl nuw nsw i64 %.reass236, 1           ; 3 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pm
  %i.po = load float, ptr %i.pn, align 4, !tbaa !79
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pm
  store float %i.po, ptr %i.pp, align 4, !tbaa !79
  %i.pq = or disjoint i64 %i.pm, 1                ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.nh, i64 %i.pq
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !79
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.pq
  store float %i.ps, ptr %i.pt, align 4, !tbaa !79
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %i.nj
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %vec.epilog.scalar.ph207, !llvm.loop !275

.loopexit90.i.i:                                  ; preds = %._crit_edge.i.i, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i, %..loopexit90_crit_edge.i.i
  %.pre-phi.i.i = phi i32 [ %.pre.i232.i, %..loopexit90_crit_edge.i.i ], [ %i.ms, %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i.i ], [ %i.ms, %._crit_edge.i.i ] ; 3 uses
  %i.pu = sext i32 %.pre-phi.i.i to i64           ; 4 uses
  %i.pv = load ptr, ptr %i.cc, align 8, !tbaa !75 ; 2 uses
  %i.pw = load ptr, ptr %i.cb, align 8, !tbaa !76 ; 2 uses
  %i.px = ptrtoint ptr %i.pv to i64
  %i.py = ptrtoint ptr %i.pw to i64
  %i.pz = sub i64 %i.px, %i.py
  %i.qa = ashr exact i64 %i.pz, 2                 ; 3 uses
  %i.qb = icmp ult i64 %i.qa, %i.pu
  br i1 %i.qb, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.loopexit90.i.i
  %i.qc = sub nuw nsw i64 %i.pu, %i.qa
  invoke void @_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 noundef %i.qc)
          to label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %.loopexit90.i.i
  %i.qd = icmp ugt i64 %i.qa, %i.pu
  br i1 %i.qd, label %bb.bw, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.pw, i64 %i.pu ; 2 uses
  %.not.i.i86.i.i = icmp eq ptr %i.pv, %i.qe
  br i1 %.not.i.i86.i.i, label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store ptr %i.qe, ptr %i.cc, align 8, !tbaa !75
  br label %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i

_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i: ; preds = %bb.bu, %bb.bx, %bb.bw, %bb.bv
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !123
  switch i32 %i.qg, label %bb.cd [
    i32 0, label %.preheader.i.i
    i32 1, label %.preheader87.i.i
    i32 2, label %_ZN3gmxL21set_lj_parameter_dataEPNS_16nbnxn_atomdata_t6ParamsEb.exit.i
  ]

.preheader87.i.i:                                 ; preds = %_ZNSt6vectorIfN3gmx9AllocatorIfNS0_20HostAllocationPolicyEEEE6resizeEm.exit.i.i
end_hunk_0
