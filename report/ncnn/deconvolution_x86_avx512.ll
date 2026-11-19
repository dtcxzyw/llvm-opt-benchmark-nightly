Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.jz = load ptr, ptr %i.dl, align 16, !tbaa !19 ; 3 uses
  %.not3.i79 = icmp eq ptr %i.jz, null
  %i.ka = load ptr, ptr %11, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i79, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.kb = load ptr, ptr %i.jz, align 8, !tbaa !12
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8
  invoke void %i.kd(ptr noundef nonnull align 8 dereferenceable(8) %i.jz, ptr noundef %i.ka)
          to label %_ZN4ncnn3MatD2Ev.exit66 unwind label %bb.cc, !inline_history !0

bb.ca:                                            ; preds = %bb.by
  %.not.i104 = icmp eq ptr %i.ka, null
  br i1 %.not.i104, label %_ZN4ncnn3MatD2Ev.exit66, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @free(ptr noundef nonnull %i.ka) #9
  br label %_ZN4ncnn3MatD2Ev.exit66

bb.cc:                                            ; preds = %bb.bz
  %i.ke = landingpad { ptr, i32 }
          catch ptr null
  %i.kf = extractvalue { ptr, i32 } %i.ke, 0
  call void @__clang_call_terminate(ptr %i.kf) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit66:                          ; preds = %bb.bx, %_ZN4ncnn3MatD2Ev.exit67, %bb.bz, %bb.ca, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.gb

bb.cd:                                            ; preds = %bb.bi
  %i.kg = atomicrmw add ptr %i.fm, i32 -1 acq_rel, align 4
  %i.kh = icmp eq i32 %i.kg, 1
  br i1 %i.kh, label %bb.ce, label %_ZN4ncnn3MatD2Ev.exit65

bb.ce:                                            ; preds = %bb.cd
  %i.ki = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !19 ; 3 uses
  %.not3.i83 = icmp eq ptr %i.kj, null
  %i.kk = load ptr, ptr %12, align 8, !tbaa !20   ; 3 uses
  br i1 %.not3.i83, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.kl = load ptr, ptr %i.kj, align 8, !tbaa !12
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 24
  %i.kn = load ptr, ptr %i.km, align 8
  invoke void %i.kn(ptr noundef nonnull align 8 dereferenceable(8) %i.kj, ptr noundef %i.kk)
          to label %_ZN4ncnn3MatD2Ev.exit65 unwind label %bb.ci, !inline_history !0

bb.cg:                                            ; preds = %bb.ce
  %.not.i102 = icmp eq ptr %i.kk, null
  br i1 %.not.i102, label %_ZN4ncnn3MatD2Ev.exit65, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  call void @free(ptr noundef nonnull %i.kk) #9
  br label %_ZN4ncnn3MatD2Ev.exit65

