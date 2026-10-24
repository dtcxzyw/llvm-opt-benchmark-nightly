Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/APFloat?download=true
inline.NumInlined: 1816
inline.NumDeleted: 298
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK4llvh6detail9IEEEFloat8toStringERNS_15SmallVectorImplIcEEjjb:bb.a
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit194: ; preds = %_ZNK4llvh5APIntneEm.exit.thread, %bb.bp
  %i.la = phi i32 [ %.pre.i193, %bb.bp ], [ %i.kx, %_ZNK4llvh5APIntneEm.exit.thread ]
  %i.lb = load ptr, ptr %13, align 8, !tbaa !58
  %i.lc = zext i32 %i.la to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.lc
  store i8 %i.kw, ptr %i.ld, align 1
  %i.le = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.lf = add i32 %i.le, 1
  store i32 %i.lf, ptr %i.jf, align 8, !tbaa !57
  br label %bb.bn, !llvm.loop !157

.loopexit451:                                     ; preds = %_ZNK4llvh5APIntneEm.exit.peel, %_ZNK4llvh5APIntneEm.exit
  %i.lg = load i32, ptr %i.jf, align 8, !tbaa !57 ; 7 uses
  %.not.i195 = icmp ult i32 %.0112, %i.lg
  br i1 %.not.i195, label %bb.bq, label %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit

bb.bq:                                            ; preds = %.loopexit451
  %i.lh = sub nuw i32 %i.lg, %.0112               ; 3 uses
  %i.li = add i32 %i.lh, -1
  %i.lj = zext i32 %i.li to i64
  %i.lk = load ptr, ptr %13, align 8, !tbaa !58   ; 8 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lj
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !35
  %i.ln = icmp slt i8 %i.lm, 53
  br i1 %i.ln, label %.lr.ph53.preheader.i, label %.lr.ph.i

.lr.ph53.preheader.i:                             ; preds = %bb.bq
  %i.lo = zext i32 %i.lh to i64                   ; 2 uses
  %i.lp = zext i32 %i.lg to i64                   ; 3 uses
  %i.lq = add nuw nsw i64 %i.lo, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.lq, i64 %i.lp)
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.br, %.lr.ph53.preheader.i
  %indvars.iv.i = phi i64 [ %i.lo, %.lr.ph53.preheader.i ], [ %indvars.iv.next.i, %bb.br ] ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lk, i64 %indvars.iv.i
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !35
  %i.lt = icmp eq i8 %i.ls, 48
  br i1 %i.lt, label %bb.br, label %.critedge.i

bb.br:                                            ; preds = %.lr.ph53.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.lu = icmp samesign ult i64 %indvars.iv.next.i, %i.lp
  br i1 %i.lu, label %.lr.ph53.i, label %.critedge.i, !llvm.loop !158

.critedge.i:                                      ; preds = %bb.br, %.lr.ph53.i
  %.038.lcssa.ph.in.i = phi i64 [ %indvars.iv.i, %.lr.ph53.i ], [ %umax, %bb.br ] ; 3 uses
  %.038.lcssa.ph.i = trunc nuw i64 %.038.lcssa.ph.in.i to i32
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lk, i64 %.038.lcssa.ph.in.i ; 2 uses
  %gepdiff43.i = sub nsw i64 %i.lp, %.038.lcssa.ph.in.i ; 4 uses
  %i.lw = icmp sgt i64 %gepdiff43.i, 1
  br i1 %i.lw, label %bb.bs, label %bb.bt, !prof !59

bb.bs:                                            ; preds = %.critedge.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lk, ptr nonnull align 1 %i.lv, i64 %gepdiff43.i, i1 false)
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i

bb.bt:                                            ; preds = %.critedge.i
  %i.lx = icmp eq i64 %gepdiff43.i, 1
  br i1 %i.lx, label %bb.bu, label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i

bb.bu:                                            ; preds = %bb.bt
  %i.ly = load i8, ptr %i.lv, align 1, !tbaa !35
  store i8 %i.ly, ptr %i.lk, align 1, !tbaa !35
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i

