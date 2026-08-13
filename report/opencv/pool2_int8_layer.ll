inline.NumInlined: 900
inline.NumDeleted: 417
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL11avgPoolInt8EPKvPvRKNS5_14dnn5_v202606059ConvStateEfifibbE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %indvars.iv.next.i.us.us.us.us.i.i.prol = or disjoint i64 %indvars.iv.i.us.us.us.us.i.i.ph, 1
  br label %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit

.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit: ; preds = %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.preheader76
  %indvars.iv.i.us.us.us.us.i.i.unr = phi i64 [ %indvars.iv.i.us.us.us.us.i.i.ph, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.preheader76 ], [ %indvars.iv.next.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol ]
  %i.ie = icmp eq i64 %indvars.iv.i.us.us.us.us.i.i.ph, %i.fx
  br i1 %i.ie, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader: ; preds = %.lr.ph31.us.us.us.us.us.i.us.us.us.us.i.i
  br i1 %min.iters.check, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader
  %i.if = add i32 %i.gk, %i.gv
  %i.ig = add i32 %i.if, %i.gz
  %i.ih = mul i32 %i.r, %i.ig
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %scevgep46.a = getelementptr i8, ptr %.011664.us.us.i.us.i.i, i64 %i.ii
  %scevgep48 = getelementptr i8, ptr %scevgep47, i64 %i.ii
  %bound0 = icmp ult ptr %.sroa.021.0.i.i.i, %scevgep48
  %bound1 = icmp ult ptr %scevgep46.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pre119.i.us.us.us.us.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hd, i64 %index ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  %wide.load = load <4 x i8>, ptr %i.ij, align 1, !tbaa !54, !alias.scope !369
  %wide.load49.a = load <4 x i8>, ptr %i.ik, align 1, !tbaa !54, !alias.scope !369
  %i.il = zext <4 x i8> %wide.load to <4 x i32>
  %i.im = zext <4 x i8> %wide.load49.a to <4 x i32>
  %i.in = sub <4 x i32> %i.il, %broadcast.splat
  %i.io = sub <4 x i32> %i.im, %broadcast.splat
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %index ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16 ; 2 uses
  %wide.load50 = load <4 x i32>, ptr %i.ip, align 4, !tbaa !111, !alias.scope !372, !noalias !369
  %wide.load51 = load <4 x i32>, ptr %i.iq, align 4, !tbaa !111, !alias.scope !372, !noalias !369
  %i.ir = add nsw <4 x i32> %i.in, %wide.load50
  %i.is = add nsw <4 x i32> %i.io, %wide.load51
  store <4 x i32> %i.ir, ptr %i.ip, align 4, !tbaa !111, !alias.scope !372, !noalias !369
  store <4 x i32> %i.is, ptr %i.iq, align 4, !tbaa !111, !alias.scope !372, !noalias !369
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.it = icmp eq i64 %index.next, %n.vec
  br i1 %i.it, label %middle.block, label %vector.body, !llvm.loop !374

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75: ; preds = %vector.memcheck, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader, %middle.block
  %indvars.iv86.i.us.us.us.us.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod80.not, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol: ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75
  %i.iu = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv86.i.us.us.us.us.i.i.ph
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !54
  %i.iw = zext i8 %i.iv to i32
  %i.ix = sub i32 %i.iw, %.pre119.i.us.us.us.us.i.i
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv86.i.us.us.us.us.i.i.ph ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !111
  %i.ja = add nsw i32 %i.ix, %i.iz
  store i32 %i.ja, ptr %i.iy, align 4, !tbaa !111
  %indvars.iv.next87.i.us.us.us.us.i.i.prol = or disjoint i64 %indvars.iv86.i.us.us.us.us.i.i.ph, 1
  br label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit: ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75
  %indvars.iv86.i.us.us.us.us.i.i.unr = phi i64 [ %indvars.iv86.i.us.us.us.us.i.i.ph, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.preheader75 ], [ %indvars.iv.next87.i.us.us.us.us.i.i.prol, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol ]
  %i.jb = icmp eq i64 %indvars.iv86.i.us.us.us.us.i.i.ph, %i.fy
  br i1 %i.jb, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i

