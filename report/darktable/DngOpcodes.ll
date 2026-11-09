Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngOpcodes?download=true
inline.NumInlined: 1596
inline.NumDeleted: 857
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPItZNS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEE5applyERKNS_8RawImageEEUljjtE_EEvS9_T0_:bb.a
vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cd = phi i64 [ 0, %vector.ph ], [ %i.ck, %vector.body ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %wide.load = load <16 x i16>, ptr %i.ce, align 2, !tbaa !2039
  %i.cf = zext <16 x i16> %wide.load to <16 x i32>
  %i.cg = add nsw <16 x i32> %broadcast.splat59, %i.cf
  %i.ch = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.cg, <16 x i32> zeroinitializer)
  %i.ci = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ch, <16 x i32> splat (i32 65535))
  %i.cj = trunc nuw <16 x i32> %i.ci to <16 x i16>
  store <16 x i16> %i.cj, ptr %i.ce, align 2, !tbaa !2039
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = add nuw nsw i64 %i.cd, 16
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3224

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ]
  %i.cn = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.cu, %vec.epilog.vector.body ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %wide.load75 = load <4 x i16>, ptr %i.co, align 2, !tbaa !2039
  %i.cp = zext <4 x i16> %wide.load75 to <4 x i32>
  %i.cq = add nsw <4 x i32> %broadcast.splat70, %i.cp
  %i.cr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cq, <4 x i32> zeroinitializer)
  %i.cs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cr, <4 x i32> splat (i32 65535))
  %i.ct = trunc nuw <4 x i32> %i.cs to <4 x i16>
  store <4 x i16> %i.ct, ptr %i.co, align 2, !tbaa !2039
  %index.next76 = add nuw i64 %index73, 4         ; 2 uses
  %i.cu = add nuw nsw i64 %i.cn, 4
  %i.cv = icmp eq i64 %index.next76, %n.vec60
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n78, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3226

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3227

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cw = add nuw nsw i64 %indvars.iv, %i.cb      ; 3 uses
  %i.cx = and i64 %i.cw, 2147483648
  %i.cy = icmp eq i64 %i.cx, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp samesign ult i64 %i.cw, %i.bi
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cw, %i.bg            ; 2 uses
  %i.db = icmp samesign ule i64 %i.da, %i.bh
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.da ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !2039
  %i.de = zext i16 %i.dd to i32
  %i.df = add nsw i32 %i.bu, %i.de
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %i.dg = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 65535)
  %i.dh = trunc nuw i32 %i.dg to i16
  store i16 %i.dh, ptr %i.dc, align 2, !tbaa !2039
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3228
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPIfZNS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectYEE5applyERKNS_8RawImageEEUljjfE_EEvS9_T0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !134   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2034, !noalias !3246 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 592
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205, !noalias !3246 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2035, !noalias !3246
  %i.g = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2036, !noalias !3246
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2037, !noalias !3246
  %i.l = ashr i32 %i.k, 2                         ; 5 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sge i32 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 600
  %i.p = load i32, ptr %i.o, align 8, !tbaa !206, !noalias !3247
  %i.q = mul i32 %i.p, %i.d                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 604
  %i.s = load i32, ptr %i.r, align 4, !tbaa !208, !noalias !3247 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !209, !noalias !3247
  %i.v = mul nsw i32 %i.u, %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210, !noalias !3247
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2048 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !2049 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = sext i32 %i.aa to i64
  %i.ae = zext i32 %i.ac to i64
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = udiv i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, 1
  br label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.a, %bb.b
  %i.aj = phi i32 [ %i.ai, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !2050 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2051 ; 3 uses
  %.not.i20 = icmp eq i32 %i.al, 0
  br i1 %.not.i20, label %._crit_edge32.split, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21

_ZN8rawspeed19roundUpDivisionSafeEmm.exit21:      ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.ao = sext i32 %i.al to i64
  %i.ap = zext i32 %i.an to i64
  %i.aq = add nsw i64 %i.ao, -1
  %i.ar = udiv i64 %i.aq, %i.ap                   ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i64 %i.ar, 1
  %i.au = icmp ult i32 %i.as, 2147483647
  br i1 %i.au, label %.preheader27.lr.ph, label %._crit_edge32.split

.preheader27.lr.ph:                               ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  %i.av = icmp sgt i32 %i.aj, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = icmp sgt i32 %i.q, -1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  br i1 %i.av, label %.preheader27.lr.ph.split, label %._crit_edge32.split

.preheader27.lr.ph.split:                         ; preds = %.preheader27.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !2052 ; 4 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge32.split, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph.split
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !2053 ; 2 uses
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !2054
  %i.be = load i32, ptr %i.y, align 8, !tbaa !2055
  tail call void @llvm.assume(i1 %i.ay)
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !2067 ; 2 uses
  %i.bg = zext nneg i32 %i.q to i64               ; 8 uses
  %i.bh = zext nneg i32 %i.g to i64               ; 5 uses
  %i.bi = zext i32 %i.v to i64                    ; 5 uses
  %wide.trip.count44 = and i64 %i.at, 4294967295
  %wide.trip.count39 = zext nneg i32 %i.aj to i64
  %wide.trip.count = zext i32 %i.bb to i64        ; 9 uses
  %i.bj = add nuw nsw i32 %i.s, %i.bc
  %i.bk = mul i32 %i.l, %i.bj
  %i.bl = mul i32 %i.an, %i.l
  %min.iters.check = icmp ult i32 %i.bb, 4
  %min.iters.check56 = icmp ult i32 %i.bb, 32
  %i.bm = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec68 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n86 = icmp eq i64 %n.vec68, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge30
  %indvars.iv41 = phi i64 [ 0, %.preheader27.lr.ph.split.split ], [ %indvars.iv.next42, %._crit_edge30 ] ; 5 uses
  %i.bn = shl i64 %indvars.iv41, 2
  %i.bo = getelementptr i8, ptr %i.bf, i64 %i.bn
  %scevgep = getelementptr i8, ptr %i.bo, i64 4
  %i.bp = trunc i64 %indvars.iv41 to i32
  %i.bq = mul i32 %i.bl, %i.bp
  %i.br = add i32 %i.bq, %i.bk
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %3 = add nuw nsw i64 %wide.trip.count, %i.bs
  %i.bt = trunc nuw nsw i64 %indvars.iv41 to i32
  %i.bu = mul i32 %i.an, %i.bt
  %i.bv = add i32 %i.bc, %i.bu                    ; 2 uses
  %i.bw = icmp samesign ult i32 %i.bv, %i.x
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i32 %i.bv, %i.s             ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.i
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = mul nuw nsw i32 %i.bx, %i.l
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ca ; 7 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv41 ; 8 uses
  %i.cd = getelementptr [4 x i8], ptr %i.cb, i64 %i.bg
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bg
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge30, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %.preheader27.lr.ph, %.preheader27.lr.ph.split, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  ret void

iter.check:                                       ; preds = %.preheader27, %._crit_edge
  %indvars.iv36 = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next37, %._crit_edge ] ; 2 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv36 to i32
  %i.cg = mul i32 %i.ac, %i.cf
  %i.ch = add i32 %i.be, %i.cg
  %i.ci = mul i32 %i.ch, %i.d
  %invariant.op = add i32 %i.bd, %i.ci
  %i.cj = zext i32 %invariant.op to i64           ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ck = add nuw nsw i64 %i.cj, %i.bg            ; 2 uses
  %4 = add nuw nsw i64 %i.ck, %i.bs
  %i.cl = shl nuw nsw i64 %4, 2
  %gep = getelementptr nuw i8, ptr %i.b, i64 %i.cl
  %.reass93 = add nuw nsw i64 %3, %i.ck
  %i.cm = shl nuw nsw i64 %.reass93, 2
  %i.cn = getelementptr i8, ptr %i.b, i64 %i.cm
  %bound0 = icmp ult ptr %gep, %scevgep
  %bound1 = icmp ult ptr %i.cc, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.co = getelementptr [4 x i8], ptr %i.cd, i64 %i.cj
  %i.cp = load float, ptr %i.cc, align 4, !tbaa !2073, !alias.scope !3248
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.cp, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cq = phi i64 [ 0, %vector.ph ], [ %i.cz, %vector.body ] ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  %wide.load63 = load <8 x float>, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  %wide.load64 = load <8 x float>, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  %wide.load65 = load <8 x float>, ptr %i.cu, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  %i.cv = fadd <8 x float> %wide.load, %broadcast.splat67
  %i.cw = fadd <8 x float> %wide.load63, %broadcast.splat67
  %i.cx = fadd <8 x float> %wide.load64, %broadcast.splat67
  %i.cy = fadd <8 x float> %wide.load65, %broadcast.splat67
  store <8 x float> %i.cv, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  store <8 x float> %i.cw, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  store <8 x float> %i.cx, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  store <8 x float> %i.cy, ptr %i.cu, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = add nuw i64 %i.cq, 32
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !3240

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3064

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cj
  %i.dc = load float, ptr %i.cc, align 4, !tbaa !2073, !alias.scope !3248
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ]
  %i.dd = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.dg, %vec.epilog.vector.body ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dd ; 2 uses
  %wide.load81 = load <4 x float>, ptr %i.de, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  %i.df = fadd <4 x float> %wide.load81, %broadcast.splat83
  store <4 x float> %i.df, ptr %i.de, align 4, !tbaa !2073, !alias.scope !3249, !noalias !3248
  %index.next84 = add nuw i64 %index79, 4         ; 2 uses
  %i.dg = add nuw nsw i64 %i.dd, 4
  %i.dh = icmp eq i64 %index.next84, %n.vec68
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n86, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.di = add nuw nsw i64 %indvars.iv.prol, %i.cj ; 3 uses
  %i.dj = and i64 %i.di, 2147483648
  %i.dk = icmp eq i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp samesign ult i64 %i.di, %i.bi
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = add nuw nsw i64 %i.di, %i.bg            ; 2 uses
  %i.dn = icmp samesign ule i64 %i.dm, %i.bh
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dm ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !2073
  %i.dq = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.dr = fadd float %i.dp, %i.dq
  store float %i.dr, ptr %i.do, align 4, !tbaa !2073
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !3242

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ds = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op87 = add nuw nsw i64 1, %i.cj
  %invariant.op88 = add nuw nsw i64 2, %i.cj
  %invariant.op90 = add nuw nsw i64 3, %i.cj
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3243

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3244

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.du = add nuw nsw i64 %indvars.iv, %i.cj      ; 3 uses
  %i.dv = and i64 %i.du, 2147483648
  %i.dw = icmp eq i64 %i.dv, 0
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp samesign ult i64 %i.du, %i.bi
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.du, %i.bg            ; 2 uses
  %i.dz = icmp samesign ule i64 %i.dy, %i.bh
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dy ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !2073
  %i.ec = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.ed = fadd float %i.eb, %i.ec
  store float %i.ed, ptr %i.ea, align 4, !tbaa !2073
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op87 ; 3 uses
  %i.ee = and i64 %.reass, 2147483648
  %i.ef = icmp eq i64 %i.ee, 0
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp samesign ult i64 %.reass, %i.bi
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = add nuw nsw i64 %.reass, %i.bg          ; 2 uses
  %i.ei = icmp samesign ule i64 %i.eh, %i.bh
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.eh ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !2073
  %i.el = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.em = fadd float %i.ek, %i.el
  store float %i.em, ptr %i.ej, align 4, !tbaa !2073
  %.reass89 = add nuw nsw i64 %indvars.iv, %invariant.op88 ; 3 uses
  %i.en = and i64 %.reass89, 2147483648
  %i.eo = icmp eq i64 %i.en, 0
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ult i64 %.reass89, %i.bi
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %.reass89, %i.bg        ; 2 uses
  %i.er = icmp samesign ule i64 %i.eq, %i.bh
  tail call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.eq ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !2073
  %i.eu = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.ev = fadd float %i.et, %i.eu
  store float %i.ev, ptr %i.es, align 4, !tbaa !2073
  %.reass91 = add nuw nsw i64 %indvars.iv, %invariant.op90 ; 3 uses
  %i.ew = and i64 %.reass91, 2147483648
  %i.ex = icmp eq i64 %i.ew, 0
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp samesign ult i64 %.reass91, %i.bi
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = add nuw nsw i64 %.reass91, %i.bg        ; 2 uses
  %i.fa = icmp samesign ule i64 %i.ez, %i.bh
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ez ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !2073
  %i.fd = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.fe = fadd float %i.fc, %i.fd
  store float %i.fe, ptr %i.fb, align 4, !tbaa !2073
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3245
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DEf(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8rawspeed10DngOpcodes11PixelOpcodeC2ERKNS_8RawImageERNS_10ByteStreamERKNS_12iRectangle2DE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, i64 16), ptr %0, align 8, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %4, ptr %i.a, align 8, !tbaa !2031
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  %i.e = load i32, ptr %i.d, align 8, !tbaa !116  ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !117  ; 4 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp samesign ugt i64 %i.g, %i.j
  br i1 %.not.i.i.i.i.i.i, label %.invoke, label %bb.b