_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i: ; preds = %bb.bu, %bb.bt, %bb.bs
  %i.lz = getelementptr inbounds i8, ptr %i.lk, i64 %gepdiff43.i
  %i.ma = load ptr, ptr %13, align 8, !tbaa !58
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = ptrtoint ptr %i.ma to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = trunc i64 %i.md to i32
  br label %.sink.split.i

.lr.ph.i:                                         ; preds = %bb.bq, %bb.bv
  %.051.i = phi i32 [ %i.mj, %bb.bv ], [ %i.lh, %bb.bq ] ; 4 uses
  %i.mf = zext i32 %.051.i to i64                 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.mf
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !35  ; 2 uses
  %i.mi = icmp eq i8 %i.mh, 57
  br i1 %i.mi, label %bb.bv, label %.loopexit.i

bb.bv:                                            ; preds = %.lr.ph.i
  %i.mj = add i32 %.051.i, 1                      ; 2 uses
  %.not41.i = icmp eq i32 %i.mj, %i.lg
  br i1 %.not41.i, label %.loopexit.thread.i, label %.lr.ph.i, !llvm.loop !159

.loopexit.i:                                      ; preds = %.lr.ph.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.mf
  %i.ml = add i8 %i.mh, 1
  store i8 %i.ml, ptr %i.mk, align 1, !tbaa !35
  %i.mm = icmp eq i32 %.051.i, %i.lg
  br i1 %i.mm, label %.loopexit.thread.i, label %bb.bx

.loopexit.thread.i:                               ; preds = %bb.bv, %.loopexit.i
  store i32 0, ptr %i.jf, align 8, !tbaa !57
  %i.mn = load i32, ptr %i.jg, align 4, !tbaa !56
  %.not.i.not.i = icmp eq i32 %i.mn, 0
  br i1 %.not.i.not.i, label %bb.bw, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i, !prof !168

bb.bw:                                            ; preds = %.loopexit.thread.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %i.je, i64 noundef 0, i64 noundef 1) #25
  %.pre.i.i196 = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.mo = zext i32 %.pre.i.i196 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i: ; preds = %bb.bw, %.loopexit.thread.i
  %i.mp = phi i64 [ %i.mo, %bb.bw ], [ 0, %.loopexit.thread.i ]
  %i.mq = load ptr, ptr %13, align 8, !tbaa !58
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.mp
  store i8 49, ptr %i.mr, align 1
  %i.ms = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.mt = add i32 %i.ms, 1
  br label %.sink.split.i

bb.bx:                                            ; preds = %.loopexit.i
  %i.mu = load ptr, ptr %13, align 8, !tbaa !58   ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mf ; 2 uses
  %i.mw = load i32, ptr %i.jf, align 8, !tbaa !57
  %i.mx = zext i32 %i.mw to i64
  %gepdiff.i = sub nsw i64 %i.mx, %i.mf           ; 4 uses
  %i.my = icmp sgt i64 %gepdiff.i, 1
  br i1 %i.my, label %bb.by, label %bb.bz, !prof !59

bb.by:                                            ; preds = %bb.bx
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mu, ptr nonnull align 1 %i.mv, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i

bb.bz:                                            ; preds = %bb.bx
  %i.mz = icmp eq i64 %gepdiff.i, 1
  br i1 %i.mz, label %bb.ca, label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i

bb.ca:                                            ; preds = %bb.bz
  %i.na = load i8, ptr %i.mv, align 1, !tbaa !35
  store i8 %i.na, ptr %i.mu, align 1, !tbaa !35
  br label %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i

_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i: ; preds = %bb.ca, %bb.bz, %bb.by
  %i.nb = getelementptr inbounds i8, ptr %i.mu, i64 %gepdiff.i
  %i.nc = load ptr, ptr %13, align 8, !tbaa !58
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = ptrtoint ptr %i.nc to i64
  %i.nf = sub i64 %i.nd, %i.ne
  %i.ng = trunc i64 %i.nf to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i
  %.038.lcssa.ph.i.pn = phi i32 [ %.038.lcssa.ph.i, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i ], [ %i.lg, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i ], [ %.051.i, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i ]
  %.sink.i = phi i32 [ %i.me, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit.i ], [ %i.mt, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit.i ], [ %i.ng, %_ZN4llvh15SmallVectorImplIcE5eraseEPKcS3_.exit42.i ] ; 2 uses
  %.6 = add i32 %.038.lcssa.ph.i.pn, %.1286.ph
  store i32 %.sink.i, ptr %i.jf, align 8, !tbaa !57
  br label %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit

_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit: ; preds = %.loopexit451, %.sink.split.i
  %i.nh = phi i32 [ %.sink.i, %.sink.split.i ], [ %i.lg, %.loopexit451 ] ; 13 uses
  %.7 = phi i32 [ %.6, %.sink.split.i ], [ %.1286.ph, %.loopexit451 ] ; 7 uses
  %.not131 = icmp eq i32 %3, 0
  br i1 %.not131, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit
  %i.ni = icmp sgt i32 %.7, -1
  br i1 %i.ni, label %.split, label %bb.cc

.split:                                           ; preds = %bb.cb
  %i.nj = icmp ugt i32 %.7, %3
  %i.nk = add i32 %i.nh, %.7
  %i.nl = icmp ugt i32 %i.nk, %.0112
  %i.nm = select i1 %i.nj, i1 true, i1 %i.nl
  br i1 %i.nm, label %.critedge, label %.preheader301

.preheader301:                                    ; preds = %.split
  %.not135319 = icmp eq i32 %i.nh, 0
  br i1 %.not135319, label %.preheader299, label %.lr.ph321

.lr.ph321:                                        ; preds = %.preheader301
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.nq = zext i32 %i.nh to i64
  %.pre351.a = load i32, ptr %i.nn, align 8, !tbaa !57
  br label %bb.cz

bb.cc:                                            ; preds = %bb.cb
  %i.nr = add i32 %i.nh, %.7                      ; 6 uses
  %i.ns = add i32 %i.nr, -1
  %i.nt = icmp slt i32 %i.ns, 0
  %i.nu = sub i32 1, %i.nr                        ; 2 uses
  %i.nv = icmp ult i32 %3, %i.nu
  %.0107 = and i1 %i.nt, %i.nv
  br i1 %.0107, label %.critedge, label %bb.dd

.critedge:                                        ; preds = %.split, %_ZN4llvh6detail12_GLOBAL__N_117AdjustToPrecisionERNS_15SmallVectorImplIcEERij.exit, %bb.cc
  %i.nw = add i32 %i.nh, -1                       ; 4 uses
  %i.nx = add i32 %i.nw, %.7                      ; 2 uses
  %i.ny = zext i32 %i.nw to i64
  %i.nz = load ptr, ptr %13, align 8, !tbaa !58
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.ny
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 26 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !57 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !56
  %.not.i197 = icmp ult i32 %i.oc, %i.oe
  br i1 %.not.i197, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199, label %bb.cd, !prof !59

bb.cd:                                            ; preds = %.critedge
  %i.of = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.of, i64 noundef 0, i64 noundef 1) #25
  %.pre.i198 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199: ; preds = %.critedge, %bb.cd
  %i.og = phi i32 [ %.pre.i198, %bb.cd ], [ %i.oc, %.critedge ]
  %i.oh = load ptr, ptr %1, align 8, !tbaa !58
  %i.oi = zext i32 %i.og to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.oi
  %i.ok = load i8, ptr %i.oa, align 1
  store i8 %i.ok, ptr %i.oj, align 1
  %i.ol = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.om = add i32 %i.ol, 1                        ; 3 uses
  store i32 %i.om, ptr %i.ob, align 8, !tbaa !57
  %i.on = load i32, ptr %i.od, align 4, !tbaa !56
  %.not.i200 = icmp ult i32 %i.om, %i.on
  br i1 %.not.i200, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202, label %bb.ce, !prof !59