.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i: ; preds = %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i
  %indvars.iv.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.i.1, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv.i.us.us.us.us.i.i.unr, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ] ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv.i.us.us.us.us.i.i
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !54
  %i.je = sext i8 %i.jd to i32
  %i.jf = sub i32 %i.je, %.pre119.i.us.us.us.us.i.i
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv.i.us.us.us.us.i.i ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !111
  %i.ji = add nsw i32 %i.jf, %i.jh
  store i32 %i.ji, ptr %i.jg, align 4, !tbaa !111
  %indvars.iv.next.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv.next.i.us.us.us.us.i.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !54
  %i.jl = sext i8 %i.jk to i32
  %i.jm = sub i32 %i.jl, %.pre119.i.us.us.us.us.i.i
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv.next.i.us.us.us.us.i.i ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !111
  %i.jp = add nsw i32 %i.jm, %i.jo
  store i32 %i.jp, ptr %i.jn, align 4, !tbaa !111
  %indvars.iv.next.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i.i, 2 ; 2 uses
  %exitcond.not.i.us.us.us.us.i.i.1 = icmp eq i64 %indvars.iv.next.i.us.us.us.us.i.i.1, %i.fq
  br i1 %exitcond.not.i.us.us.us.us.i.i.1, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i, !llvm.loop !375

.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i: ; preds = %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i
  %indvars.iv86.i.us.us.us.us.i.i = phi i64 [ %indvars.iv.next87.i.us.us.us.us.i.i.1, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv86.i.us.us.us.us.i.i.unr, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ] ; 4 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv86.i.us.us.us.us.i.i
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !54
  %i.js = zext i8 %i.jr to i32
  %i.jt = sub i32 %i.js, %.pre119.i.us.us.us.us.i.i
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv86.i.us.us.us.us.i.i ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !111
  %i.jw = add nsw i32 %i.jt, %i.jv
  store i32 %i.jw, ptr %i.ju, align 4, !tbaa !111
  %indvars.iv.next87.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv86.i.us.us.us.us.i.i, 1 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv.next87.i.us.us.us.us.i.i
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !54
  %i.jz = zext i8 %i.jy to i32
  %i.ka = sub i32 %i.jz, %.pre119.i.us.us.us.us.i.i
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv.next87.i.us.us.us.us.i.i ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !111
  %i.kd = add nsw i32 %i.ka, %i.kc
  store i32 %i.kd, ptr %i.kb, align 4, !tbaa !111
  %indvars.iv.next87.i.us.us.us.us.i.i.1 = add nuw nsw i64 %indvars.iv86.i.us.us.us.us.i.i, 2 ; 2 uses
  %exitcond91.not.i.us.us.us.us.i.i.1 = icmp eq i64 %indvars.iv.next87.i.us.us.us.us.i.i.1, %i.fq
  br i1 %exitcond91.not.i.us.us.us.us.i.i.1, label %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i, !llvm.loop !376

.loopexit.us.us.us.us.us.i.us.us.us.us.i.i:       ; preds = %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i, %middle.block72, %middle.block, %bb.ag, %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i
  %.pn27.us.us.us.us.us.i.us.us.us.us.i.i = phi i32 [ %i.fg, %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i ], [ 1, %bb.ag ], [ 1, %middle.block ], [ 1, %middle.block72 ], [ 1, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ], [ 1, %.lr.ph31.split.us.us.us.us.us.us.i.us.us.us.us.i.i ], [ 1, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i ], [ 1, %.lr.ph31.split.us52.us.us.us.us.i.us.us.us.us.i.i.prol.loopexit ]
  %.2126.us.us.us.us.us.i.us.us.us.us.i.i = add nuw nsw i32 %.pn27.us.us.us.us.us.i.us.us.us.us.i.i, %.012432.us.us.us.us.us.i.us.us.us.us.i.i ; 2 uses
  %indvars.iv.next93.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv92.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond96.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next93.i.us.us.us.us.i.i, %wide.trip.count95.i.i.i
  br i1 %exitcond96.not.i.us.us.us.us.i.i, label %._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i, label %.lr.ph34.us.us.us.us.us.i.us.us.us.us.i.i, !llvm.loop !377

._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i: ; preds = %.loopexit.us.us.us.us.us.i.us.us.us.us.i.i
  %i.ke = tail call i32 @llvm.umax.i32(i32 %.2126.us.us.us.us.us.i.us.us.us.us.i.i, i32 1)
  %i.kf = uitofp nneg i32 %i.ke to float
  %i.kg = fdiv nnan float 1.000000e+00, %i.kf
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i, label %.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i

