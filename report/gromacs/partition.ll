Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/partition?download=true
inline.NumInlined: 2655
inline.NumDeleted: 1066
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZL11turn_on_dlbRKN3gmx8MDLoggerEP12gmx_domdec_tl:bb.a
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85, %bb.o
  %.pn = phi { ptr, i32 } [ %i.fq, %bb.o ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i85 ], [ %i.fr, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.fx = load ptr, ptr %4, align 8, !tbaa !235   ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.ee
  br i1 %i.fy, label %_ZN3gmx14LogEntryWriterD2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87
  %i.fz = load i64, ptr %i.ee, align 8, !tbaa !236
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #30
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit90

_ZN3gmx14LogEntryWriterD2Ev.exit90:               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.w

bb.q:                                             ; preds = %bb.j, %_ZN3gmx14LogEntryWriterD2Ev.exit84
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i32 4, ptr %i.gb, align 8, !tbaa !343
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 1604
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !210 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL11turn_on_dlbRKN3gmx8MDLoggerEP12gmx_domdec_tlENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 1287) #29
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 1584
  %i.gg = load float, ptr %i.gf, align 8, !tbaa !211
  %i.gh = uitofp nneg i32 %i.gd to float
  %i.gi = fdiv float %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 1668
  store float %i.gi, ptr %i.gj, align 4, !tbaa !365
  call void @_Z14set_dlb_limitsP12gmx_domdec_t(ptr noundef nonnull %0)
  %i.gk = load i32, ptr %i.i, align 8, !tbaa !208 ; 2 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %.lr.ph16, label %.loopexit

.lr.ph16:                                         ; preds = %bb.s
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 1480
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !209
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 1504
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 164
  %wide.trip.count32 = zext nneg i32 %i.gk to i64
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph16, %bb.v
  %indvars.iv29 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next30, %bb.v ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [48 x i8], ptr %i.gn, i64 %indvars.iv29
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !354 ; 4 uses
  %.not = icmp eq ptr %i.gr, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gs = load ptr, ptr %i.go, align 8, !tbaa !346
  %i.gt = getelementptr inbounds nuw [64 x i8], ptr %i.gs, i64 %indvars.iv29 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  %i.gv = load float, ptr %i.gu, align 8, !tbaa !348
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  store float %i.gv, ptr %i.gw, align 8, !tbaa !350
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv29
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !210
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gz
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !210 ; 8 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  br i1 %i.hc, label %.lr.ph11, label %.._crit_edge12_crit_edge

.._crit_edge12_crit_edge:                         ; preds = %bb.u
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !353
  br label %._crit_edge12

.lr.ph11:                                         ; preds = %bb.u
  %i.hd = uitofp nneg i32 %i.hb to float          ; 9 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !353 ; 17 uses
  %.not65 = icmp eq i64 %indvars.iv29, 0
  br i1 %.not65, label %iter.check, label %.lr.ph11.split