bb.ce:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.oo, i64 noundef 0, i64 noundef 1) #25
  %.pre.i201 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199, %bb.ce
  %i.op = phi i32 [ %.pre.i201, %bb.ce ], [ %i.om, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit199 ]
  %i.oq = load ptr, ptr %1, align 8, !tbaa !58
  %i.or = zext i32 %i.op to i64
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 %i.or
  store i8 46, ptr %i.os, align 1
  %i.ot = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.ou = add i32 %i.ot, 1                        ; 5 uses
  store i32 %i.ou, ptr %i.ob, align 8, !tbaa !57
  %i.ov = icmp eq i32 %i.nh, 1                    ; 2 uses
  %or.cond3 = and i1 %4, %i.ov
  br i1 %or.cond3, label %bb.cf, label %.preheader

.preheader:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202
  br i1 %i.ov, label %.loopexit.a, label %.lr.ph327

.lr.ph327:                                        ; preds = %.preheader
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.ch

bb.cf:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit202
  %i.ox = load i32, ptr %i.od, align 4, !tbaa !56
  %.not.i203 = icmp ult i32 %i.ou, %i.ox
  br i1 %.not.i203, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205, label %bb.cg, !prof !59

bb.cg:                                            ; preds = %bb.cf
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.oy, i64 noundef 0, i64 noundef 1) #25
  %.pre.i204 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205: ; preds = %bb.cf, %bb.cg
  %i.oz = phi i32 [ %.pre.i204, %bb.cg ], [ %i.ou, %bb.cf ]
  %i.pa = load ptr, ptr %1, align 8, !tbaa !58
  %i.pb = zext i32 %i.oz to i64
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 %i.pb
  store i8 48, ptr %i.pc, align 1
  %i.pd = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.pe = add i32 %i.pd, 1                        ; 2 uses
  store i32 %i.pe, ptr %i.ob, align 8, !tbaa !57
  br label %.loopexit.a

bb.ch:                                            ; preds = %.lr.ph327, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208
  %i.pf = phi i32 [ %i.ou, %.lr.ph327 ], [ %i.ps, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208 ] ; 2 uses
  %indvars.iv342 = phi i64 [ 1, %.lr.ph327 ], [ %indvars.iv.next343, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208 ] ; 2 uses
  %i.pg = trunc nuw i64 %indvars.iv342 to i32
  %i.ph = sub i32 %i.nw, %i.pg
  %i.pi = zext i32 %i.ph to i64
  %i.pj = load ptr, ptr %13, align 8, !tbaa !58
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.pi
  %i.pl = load i32, ptr %i.od, align 4, !tbaa !56
  %.not.i206 = icmp ult i32 %i.pf, %i.pl
  br i1 %.not.i206, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208, label %bb.ci, !prof !59

bb.ci:                                            ; preds = %bb.ch
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ow, i64 noundef 0, i64 noundef 1) #25
  %.pre.i207 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208: ; preds = %bb.ch, %bb.ci
  %i.pm = phi i32 [ %.pre.i207, %bb.ci ], [ %i.pf, %bb.ch ]
  %i.pn = load ptr, ptr %1, align 8, !tbaa !58
  %i.po = zext i32 %i.pm to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.po
  %i.pq = load i8, ptr %i.pk, align 1
  store i8 %i.pq, ptr %i.pp, align 1
  %i.pr = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.ps = add i32 %i.pr, 1                        ; 3 uses
  store i32 %i.ps, ptr %i.ob, align 8, !tbaa !57
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next343 to i32
  %exitcond = icmp eq i32 %i.nh, %lftr.wideiv
  br i1 %exitcond, label %.loopexit.a, label %bb.ch, !llvm.loop !160

.loopexit.a:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208, %.preheader, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205
  %17 = phi i32 [ %i.pe, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit205 ], [ %i.ou, %.preheader ], [ %i.ps, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit208 ] ; 4 uses
  br i1 %4, label %bb.cn, label %bb.cj