bb.ci:                                            ; preds = %bb.cf
  %i.ko = landingpad { ptr, i32 }
          catch ptr null
  %i.kp = extractvalue { ptr, i32 } %i.ko, 0
  call void @__clang_call_terminate(ptr %i.kp) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit65:                          ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.bi, %bb.cd, %bb.bh
  %.pn59.pn = phi { ptr, i32 } [ %i.fj, %bb.bh ], [ %i.fk, %bb.cd ], [ %i.fk, %bb.bi ], [ %i.fk, %bb.cf ], [ %i.fk, %bb.cg ], [ %i.fk, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #9
  br label %bb.cu

bb.cj:                                            ; preds = %bb.bm, %bb.bq
  %i.kq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ck:                                            ; preds = %.thread
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cl:                                            ; preds = %bb.bp
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4ncnn20ModelBinFromMatArrayD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #9
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn = phi { ptr, i32 } [ %i.ks, %bb.cl ], [ %i.kr, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #9
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cj
  %.pn57 = phi { ptr, i32 } [ %i.kq, %bb.cj ], [ %.pn, %bb.cm ]
  %i.kt = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %.not.i86 = icmp eq ptr %i.ku, null
  br i1 %.not.i86, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.kv = atomicrmw add ptr %i.ku, i32 -1 acq_rel, align 4
  %i.kw = icmp eq i32 %i.kv, 1
  br i1 %i.kw, label %bb.cp, label %_ZN4ncnn3MatD2Ev.exit64

bb.cp:                                            ; preds = %bb.co
  %i.kx = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ky = load ptr, ptr %i.kx, align 16, !tbaa !19 ; 3 uses
  %.not3.i87 = icmp eq ptr %i.ky, null
  %i.kz = load ptr, ptr %13, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i87, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !12
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 24
  %i.lc = load ptr, ptr %i.lb, align 8
  invoke void %i.lc(ptr noundef nonnull align 8 dereferenceable(8) %i.ky, ptr noundef %i.kz)
          to label %_ZN4ncnn3MatD2Ev.exit64 unwind label %bb.ct, !inline_history !0

bb.cr:                                            ; preds = %bb.cp
  %.not.i100 = icmp eq ptr %i.kz, null
  br i1 %.not.i100, label %_ZN4ncnn3MatD2Ev.exit64, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @free(ptr noundef nonnull %i.kz) #9
  br label %_ZN4ncnn3MatD2Ev.exit64

bb.ct:                                            ; preds = %bb.cq
  %i.ld = landingpad { ptr, i32 }
          catch ptr null
  %i.le = extractvalue { ptr, i32 } %i.ld, 0
  call void @__clang_call_terminate(ptr %i.le) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit64:                          ; preds = %bb.co, %bb.cn, %bb.cq, %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #9
  br label %bb.cu

bb.cu:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit64, %_ZN4ncnn3MatD2Ev.exit65
  %.pn59.pn.pn = phi { ptr, i32 } [ %.pn59.pn, %_ZN4ncnn3MatD2Ev.exit65 ], [ %.pn57, %_ZN4ncnn3MatD2Ev.exit64 ]
  %i.lf = load ptr, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  %.not.i90 = icmp eq ptr %i.lf, null
  br i1 %.not.i90, label %_ZN4ncnn3MatD2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lg = atomicrmw add ptr %i.lf, i32 -1 acq_rel, align 4
  %i.lh = icmp eq i32 %i.lg, 1
  br i1 %i.lh, label %bb.cw, label %_ZN4ncnn3MatD2Ev.exit

bb.cw:                                            ; preds = %bb.cv
  %i.li = load ptr, ptr %i.dl, align 16, !tbaa !19 ; 3 uses
  %.not3.i91 = icmp eq ptr %i.li, null
  %i.lj = load ptr, ptr %11, align 16, !tbaa !20  ; 3 uses
  br i1 %.not3.i91, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lk = load ptr, ptr %i.li, align 8, !tbaa !12
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %i.lm = load ptr, ptr %i.ll, align 8
  invoke void %i.lm(ptr noundef nonnull align 8 dereferenceable(8) %i.li, ptr noundef %i.lj)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.da, !inline_history !0

bb.cy:                                            ; preds = %bb.cw
  %.not.i98 = icmp eq ptr %i.lj, null
  br i1 %.not.i98, label %_ZN4ncnn3MatD2Ev.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @free(ptr noundef nonnull %i.lj) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.da:                                            ; preds = %bb.cx
  %i.ln = landingpad { ptr, i32 }
          catch ptr null
  %i.lo = extractvalue { ptr, i32 } %i.ln, 0
  call void @__clang_call_terminate(ptr %i.lo) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.cv, %bb.cu, %bb.cx, %bb.cy, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.db

bb.db:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.bg
  %.pn59.pn.pn.pn = phi { ptr, i32 } [ %.pn59.pn.pn, %_ZN4ncnn3MatD2Ev.exit ], [ %i.fi, %bb.bg ]
  call void @_ZN4ncnn9ParamDictD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %common.resume

bb.dc:                                            ; preds = %bb.al
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !55
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 0, ptr %i.lv, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %2, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.lu, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.ls, i64 noundef 4, ptr noundef null)
  %i.lw = mul nsw i32 %i.bx, %i.bs                ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %.preheader1818.lr.ph.i, label %._crit_edge1823.split.i

.preheader1818.lr.ph.i:                           ; preds = %bb.dc
  %i.ly = icmp sgt i32 %i.bn, 0
  %i.lz = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %i.ly, label %.preheader1818.preheader.i, label %._crit_edge1823.split.i

.preheader1818.preheader.i:                       ; preds = %.preheader1818.lr.ph.i
  %i.ma = load ptr, ptr %2, align 8, !tbaa !20    ; 3 uses
  %i.mb = load ptr, ptr %i.lp, align 8, !tbaa !20 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.bn to i64 ; 9 uses
  %i.mc = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep = getelementptr i8, ptr %i.mb, i64 %i.mc
  %i.md = shl nuw nsw i64 %i.lz, 2                ; 2 uses
  %scevgep452 = getelementptr i8, ptr %i.ma, i64 %i.md
  %i.me = sub nsw i64 %i.md, %i.mc
  %scevgep453 = getelementptr i8, ptr %i.ma, i64 %i.me
  %min.iters.check = icmp ult i32 %i.bn, 8
  %bound0 = icmp ult ptr %scevgep453, %scevgep
  %bound1 = icmp ult ptr %i.mb, %scevgep452
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check454 = icmp ult i32 %i.bn, 64
  %i.mf = and i64 %wide.trip.count.i, 56
  %n.vec = and i64 %wide.trip.count.i, 2147483584 ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %min.epilog.iters.check = icmp eq i64 %i.mf, 0
  %n.vec461 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n466 = icmp eq i64 %n.vec461, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader1818.preheader.i
  %.08701822.i = phi i32 [ %i.ne, %._crit_edge.i ], [ 0, %.preheader1818.preheader.i ]
  %.08711821.i = phi ptr [ %i.nd, %._crit_edge.i ], [ %i.mb, %.preheader1818.preheader.i ] ; 8 uses
  %.08981820.i = phi ptr [ %i.mg, %._crit_edge.i ], [ %i.ma, %.preheader1818.preheader.i ]
  %i.mg = getelementptr [4 x i8], ptr %.08981820.i, i64 %i.lz ; 8 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check454, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %index ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 64
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 128
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mh, i64 192
  %wide.load = load <16 x float>, ptr %i.mh, align 4, !tbaa !39, !alias.scope !720
  %wide.load455 = load <16 x float>, ptr %i.mi, align 4, !tbaa !39, !alias.scope !720
  %wide.load456 = load <16 x float>, ptr %i.mj, align 4, !tbaa !39, !alias.scope !720
  %wide.load457 = load <16 x float>, ptr %i.mk, align 4, !tbaa !39, !alias.scope !720
  %i.ml = xor i64 %index, -1
  %i.mm = getelementptr [4 x i8], ptr %i.mg, i64 %i.ml ; 4 uses
  %i.mn = getelementptr i8, ptr %i.mm, i64 -60
  %i.mo = getelementptr i8, ptr %i.mm, i64 -124
  %i.mp = getelementptr i8, ptr %i.mm, i64 -188
  %i.mq = getelementptr i8, ptr %i.mm, i64 -252
  %reverse = shufflevector <16 x float> %wide.load, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse458 = shufflevector <16 x float> %wide.load455, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse459 = shufflevector <16 x float> %wide.load456, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse460 = shufflevector <16 x float> %wide.load457, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x float> %reverse, ptr %i.mn, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  store <16 x float> %reverse458, ptr %i.mo, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  store <16 x float> %reverse459, ptr %i.mp, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  store <16 x float> %reverse460, ptr %i.mq, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.mr = icmp eq i64 %index.next, %n.vec
  br i1 %i.mr, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index462 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next465, %vec.epilog.vector.body ] ; 3 uses
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %index462
  %wide.load463 = load <8 x float>, ptr %i.ms, align 4, !tbaa !39, !alias.scope !720
  %i.mt = xor i64 %index462, -1
  %i.mu = getelementptr [4 x i8], ptr %i.mg, i64 %i.mt
  %i.mv = getelementptr i8, ptr %i.mu, i64 -28
  %reverse464 = shufflevector <8 x float> %wide.load463, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse464, ptr %i.mv, align 4, !tbaa !39, !alias.scope !721, !noalias !720
  %index.next465 = add nuw i64 %index462, 8       ; 2 uses
  %i.mw = icmp eq i64 %index.next465, %n.vec461
  br i1 %i.mw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !108

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n466, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec461, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i.prol
  %i.my = load float, ptr %i.mx, align 4, !tbaa !39
  %i.mz = xor i64 %indvars.iv.i.prol, -1
  %i.na = getelementptr [4 x i8], ptr %i.mg, i64 %i.mz
  store float %i.my, ptr %i.na, align 4, !tbaa !39
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !109

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.nb = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.nc = icmp ugt i64 %i.nb, -4
  br i1 %i.nc, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge1823.split.i:                          ; preds = %._crit_edge.i, %.preheader1818.lr.ph.i, %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.bn, i32 noundef %i.bx, i32 noundef %i.bs, ptr noundef null)
          to label %bb.dd unwind label %bb.dg

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %i.lz
  %i.ne = add nuw nsw i32 %.08701822.i, 1         ; 2 uses
  %exitcond2430.not.i = icmp eq i32 %i.ne, %i.lw
  br i1 %exitcond2430.not.i, label %._crit_edge1823.split.i, label %iter.check, !llvm.loop !110

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.ng = load float, ptr %i.nf, align 4, !tbaa !39
  %i.nh = xor i64 %indvars.iv.i, -1
  %i.ni = getelementptr [4 x i8], ptr %i.mg, i64 %i.nh
  store float %i.ng, ptr %i.ni, align 4, !tbaa !39
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !39
  %i.nm = sub i64 -2, %indvars.iv.i
  %i.nn = getelementptr [4 x i8], ptr %i.mg, i64 %i.nm
  store float %i.nl, ptr %i.nn, align 4, !tbaa !39
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load float, ptr %i.np, align 4, !tbaa !39
  %i.nr = sub i64 -3, %indvars.iv.i
  %i.ns = getelementptr [4 x i8], ptr %i.mg, i64 %i.nr
  store float %i.nq, ptr %i.ns, align 4, !tbaa !39
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %.08711821.i, i64 %indvars.iv.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 12
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !39
  %i.nw = sub i64 -4, %indvars.iv.i
  %i.nx = getelementptr [4 x i8], ptr %i.mg, i64 %i.nw
  store float %i.nv, ptr %i.nx, align 4, !tbaa !39
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !111