iter.check:                                       ; preds = %.lr.ph11
  %wide.trip.count27 = zext nneg i32 %i.hb to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.hb, 4
  br i1 %min.iters.check, label %.lr.ph11.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i32 %i.hb, 32
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hg = and i64 %wide.trip.count27, 28
  %n.vec = and i64 %wide.trip.count27, 2147483616 ; 4 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.hd, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <8 x i32> %vec.ind, splat (i32 8)
  %step.add.2 = add <8 x i32> %vec.ind, splat (i32 16)
  %step.add.3 = add <8 x i32> %vec.ind, splat (i32 24)
  %i.hh = uitofp nneg <8 x i32> %vec.ind to <8 x float>
  %i.hi = uitofp nneg <8 x i32> %step.add to <8 x float>
  %i.hj = uitofp nneg <8 x i32> %step.add.2 to <8 x float>
  %i.hk = uitofp nneg <8 x i32> %step.add.3 to <8 x float>
  %i.hl = fdiv <8 x float> %i.hh, %broadcast.splat
  %i.hm = fdiv <8 x float> %i.hi, %broadcast.splat
  %i.hn = fdiv <8 x float> %i.hj, %broadcast.splat
  %i.ho = fdiv <8 x float> %i.hk, %broadcast.splat
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 32
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 96
  store <8 x float> %i.hl, ptr %i.hp, align 4, !tbaa !211
  store <8 x float> %i.hm, ptr %i.hq, align 4, !tbaa !211
  store <8 x float> %i.hn, ptr %i.hr, align 4, !tbaa !211
  store <8 x float> %i.ho, ptr %i.hs, align 4, !tbaa !211
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 32)
  %i.ht = icmp eq i64 %index.next, %n.vec
  br i1 %i.ht, label %middle.block, label %vector.body, !llvm.loop !838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count27
  br i1 %cmp.n, label %._crit_edge12, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hg, 0
  br i1 %min.epilog.iters.check, label %.lr.ph11.split.us.preheader, label %vec.epilog.ph, !prof !383

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec58 = and i64 %wide.trip.count27, 2147483644 ; 3 uses
  %broadcast.splatinsert59 = insertelement <4 x float> poison, float %i.hd, i64 0
  %broadcast.splat60 = shufflevector <4 x float> %broadcast.splatinsert59, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hu = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert61 = insertelement <4 x i32> poison, i32 %i.hu, i64 0
  %broadcast.splat62 = shufflevector <4 x i32> %broadcast.splatinsert61, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat62, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind64 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next66, %vec.epilog.vector.body ] ; 2 uses
  %i.hv = uitofp nneg <4 x i32> %vec.ind64 to <4 x float>
  %i.hw = fdiv <4 x float> %i.hv, %broadcast.splat60
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index63
  store <4 x float> %i.hw, ptr %i.hx, align 4, !tbaa !211
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %vec.ind.next66 = add <4 x i32> %vec.ind64, splat (i32 4)
  %i.hy = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.hy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !839

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n67 = icmp eq i64 %n.vec58, %wide.trip.count27
  br i1 %cmp.n67, label %._crit_edge12, label %.lr.ph11.split.us.preheader

.lr.ph11.split.us.preheader:                      ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv24.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ]
  br label %.lr.ph11.split.us

.lr.ph11.split.us:                                ; preds = %.lr.ph11.split.us.preheader, %.lr.ph11.split.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %.lr.ph11.split.us ], [ %indvars.iv24.ph, %.lr.ph11.split.us.preheader ] ; 3 uses
  %i.hz = trunc nuw nsw i64 %indvars.iv24 to i32
  %i.ia = uitofp nneg i32 %i.hz to float
  %i.ib = fdiv float %i.ia, %i.hd
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv24
  store float %i.ib, ptr %i.ic, align 4, !tbaa !211
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %._crit_edge12, label %.lr.ph11.split.us, !llvm.loop !840

.lr.ph11.split:                                   ; preds = %.lr.ph11
  %i.id = getelementptr inbounds nuw i8, ptr %i.gr, i64 88
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !357 ; 8 uses
  %wide.trip.count22 = zext nneg i32 %i.hb to i64 ; 7 uses
  %min.iters.check70 = icmp ult i32 %i.hb, 8
  br i1 %min.iters.check70, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph11.split
  %i.if = shl nuw nsw i64 %wide.trip.count22, 2
  %i.ig = getelementptr i8, ptr %i.hf, i64 %i.if
  %i.ih = shl nuw nsw i64 %wide.trip.count22, 4
  %i.ii = getelementptr i8, ptr %i.ie, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ii, i64 -8
  %bound0 = icmp ult ptr %i.hf, %i.ij
  %bound1 = icmp ult ptr %i.ie, %i.ig
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph71