bb.cj:                                            ; preds = %.loopexit.a
  %i.pt = icmp ugt i32 %.0112, %i.nw
  br i1 %i.pt, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.pu = sub i32 %.0112, %i.nh
  %i.pv = add i32 %i.pu, 1                        ; 3 uses
  %i.pw = zext i32 %i.pv to i64                   ; 3 uses
  %i.px = load i32, ptr %i.od, align 4, !tbaa !56
  %i.py = zext i32 %i.px to i64
  %i.pz = zext i32 %17 to i64                     ; 3 uses
  %i.qa = sub nsw i64 %i.py, %i.pz
  %i.qb = icmp ult i64 %i.qa, %i.pw
  br i1 %i.qb, label %.thread.i210, label %bb.cl

.thread.i210:                                     ; preds = %bb.ck
  %i.qc = add nuw nsw i64 %i.pz, %i.pw
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.qd, i64 noundef %i.qc, i64 noundef 1) #25
  %i.qe = load ptr, ptr %1, align 8, !tbaa !58
  %i.qf = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.qg = zext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qg
  br label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.qi = load ptr, ptr %1, align 8, !tbaa !58
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.pz
  %i.qk = icmp eq i32 %i.pv, 0
  br i1 %i.qk, label %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211.a, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %.thread.i210
  %i.ql = phi ptr [ %i.qh, %.thread.i210 ], [ %i.qj, %bb.cl ]
  call void @llvm.memset.p0.i64(ptr align 1 %i.ql, i8 48, i64 %i.pw, i1 false)
  %.pre.i209 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211.a

_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211.a: ; preds = %bb.cl, %bb.cm
  %i.qm = phi i32 [ %17, %bb.cl ], [ %.pre.i209, %bb.cm ]
  %18 = add i32 %i.qm, %i.pv                      ; 2 uses
  store i32 %18, ptr %i.ob, align 8, !tbaa !57
  br label %bb.cn

bb.cn:                                            ; preds = %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211.a, %bb.cj, %.loopexit.a
  %i.qn = phi i32 [ %18, %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211.a ], [ %17, %bb.cj ], [ %17, %.loopexit.a ] ; 2 uses
  %i.qo = phi i8 [ 101, %_ZN4llvh15SmallVectorImplIcE6appendEmRKc.exit211.a ], [ 101, %bb.cj ], [ 69, %.loopexit.a ]
  %i.qp = load i32, ptr %i.od, align 4, !tbaa !56
  %.not.i212 = icmp ult i32 %i.qn, %i.qp
  br i1 %.not.i212, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214, label %bb.co, !prof !59

bb.co:                                            ; preds = %bb.cn
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.qq, i64 noundef 0, i64 noundef 1) #25
  %.pre.i213 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214: ; preds = %bb.cn, %bb.co
  %i.qr = phi i32 [ %.pre.i213, %bb.co ], [ %i.qn, %bb.cn ]
  %i.qs = load ptr, ptr %1, align 8, !tbaa !58
  %i.qt = zext i32 %i.qr to i64
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 %i.qt
  store i8 %i.qo, ptr %i.qu, align 1
  %i.qv = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.qw = add i32 %i.qv, 1                        ; 3 uses
  store i32 %i.qw, ptr %i.ob, align 8, !tbaa !57
  %i.qx = icmp sgt i32 %i.nx, -1
  %i.qy = select i1 %i.qx, i8 43, i8 45
  %i.qz = load i32, ptr %i.od, align 4, !tbaa !56
  %.not.i215 = icmp ult i32 %i.qw, %i.qz
  br i1 %.not.i215, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217, label %bb.cp, !prof !59