.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i:        ; preds = %._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i
  %i.kh = mul nuw nsw i64 %indvars.iv103.i.us.us.us.us.i.i, %i.fs
  %invariant.gep156.sink.i.us.us.us.us.i.i = getelementptr inbounds nuw i8, ptr %.212044.us.us.us.us.us.i.us.us.us.i.i, i64 %i.kh
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i
  %indvars.iv97.i.us.us.us.us.i.i = phi i64 [ 0, %.lr.ph37.us.us.us.us.us.i.us.us.us.us.i.i ], [ %indvars.iv.next98.i.us.us.us.us.i.i, %bb.ak ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv97.i.us.us.us.us.i.i
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !111
  %i.kk = sitofp i32 %i.kj to float
  %i.kl = fmul float %i.kg, %i.kk
  %i.km = load ptr, ptr %i.fj, align 8, !tbaa !378, !nonnull !109, !align !280
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !111
  %i.ko = sitofp i32 %i.kn to float
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.el, float %i.ko)
  %i.kq = insertelement <4 x float> poison, float %i.kp, i64 0
  %i.kr = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.kq) ; 2 uses
  %i.ks = load ptr, ptr %i.fh, align 8, !tbaa !361, !nonnull !109
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !91, !range !108, !noundef !109
  %i.ku = trunc nuw i8 %i.kt to i1
  br i1 %i.ku, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.kv = tail call i32 @llvm.smax.i32(i32 %i.kr, i32 -128)
  %.sroa.speculated.us.us.us.us.us.i.us.us.us.us.i.i = tail call i32 @llvm.smin.i32(i32 %i.kv, i32 127)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.kw = tail call i32 @llvm.smax.i32(i32 %i.kr, i32 0)
  %i.kx = tail call i32 @llvm.umin.i32(i32 %i.kw, i32 255)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink158.i.us.us.us.us.i.i = phi i32 [ %i.kx, %bb.aj ], [ %.sroa.speculated.us.us.us.us.us.i.us.us.us.us.i.i, %bb.ai ]
  %i.ky = trunc i32 %.sink158.i.us.us.us.us.i.i to i8
  %gep157.i.us.us.us.us.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep156.sink.i.us.us.us.us.i.i, i64 %indvars.iv97.i.us.us.us.us.i.i
  store i8 %i.ky, ptr %gep157.i.us.us.us.us.i.i, align 1, !tbaa !54
  %indvars.iv.next98.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv97.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond102.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next98.i.us.us.us.us.i.i, %i.fq
  br i1 %exitcond102.not.i.us.us.us.us.i.i, label %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i, label %bb.ah, !llvm.loop !379

._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i:   ; preds = %bb.ak, %._crit_edge.us.us.us.us.us.loopexit.i.us.us.us.us.i.i
  %indvars.iv.next104.i.us.us.us.us.i.i = add nuw nsw i64 %indvars.iv103.i.us.us.us.us.i.i, 1 ; 2 uses
  %exitcond107.not.i.us.us.us.us.i.i = icmp eq i64 %indvars.iv.next104.i.us.us.us.us.i.i, %wide.trip.count106.i.i.i
  br i1 %exitcond107.not.i.us.us.us.us.i.i, label %._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i, label %bb.af, !llvm.loop !380

._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i: ; preds = %._crit_edge38.us.us.us.us.us.i.us.us.us.us.i.i
  %i.kz = add nuw nsw i32 %.012843.us.us.us.us.us.i.us.us.us.i.i, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.212044.us.us.us.us.us.i.us.us.us.i.i, i64 %i.fl ; 3 uses
  %exitcond108.not.i.us.us.us.i.i = icmp eq i32 %i.kz, %i.co
  br i1 %exitcond108.not.i.us.us.us.i.i, label %._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i, label %.lr.ph41.us.us.us.us.us.i.us.us.us.i.i, !llvm.loop !381

._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i: ; preds = %._crit_edge42.us.us.us.us.us.i.split.us.us.us.us.i.i
  %i.lb = add nuw nsw i32 %.012253.us.us.us.us.i.us.us.i.i, 1 ; 2 uses
  %exitcond109.not.i.us.us.i.i = icmp eq i32 %i.lb, %i.ch
  br i1 %exitcond109.not.i.us.us.i.i, label %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i, label %.lr.ph46.us.us.us.us.i.us.us.i.i, !llvm.loop !382