bb.dd:                                            ; preds = %._crit_edge1823.split.i
  %i.ny = icmp sgt i32 %i.bs, 15
  br i1 %i.ny, label %bb.de, label %bb.dp

bb.de:                                            ; preds = %bb.dd
  %i.nz = icmp sgt i32 %i.bx, 15                  ; 2 uses
  br i1 %i.nz, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.oa = shl nsw i32 %i.bn, 8
  %i.ob = lshr i32 %i.bx, 4
  %i.oc = shufflevector <2 x i32> %i.bv, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.od = lshr <4 x i32> %i.oc, <i32 0, i32 3, i32 2, i32 1>
  %i.oe = and <4 x i32> %i.od, splat (i32 1)
  %i.of = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.oe)
  %op.rdx8089 = add nuw nsw i32 %i.of, %i.ob
  br label %.invoke2902.i

bb.dg:                                            ; preds = %._crit_edge1823.split.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit926.i

bb.dh:                                            ; preds = %.invoke.i, %.invoke2902.i
  %i.oh = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !18 ; 2 uses
  %.not.i1083.i = icmp eq ptr %i.oj, null
  br i1 %.not.i1083.i, label %_ZN4ncnn3MatD2Ev.exit926.i, label %bb.fp

bb.di:                                            ; preds = %bb.de
  %i.ok = icmp sgt i32 %i.bx, 7
  br i1 %i.ok, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ol = shl nsw i32 %i.bn, 7
  %i.om = lshr <4 x i32> %i.bw, <i32 0, i32 2, i32 1, i32 0>
  %i.on = and <4 x i32> %i.om, splat (i32 1)
  %i.oo = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.on)
  br label %.invoke2902.i