bb.cp:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ra, i64 noundef 0, i64 noundef 1) #25
  %.pre.i216 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214, %bb.cp
  %i.rb = phi i32 [ %.pre.i216, %bb.cp ], [ %i.qw, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit214 ]
  %i.rc = load ptr, ptr %1, align 8, !tbaa !58
  %i.rd = zext i32 %i.rb to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.rc, i64 %i.rd
  store i8 %i.qy, ptr %i.re, align 1
  %i.rf = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.rg = add i32 %i.rf, 1
  store i32 %i.rg, ptr %i.ob, align 8, !tbaa !57
  %spec.select = call i32 @llvm.abs.i32(i32 %i.nx, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.rh = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr %i.rh, ptr %16, align 8, !tbaa !58
  %i.ri = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  store i32 0, ptr %i.ri, align 8, !tbaa !57
  %i.rj = getelementptr inbounds nuw i8, ptr %16, i64 12 ; 3 uses
  store i32 6, ptr %i.rj, align 4, !tbaa !56
  br label %bb.cq

bb.cq:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217
  %i.rk = phi i32 [ 0, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217 ], [ %i.rv, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220 ] ; 2 uses
  %.4 = phi i32 [ %spec.select, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit217 ], [ %i.rm, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220 ] ; 3 uses
  %i.rl = urem i32 %.4, 10
  %i.rm = udiv i32 %.4, 10
  %i.rn = trunc nuw nsw i32 %i.rl to i8
  %i.ro = or disjoint i8 %i.rn, 48
  %i.rp = load i32, ptr %i.rj, align 4, !tbaa !56
  %.not.i218 = icmp ult i32 %i.rk, %i.rp
  br i1 %.not.i218, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220, label %bb.cr, !prof !59

bb.cr:                                            ; preds = %bb.cq
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.rh, i64 noundef 0, i64 noundef 1) #25
  %.pre.i219 = load i32, ptr %i.ri, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220: ; preds = %bb.cq, %bb.cr
  %i.rq = phi i32 [ %.pre.i219, %bb.cr ], [ %i.rk, %bb.cq ]
  %i.rr = load ptr, ptr %16, align 8, !tbaa !58
  %i.rs = zext i32 %i.rq to i64
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rs
  store i8 %i.ro, ptr %i.rt, align 1
  %i.ru = load i32, ptr %i.ri, align 8, !tbaa !57
  %i.rv = add i32 %i.ru, 1                        ; 6 uses
  store i32 %i.rv, ptr %i.ri, align 8, !tbaa !57
  %i.rw = icmp samesign ult i32 %.4, 10
  br i1 %i.rw, label %bb.cs, label %bb.cq, !llvm.loop !161

bb.cs:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit220
  %i.rx = icmp ugt i32 %i.rv, 1
  %or.cond.not297 = select i1 %4, i1 true, i1 %i.rx
  br i1 %or.cond.not297, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ry = load i32, ptr %i.rj, align 4, !tbaa !56
  %.not.i221 = icmp ult i32 %i.rv, %i.ry
  br i1 %.not.i221, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223, label %bb.cu, !prof !59

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %i.rh, i64 noundef 0, i64 noundef 1) #25
  %.pre.i222 = load i32, ptr %i.ri, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223: ; preds = %bb.ct, %bb.cu
  %i.rz = phi i32 [ %.pre.i222, %bb.cu ], [ %i.rv, %bb.ct ]
  %i.sa = load ptr, ptr %16, align 8, !tbaa !58
  %i.sb = zext i32 %i.rz to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sb
  store i8 48, ptr %i.sc, align 1
  %i.sd = load i32, ptr %i.ri, align 8, !tbaa !57
  %i.se = add i32 %i.sd, 1                        ; 2 uses
  store i32 %i.se, ptr %i.ri, align 8, !tbaa !57
  br label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223, %bb.cs
  %i.sf = phi i32 [ %i.se, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit223 ], [ %i.rv, %bb.cs ] ; 3 uses
  %.not139328 = icmp eq i32 %i.sf, 0
  br i1 %.not139328, label %._crit_edge, label %.lr.ph330

.lr.ph330:                                        ; preds = %bb.cv
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sh = zext i32 %i.sf to i64
  %.pre353 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %bb.cx

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226, %bb.cv
  %i.si = load ptr, ptr %16, align 8, !tbaa !58   ; 2 uses
  %i.sj = icmp eq ptr %i.si, %i.rh
  br i1 %i.sj, label %_ZN4llvh11SmallVectorIcLj6EED2Ev.exit, label %bb.cw

bb.cw:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.si) #25
  br label %_ZN4llvh11SmallVectorIcLj6EED2Ev.exit

_ZN4llvh11SmallVectorIcLj6EED2Ev.exit:            ; preds = %._crit_edge, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %.loopexit300