._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i: ; preds = %._crit_edge47.split.us.us.us.us.us.i.split.us.us.us.i.i
  %i.lc = add nsw i32 %.012162.us.us.i.us.i.i, 1  ; 2 uses
  %i.ld = getelementptr i8, ptr %.011664.us.us.i.us.i.i, i64 %i.fm
  %exitcond110.not.i.us.i.i = icmp eq i32 %i.lc, %.val3
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond110.not.i.us.i.i, label %._crit_edge67.split.i.i.i, label %.preheader28.us.us.i.us.i.i, !llvm.loop !383

.preheader28.us.us.preheader.i.split.i.i:         ; preds = %.preheader28.us.us.preheader.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge67.split.i.i.i, label %.preheader28.us.us.i.i.i.a

.preheader28.us.us.i.i.i.a:                       ; preds = %.preheader28.us.us.preheader.i.split.i.i, %._crit_edge.split.us.split.us.us.us.i.split.split.i.i
  %.011863.us.us.i.i.i = phi ptr [ %17, %._crit_edge.split.us.split.us.us.us.i.split.split.i.i ], [ %i.ez, %.preheader28.us.us.preheader.i.split.i.i ]
  %.012162.us.us.i.i.i = phi i32 [ %i.lv, %._crit_edge.split.us.split.us.us.us.i.split.split.i.i ], [ %.val2, %.preheader28.us.us.preheader.i.split.i.i ]
  br label %.lr.ph46.us.us.us.us.i.i.i.a

.lr.ph46.us.us.us.us.i.i.i.a:                     ; preds = %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i, %.preheader28.us.us.i.i.i.a
  %.111954.us.us.us.us.i.i.i.a = phi ptr [ %.011863.us.us.i.i.i, %.preheader28.us.us.i.i.i.a ], [ %17, %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i ]
  %.012253.us.us.us.us.i.i.i = phi i32 [ 0, %.preheader28.us.us.i.i.i.a ], [ %18, %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i ]
  br label %.lr.ph41.us.us.us.us.us.i.i.i

.lr.ph41.us.us.us.us.us.i.i.i:                    ; preds = %._crit_edge42.us.us.us.us.us.i.split.split.i.i, %.lr.ph46.us.us.us.us.i.i.i.a
  %.212044.us.us.us.us.us.i.i.i = phi ptr [ %.111954.us.us.us.us.i.i.i.a, %.lr.ph46.us.us.us.us.i.i.i.a ], [ %17, %._crit_edge42.us.us.us.us.us.i.split.split.i.i ] ; 2 uses
  %.012843.us.us.us.us.us.i.i.i = phi i32 [ 0, %.lr.ph46.us.us.us.us.i.i.i.a ], [ %16, %._crit_edge42.us.us.us.us.us.i.split.split.i.i ]
  br label %.lr.ph.us.us.us.us.us.preheader.i.i.i

.lr.ph.us.us.us.us.us.preheader.i.i.i:            ; preds = %._crit_edge38.us.us.us.us.us.i.loopexit.i.i, %.lr.ph41.us.us.us.us.us.i.i.i
  %indvars.iv103.i.i.i = phi i64 [ %indvars.iv.next104.i.i.i, %._crit_edge38.us.us.us.us.us.i.loopexit.i.i ], [ 0, %.lr.ph41.us.us.us.us.us.i.i.i ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.021.0.i.i.i, i8 0, i64 %i.fr, i1 false), !tbaa !111
  %i.le = mul nuw nsw i64 %indvars.iv103.i.i.i, %i.fs
  %invariant.gep156.sink.i.i.i = getelementptr inbounds nuw i8, ptr %.212044.us.us.us.us.us.i.i.i, i64 %i.le
  br label %bb.al