end_hunk_0
begin_hunk_1_@_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPItZNS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEE5applyERKNS_8RawImageEEUljjtE_EEvS9_T0_:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cd = phi i64 [ 0, %vector.ph ], [ %i.ck, %vector.body ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cd ; 2 uses
  %wide.load = load <16 x i16>, ptr %i.ce, align 2, !tbaa !2039
  %i.cf = zext <16 x i16> %wide.load to <16 x i32>
  %i.cg = add nsw <16 x i32> %broadcast.splat, %i.cf
  %i.ch = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.cg, <16 x i32> zeroinitializer)
  %i.ci = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ch, <16 x i32> splat (i32 65535))
  %i.cj = trunc nuw <16 x i32> %i.ci to <16 x i16>
  store <16 x i16> %i.cj, ptr %i.ce, align 2, !tbaa !2039
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ck = add nuw nsw i64 %i.cd, 16
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !3278

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert61 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat62 = shufflevector <4 x i32> %broadcast.splatinsert61, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ]
  %i.cn = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.cu, %vec.epilog.vector.body ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %wide.load75 = load <4 x i16>, ptr %i.co, align 2, !tbaa !2039
  %i.cp = zext <4 x i16> %wide.load75 to <4 x i32>
  %i.cq = add nsw <4 x i32> %broadcast.splat62, %i.cp
  %i.cr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cq, <4 x i32> zeroinitializer)
  %i.cs = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cr, <4 x i32> splat (i32 65535))
  %i.ct = trunc nuw <4 x i32> %i.cs to <4 x i16>
  store <4 x i16> %i.ct, ptr %i.co, align 2, !tbaa !2039
  %index.next76 = add nuw i64 %index73, 4         ; 2 uses
  %i.cu = add nuw nsw i64 %i.cn, 4
  %i.cv = icmp eq i64 %index.next76, %n.vec60
  br i1 %i.cv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3279

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n78, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3280

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3281

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cw = add nuw nsw i64 %indvars.iv, %i.cb      ; 3 uses
  %i.cx = and i64 %i.cw, 2147483648
  %i.cy = icmp eq i64 %i.cx, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp samesign ult i64 %i.cw, %i.bi
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = add nuw nsw i64 %i.cw, %i.bg            ; 2 uses
  %i.db = icmp samesign ule i64 %i.da, %i.bh
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.da ; 2 uses
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !2039
  %i.de = zext i16 %i.dd to i32
  %i.df = add nsw i32 %i.ca, %i.de
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.df, i32 0)
  %i.dg = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 65535)
  %i.dh = trunc nuw i32 %i.dg to i16
  store i16 %i.dh, ptr %i.dc, align 2, !tbaa !2039
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3282
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPIfZNS0_17OffsetPerRowOrColINS0_17DeltaRowOrColBase7SelectXEE5applyERKNS_8RawImageEEUljjfE_EEvS9_T0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !134   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2034, !noalias !3300 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 592
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205, !noalias !3300 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2035, !noalias !3300
  %i.g = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2036, !noalias !3300
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2037, !noalias !3300
  %i.l = ashr i32 %i.k, 2                         ; 5 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sge i32 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 600
  %i.p = load i32, ptr %i.o, align 8, !tbaa !206, !noalias !3301
  %i.q = mul i32 %i.p, %i.d                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 604
  %i.s = load i32, ptr %i.r, align 4, !tbaa !208, !noalias !3301 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !209, !noalias !3301
  %i.v = mul nsw i32 %i.u, %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210, !noalias !3301
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2048 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !2049 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = sext i32 %i.aa to i64
  %i.ae = zext i32 %i.ac to i64
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = udiv i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, 1
  br label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.a, %bb.b
  %i.aj = phi i32 [ %i.ai, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !2050 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2051 ; 3 uses
  %.not.i20 = icmp eq i32 %i.al, 0
  br i1 %.not.i20, label %._crit_edge32.split, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21

_ZN8rawspeed19roundUpDivisionSafeEmm.exit21:      ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.ao = sext i32 %i.al to i64
  %i.ap = zext i32 %i.an to i64
  %i.aq = add nsw i64 %i.ao, -1
  %i.ar = udiv i64 %i.aq, %i.ap                   ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i64 %i.ar, 1
  %i.au = icmp ult i32 %i.as, 2147483647
  br i1 %i.au, label %.preheader27.lr.ph, label %._crit_edge32.split

.preheader27.lr.ph:                               ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  %i.av = icmp sgt i32 %i.aj, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = icmp sgt i32 %i.q, -1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  br i1 %i.av, label %.preheader27.lr.ph.split, label %._crit_edge32.split

.preheader27.lr.ph.split:                         ; preds = %.preheader27.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !2052 ; 4 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge32.split, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph.split
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !2053 ; 2 uses
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !2054
  %i.be = load i32, ptr %i.y, align 8, !tbaa !2055
  tail call void @llvm.assume(i1 %i.ay)
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !2067 ; 3 uses
  %i.bg = zext nneg i32 %i.q to i64               ; 8 uses
  %i.bh = zext nneg i32 %i.g to i64               ; 5 uses
  %i.bi = zext i32 %i.v to i64                    ; 5 uses
  %wide.trip.count44 = and i64 %i.at, 4294967295
  %wide.trip.count39 = zext nneg i32 %i.aj to i64 ; 2 uses
  %wide.trip.count = zext i32 %i.bb to i64        ; 9 uses
  %i.bj = shl nuw nsw i64 %wide.trip.count39, 2
  %scevgep = getelementptr i8, ptr %i.bf, i64 %i.bj
  %i.bk = add nuw nsw i32 %i.s, %i.bc
  %i.bl = mul i32 %i.l, %i.bk
  %i.bm = mul i32 %i.an, %i.l
  %min.iters.check = icmp ult i32 %i.bb, 4
  %min.iters.check56 = icmp ult i32 %i.bb, 32
  %i.bn = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  %n.vec68 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n86 = icmp eq i64 %n.vec68, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge30
  %indvars.iv41 = phi i64 [ 0, %.preheader27.lr.ph.split.split ], [ %indvars.iv.next42, %._crit_edge30 ] ; 3 uses
  %i.bo = trunc i64 %indvars.iv41 to i32
  %i.bp = mul i32 %i.bm, %i.bo
  %i.bq = add i32 %i.bp, %i.bl
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %3 = add nuw nsw i64 %wide.trip.count, %i.br
  %i.bs = trunc nuw nsw i64 %indvars.iv41 to i32
  %i.bt = mul i32 %i.an, %i.bs
  %i.bu = add i32 %i.bc, %i.bt                    ; 2 uses
  %i.bv = icmp samesign ult i32 %i.bu, %i.x
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i32 %i.bu, %i.s             ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, %i.i
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = mul nuw nsw i32 %i.bw, %i.l
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bz ; 7 uses
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %i.bg
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bg
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge30, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %.preheader27.lr.ph, %.preheader27.lr.ph.split, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  ret void

iter.check:                                       ; preds = %.preheader27, %._crit_edge
  %indvars.iv36 = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next37, %._crit_edge ] ; 3 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv36 to i32
  %i.ce = mul i32 %i.ac, %i.cd
  %i.cf = add i32 %i.be, %i.ce
  %i.cg = mul i32 %i.cf, %i.d
  %invariant.op = add i32 %i.bd, %i.cg
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv36 ; 7 uses
  %i.ci = zext i32 %invariant.op to i64           ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cj = add nuw nsw i64 %i.ci, %i.bg            ; 2 uses
  %4 = add nuw nsw i64 %i.cj, %i.br
  %i.ck = shl nuw nsw i64 %4, 2
  %gep = getelementptr nuw i8, ptr %i.b, i64 %i.ck
  %.reass93 = add nuw nsw i64 %3, %i.cj
  %i.cl = shl nuw nsw i64 %.reass93, 2
  %i.cm = getelementptr i8, ptr %i.b, i64 %i.cl
  %bound0 = icmp ult ptr %gep, %scevgep
  %bound1 = icmp ult ptr %i.bf, %i.cm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cn = getelementptr [4 x i8], ptr %i.cb, i64 %i.ci
  %i.co = load float, ptr %i.ch, align 4, !tbaa !2073, !alias.scope !3302
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cp = phi i64 [ 0, %vector.ph ], [ %i.cy, %vector.body ] ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cn, i64 %i.cp ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.cq, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  %wide.load63 = load <8 x float>, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  %wide.load64 = load <8 x float>, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  %wide.load65 = load <8 x float>, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  %i.cu = fadd <8 x float> %wide.load, %broadcast.splat67
  %i.cv = fadd <8 x float> %wide.load63, %broadcast.splat67
  %i.cw = fadd <8 x float> %wide.load64, %broadcast.splat67
  %i.cx = fadd <8 x float> %wide.load65, %broadcast.splat67
  store <8 x float> %i.cu, ptr %i.cq, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  store <8 x float> %i.cv, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  store <8 x float> %i.cw, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  store <8 x float> %i.cx, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cy = add nuw i64 %i.cp, 32
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !3294

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3064

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ci
  %i.db = load float, ptr %i.ch, align 4, !tbaa !2073, !alias.scope !3302
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ]
  %i.dc = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.df, %vec.epilog.vector.body ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dc ; 2 uses
  %wide.load81 = load <4 x float>, ptr %i.dd, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  %i.de = fadd <4 x float> %wide.load81, %broadcast.splat83
  store <4 x float> %i.de, ptr %i.dd, align 4, !tbaa !2073, !alias.scope !3303, !noalias !3302
  %index.next84 = add nuw i64 %index79, 4         ; 2 uses
  %i.df = add nuw nsw i64 %i.dc, 4
  %i.dg = icmp eq i64 %index.next84, %n.vec68
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3295

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n86, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dh = add nuw nsw i64 %indvars.iv.prol, %i.ci ; 3 uses
  %i.di = and i64 %i.dh, 2147483648
  %i.dj = icmp eq i64 %i.di, 0
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp samesign ult i64 %i.dh, %i.bi
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = add nuw nsw i64 %i.dh, %i.bg            ; 2 uses
  %i.dm = icmp samesign ule i64 %i.dl, %i.bh
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dl ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !2073
  %i.dp = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.dq = fadd float %i.do, %i.dp
  store float %i.dq, ptr %i.dn, align 4, !tbaa !2073
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !3296

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dr = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op87 = add nuw nsw i64 1, %i.ci
  %invariant.op88 = add nuw nsw i64 2, %i.ci
  %invariant.op90 = add nuw nsw i64 3, %i.ci
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3297

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3298

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.dt = add nuw nsw i64 %indvars.iv, %i.ci      ; 3 uses
  %i.du = and i64 %i.dt, 2147483648
  %i.dv = icmp eq i64 %i.du, 0
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ult i64 %i.dt, %i.bi
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = add nuw nsw i64 %i.dt, %i.bg            ; 2 uses
  %i.dy = icmp samesign ule i64 %i.dx, %i.bh
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dx ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !2073
  %i.eb = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.ec = fadd float %i.ea, %i.eb
  store float %i.ec, ptr %i.dz, align 4, !tbaa !2073
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op87 ; 3 uses
  %i.ed = and i64 %.reass, 2147483648
  %i.ee = icmp eq i64 %i.ed, 0
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp samesign ult i64 %.reass, %i.bi
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %.reass, %i.bg          ; 2 uses
  %i.eh = icmp samesign ule i64 %i.eg, %i.bh
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.eg ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !2073
  %i.ek = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.el = fadd float %i.ej, %i.ek
  store float %i.el, ptr %i.ei, align 4, !tbaa !2073
  %.reass89 = add nuw nsw i64 %indvars.iv, %invariant.op88 ; 3 uses
  %i.em = and i64 %.reass89, 2147483648
  %i.en = icmp eq i64 %i.em, 0
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = icmp samesign ult i64 %.reass89, %i.bi
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %.reass89, %i.bg        ; 2 uses
  %i.eq = icmp samesign ule i64 %i.ep, %i.bh
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ep ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !2073
  %i.et = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.eu = fadd float %i.es, %i.et
  store float %i.eu, ptr %i.er, align 4, !tbaa !2073
  %.reass91 = add nuw nsw i64 %indvars.iv, %invariant.op90 ; 3 uses
  %i.ev = and i64 %.reass91, 2147483648
  %i.ew = icmp eq i64 %i.ev, 0
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ult i64 %.reass91, %i.bi
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = add nuw nsw i64 %.reass91, %i.bg        ; 2 uses
  %i.ez = icmp samesign ule i64 %i.ey, %i.bh
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ey ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !2073
  %i.fc = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.fd = fadd float %i.fb, %i.fc
  store float %i.fd, ptr %i.fa, align 4, !tbaa !2073
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3299
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectYEEE, i64 16), ptr %0, align 8, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2065 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2066
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
end_hunk_1
begin_hunk_2_@_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPItZNS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEE5applyERKNS_8RawImageEEUljjtE_EEvS9_T0_:bb.a
  %i.cg = mul nsw <16 x i32> %broadcast.splat59, %i.cf
  %i.ch = add nsw <16 x i32> %i.cg, splat (i32 512)
  %i.ci = ashr <16 x i32> %i.ch, splat (i32 10)
  %i.cj = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ci, <16 x i32> zeroinitializer)
  %i.ck = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.cj, <16 x i32> splat (i32 65535))
  %i.cl = trunc nuw <16 x i32> %i.ck to <16 x i16>
  store <16 x i16> %i.cl, ptr %i.ce, align 2, !tbaa !2039
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = add nuw nsw i64 %i.cd, 16
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !3310

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bw, i64 %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ]
  %i.cp = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.cy, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %wide.load75 = load <4 x i16>, ptr %i.cq, align 2, !tbaa !2039
  %i.cr = zext <4 x i16> %wide.load75 to <4 x i32>
  %i.cs = mul nsw <4 x i32> %broadcast.splat70, %i.cr
  %i.ct = add nsw <4 x i32> %i.cs, splat (i32 512)
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 10)
  %i.cv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cu, <4 x i32> zeroinitializer)
  %i.cw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cv, <4 x i32> splat (i32 65535))
  %i.cx = trunc nuw <4 x i32> %i.cw to <4 x i16>
  store <4 x i16> %i.cx, ptr %i.cq, align 2, !tbaa !2039
  %index.next76 = add nuw i64 %index73, 4         ; 2 uses
  %i.cy = add nuw nsw i64 %i.cp, 4
  %i.cz = icmp eq i64 %index.next76, %n.vec60
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3311

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n78, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3312

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3313

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.da = add nuw nsw i64 %indvars.iv, %i.cb      ; 3 uses
  %i.db = and i64 %i.da, 2147483648
  %i.dc = icmp eq i64 %i.db, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp samesign ult i64 %i.da, %i.bi
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.da, %i.bg            ; 2 uses
  %i.df = icmp samesign ule i64 %i.de, %i.bh
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.de ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !2039
  %i.di = zext i16 %i.dh to i32
  %i.dj = mul nsw i32 %i.bu, %i.di
  %i.dk = add nsw i32 %i.dj, 512
  %i.dl = ashr i32 %i.dk, 10
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dm = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 65535)
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %i.dg, align 2, !tbaa !2039
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3314
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPIfZNS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectYEE5applyERKNS_8RawImageEEUljjfE_EEvS9_T0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !134   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2034, !noalias !3332 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 592
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205, !noalias !3332 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2035, !noalias !3332
  %i.g = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2036, !noalias !3332
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2037, !noalias !3332
  %i.l = ashr i32 %i.k, 2                         ; 5 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sge i32 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 600
  %i.p = load i32, ptr %i.o, align 8, !tbaa !206, !noalias !3333
  %i.q = mul i32 %i.p, %i.d                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 604
  %i.s = load i32, ptr %i.r, align 4, !tbaa !208, !noalias !3333 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !209, !noalias !3333
  %i.v = mul nsw i32 %i.u, %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210, !noalias !3333
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2048 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !2049 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = sext i32 %i.aa to i64
  %i.ae = zext i32 %i.ac to i64
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = udiv i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, 1
  br label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.a, %bb.b
  %i.aj = phi i32 [ %i.ai, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !2050 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2051 ; 3 uses
  %.not.i20 = icmp eq i32 %i.al, 0
  br i1 %.not.i20, label %._crit_edge32.split, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21

_ZN8rawspeed19roundUpDivisionSafeEmm.exit21:      ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.ao = sext i32 %i.al to i64
  %i.ap = zext i32 %i.an to i64
  %i.aq = add nsw i64 %i.ao, -1
  %i.ar = udiv i64 %i.aq, %i.ap                   ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i64 %i.ar, 1
  %i.au = icmp ult i32 %i.as, 2147483647
  br i1 %i.au, label %.preheader27.lr.ph, label %._crit_edge32.split

.preheader27.lr.ph:                               ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  %i.av = icmp sgt i32 %i.aj, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = icmp sgt i32 %i.q, -1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  br i1 %i.av, label %.preheader27.lr.ph.split, label %._crit_edge32.split

.preheader27.lr.ph.split:                         ; preds = %.preheader27.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !2052 ; 4 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge32.split, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph.split
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !2053 ; 2 uses
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !2054
  %i.be = load i32, ptr %i.y, align 8, !tbaa !2055
  tail call void @llvm.assume(i1 %i.ay)
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !2067 ; 2 uses
  %i.bg = zext nneg i32 %i.q to i64               ; 8 uses
  %i.bh = zext nneg i32 %i.g to i64               ; 5 uses
  %i.bi = zext i32 %i.v to i64                    ; 5 uses
  %wide.trip.count44 = and i64 %i.at, 4294967295
  %wide.trip.count39 = zext nneg i32 %i.aj to i64
  %wide.trip.count = zext i32 %i.bb to i64        ; 9 uses
  %i.bj = add nuw nsw i32 %i.s, %i.bc
  %i.bk = mul i32 %i.l, %i.bj
  %i.bl = mul i32 %i.an, %i.l
  %min.iters.check = icmp ult i32 %i.bb, 4
  %min.iters.check56 = icmp ult i32 %i.bb, 32
  %i.bm = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bm, 0
  %n.vec68 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n86 = icmp eq i64 %n.vec68, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge30
  %indvars.iv41 = phi i64 [ 0, %.preheader27.lr.ph.split.split ], [ %indvars.iv.next42, %._crit_edge30 ] ; 5 uses
  %i.bn = shl i64 %indvars.iv41, 2
  %i.bo = getelementptr i8, ptr %i.bf, i64 %i.bn
  %scevgep = getelementptr i8, ptr %i.bo, i64 4
  %i.bp = trunc i64 %indvars.iv41 to i32
  %i.bq = mul i32 %i.bl, %i.bp
  %i.br = add i32 %i.bq, %i.bk
  %i.bs = zext i32 %i.br to i64                   ; 2 uses
  %3 = add nuw nsw i64 %wide.trip.count, %i.bs
  %i.bt = trunc nuw nsw i64 %indvars.iv41 to i32
  %i.bu = mul i32 %i.an, %i.bt
  %i.bv = add i32 %i.bc, %i.bu                    ; 2 uses
  %i.bw = icmp samesign ult i32 %i.bv, %i.x
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = add nuw nsw i32 %i.bv, %i.s             ; 2 uses
  %i.by = icmp samesign ult i32 %i.bx, %i.i
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = mul nuw nsw i32 %i.bx, %i.l
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ca ; 7 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv41 ; 8 uses
  %i.cd = getelementptr [4 x i8], ptr %i.cb, i64 %i.bg
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.bg
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge30, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %.preheader27.lr.ph, %.preheader27.lr.ph.split, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  ret void

iter.check:                                       ; preds = %.preheader27, %._crit_edge
  %indvars.iv36 = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next37, %._crit_edge ] ; 2 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv36 to i32
  %i.cg = mul i32 %i.ac, %i.cf
  %i.ch = add i32 %i.be, %i.cg
  %i.ci = mul i32 %i.ch, %i.d
  %invariant.op = add i32 %i.bd, %i.ci
  %i.cj = zext i32 %invariant.op to i64           ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ck = add nuw nsw i64 %i.cj, %i.bg            ; 2 uses
  %4 = add nuw nsw i64 %i.ck, %i.bs
  %i.cl = shl nuw nsw i64 %4, 2
  %gep = getelementptr nuw i8, ptr %i.b, i64 %i.cl
  %.reass93 = add nuw nsw i64 %3, %i.ck
  %i.cm = shl nuw nsw i64 %.reass93, 2
  %i.cn = getelementptr i8, ptr %i.b, i64 %i.cm
  %bound0 = icmp ult ptr %gep, %scevgep
  %bound1 = icmp ult ptr %i.cc, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.co = getelementptr [4 x i8], ptr %i.cd, i64 %i.cj
  %i.cp = load float, ptr %i.cc, align 4, !tbaa !2073, !alias.scope !3334
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.cp, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cq = phi i64 [ 0, %vector.ph ], [ %i.cz, %vector.body ] ; 2 uses
  %i.cr = getelementptr [4 x i8], ptr %i.co, i64 %i.cq ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 64 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  %wide.load63 = load <8 x float>, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  %wide.load64 = load <8 x float>, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  %wide.load65 = load <8 x float>, ptr %i.cu, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  %i.cv = fmul <8 x float> %wide.load, %broadcast.splat67
  %i.cw = fmul <8 x float> %wide.load63, %broadcast.splat67
  %i.cx = fmul <8 x float> %wide.load64, %broadcast.splat67
  %i.cy = fmul <8 x float> %wide.load65, %broadcast.splat67
  store <8 x float> %i.cv, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  store <8 x float> %i.cw, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  store <8 x float> %i.cx, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  store <8 x float> %i.cy, ptr %i.cu, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cz = add nuw i64 %i.cq, 32
  %i.da = icmp eq i64 %index.next, %n.vec
  br i1 %i.da, label %middle.block, label %vector.body, !llvm.loop !3326

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3064

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cj
  %i.dc = load float, ptr %i.cc, align 4, !tbaa !2073, !alias.scope !3334
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.dc, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ]
  %i.dd = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.dg, %vec.epilog.vector.body ] ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.dd ; 2 uses
  %wide.load81 = load <4 x float>, ptr %i.de, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  %i.df = fmul <4 x float> %wide.load81, %broadcast.splat83
  store <4 x float> %i.df, ptr %i.de, align 4, !tbaa !2073, !alias.scope !3335, !noalias !3334
  %index.next84 = add nuw i64 %index79, 4         ; 2 uses
  %i.dg = add nuw nsw i64 %i.dd, 4
  %i.dh = icmp eq i64 %index.next84, %n.vec68
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3327

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n86, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.di = add nuw nsw i64 %indvars.iv.prol, %i.cj ; 3 uses
  %i.dj = and i64 %i.di, 2147483648
  %i.dk = icmp eq i64 %i.dj, 0
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = icmp samesign ult i64 %i.di, %i.bi
  tail call void @llvm.assume(i1 %i.dl)
  %i.dm = add nuw nsw i64 %i.di, %i.bg            ; 2 uses
  %i.dn = icmp samesign ule i64 %i.dm, %i.bh
  tail call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dm ; 2 uses
  %i.dp = load float, ptr %i.do, align 4, !tbaa !2073
  %i.dq = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.dr = fmul float %i.dp, %i.dq
  store float %i.dr, ptr %i.do, align 4, !tbaa !2073
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !3328

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ds = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op87 = add nuw nsw i64 1, %i.cj
  %invariant.op88 = add nuw nsw i64 2, %i.cj
  %invariant.op90 = add nuw nsw i64 3, %i.cj
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3329

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3330

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.du = add nuw nsw i64 %indvars.iv, %i.cj      ; 3 uses
  %i.dv = and i64 %i.du, 2147483648
  %i.dw = icmp eq i64 %i.dv, 0
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp samesign ult i64 %i.du, %i.bi
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = add nuw nsw i64 %i.du, %i.bg            ; 2 uses
  %i.dz = icmp samesign ule i64 %i.dy, %i.bh
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.dy ; 2 uses
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !2073
  %i.ec = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.ed = fmul float %i.eb, %i.ec
  store float %i.ed, ptr %i.ea, align 4, !tbaa !2073
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op87 ; 3 uses
  %i.ee = and i64 %.reass, 2147483648
  %i.ef = icmp eq i64 %i.ee, 0
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = icmp samesign ult i64 %.reass, %i.bi
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = add nuw nsw i64 %.reass, %i.bg          ; 2 uses
  %i.ei = icmp samesign ule i64 %i.eh, %i.bh
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.eh ; 2 uses
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !2073
  %i.el = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.em = fmul float %i.ek, %i.el
  store float %i.em, ptr %i.ej, align 4, !tbaa !2073
  %.reass89 = add nuw nsw i64 %indvars.iv, %invariant.op88 ; 3 uses
  %i.en = and i64 %.reass89, 2147483648
  %i.eo = icmp eq i64 %i.en, 0
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp samesign ult i64 %.reass89, %i.bi
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = add nuw nsw i64 %.reass89, %i.bg        ; 2 uses
  %i.er = icmp samesign ule i64 %i.eq, %i.bh
  tail call void @llvm.assume(i1 %i.er)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.eq ; 2 uses
  %i.et = load float, ptr %i.es, align 4, !tbaa !2073
  %i.eu = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.ev = fmul float %i.et, %i.eu
  store float %i.ev, ptr %i.es, align 4, !tbaa !2073
  %.reass91 = add nuw nsw i64 %indvars.iv, %invariant.op90 ; 3 uses
  %i.ew = and i64 %.reass91, 2147483648
  %i.ex = icmp eq i64 %i.ew, 0
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp samesign ult i64 %.reass91, %i.bi
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = add nuw nsw i64 %.reass91, %i.bg        ; 2 uses
  %i.fa = icmp samesign ule i64 %i.ez, %i.bh
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.ez ; 2 uses
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !2073
  %i.fd = load float, ptr %i.cc, align 4, !tbaa !2073
  %i.fe = fmul float %i.fc, %i.fd
  store float %i.fe, ptr %i.fb, align 4, !tbaa !2073
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3331
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN8rawspeed10DngOpcodes13DeltaRowOrColINS0_17DeltaRowOrColBase7SelectXEEE, i64 16), ptr %0, align 8, !tbaa !212
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2065 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2066
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.a, %bb.b
end_hunk_2
begin_hunk_3_@_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPItZNS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEE5applyERKNS_8RawImageEEUljjtE_EEvS9_T0_:bb.a
  %i.ch = add nsw <16 x i32> %i.cg, splat (i32 512)
  %i.ci = ashr <16 x i32> %i.ch, splat (i32 10)
  %i.cj = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ci, <16 x i32> zeroinitializer)
  %i.ck = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.cj, <16 x i32> splat (i32 65535))
  %i.cl = trunc nuw <16 x i32> %i.ck to <16 x i16>
  store <16 x i16> %i.cl, ptr %i.ce, align 2, !tbaa !2039
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cm = add nuw nsw i64 %i.cd, 16
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !3342

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert61 = insertelement <4 x i32> poison, i32 %i.ca, i64 0
  %broadcast.splat62 = shufflevector <4 x i32> %broadcast.splatinsert61, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bu, i64 %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index73 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next76, %vec.epilog.vector.body ]
  %i.cp = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.cy, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cp ; 2 uses
  %wide.load75 = load <4 x i16>, ptr %i.cq, align 2, !tbaa !2039
  %i.cr = zext <4 x i16> %wide.load75 to <4 x i32>
  %i.cs = mul nsw <4 x i32> %broadcast.splat62, %i.cr
  %i.ct = add nsw <4 x i32> %i.cs, splat (i32 512)
  %i.cu = ashr <4 x i32> %i.ct, splat (i32 10)
  %i.cv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cu, <4 x i32> zeroinitializer)
  %i.cw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.cv, <4 x i32> splat (i32 65535))
  %i.cx = trunc nuw <4 x i32> %i.cw to <4 x i16>
  store <4 x i16> %i.cx, ptr %i.cq, align 2, !tbaa !2039
  %index.next76 = add nuw i64 %index73, 4         ; 2 uses
  %i.cy = add nuw nsw i64 %i.cp, 4
  %i.cz = icmp eq i64 %index.next76, %n.vec60
  br i1 %i.cz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3343

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n78, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3344

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3345

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.da = add nuw nsw i64 %indvars.iv, %i.cb      ; 3 uses
  %i.db = and i64 %i.da, 2147483648
  %i.dc = icmp eq i64 %i.db, 0
  tail call void @llvm.assume(i1 %i.dc)
  %i.dd = icmp samesign ult i64 %i.da, %i.bi
  tail call void @llvm.assume(i1 %i.dd)
  %i.de = add nuw nsw i64 %i.da, %i.bg            ; 2 uses
  %i.df = icmp samesign ule i64 %i.de, %i.bh
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.de ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !2039
  %i.di = zext i16 %i.dh to i32
  %i.dj = mul nsw i32 %i.ca, %i.di
  %i.dk = add nsw i32 %i.dj, 512
  %i.dl = ashr i32 %i.dk, 10
  %.sroa.speculate.load.false.sroa.speculated.i.i = tail call i32 @llvm.smax.i32(i32 %i.dl, i32 0)
  %i.dm = tail call i32 @llvm.umin.i32(i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 65535)
  %i.dn = trunc nuw i32 %i.dm to i16
  store i16 %i.dn, ptr %i.dg, align 2, !tbaa !2039
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3346
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed10DngOpcodes11PixelOpcode7applyOPIfZNS0_16ScalePerRowOrColINS0_17DeltaRowOrColBase7SelectXEE5applyERKNS_8RawImageEEUljjfE_EEvS9_T0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !tbaa !134   ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 568
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2034, !noalias !3364 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 592
  %i.d = load i32, ptr %i.c, align 8, !tbaa !205, !noalias !3364 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !2035, !noalias !3364
  %i.g = mul nsw i32 %i.f, %i.d                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 612
  %i.i = load i32, ptr %i.h, align 4, !tbaa !2036, !noalias !3364
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2037, !noalias !3364
  %i.l = ashr i32 %i.k, 2                         ; 5 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp sge i32 %i.l, %i.g
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 600
  %i.p = load i32, ptr %i.o, align 8, !tbaa !206, !noalias !3365
  %i.q = mul i32 %i.p, %i.d                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 604
  %i.s = load i32, ptr %i.r, align 4, !tbaa !208, !noalias !3365 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !209, !noalias !3365
  %i.v = mul nsw i32 %i.u, %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !210, !noalias !3365
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !2048 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !2049 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = sext i32 %i.aa to i64
  %i.ae = zext i32 %i.ac to i64
  %i.af = add nsw i64 %i.ad, -1
  %i.ag = udiv i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = add i32 %i.ah, 1
  br label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit

_ZN8rawspeed19roundUpDivisionSafeEmm.exit:        ; preds = %bb.a, %bb.b
  %i.aj = phi i32 [ %i.ai, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !2050 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !2051 ; 3 uses
  %.not.i20 = icmp eq i32 %i.al, 0
  br i1 %.not.i20, label %._crit_edge32.split, label %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21

_ZN8rawspeed19roundUpDivisionSafeEmm.exit21:      ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit
  %i.ao = sext i32 %i.al to i64
  %i.ap = zext i32 %i.an to i64
  %i.aq = add nsw i64 %i.ao, -1
  %i.ar = udiv i64 %i.aq, %i.ap                   ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i64 %i.ar, 1
  %i.au = icmp ult i32 %i.as, 2147483647
  br i1 %i.au, label %.preheader27.lr.ph, label %._crit_edge32.split

.preheader27.lr.ph:                               ; preds = %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  %i.av = icmp sgt i32 %i.aj, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = icmp sgt i32 %i.q, -1
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 48
  br i1 %i.av, label %.preheader27.lr.ph.split, label %._crit_edge32.split

.preheader27.lr.ph.split:                         ; preds = %.preheader27.lr.ph
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !2052 ; 4 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge32.split, label %.preheader27.lr.ph.split.split

.preheader27.lr.ph.split.split:                   ; preds = %.preheader27.lr.ph.split
  %i.bc = load i32, ptr %i.aw, align 4, !tbaa !2053 ; 2 uses
  %i.bd = load i32, ptr %i.ax, align 8, !tbaa !2054
  %i.be = load i32, ptr %i.y, align 8, !tbaa !2055
  tail call void @llvm.assume(i1 %i.ay)
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !2067 ; 3 uses
  %i.bg = zext nneg i32 %i.q to i64               ; 8 uses
  %i.bh = zext nneg i32 %i.g to i64               ; 5 uses
  %i.bi = zext i32 %i.v to i64                    ; 5 uses
  %wide.trip.count44 = and i64 %i.at, 4294967295
  %wide.trip.count39 = zext nneg i32 %i.aj to i64 ; 2 uses
  %wide.trip.count = zext i32 %i.bb to i64        ; 9 uses
  %i.bj = shl nuw nsw i64 %wide.trip.count39, 2
  %scevgep = getelementptr i8, ptr %i.bf, i64 %i.bj
  %i.bk = add nuw nsw i32 %i.s, %i.bc
  %i.bl = mul i32 %i.l, %i.bk
  %i.bm = mul i32 %i.an, %i.l
  %min.iters.check = icmp ult i32 %i.bb, 4
  %min.iters.check56 = icmp ult i32 %i.bb, 32
  %i.bn = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 4294967264   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  %n.vec68 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n86 = icmp eq i64 %n.vec68, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader27

.preheader27:                                     ; preds = %.preheader27.lr.ph.split.split, %._crit_edge30
  %indvars.iv41 = phi i64 [ 0, %.preheader27.lr.ph.split.split ], [ %indvars.iv.next42, %._crit_edge30 ] ; 3 uses
  %i.bo = trunc i64 %indvars.iv41 to i32
  %i.bp = mul i32 %i.bm, %i.bo
  %i.bq = add i32 %i.bp, %i.bl
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %3 = add nuw nsw i64 %wide.trip.count, %i.br
  %i.bs = trunc nuw nsw i64 %indvars.iv41 to i32
  %i.bt = mul i32 %i.an, %i.bs
  %i.bu = add i32 %i.bc, %i.bt                    ; 2 uses
  %i.bv = icmp samesign ult i32 %i.bu, %i.x
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i32 %i.bu, %i.s             ; 2 uses
  %i.bx = icmp samesign ult i32 %i.bw, %i.i
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = mul nuw nsw i32 %i.bw, %i.l
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bz ; 7 uses
  %i.cb = getelementptr [4 x i8], ptr %i.ca, i64 %i.bg
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bg
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge30, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit, %.preheader27.lr.ph, %.preheader27.lr.ph.split, %_ZN8rawspeed19roundUpDivisionSafeEmm.exit21
  ret void

iter.check:                                       ; preds = %.preheader27, %._crit_edge
  %indvars.iv36 = phi i64 [ 0, %.preheader27 ], [ %indvars.iv.next37, %._crit_edge ] ; 3 uses
  %i.cd = trunc nuw nsw i64 %indvars.iv36 to i32
  %i.ce = mul i32 %i.ac, %i.cd
  %i.cf = add i32 %i.be, %i.ce
  %i.cg = mul i32 %i.cf, %i.d
  %invariant.op = add i32 %i.bd, %i.cg
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv36 ; 7 uses
  %i.ci = zext i32 %invariant.op to i64           ; 8 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cj = add nuw nsw i64 %i.ci, %i.bg            ; 2 uses
  %4 = add nuw nsw i64 %i.cj, %i.br
  %i.ck = shl nuw nsw i64 %4, 2
  %gep = getelementptr nuw i8, ptr %i.b, i64 %i.ck
  %.reass93 = add nuw nsw i64 %3, %i.cj
  %i.cl = shl nuw nsw i64 %.reass93, 2
  %i.cm = getelementptr i8, ptr %i.b, i64 %i.cl
  %bound0 = icmp ult ptr %gep, %scevgep
  %bound1 = icmp ult ptr %i.bf, %i.cm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cn = getelementptr [4 x i8], ptr %i.cb, i64 %i.ci
  %i.co = load float, ptr %i.ch, align 4, !tbaa !2073, !alias.scope !3366
  %broadcast.splatinsert66 = insertelement <8 x float> poison, float %i.co, i64 0
  %broadcast.splat67 = shufflevector <8 x float> %broadcast.splatinsert66, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.cp = phi i64 [ 0, %vector.ph ], [ %i.cy, %vector.body ] ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %i.cn, i64 %i.cp ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 64 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 96 ; 2 uses
  %wide.load = load <8 x float>, ptr %i.cq, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  %wide.load63 = load <8 x float>, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  %wide.load64 = load <8 x float>, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  %wide.load65 = load <8 x float>, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  %i.cu = fmul <8 x float> %wide.load, %broadcast.splat67
  %i.cv = fmul <8 x float> %wide.load63, %broadcast.splat67
  %i.cw = fmul <8 x float> %wide.load64, %broadcast.splat67
  %i.cx = fmul <8 x float> %wide.load65, %broadcast.splat67
  store <8 x float> %i.cu, ptr %i.cq, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  store <8 x float> %i.cv, ptr %i.cr, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  store <8 x float> %i.cw, ptr %i.cs, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  store <8 x float> %i.cx, ptr %i.ct, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cy = add nuw i64 %i.cp, 32
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !3358

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !3064

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.ci
  %i.db = load float, ptr %i.ch, align 4, !tbaa !2073, !alias.scope !3366
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.db, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index79 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next84, %vec.epilog.vector.body ]
  %i.dc = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %i.df, %vec.epilog.vector.body ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dc ; 2 uses
  %wide.load81 = load <4 x float>, ptr %i.dd, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  %i.de = fmul <4 x float> %wide.load81, %broadcast.splat83
  store <4 x float> %i.de, ptr %i.dd, align 4, !tbaa !2073, !alias.scope !3367, !noalias !3366
  %index.next84 = add nuw i64 %index79, 4         ; 2 uses
  %i.df = add nuw nsw i64 %i.dc, 4
  %i.dg = icmp eq i64 %index.next84, %n.vec68
  br i1 %i.dg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3359

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n86, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec68, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.dh = add nuw nsw i64 %indvars.iv.prol, %i.ci ; 3 uses
  %i.di = and i64 %i.dh, 2147483648
  %i.dj = icmp eq i64 %i.di, 0
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp samesign ult i64 %i.dh, %i.bi
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = add nuw nsw i64 %i.dh, %i.bg            ; 2 uses
  %i.dm = icmp samesign ule i64 %i.dl, %i.bh
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dl ; 2 uses
  %i.do = load float, ptr %i.dn, align 4, !tbaa !2073
  %i.dp = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.dq = fmul float %i.do, %i.dp
  store float %i.dq, ptr %i.dn, align 4, !tbaa !2073
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !3360

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.dr = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge, label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op87 = add nuw nsw i64 1, %i.ci
  %invariant.op88 = add nuw nsw i64 2, %i.ci
  %invariant.op90 = add nuw nsw i64 3, %i.ci
  br label %vec.epilog.scalar.ph