vector.ph71:                                      ; preds = %vector.memcheck
  %n.vec72 = and i64 %wide.trip.count22, 2147483640 ; 3 uses
  %broadcast.splatinsert73 = insertelement <8 x float> poison, float %i.hd, i64 0
  %broadcast.splat74 = shufflevector <8 x float> %broadcast.splatinsert73, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %vector.ph71
  %index76 = phi i64 [ 0, %vector.ph71 ], [ %index.next81, %vector.body75 ] ; 2 uses
  %vec.ind77 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph71 ], [ %vec.ind.next82.a, %vector.body75 ] ; 2 uses
  %vec.ind78 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph71 ], [ %vec.ind.next83, %vector.body75 ] ; 2 uses
  %vec.ind79 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph71 ], [ %vec.ind.next84, %vector.body75 ] ; 2 uses
  %i.ik = uitofp nneg <8 x i32> %vec.ind78 to <8 x float>
  %i.il = fdiv <8 x float> %i.ik, %broadcast.splat74 ; 2 uses
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %index76
  store <8 x float> %i.il, ptr %i.im, align 4, !tbaa !211, !alias.scope !849, !noalias !850
  %wide.gep = getelementptr inbounds nuw [16 x i8], ptr %i.ie, <8 x i64> %vec.ind77 ; 2 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.il, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !359, !alias.scope !850
  %6 = uitofp nneg <8 x i32> %vec.ind79 to <8 x float>
  %7 = fdiv <8 x float> %6, %broadcast.splat74
  %wide.gep80 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %7, <8 x ptr> align 4 %wide.gep80, <8 x i1> splat (i1 true)), !tbaa !360, !alias.scope !850
  %index.next81 = add nuw i64 %index76, 8         ; 2 uses
  %vec.ind.next82.a = add nuw nsw <8 x i64> %vec.ind77, splat (i64 8)
  %vec.ind.next83 = add <8 x i32> %vec.ind78, splat (i32 8)
  %vec.ind.next84 = add <8 x i32> %vec.ind79, splat (i32 8)
  %i.in = icmp eq i64 %index.next81, %n.vec72
  br i1 %i.in, label %middle.block85, label %vector.body75, !llvm.loop !844

middle.block85:                                   ; preds = %vector.body75
  %cmp.n86 = icmp eq i64 %n.vec72, %wide.trip.count22
  br i1 %cmp.n86, label %._crit_edge12, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph11.split, %middle.block85
  %indvars.iv19.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph11.split ], [ %n.vec72, %middle.block85 ] ; 3 uses
  %xtraiter91 = and i64 %wide.trip.count22, 3     ; 2 uses
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol.preheader