bb.cx:                                            ; preds = %.lr.ph330, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226
  %i.sk = phi i32 [ %.pre353, %.lr.ph330 ], [ %i.sy, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226 ] ; 2 uses
  %indvars.iv345 = phi i64 [ 0, %.lr.ph330 ], [ %indvars.iv.next346, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226 ] ; 2 uses
  %i.sl = trunc nuw i64 %indvars.iv345 to i32
  %i.sm = xor i32 %i.sl, -1
  %i.sn = add i32 %i.sf, %i.sm
  %i.so = zext i32 %i.sn to i64
  %i.sp = load ptr, ptr %16, align 8, !tbaa !58
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.so
  %i.sr = load i32, ptr %i.od, align 4, !tbaa !56
  %.not.i224 = icmp ult i32 %i.sk, %i.sr
  br i1 %.not.i224, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226, label %bb.cy, !prof !59

bb.cy:                                            ; preds = %bb.cx
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.sg, i64 noundef 0, i64 noundef 1) #25
  %.pre.i225 = load i32, ptr %i.ob, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit226: ; preds = %bb.cx, %bb.cy
  %i.ss = phi i32 [ %.pre.i225, %bb.cy ], [ %i.sk, %bb.cx ]
  %i.st = load ptr, ptr %1, align 8, !tbaa !58
  %i.su = zext i32 %i.ss to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.st, i64 %i.su
  %i.sw = load i8, ptr %i.sq, align 1
  store i8 %i.sw, ptr %i.sv, align 1
  %i.sx = load i32, ptr %i.ob, align 8, !tbaa !57
  %i.sy = add i32 %i.sx, 1                        ; 2 uses
  store i32 %i.sy, ptr %i.ob, align 8, !tbaa !57
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %.not139 = icmp eq i64 %indvars.iv.next346, %i.sh
  br i1 %.not139, label %._crit_edge, label %bb.cx, !llvm.loop !162

.preheader299:                                    ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229, %.preheader301
  %.not136322 = icmp eq i32 %.7, 0
  br i1 %.not136322, label %.loopexit300, label %.lr.ph324

.lr.ph324:                                        ; preds = %.preheader299
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre352.a = load i32, ptr %i.sz, align 8, !tbaa !57
  br label %bb.db

bb.cz:                                            ; preds = %.lr.ph321, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229
  %i.tc = phi i32 [ %.pre351.a, %.lr.ph321 ], [ %i.tq, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229 ] ; 2 uses
  %indvars.iv339 = phi i64 [ 0, %.lr.ph321 ], [ %indvars.iv.next340, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229 ] ; 2 uses
  %i.td = trunc nuw i64 %indvars.iv339 to i32
  %i.te = xor i32 %i.td, -1
  %i.tf = add i32 %i.nh, %i.te
  %i.tg = zext i32 %i.tf to i64
  %i.th = load ptr, ptr %13, align 8, !tbaa !58
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.tg
  %i.tj = load i32, ptr %i.no, align 4, !tbaa !56
  %.not.i227 = icmp ult i32 %i.tc, %i.tj
  br i1 %.not.i227, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229, label %bb.da, !prof !59

bb.da:                                            ; preds = %bb.cz
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.np, i64 noundef 0, i64 noundef 1) #25
  %.pre.i228 = load i32, ptr %i.nn, align 8, !tbaa !57
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit229: ; preds = %bb.cz, %bb.da
  %i.tk = phi i32 [ %.pre.i228, %bb.da ], [ %i.tc, %bb.cz ]
  %i.tl = load ptr, ptr %1, align 8, !tbaa !58
  %i.tm = zext i32 %i.tk to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 %i.tm
  %i.to = load i8, ptr %i.ti, align 1
  store i8 %i.to, ptr %i.tn, align 1
  %i.tp = load i32, ptr %i.nn, align 8, !tbaa !57
  %i.tq = add i32 %i.tp, 1                        ; 2 uses
  store i32 %i.tq, ptr %i.nn, align 8, !tbaa !57
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 2 uses
end_hunk_0