bb.dk:                                            ; preds = %bb.di
  %i.op = icmp sgt i32 %i.bx, 3
  br i1 %i.op, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.oq = shl nsw i32 %i.bn, 6
  %i.or = lshr i32 %i.bx, 1
  %i.os = and i32 %i.or, 1
  %i.ot = and i32 %i.bx, 1
  %i.ou = add nuw nsw i32 %i.ot, 1
  %i.ov = add nuw nsw i32 %i.ou, %i.os
  br label %.invoke2902.i

bb.dm:                                            ; preds = %bb.dk
  %i.ow = icmp sgt i32 %i.bx, 1
end_hunk_0
begin_hunk_1_@_ZN4ncnnL20deconvolution_packedERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a

bb.af:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.aug = shufflevector <16 x float> %.0.i, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  store <8 x float> %i.aug, ptr %.12392, align 32, !tbaa !82
  %i.auh = load i64, ptr %18, align 8, !tbaa !88
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %.12392, i64 %i.auh
  %i.auj = shufflevector <16 x float> %.0.i, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %i.auj, ptr %i.aui, align 32, !tbaa !82
  %i.auk = getelementptr inbounds nuw i8, ptr %.12392, i64 32
  br label %.thread2131

bb.ag:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %i.aul = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.aul, ptr %.12392, align 16, !tbaa !82
  %i.aum = load i64, ptr %18, align 8, !tbaa !88
  %i.aun = getelementptr inbounds nuw [4 x i8], ptr %.12392, i64 %i.aum
  %i.auo = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  store <4 x float> %i.auo, ptr %i.aun, align 16, !tbaa !82
  %i.aup = load i64, ptr %18, align 8, !tbaa !88
  %.idx = shl i64 %i.aup, 3
  %i.auq = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx
  %i.aur = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  store <4 x float> %i.aur, ptr %i.auq, align 16, !tbaa !82
  %i.aus = load i64, ptr %18, align 8, !tbaa !88
  %.idx926 = mul i64 %i.aus, 12
  %i.aut = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx926
  %i.auu = shufflevector <16 x float> %.0.i, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  store <4 x float> %i.auu, ptr %i.aut, align 16, !tbaa !82
  %i.auv = getelementptr inbounds nuw i8, ptr %.12392, i64 16
  br label %.thread2131