scalar.ph.prol.preheader:                         ; preds = %scalar.ph.preheader
  %i.io = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.prol, %scalar.ph.prol.preheader
  %indvars.iv19.prol = phi i64 [ %indvars.iv.next20.prol, %scalar.ph.prol ], [ %indvars.iv19.ph, %scalar.ph.prol.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.prol.preheader ]
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19.prol
  %i.ir = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19.prol
  %indvars.iv.next20.prol = add nuw nsw i64 %indvars.iv19.prol, 1 ; 3 uses
  %i.is = trunc nsw i64 %indvars.iv19.prol to i32
  %i.it = trunc nsw i64 %indvars.iv.next20.prol to i32
  %i.iu = insertelement <2 x i32> poison, i32 %i.is, i64 0
  %i.iv = insertelement <2 x i32> %i.iu, i32 %i.it, i64 1
  %i.iw = uitofp nneg <2 x i32> %i.iv to <2 x float>
  %i.ix = fdiv <2 x float> %i.iw, %i.ip           ; 2 uses
  %i.iy = extractelement <2 x float> %i.ix, i64 0
  store float %i.iy, ptr %i.iq, align 4, !tbaa !211
  store <2 x float> %i.ix, ptr %i.ir, align 4, !tbaa !211
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter91
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !845

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv19.unr = phi i64 [ %indvars.iv19.ph, %scalar.ph.preheader ], [ %indvars.iv.next20.prol, %scalar.ph.prol ]
  %i.iz = sub nsw i64 %indvars.iv19.ph, %wide.trip.count22
  %i.ja = icmp ugt i64 %i.iz, -4
  br i1 %i.ja, label %._crit_edge12, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %i.jb = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jh = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge12:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.lr.ph11.split.us, %middle.block85, %middle.block, %vec.epilog.middle.block, %.._crit_edge12_crit_edge
  %i.jj = phi ptr [ %.pre, %.._crit_edge12_crit_edge ], [ %i.hf, %middle.block ], [ %i.hf, %middle.block85 ], [ %i.hf, %vec.epilog.middle.block ], [ %i.hf, %.lr.ph11.split.us ], [ %i.hf, %scalar.ph ], [ %i.hf, %scalar.ph.prol.loopexit ]
  %i.jk = sext i32 %i.hb to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %i.jk
  store float 1.000000e+00, ptr %i.jl, align 4, !tbaa !211
  br label %bb.v

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv19 = phi i64 [ %indvars.iv19.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next20.3, %scalar.ph ] ; 7 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv19
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv19
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1 ; 4 uses
  %i.jo = trunc nsw i64 %indvars.iv19 to i32
  %i.jp = trunc nsw i64 %indvars.iv.next20 to i32
  %i.jq = insertelement <2 x i32> poison, i32 %i.jo, i64 0
  %i.jr = insertelement <2 x i32> %i.jq, i32 %i.jp, i64 1
  %i.js = uitofp nneg <2 x i32> %i.jr to <2 x float>
  %i.jt = fdiv <2 x float> %i.js, %i.jc           ; 2 uses
  %i.ju = extractelement <2 x float> %i.jt, i64 0
  store float %i.ju, ptr %i.jm, align 4, !tbaa !211
  store <2 x float> %i.jt, ptr %i.jn, align 4, !tbaa !211
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20
  %i.jw = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20
  %indvars.iv.next20.1 = add nuw nsw i64 %indvars.iv19, 2 ; 4 uses
  %i.jx = trunc nsw i64 %indvars.iv.next20 to i32
  %i.jy = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.jz = insertelement <2 x i32> poison, i32 %i.jx, i64 0
  %i.ka = insertelement <2 x i32> %i.jz, i32 %i.jy, i64 1
  %i.kb = uitofp nneg <2 x i32> %i.ka to <2 x float>
  %i.kc = fdiv <2 x float> %i.kb, %i.je           ; 2 uses
  %i.kd = extractelement <2 x float> %i.kc, i64 0
  store float %i.kd, ptr %i.jv, align 4, !tbaa !211
  store <2 x float> %i.kc, ptr %i.jw, align 4, !tbaa !211
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.1
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.1
  %indvars.iv.next20.2 = add nuw nsw i64 %indvars.iv19, 3 ; 4 uses
  %i.kg = trunc nsw i64 %indvars.iv.next20.1 to i32
  %i.kh = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.ki = insertelement <2 x i32> poison, i32 %i.kg, i64 0
  %i.kj = insertelement <2 x i32> %i.ki, i32 %i.kh, i64 1
  %i.kk = uitofp nneg <2 x i32> %i.kj to <2 x float>
  %i.kl = fdiv <2 x float> %i.kk, %i.jg           ; 2 uses
  %i.km = extractelement <2 x float> %i.kl, i64 0
  store float %i.km, ptr %i.ke, align 4, !tbaa !211
  store <2 x float> %i.kl, ptr %i.kf, align 4, !tbaa !211
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %indvars.iv.next20.2
  %i.ko = getelementptr inbounds nuw [16 x i8], ptr %i.ie, i64 %indvars.iv.next20.2
  %indvars.iv.next20.3 = add nuw nsw i64 %indvars.iv19, 4 ; 3 uses
  %i.kp = trunc nsw i64 %indvars.iv.next20.2 to i32
  %i.kq = trunc nsw i64 %indvars.iv.next20.3 to i32
  %i.kr = insertelement <2 x i32> poison, i32 %i.kp, i64 0
  %i.ks = insertelement <2 x i32> %i.kr, i32 %i.kq, i64 1
  %i.kt = uitofp nneg <2 x i32> %i.ks to <2 x float>
  %i.ku = fdiv <2 x float> %i.kt, %i.ji           ; 2 uses
  %i.kv = extractelement <2 x float> %i.ku, i64 0
  store float %i.kv, ptr %i.kn, align 4, !tbaa !211
  store <2 x float> %i.ku, ptr %i.ko, align 4, !tbaa !211
  %exitcond23.not.3 = icmp eq i64 %indvars.iv.next20.3, %wide.trip.count22
  br i1 %exitcond23.not.3, label %._crit_edge12, label %scalar.ph, !llvm.loop !846