bb.al:                                            ; preds = %bb.ao, %.lr.ph.us.us.us.us.us.preheader.i.i.i
  %indvars.iv97.i.i.i = phi i64 [ 0, %.lr.ph.us.us.us.us.us.preheader.i.i.i ], [ %indvars.iv.next98.i.i.i, %bb.ao ] ; 3 uses
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %.sroa.021.0.i.i.i, i64 %indvars.iv97.i.i.i
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !111
  %i.lh = sitofp i32 %i.lg to float
  %i.li = load ptr, ptr %i.fj, align 8, !tbaa !378, !nonnull !109, !align !280
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !111
  %i.lk = sitofp i32 %i.lj to float
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.lh, float %i.el, float %i.lk)
  %i.lm = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.ln = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.lm) ; 2 uses
  %i.lo = load ptr, ptr %i.fh, align 8, !tbaa !361, !nonnull !109
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !91, !range !108, !noundef !109
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.lr = tail call i32 @llvm.smax.i32(i32 %i.ln, i32 -128)
  %.sroa.speculated.us.us.us.us.us.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.lr, i32 127)
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ls = tail call i32 @llvm.smax.i32(i32 %i.ln, i32 0)
  %i.lt = tail call i32 @llvm.umin.i32(i32 %i.ls, i32 255)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.sink158.i.i.i = phi i32 [ %i.lt, %bb.an ], [ %.sroa.speculated.us.us.us.us.us.i.i.i, %bb.am ]
  %i.lu = trunc i32 %.sink158.i.i.i to i8
  %gep157.i.i.i = getelementptr inbounds nuw i8, ptr %invariant.gep156.sink.i.i.i, i64 %indvars.iv97.i.i.i
  store i8 %i.lu, ptr %gep157.i.i.i, align 1, !tbaa !54
  %indvars.iv.next98.i.i.i = add nuw nsw i64 %indvars.iv97.i.i.i, 1 ; 2 uses
  %exitcond102.not.i.i.i = icmp eq i64 %indvars.iv.next98.i.i.i, %i.fq
  br i1 %exitcond102.not.i.i.i, label %._crit_edge38.us.us.us.us.us.i.loopexit.i.i, label %bb.al, !llvm.loop !379

._crit_edge38.us.us.us.us.us.i.loopexit.i.i:      ; preds = %bb.ao
  %indvars.iv.next104.i.i.i = add nuw nsw i64 %indvars.iv103.i.i.i, 1 ; 2 uses
  %exitcond107.not.i.i.i = icmp eq i64 %indvars.iv.next104.i.i.i, %wide.trip.count106.i.i.i
  br i1 %exitcond107.not.i.i.i, label %._crit_edge42.us.us.us.us.us.i.split.split.i.i, label %.lr.ph.us.us.us.us.us.preheader.i.i.i, !llvm.loop !380

._crit_edge42.us.us.us.us.us.i.split.split.i.i:   ; preds = %._crit_edge38.us.us.us.us.us.i.loopexit.i.i
  %16 = add nuw nsw i32 %.012843.us.us.us.us.us.i.i.i, 1 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %.212044.us.us.us.us.us.i.i.i, i64 %i.fl ; 3 uses
  %exitcond108.not.i.i.i = icmp eq i32 %16, %i.co
  br i1 %exitcond108.not.i.i.i, label %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i, label %.lr.ph41.us.us.us.us.us.i.i.i, !llvm.loop !381

._crit_edge47.split.us.us.us.us.us.i.split.split.i.i: ; preds = %._crit_edge42.us.us.us.us.us.i.split.split.i.i
  %18 = add nuw nsw i32 %.012253.us.us.us.us.i.i.i, 1 ; 2 uses
  %exitcond109.not.i.i.i = icmp eq i32 %18, %i.ch
  br i1 %exitcond109.not.i.i.i, label %._crit_edge.split.us.split.us.us.us.i.split.split.i.i, label %.lr.ph46.us.us.us.us.i.i.i.a, !llvm.loop !382

._crit_edge.split.us.split.us.us.us.i.split.split.i.i: ; preds = %._crit_edge47.split.us.us.us.us.us.i.split.split.i.i
  %i.lv = add nsw i32 %.012162.us.us.i.i.i, 1     ; 2 uses
  %exitcond110.not.i.i.i = icmp eq i32 %i.lv, %.val3
  br i1 %exitcond110.not.i.i.i, label %._crit_edge67.split.i.thread.i.i, label %.preheader28.us.us.i.i.i.a, !llvm.loop !383

._crit_edge67.split.i.i.i:                        ; preds = %._crit_edge.split.us.split.us.us.us.i.split.us.us.i.i, %.preheader28.us.us.preheader.i.split.i.i, %.preheader28.lr.ph.i.i.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.021.0.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL11avgPoolInt8EPKvPvRKNS1_14dnn5_v202606059ConvStateEfifibbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %._crit_edge67.split.i.thread.i.i