bb.ah:                                            ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split
  %.sroa.0.0.vec.extract = extractelement <16 x float> %.0.i, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.12392, align 4, !tbaa !39
  %.sroa.0.4.vec.extract = extractelement <16 x float> %.0.i, i64 1
  %i.auw = load i64, ptr %18, align 8, !tbaa !88  ; 15 uses
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %.12392, i64 %i.auw
  store float %.sroa.0.4.vec.extract, ptr %i.aux, align 4, !tbaa !39
  %.sroa.0.8.vec.extract = extractelement <16 x float> %.0.i, i64 2
  %.idx927 = shl i64 %i.auw, 3
  %i.auy = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx927
  store float %.sroa.0.8.vec.extract, ptr %i.auy, align 4, !tbaa !39
  %.sroa.0.12.vec.extract = extractelement <16 x float> %.0.i, i64 3
  %.idx928 = mul i64 %i.auw, 12
  %i.auz = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx928
  store float %.sroa.0.12.vec.extract, ptr %i.auz, align 4, !tbaa !39
  %.sroa.0.16.vec.extract = extractelement <16 x float> %.0.i, i64 4
  %.idx929 = shl i64 %i.auw, 4
  %i.ava = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx929
  store float %.sroa.0.16.vec.extract, ptr %i.ava, align 4, !tbaa !39
  %.sroa.0.20.vec.extract = extractelement <16 x float> %.0.i, i64 5
  %.idx930 = mul i64 %i.auw, 20
  %i.avb = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx930
  store float %.sroa.0.20.vec.extract, ptr %i.avb, align 4, !tbaa !39
  %.sroa.0.24.vec.extract = extractelement <16 x float> %.0.i, i64 6
  %.idx931 = mul i64 %i.auw, 24
  %i.avc = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx931
  store float %.sroa.0.24.vec.extract, ptr %i.avc, align 4, !tbaa !39
  %.sroa.0.28.vec.extract = extractelement <16 x float> %.0.i, i64 7
  %.idx932 = mul i64 %i.auw, 28
  %i.avd = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx932
  store float %.sroa.0.28.vec.extract, ptr %i.avd, align 4, !tbaa !39
  %.sroa.0.32.vec.extract = extractelement <16 x float> %.0.i, i64 8
  %.idx933 = shl i64 %i.auw, 5
  %i.ave = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx933
  store float %.sroa.0.32.vec.extract, ptr %i.ave, align 4, !tbaa !39
  %.sroa.0.36.vec.extract = extractelement <16 x float> %.0.i, i64 9
  %.idx934 = mul i64 %i.auw, 36
  %i.avf = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx934
  store float %.sroa.0.36.vec.extract, ptr %i.avf, align 4, !tbaa !39
  %.sroa.0.40.vec.extract = extractelement <16 x float> %.0.i, i64 10
  %.idx935 = mul i64 %i.auw, 40
  %i.avg = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx935
  store float %.sroa.0.40.vec.extract, ptr %i.avg, align 4, !tbaa !39
  %.sroa.0.44.vec.extract = extractelement <16 x float> %.0.i, i64 11
  %.idx936 = mul i64 %i.auw, 44
  %i.avh = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx936
  store float %.sroa.0.44.vec.extract, ptr %i.avh, align 4, !tbaa !39
  %.sroa.0.48.vec.extract = extractelement <16 x float> %.0.i, i64 12
  %.idx937 = mul i64 %i.auw, 48
  %i.avi = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx937
  store float %.sroa.0.48.vec.extract, ptr %i.avi, align 4, !tbaa !39
  %.sroa.0.52.vec.extract = extractelement <16 x float> %.0.i, i64 13
  %.idx938 = mul i64 %i.auw, 52
  %i.avj = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx938
  store float %.sroa.0.52.vec.extract, ptr %i.avj, align 4, !tbaa !39
  %.sroa.0.56.vec.extract = extractelement <16 x float> %.0.i, i64 14
  %.idx939 = mul i64 %i.auw, 56
  %i.avk = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx939
  store float %.sroa.0.56.vec.extract, ptr %i.avk, align 4, !tbaa !39
  %.sroa.0.60.vec.extract = extractelement <16 x float> %.0.i, i64 15
  %.idx940 = mul i64 %i.auw, 60
  %i.avl = getelementptr inbounds nuw i8, ptr %.12392, i64 %.idx940
  store float %.sroa.0.60.vec.extract, ptr %i.avl, align 4, !tbaa !39
  %i.avm = getelementptr inbounds nuw i8, ptr %.12392, i64 4
  br label %.thread2131