bb.v:                                             ; preds = %._crit_edge12, %bb.t
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %.loopexit, label %bb.t, !llvm.loop !847

.loopexit:                                        ; preds = %bb.v, %bb.s, %bb.i
  ret void

bb.w:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit90, %_ZN3gmx14LogEntryWriterD2Ev.exit74
  %.pn66.pn = phi { ptr, i32 } [ %.pn66, %_ZN3gmx14LogEntryWriterD2Ev.exit74 ], [ %.pn, %_ZN3gmx14LogEntryWriterD2Ev.exit90 ]
  resume { ptr, i32 } %.pn66.pn
}

declare void @_Z9set_ddboxRK12gmx_domdec_tbPA3_KfbN3gmx8ArrayRefIKNS5_11BasicVectorIfEEEEP11gmx_ddbox_t(ptr noundef nonnull align 8 dereferenceable(1097), i1 noundef zeroext, ptr noundef, i1 noundef zeroext, ptr, ptr, ptr noundef) local_unnamed_addr #5

declare void @_Z15distributeStateRKN3gmx8MDLoggerEP12gmx_domdec_tRK10gmx_mtop_tP7t_stateRK11gmx_ddbox_tS9_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(768), ptr noundef, ptr noundef nonnull align 4 dereferenceable(200), ptr noundef) local_unnamed_addr #5

declare void @_Z28dd_resize_atominfo_and_stateP10t_forcerecP7t_statei(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL15make_dd_indicesP12gmx_domdec_ti(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 4, !tbaa !384  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !371
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !369  ; 7 uses
  %i.g = icmp sgt i32 %i.b, 0
  br i1 %i.g, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 356
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %wide.trip.count = zext nneg i32 %i.b to i64
  %i.m = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge82:                                    ; preds = %._crit_edge, %bb.a
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %._crit_edge ]
  ret i32 %.038.lcssa

bb.b:                                             ; preds = %.lr.ph81, %._crit_edge
  %indvars.iv87 = phi i64 [ 0, %.lr.ph81 ], [ %indvars.iv.next88, %._crit_edge ] ; 5 uses
  %.03778 = phi i32 [ %1, %.lr.ph81 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.03877 = phi i32 [ 0, %.lr.ph81 ], [ %spec.select, %._crit_edge ]
  %i.n = icmp eq i64 %indvars.iv87, 0             ; 2 uses
  br i1 %i.n, label %.split, label %.split41

.split:                                           ; preds = %bb.b
  %i.o = load i32, ptr %i.h, align 8, !tbaa !210  ; 2 uses
  %i.p = load i32, ptr %i.i, align 4, !tbaa !210  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.o, %i.p
  br i1 %.not.i.i, label %bb.c, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit

bb.c:                                             ; preds = %.split
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

.split41:                                         ; preds = %bb.b
  %i.q = getelementptr [4 x i8], ptr %i.h, i64 %indvars.iv87 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !210  ; 3 uses
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !210  ; 2 uses
  %.not.i.i44 = icmp sgt i32 %i.r, %i.t
  br i1 %.not.i.i44, label %bb.d, label %_ZNK3gmx11DomdecZones9atomRangeEi.exit

bb.d:                                             ; preds = %.split41
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.129, i32 noundef 111) #29
  unreachable

_ZNK3gmx11DomdecZones9atomRangeEi.exit:           ; preds = %.split, %.split41
  %i.u = phi i32 [ %i.r, %.split41 ], [ %i.o, %.split ]
  %phi.call.in = phi i32 [ %i.t, %.split41 ], [ %i.p, %.split ] ; 2 uses
  %.035 = phi i32 [ %i.r, %.split41 ], [ %1, %.split ] ; 2 uses
  %i.v = icmp slt i32 %.035, %phi.call.in
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK3gmx11DomdecZones9atomRangeEi.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv87
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210
  %i.y = add nsw i32 %i.x, %i.u
end_hunk_0