._crit_edge30:                                    ; preds = %._crit_edge
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %._crit_edge32.split, label %.preheader27, !llvm.loop !3361

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1 ; 2 uses
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %._crit_edge30, label %iter.check, !llvm.loop !3362

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %vec.epilog.scalar.ph.preheader.new ], [ %indvars.iv.next.3, %vec.epilog.scalar.ph ] ; 5 uses
  %i.dt = add nuw nsw i64 %indvars.iv, %i.ci      ; 3 uses
  %i.du = and i64 %i.dt, 2147483648
  %i.dv = icmp eq i64 %i.du, 0
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = icmp samesign ult i64 %i.dt, %i.bi
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = add nuw nsw i64 %i.dt, %i.bg            ; 2 uses
  %i.dy = icmp samesign ule i64 %i.dx, %i.bh
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.dx ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !2073
  %i.eb = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.ec = fmul float %i.ea, %i.eb
  store float %i.ec, ptr %i.dz, align 4, !tbaa !2073
  %.reass = add nuw nsw i64 %indvars.iv, %invariant.op87 ; 3 uses
  %i.ed = and i64 %.reass, 2147483648
  %i.ee = icmp eq i64 %i.ed, 0
  tail call void @llvm.assume(i1 %i.ee)
  %i.ef = icmp samesign ult i64 %.reass, %i.bi
  tail call void @llvm.assume(i1 %i.ef)
  %i.eg = add nuw nsw i64 %.reass, %i.bg          ; 2 uses
  %i.eh = icmp samesign ule i64 %i.eg, %i.bh
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.eg ; 2 uses
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !2073
  %i.ek = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.el = fmul float %i.ej, %i.ek
  store float %i.el, ptr %i.ei, align 4, !tbaa !2073
  %.reass89 = add nuw nsw i64 %indvars.iv, %invariant.op88 ; 3 uses
  %i.em = and i64 %.reass89, 2147483648
  %i.en = icmp eq i64 %i.em, 0
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = icmp samesign ult i64 %.reass89, %i.bi
  tail call void @llvm.assume(i1 %i.eo)
  %i.ep = add nuw nsw i64 %.reass89, %i.bg        ; 2 uses
  %i.eq = icmp samesign ule i64 %i.ep, %i.bh
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ep ; 2 uses
  %i.es = load float, ptr %i.er, align 4, !tbaa !2073
  %i.et = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.eu = fmul float %i.es, %i.et
  store float %i.eu, ptr %i.er, align 4, !tbaa !2073
  %.reass91 = add nuw nsw i64 %indvars.iv, %invariant.op90 ; 3 uses
  %i.ev = and i64 %.reass91, 2147483648
  %i.ew = icmp eq i64 %i.ev, 0
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp samesign ult i64 %.reass91, %i.bi
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = add nuw nsw i64 %.reass91, %i.bg        ; 2 uses
  %i.ez = icmp samesign ule i64 %i.ey, %i.bh
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ey ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !2073
  %i.fc = load float, ptr %i.ch, align 4, !tbaa !2073
  %i.fd = fmul float %i.fb, %i.fc
  store float %i.fd, ptr %i.fa, align 4, !tbaa !2073
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !3363
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
end_hunk_3