.thread2131:                                      ; preds = %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split, %bb.af, %.thread2125, %bb.ag, %bb.ah
  %.5 = phi ptr [ %i.avm, %bb.ah ], [ %.12392, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit.split ], [ %i.auv, %bb.ag ], [ %i.auf, %.thread2125 ], [ %i.auk, %bb.af ], [ %.12392, %_ZL17activation_avx512Dv16_fiRKN4ncnn3MatE.exit ] ; 2 uses
  %i.avn = add nuw nsw i32 %.07772391, 1          ; 2 uses
  %exitcond2476.not = icmp eq i32 %i.avn, %i.ah
  br i1 %exitcond2476.not, label %._crit_edge, label %bb.c, !llvm.loop !1563

._crit_edge2399:                                  ; preds = %._crit_edge2396.split, %.noexc1263.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge2399, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fma.v16f32(<16 x float>, <16 x float>, <16 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.max.ps.512(<16 x float>, <16 x float>, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.min.ps.512(<16 x float>, <16 x float>, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x float> @llvm.x86.avx512.mask.rndscale.ps.512(<16 x float>, i32 immarg, <16 x float>, i16, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i32> @llvm.x86.avx512.mask.cvttps2dq.512(<16 x float>, <16 x i32>, i16, i32 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fma.v8f32(<8 x float>, <8 x float>, <8 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.max.ps.256(<8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.min.ps.256(<8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x float> @llvm.x86.avx.round.ps.256(<8 x float>, i32 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i32> @llvm.x86.avx.cvtt.ps2dq.256(<8 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fma.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #16

declare void @_ZN4ncnn7flattenERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn24cast_bfloat16_to_float32ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare void @_ZN4ncnn9ParamDict3setEiRKNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 50 uses
  %i.a = tail call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn54deconvolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  br label %bb.bn

bb.c:                                             ; preds = %bb.a
  %i.b = mul i32 %5, %4                           ; 84 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i64 0, ptr %i.g, align 8, !tbaa !21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.f, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.d, i64 noundef 4, ptr noundef null)
  %i.h = mul nsw i32 %3, %2                       ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.preheader1824.lr.ph, label %._crit_edge1829.split

.preheader1824.lr.ph:                             ; preds = %bb.c
  %i.j = icmp sgt i32 %i.b, 0
  %i.k = sext i32 %i.b to i64                     ; 4 uses
  br i1 %i.j, label %.preheader1824.preheader, label %._crit_edge1829.split

.preheader1824.preheader:                         ; preds = %.preheader1824.lr.ph
  %i.l = load ptr, ptr %6, align 8, !tbaa !20     ; 3 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 9 uses
  %i.n = shl nuw nsw i64 %wide.trip.count, 2      ; 2 uses
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.n
  %i.o = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  %scevgep2938 = getelementptr i8, ptr %i.l, i64 %i.o
  %i.p = sub nsw i64 %i.o, %i.n
  %scevgep2939 = getelementptr i8, ptr %i.l, i64 %i.p
  %min.iters.check = icmp ult i32 %i.b, 8
  %bound0 = icmp ult ptr %scevgep2939, %scevgep
  %bound1 = icmp ult ptr %i.m, %scevgep2938
  %found.conflict = and i1 %bound0, %bound1
  %min.iters.check2940 = icmp ult i32 %i.b, 64
  %i.q = and i64 %wide.trip.count, 56
  %n.vec = and i64 %wide.trip.count, 2147483584   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.q, 0
  %n.vec2947 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n2952 = icmp eq i64 %n.vec2947, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.preheader1824.preheader, %._crit_edge
  %.09021828 = phi i32 [ %i.aq, %._crit_edge ], [ 0, %.preheader1824.preheader ]
  %.09031827 = phi ptr [ %i.ao, %._crit_edge ], [ %i.m, %.preheader1824.preheader ] ; 8 uses
  %.09041826 = phi ptr [ %i.ap, %._crit_edge ], [ %i.l, %.preheader1824.preheader ] ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %.09041826, i64 %i.k ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check2940, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %index ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %wide.load = load <16 x float>, ptr %i.s, align 4, !tbaa !39, !alias.scope !1673
  %wide.load2941 = load <16 x float>, ptr %i.t, align 4, !tbaa !39, !alias.scope !1673
  %wide.load2942 = load <16 x float>, ptr %i.u, align 4, !tbaa !39, !alias.scope !1673
  %wide.load2943 = load <16 x float>, ptr %i.v, align 4, !tbaa !39, !alias.scope !1673
  %i.w = xor i64 %index, -1
  %i.x = getelementptr [4 x i8], ptr %i.r, i64 %i.w ; 4 uses
  %i.y = getelementptr i8, ptr %i.x, i64 -60
  %i.z = getelementptr i8, ptr %i.x, i64 -124
  %i.aa = getelementptr i8, ptr %i.x, i64 -188
  %i.ab = getelementptr i8, ptr %i.x, i64 -252
  %reverse = shufflevector <16 x float> %wide.load, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2944 = shufflevector <16 x float> %wide.load2941, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2945 = shufflevector <16 x float> %wide.load2942, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse2946 = shufflevector <16 x float> %wide.load2943, <16 x float> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x float> %reverse, ptr %i.y, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  store <16 x float> %reverse2944, ptr %i.z, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  store <16 x float> %reverse2945, ptr %i.aa, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  store <16 x float> %reverse2946, ptr %i.ab, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1581

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2948 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2951, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %index2948
  %wide.load2949 = load <8 x float>, ptr %i.ad, align 4, !tbaa !39, !alias.scope !1673
  %i.ae = xor i64 %index2948, -1
  %i.af = getelementptr [4 x i8], ptr %i.r, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -28
  %reverse2950 = shufflevector <8 x float> %wide.load2949, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x float> %reverse2950, ptr %i.ag, align 4, !tbaa !39, !alias.scope !1674, !noalias !1673
  %index.next2951 = add nuw i64 %index2948, 8     ; 2 uses
  %i.ah = icmp eq i64 %index.next2951, %n.vec2947
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1582

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n2952, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec2947, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv.prol
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !39
  %i.ak = xor i64 %indvars.iv.prol, -1
  %i.al = getelementptr [4 x i8], ptr %i.r, i64 %i.ak
  store float %i.aj, ptr %i.al, align 4, !tbaa !39
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1583

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge1829.split:                            ; preds = %._crit_edge, %.preheader1824.lr.ph, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  invoke void @_ZNK4ncnn3Mat7reshapeEiiiPNS_9AllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.b, i32 noundef %2, i32 noundef %3, ptr noundef null)
          to label %bb.d unwind label %bb.g

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %i.k
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.09041826, i64 %i.k
  %i.aq = add nuw nsw i32 %.09021828, 1           ; 2 uses
  %exitcond2436.not = icmp eq i32 %i.aq, %i.h
  br i1 %exitcond2436.not, label %._crit_edge1829.split, label %iter.check, !llvm.loop !1584

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.as = load float, ptr %i.ar, align 4, !tbaa !39
  %i.at = xor i64 %indvars.iv, -1
  %i.au = getelementptr [4 x i8], ptr %i.r, i64 %i.at
  store float %i.as, ptr %i.au, align 4, !tbaa !39
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !39
  %i.ay = sub i64 -2, %indvars.iv
  %i.az = getelementptr [4 x i8], ptr %i.r, i64 %i.ay
  store float %i.ax, ptr %i.az, align 4, !tbaa !39
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !39
  %i.bd = sub i64 -3, %indvars.iv
  %i.be = getelementptr [4 x i8], ptr %i.r, i64 %i.bd
  store float %i.bc, ptr %i.be, align 4, !tbaa !39
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.09031827, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !39
  %i.bi = sub i64 -4, %indvars.iv
  %i.bj = getelementptr [4 x i8], ptr %i.r, i64 %i.bi
  store float %i.bh, ptr %i.bj, align 4, !tbaa !39
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1585

bb.d:                                             ; preds = %._crit_edge1829.split
  %i.bk = icmp sgt i32 %3, 15
  br i1 %i.bk, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.bl = icmp sgt i32 %2, 15
  br i1 %i.bl, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.bm = shl nsw i32 %i.b, 8
  %i.bn = lshr i32 %2, 4
  %i.bo = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.bp = shufflevector <4 x i32> %i.bo, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bq = lshr <4 x i32> %i.bp, <i32 0, i32 3, i32 2, i32 1>
  %i.br = and <4 x i32> %i.bq, splat (i32 1)
  %i.bs = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.br)
  %op.rdx3368 = add nuw nsw i32 %i.bs, %i.bn
  br label %.invoke2905

bb.g:                                             ; preds = %._crit_edge1829.split
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4ncnn3MatD2Ev.exit932

bb.h:                                             ; preds = %.invoke2905, %.invoke
  %i.bu = landingpad { ptr, i32 }
          cleanup                                 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !18 ; 2 uses
  %.not.i1089 = icmp eq ptr %i.bw, null
  br i1 %.not.i1089, label %_ZN4ncnn3MatD2Ev.exit932, label %bb.bo

bb.i:                                             ; preds = %bb.e
  %i.bx = icmp sgt i32 %2, 7
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = shl nsw i32 %i.b, 7
  %i.bz = insertelement <4 x i32> <i32 poison, i32 -1, i32 poison, i32 poison>, i32 %2, i64 0
  %i.ca = shufflevector <4 x i32> %i.bz, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cb = lshr <4 x i32> %i.ca, <i32 0, i32 2, i32 1, i32 0>
  %i.cc = and <4 x i32> %i.cb, splat (i32 1)
  %i.cd = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cc)
  br label %.invoke2905

bb.k:                                             ; preds = %bb.i
  %i.ce = icmp sgt i32 %2, 3
  br i1 %i.ce, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cf = shl nsw i32 %i.b, 6
  %i.cg = lshr i32 %2, 1
  %i.ch = and i32 %i.cg, 1
  %i.ci = and i32 %2, 1
  %i.cj = add nuw nsw i32 %i.ci, 1
  %i.ck = add nuw nsw i32 %i.cj, %i.ch
end_hunk_1