._crit_edge67.split.i.thread.i.i:                 ; preds = %._crit_edge.split.us.split.us.us.us.i.split.split.i.i, %._crit_edge67.split.i.i.i
  %i.lw = ptrtoint ptr %.sroa.12.0.i.i.i to i64
  %i.lx = ptrtoint ptr %.sroa.021.0.i.i.i to i64
  %i.ly = sub i64 %i.lw, %i.lx
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.0.i.i.i, i64 noundef %i.ly) #22
  br label %"_ZSt10__invoke_rIvRZN2cv3dnnL11avgPoolInt8EPKvPvRKNS1_14dnn5_v202606059ConvStateEfifibbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit"

"_ZSt10__invoke_rIvRZN2cv3dnnL11avgPoolInt8EPKvPvRKNS1_14dnn5_v202606059ConvStateEfifibbE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %._crit_edge67.split.i.i.i, %._crit_edge67.split.i.thread.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL11avgPoolInt8EPKvPvRKNS5_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS2_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS0_14dnn5_v202606059ConvStateEfifibbE3$_0", ptr %0, align 8, !tbaa !299
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS2_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !129
  store ptr %.val, ptr %0, align 8, !tbaa !129
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS2_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(72) %.val6, i64 72, i1 false), !tbaa.struct !384
  store ptr %i.a, ptr %0, align 8, !tbaa !129
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS2_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !129 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS2_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 72) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS2_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL11avgPoolInt8EPKvPvRKNS2_14dnn5_v202606059ConvStateEfifibbE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.42", align 16   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !385
  %i.c = load ptr, ptr %0, align 8, !tbaa !153    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !385
  %i.k = load <2 x ptr>, ptr %0, align 8, !tbaa !386
  %i.l = load ptr, ptr %0, align 8, !tbaa !153    ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !385  ; 2 uses
  store ptr %i.m, ptr %i.i, align 16, !tbaa !385
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !386
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !386
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !386
  store ptr %i.j, ptr %i.a, align 8, !tbaa !385
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #22
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit:     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !150  ; 5 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  %i.v = sdiv exact i64 %i.u, 52
  %i.w = icmp ugt i64 %1, %i.v
  br i1 %i.w, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.s
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.x = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.06.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !387

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre16 = load ptr, ptr %i.r, align 8, !tbaa !150 ; 2 uses
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !153
  %.pre18 = ptrtoint ptr %.pre16 to i64
  %.pre19 = ptrtoint ptr %.pre17 to i64
  %.pre21 = sub i64 %.pre18, %.pre19
  %i.z = sdiv exact i64 %.pre21, -52
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, %bb.e
  %.pre-phi22 = phi i64 [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ 0, %bb.e ]
  %i.aa = phi ptr [ %.pre16, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = add i64 %.pre-phi22, %1                 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not13.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ] ; 2 uses
  %.01114.i.i.i.i = phi i64 [ %i.ac, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ]
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.015.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i11
  %i.ac = add i64 %.01114.i.i.i.i, -1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i12 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i12, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11, !llvm.loop !388

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #23 ; 0 uses
  invoke void @__cxa_rethrow() #24
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ah

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ], [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.r, align 8, !tbaa !150
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.k:                                             ; preds = %bb.d
  %i.ak = icmp eq i64 %1, 0
  br i1 %i.ak, label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.idx.i.i = mul nuw nsw i64 %1, 52
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i13

.lr.ph.i.i.i.i13:                                 ; preds = %.lr.ph.i.i.i.i13, %bb.l
  %.06.i.i.i.i14 = phi ptr [ %i.an, %.lr.ph.i.i.i.i13 ], [ %i.c, %bb.l ] ; 2 uses
  %i.am = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.06.i.i.i.i14, ptr noundef nonnull align 4 dereferenceable(52) %2) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i14, i64 52 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i.i.i15, label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit, label %.lr.ph.i.i.i.i13, !llvm.loop !387

_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i13
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !150
  br label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit

_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit: ; preds = %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit, %bb.k
  %i.ao = phi ptr [ %i.s, %bb.k ], [ %.pre, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit ]
  %.0.i.i = phi ptr [ %i.c, %bb.k ], [ %i.al, %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit.loopexit ] ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %.0.i.i
end_hunk_0
