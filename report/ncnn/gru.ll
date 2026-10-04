Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gru?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4ncnnL8gru_int8ERKNS_3MatERS0_iS2_PKfS2_S2_S5_S3_RKNS_6OptionE.omp_outlined:bb.a
  %i.gf = add <4 x i32> %i.gd, %vec.phi196        ; 2 uses
  %i.gg = add <4 x i32> %i.ge, %vec.phi197        ; 2 uses
  %index.next202 = add nuw i64 %index195, 8       ; 2 uses
  %i.gh = icmp eq i64 %index.next202, %n.vec193
  br i1 %i.gh, label %middle.block203, label %vector.body194, !llvm.loop !201

middle.block203:                                  ; preds = %vector.body194
  %bin.rdx204 = add <4 x i32> %i.gg, %i.gf
  %i.gi = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx204) ; 2 uses
  br i1 %cmp.n205, label %.preheader.loopexit, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %.lr.ph134, %middle.block203
  %indvars.iv157.ph = phi i64 [ 0, %.lr.ph134 ], [ %n.vec193, %middle.block203 ]
  %.0112131.ph = phi i32 [ 0, %.lr.ph134 ], [ %i.gi, %middle.block203 ]
  br label %scalar.ph190

scalar.ph208:                                     ; preds = %scalar.ph208.preheader, %scalar.ph208
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %scalar.ph208 ], [ %indvars.iv152.ph, %scalar.ph208.preheader ] ; 4 uses
  %.0114126 = phi i32 [ %i.gv, %scalar.ph208 ], [ %.0114126.ph, %scalar.ph208.preheader ]
  %.0115125 = phi i32 [ %i.gq, %scalar.ph208 ], [ %.0115125.ph, %scalar.ph208.preheader ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cu, i64 %indvars.iv152
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !61
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv152
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !61
  %i.gn = sext i8 %i.gm to i32
  %i.go = sext i8 %i.gk to i32                    ; 2 uses
  %i.gp = mul nsw i32 %i.gn, %i.go
  %i.gq = add nsw i32 %i.gp, %.0115125            ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv152
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !61
  %i.gt = sext i8 %i.gs to i32
  %i.gu = mul nsw i32 %i.gt, %i.go
  %i.gv = add nsw i32 %i.gu, %.0114126            ; 2 uses
  %indvars.iv.next153 = add nuw nsw i64 %indvars.iv152, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next153, %wide.trip.count155
  br i1 %exitcond156.not, label %._crit_edge.loopexit, label %scalar.ph208, !llvm.loop !202

.preheader.loopexit:                              ; preds = %scalar.ph190, %middle.block203
  %.lcssa184 = phi i32 [ %i.gi, %middle.block203 ], [ %i.hu, %scalar.ph190 ]
  %i.gw = sitofp fast i32 %.lcssa184 to float
  %i.gx = fmul fast float %i.ek, %i.gw
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %.0112.lcssa = phi float [ 0.000000e+00, %._crit_edge ], [ %i.gx, %.preheader.loopexit ]
  br i1 %i.ar, label %.lr.ph138, label %._crit_edge139

.lr.ph138:                                        ; preds = %.preheader
  %i.gy = load ptr, ptr %10, align 8, !tbaa !62   ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph138, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph138 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.hj, %vector.body ], [ zeroinitializer, %.lr.ph138 ]
  %vec.phi186 = phi <4 x i32> [ %i.hk, %vector.body ], [ zeroinitializer, %.lr.ph138 ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %index ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 4
  %wide.load = load <4 x i8>, ptr %i.gz, align 1, !tbaa !61
  %wide.load187 = load <4 x i8>, ptr %i.ha, align 1, !tbaa !61
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fn, i64 %index ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %wide.load188 = load <4 x i8>, ptr %i.hb, align 1, !tbaa !61
  %wide.load189 = load <4 x i8>, ptr %i.hc, align 1, !tbaa !61
  %i.hd = sext <4 x i8> %wide.load188 to <4 x i32>
  %i.he = sext <4 x i8> %wide.load189 to <4 x i32>
  %i.hf = sext <4 x i8> %wide.load to <4 x i32>
  %i.hg = sext <4 x i8> %wide.load187 to <4 x i32>
  %i.hh = mul nsw <4 x i32> %i.hd, %i.hf
  %i.hi = mul nsw <4 x i32> %i.he, %i.hg
  %i.hj = add <4 x i32> %i.hh, %vec.phi           ; 2 uses
  %i.hk = add <4 x i32> %i.hi, %vec.phi186        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hl = icmp eq i64 %index.next, %n.vec
  br i1 %i.hl, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.hk, %i.hj
  %i.hm = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge139.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph138, %middle.block
  %indvars.iv162.ph = phi i64 [ 0, %.lr.ph138 ], [ %n.vec, %middle.block ]
  %.0110136.ph = phi i32 [ 0, %.lr.ph138 ], [ %i.hm, %middle.block ]
  br label %scalar.ph

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv157 = phi i64 [ %indvars.iv.next158, %scalar.ph190 ], [ %indvars.iv157.ph, %scalar.ph190.preheader ] ; 3 uses
  %.0112131 = phi i32 [ %i.hu, %scalar.ph190 ], [ %.0112131.ph, %scalar.ph190.preheader ]
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv157
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !61
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fp, i64 %indvars.iv157
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !61
  %i.hr = sext i8 %i.hq to i32
  %i.hs = sext i8 %i.ho to i32
  %i.ht = mul nsw i32 %i.hr, %i.hs
  %i.hu = add nsw i32 %i.ht, %.0112131            ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %.preheader.loopexit, label %scalar.ph190, !llvm.loop !204

._crit_edge139.loopexit:                          ; preds = %scalar.ph, %middle.block
  %.lcssa185 = phi i32 [ %i.hm, %middle.block ], [ %i.ir, %scalar.ph ]
  %i.hv = sitofp fast i32 %.lcssa185 to float
  %i.hw = fmul fast float %i.ej, %i.hv
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %._crit_edge139.loopexit, %.preheader
  %.0110.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.hw, %._crit_edge139.loopexit ]
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %indvars.iv167
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !49
  %i.hz = fdiv fast float %.0112.lcssa, %i.ft
  %i.ia = fadd fast float %i.hy, %i.hz
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv167
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !49
  %i.id = extractelement <2 x float> %i.fi, i64 0
  %i.ie = fdiv fast float %i.ia, %i.id
  %i.if = fdiv fast float %.0110.lcssa, %i.fr
  %i.ig = fadd fast float %i.ic, %i.if
  %i.ih = fadd fast float %i.ig, %i.ie
  %i.ii = call fast float @llvm.tanh.f32(float %i.ih)
  store float %i.fk, ptr %i.bc, align 4, !tbaa !49
  %i.ij = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store float %i.ii, ptr %i.ij, align 4, !tbaa !49
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next168 to i32
  %exitcond170.not = icmp eq i32 %i.bb, %lftr.wideiv
  br i1 %exitcond170.not, label %._crit_edge145, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %scalar.ph ], [ %indvars.iv162.ph, %scalar.ph.preheader ] ; 3 uses
  %.0110136 = phi i32 [ %i.ir, %scalar.ph ], [ %.0110136.ph, %scalar.ph.preheader ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gy, i64 %indvars.iv162
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !61
  %i.im = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv162
  %i.in = load i8, ptr %i.im, align 1, !tbaa !61
  %i.io = sext i8 %i.in to i32
  %i.ip = sext i8 %i.il to i32
  %i.iq = mul nsw i32 %i.io, %i.ip
  %i.ir = add nsw i32 %i.iq, %.0110136            ; 2 uses
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count165
  br i1 %exitcond166.not, label %._crit_edge139.loopexit, label %scalar.ph, !llvm.loop !205

._crit_edge145:                                   ; preds = %._crit_edge139, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge145, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.tanh.f32(float) #11

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !65 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL8gru_int8ERKNS_3MatERS0_iS2_PKfS2_S2_S5_S3_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 6 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.not26 = icmp sgt i32 %i.k, %i.j
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20     ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 3 uses
  %factor.op.mul = mul i64 %i.q, %i.o             ; 7 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !20     ; 6 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !58     ; 6 uses
  %i.t = sext i32 %i.k to i64                     ; 8 uses
  %i.u = add nsw i32 %i.j, 1
  %i.v = sub i32 %i.j, %i.k                       ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 31
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = shl nsw i64 %i.t, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.r, i64 %i.y ; 3 uses
  %i.z = add nsw i64 %i.t, %i.w
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = add nsw i64 %i.aa, 4                    ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.r, i64 %i.ab ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.s, i64 %i.y ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.s, i64 %i.ab ; 3 uses
  %i.ac = add nsw i64 %i.t, %i.w
  %i.ad = mul i64 %i.q, %i.ac
  %i.ae = mul i64 %i.ad, %i.o                     ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ae
  %scevgep34 = getelementptr i8, ptr %i.af, i64 4 ; 4 uses
  %i.ag = mul i64 %i.q, %i.o
  %i.ah = mul i64 %i.ag, %i.t                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ah
  %scevgep35 = getelementptr i8, ptr %i.ai, i64 4 ; 4 uses
  %i.aj = icmp ult ptr %scevgep34, %scevgep35
  %umin = select i1 %i.aj, ptr %scevgep34, ptr %scevgep35 ; 2 uses
  %i.ak = icmp ugt ptr %scevgep34, %scevgep35
  %umax = select i1 %i.ak, ptr %scevgep34, ptr %scevgep35
  %scevgep36 = getelementptr i8, ptr %umax, i64 4 ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.l, i64 %i.ae ; 4 uses
  %scevgep38 = getelementptr nuw i8, ptr %i.l, i64 %i.ah ; 4 uses
  %i.al = icmp ult ptr %scevgep37, %scevgep38
  %umin39 = select i1 %i.al, ptr %scevgep37, ptr %scevgep38 ; 2 uses
  %i.am = icmp ugt ptr %scevgep37, %scevgep38
  %umax40 = select i1 %i.am, ptr %scevgep37, ptr %scevgep38
  %scevgep41 = getelementptr i8, ptr %umax40, i64 4 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep33
  %bound1 = icmp ult ptr %scevgep32, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %scevgep, %scevgep36
  %bound143 = icmp ult ptr %umin, %scevgep31
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %scevgep, %scevgep41
  %bound146 = icmp ult ptr %umin39, %scevgep31
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  %bound049 = icmp ult ptr %scevgep32, %scevgep36
  %bound150 = icmp ult ptr %umin, %scevgep33
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  %bound053 = icmp ult ptr %scevgep32, %scevgep41
  %bound154 = icmp ult ptr %umin39, %scevgep33
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  br i1 %conflict.rdx56, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 8589934588               ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add i64 %index, %i.t                    ; 6 uses
  %i.ap = add i64 %i.ao, 1
  %i.aq = add i64 %i.ao, 2
  %i.ar = add i64 %i.ao, 3
  %i.as = mul i64 %factor.op.mul, %i.ao
  %i.at = mul i64 %factor.op.mul, %i.ap
  %i.au = mul i64 %factor.op.mul, %i.aq
  %i.av = mul i64 %factor.op.mul, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av ; 2 uses
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !49, !alias.scope !213
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !49, !alias.scope !213
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !49, !alias.scope !213
  %i.bd = load float, ptr %i.az, align 4, !tbaa !49, !alias.scope !213
  %i.be = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !49, !alias.scope !214
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !49, !alias.scope !214
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !49, !alias.scope !214
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !49, !alias.scope !214
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bu, align 4, !tbaa !49, !alias.scope !215, !noalias !216
  %i.bv = fsub fast <4 x float> %wide.load, %i.bt
  %i.bw = fmul fast <4 x float> %i.bv, %i.bh
  %i.bx = fadd fast <4 x float> %i.bw, %i.bt      ; 2 uses
  store <4 x float> %i.bx, ptr %i.bu, align 4, !tbaa !49, !alias.scope !215, !noalias !216
  %i.by = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ao
  store <4 x float> %i.bx, ptr %i.by, align 4, !tbaa !49, !alias.scope !217, !noalias !218
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph ], [ %i.an, %middle.block ] ; 6 uses
  %i.ca = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.cb = add i32 %i.j, %i.ca
  %i.cc = and i32 %i.cb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.cc, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.reass.prol = mul i64 %factor.op.mul, %indvars.iv.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.prol ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !49 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.ph ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !49
  %i.cj = fsub fast float %i.ci, %i.cg
  %i.ck = fmul fast float %i.cj, %i.ce
  %i.cl = fadd fast float %i.ck, %i.cg            ; 2 uses
  store float %i.cl, ptr %i.ch, align 4, !tbaa !49
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.ph
  store float %i.cl, ptr %i.cm, align 4, !tbaa !49
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cn = icmp eq i32 %i.j, %i.ca
  br i1 %i.cn, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !49 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !49
  %i.cu = fsub fast float %i.ct, %i.cr
  %i.cv = fmul fast float %i.cu, %i.cp
  %i.cw = fadd fast float %i.cv, %i.cr            ; 2 uses
  store float %i.cw, ptr %i.cs, align 4, !tbaa !49
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.cw, ptr %i.cx, align 4, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.1 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !49 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !49
  %i.de = fsub fast float %i.dd, %i.db
  %i.df = fmul fast float %i.de, %i.cz
  %i.dg = fadd fast float %i.df, %i.db            ; 2 uses
  store float %i.dg, ptr %i.dc, align 4, !tbaa !49
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next
  store float %i.dg, ptr %i.dh, align 4, !tbaa !49
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.u, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !212

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL3gruERKNS_3MatERS0_iS2_S2_S2_S3_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !44
end_hunk_0
begin_hunk_1_@_ZN4ncnnL3gruERKNS_3MatERS0_iS2_S2_S2_S3_RKNS_6OptionE.omp_outlined:bb.a
  %i.dk = fmul fast float %i.dj, %i.dd
  %i.dl = fadd fast float %i.dk, %.09499          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %scalar.ph212, !llvm.loop !221

._crit_edge:                                      ; preds = %scalar.ph188, %middle.block205, %.preheader
  %.197.lcssa = phi float [ %.096.lcssa, %.preheader ], [ %i.db, %middle.block205 ], [ %i.er, %scalar.ph188 ]
  %.195.lcssa = phi float [ %.094.lcssa, %.preheader ], [ %i.da, %middle.block205 ], [ %i.ev, %scalar.ph188 ]
  %i.dm = fneg fast float %.197.lcssa
  %i.dn = call fast float @llvm.exp.f32(float %i.dm)
  %i.do = fadd fast float %i.dn, 1.000000e+00
  %i.dp = fneg fast float %.195.lcssa
  %i.dq = call fast float @llvm.exp.f32(float %i.dp)
  %i.dr = fadd fast float %i.dq, 1.000000e+00
  %i.ds = fdiv fast float 1.000000e+00, %i.dr
  %i.dt = add nsw i64 %indvars.iv147, %i.ay       ; 2 uses
  %i.du = mul i64 %i.af, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.du ; 2 uses
  %i.dw = mul i64 %i.an, %i.dt
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv147
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !49 ; 3 uses
  br i1 %i.aq, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %._crit_edge
  %i.ea = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  br i1 %min.iters.check171, label %scalar.ph170.preheader, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph112
  %i.eb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.dz, i64 0
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next182, %vector.body174 ] ; 3 uses
  %vec.phi176 = phi <4 x float> [ %i.eb, %vector.ph172 ], [ %i.ei, %vector.body174 ]
  %vec.phi177 = phi <4 x float> [ zeroinitializer, %vector.ph172 ], [ %i.ej, %vector.body174 ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %index175 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load178 = load <4 x float>, ptr %i.ec, align 4, !tbaa !49
  %wide.load179 = load <4 x float>, ptr %i.ed, align 4, !tbaa !49
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index175 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load180 = load <4 x float>, ptr %i.ee, align 4, !tbaa !49
  %wide.load181 = load <4 x float>, ptr %i.ef, align 4, !tbaa !49
  %i.eg = fmul fast <4 x float> %wide.load180, %wide.load178
  %i.eh = fmul fast <4 x float> %wide.load181, %wide.load179
  %i.ei = fadd fast <4 x float> %i.eg, %vec.phi176 ; 2 uses
  %i.ej = fadd fast <4 x float> %i.eh, %vec.phi177 ; 2 uses
  %index.next182 = add nuw i64 %index175, 8       ; 2 uses
  %i.ek = icmp eq i64 %index.next182, %n.vec173
  br i1 %i.ek, label %middle.block183, label %vector.body174, !llvm.loop !222

middle.block183:                                  ; preds = %vector.body174
  %bin.rdx184 = fadd fast <4 x float> %i.ej, %i.ei
  %i.el = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx184) ; 2 uses
  br i1 %cmp.n185, label %._crit_edge113, label %scalar.ph170.preheader

scalar.ph170.preheader:                           ; preds = %.lr.ph112, %middle.block183
  %indvars.iv137.ph = phi i64 [ 0, %.lr.ph112 ], [ %n.vec173, %middle.block183 ]
  %.091109.ph = phi float [ %i.dz, %.lr.ph112 ], [ %i.el, %middle.block183 ]
  br label %scalar.ph170

scalar.ph188:                                     ; preds = %scalar.ph188.preheader, %scalar.ph188
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %scalar.ph188 ], [ %indvars.iv132.ph, %scalar.ph188.preheader ] ; 4 uses
  %.195104 = phi float [ %i.ev, %scalar.ph188 ], [ %.195104.ph, %scalar.ph188.preheader ]
  %.197103 = phi float [ %i.er, %scalar.ph188 ], [ %.197103.ph, %scalar.ph188.preheader ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv132
  %i.en = load float, ptr %i.em, align 4, !tbaa !49 ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv132
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !49
  %i.eq = fmul fast float %i.ep, %i.en
  %i.er = fadd fast float %i.eq, %.197103         ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv132
  %i.et = load float, ptr %i.es, align 4, !tbaa !49
  %i.eu = fmul fast float %i.et, %i.en
  %i.ev = fadd fast float %i.eu, %.195104         ; 2 uses
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond136.not = icmp eq i64 %indvars.iv.next133, %wide.trip.count135
  br i1 %exitcond136.not, label %._crit_edge, label %scalar.ph188, !llvm.loop !223

._crit_edge113:                                   ; preds = %scalar.ph170, %middle.block183, %._crit_edge
  %.091.lcssa = phi float [ %i.dz, %._crit_edge ], [ %i.el, %middle.block183 ], [ %i.fr, %scalar.ph170 ]
  %i.ew = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv147
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !49
  %i.ey = fdiv fast float %.091.lcssa, %i.do
  %i.ez = fadd fast float %i.ex, %i.ey            ; 3 uses
  br i1 %i.ap, label %.lr.ph118, label %._crit_edge119

.lr.ph118:                                        ; preds = %._crit_edge113
  %i.fa = load ptr, ptr %8, align 8, !tbaa !58    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118
  %i.fb = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ez, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x float> [ %i.fb, %vector.ph ], [ %i.fi, %vector.body ]
  %vec.phi166 = phi <4 x float> [ zeroinitializer, %vector.ph ], [ %i.fj, %vector.body ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load = load <4 x float>, ptr %i.fc, align 4, !tbaa !49
  %wide.load167 = load <4 x float>, ptr %i.fd, align 4, !tbaa !49
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %wide.load168 = load <4 x float>, ptr %i.fe, align 4, !tbaa !49
  %wide.load169 = load <4 x float>, ptr %i.ff, align 4, !tbaa !49
  %i.fg = fmul fast <4 x float> %wide.load168, %wide.load
  %i.fh = fmul fast <4 x float> %wide.load169, %wide.load167
  %i.fi = fadd fast <4 x float> %i.fg, %vec.phi   ; 2 uses
  %i.fj = fadd fast <4 x float> %i.fh, %vec.phi166 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fk = icmp eq i64 %index.next, %n.vec
  br i1 %i.fk, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <4 x float> %i.fj, %i.fi
  %i.fl = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge119, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph118, %middle.block
  %indvars.iv142.ph = phi i64 [ 0, %.lr.ph118 ], [ %n.vec, %middle.block ]
  %.1115.ph = phi float [ %i.ez, %.lr.ph118 ], [ %i.fl, %middle.block ]
  br label %scalar.ph

scalar.ph170:                                     ; preds = %scalar.ph170.preheader, %scalar.ph170
  %indvars.iv137 = phi i64 [ %indvars.iv.next138, %scalar.ph170 ], [ %indvars.iv137.ph, %scalar.ph170.preheader ] ; 3 uses
  %.091109 = phi float [ %i.fr, %scalar.ph170 ], [ %.091109.ph, %scalar.ph170.preheader ]
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv137
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !49
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv137
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !49
  %i.fq = fmul fast float %i.fp, %i.fn
  %i.fr = fadd fast float %i.fq, %.091109         ; 2 uses
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %._crit_edge113, label %scalar.ph170, !llvm.loop !225

._crit_edge119:                                   ; preds = %scalar.ph, %middle.block, %._crit_edge113
  %.1.lcssa = phi float [ %i.ez, %._crit_edge113 ], [ %i.fl, %middle.block ], [ %i.fz, %scalar.ph ]
  %i.fs = call fast float @llvm.tanh.f32(float %.1.lcssa)
  store float %i.ds, ptr %i.ba, align 4, !tbaa !49
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store float %i.fs, ptr %i.ft, align 4, !tbaa !49
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next148 to i32
  %exitcond150.not = icmp eq i32 %i.az, %lftr.wideiv
  br i1 %exitcond150.not, label %._crit_edge125, label %bb.c

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv142 = phi i64 [ %indvars.iv.next143, %scalar.ph ], [ %indvars.iv142.ph, %scalar.ph.preheader ] ; 3 uses
  %.1115 = phi float [ %i.fz, %scalar.ph ], [ %.1115.ph, %scalar.ph.preheader ]
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv142
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !49
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv142
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !49
  %i.fy = fmul fast float %i.fx, %i.fv
  %i.fz = fadd fast float %i.fy, %.1115           ; 2 uses
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next143, %wide.trip.count145
  br i1 %exitcond146.not, label %._crit_edge119, label %scalar.ph, !llvm.loop !226

._crit_edge125:                                   ; preds = %._crit_edge119, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge125, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL3gruERKNS_3MatERS0_iS2_S2_S2_S3_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !44     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !44
  %i.h = load i32, ptr %0, align 4, !tbaa !44     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !44
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 6 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !44
  %i.k = load i32, ptr %i.a, align 4, !tbaa !44   ; 3 uses
  %.not26 = icmp sgt i32 %i.k, %i.j
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20     ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 3 uses
  %factor.op.mul = mul i64 %i.q, %i.o             ; 7 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !20     ; 6 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !58     ; 6 uses
  %i.t = sext i32 %i.k to i64                     ; 8 uses
  %i.u = add nsw i32 %i.j, 1
  %i.v = sub i32 %i.j, %i.k                       ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 31
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.y = shl nsw i64 %i.t, 2                      ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.r, i64 %i.y ; 3 uses
  %i.z = add nsw i64 %i.t, %i.w
  %i.aa = shl nsw i64 %i.z, 2
  %i.ab = add nsw i64 %i.aa, 4                    ; 2 uses
  %scevgep31 = getelementptr i8, ptr %i.r, i64 %i.ab ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.s, i64 %i.y ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.s, i64 %i.ab ; 3 uses
  %i.ac = add nsw i64 %i.t, %i.w
  %i.ad = mul i64 %i.q, %i.ac
  %i.ae = mul i64 %i.ad, %i.o                     ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ae
  %scevgep34 = getelementptr i8, ptr %i.af, i64 4 ; 4 uses
  %i.ag = mul i64 %i.q, %i.o
  %i.ah = mul i64 %i.ag, %i.t                     ; 2 uses
  %i.ai = getelementptr i8, ptr %i.l, i64 %i.ah
  %scevgep35 = getelementptr i8, ptr %i.ai, i64 4 ; 4 uses
  %i.aj = icmp ult ptr %scevgep34, %scevgep35
  %umin = select i1 %i.aj, ptr %scevgep34, ptr %scevgep35 ; 2 uses
  %i.ak = icmp ugt ptr %scevgep34, %scevgep35
  %umax = select i1 %i.ak, ptr %scevgep34, ptr %scevgep35
  %scevgep36 = getelementptr i8, ptr %umax, i64 4 ; 2 uses
  %scevgep37 = getelementptr i8, ptr %i.l, i64 %i.ae ; 4 uses
  %scevgep38 = getelementptr nuw i8, ptr %i.l, i64 %i.ah ; 4 uses
  %i.al = icmp ult ptr %scevgep37, %scevgep38
  %umin39 = select i1 %i.al, ptr %scevgep37, ptr %scevgep38 ; 2 uses
  %i.am = icmp ugt ptr %scevgep37, %scevgep38
  %umax40 = select i1 %i.am, ptr %scevgep37, ptr %scevgep38
  %scevgep41 = getelementptr i8, ptr %umax40, i64 4 ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep33
  %bound1 = icmp ult ptr %scevgep32, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %bound042 = icmp ult ptr %scevgep, %scevgep36
  %bound143 = icmp ult ptr %umin, %scevgep31
  %found.conflict44 = and i1 %bound042, %bound143
  %conflict.rdx = or i1 %found.conflict, %found.conflict44
  %bound045 = icmp ult ptr %scevgep, %scevgep41
  %bound146 = icmp ult ptr %umin39, %scevgep31
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx, %found.conflict47
  %bound049 = icmp ult ptr %scevgep32, %scevgep36
  %bound150 = icmp ult ptr %umin, %scevgep33
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  %bound053 = icmp ult ptr %scevgep32, %scevgep41
  %bound154 = icmp ult ptr %umin39, %scevgep33
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  br i1 %conflict.rdx56, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 8589934588               ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = add i64 %index, %i.t                    ; 6 uses
  %i.ap = add i64 %i.ao, 1
  %i.aq = add i64 %i.ao, 2
  %i.ar = add i64 %i.ao, 3
  %i.as = mul i64 %factor.op.mul, %i.ao
  %i.at = mul i64 %factor.op.mul, %i.ap
  %i.au = mul i64 %factor.op.mul, %i.aq
  %i.av = mul i64 %factor.op.mul, %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av ; 2 uses
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !49, !alias.scope !234
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !49, !alias.scope !234
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !49, !alias.scope !234
  %i.bd = load float, ptr %i.az, align 4, !tbaa !49, !alias.scope !234
  %i.be = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !49, !alias.scope !235
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !49, !alias.scope !235
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !49, !alias.scope !235
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !49, !alias.scope !235
  %i.bq = insertelement <4 x float> poison, float %i.bm, i64 0
  %i.br = insertelement <4 x float> %i.bq, float %i.bn, i64 1
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 2
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 3 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ao ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bu, align 4, !tbaa !49, !alias.scope !236, !noalias !237
  %i.bv = fsub fast <4 x float> %wide.load, %i.bt
  %i.bw = fmul fast <4 x float> %i.bv, %i.bh
  %i.bx = fadd fast <4 x float> %i.bw, %i.bt      ; 2 uses
  store <4 x float> %i.bx, ptr %i.bu, align 4, !tbaa !49, !alias.scope !236, !noalias !237
  %i.by = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ao
  store <4 x float> %i.bx, ptr %i.by, align 4, !tbaa !49, !alias.scope !238, !noalias !239
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !232

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph ], [ %i.an, %middle.block ] ; 6 uses
  %i.ca = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.cb = add i32 %i.j, %i.ca
  %i.cc = and i32 %i.cb, 1
  %lcmp.mod.not.not = icmp eq i32 %i.cc, 0
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.reass.prol = mul i64 %factor.op.mul, %indvars.iv.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.prol ; 2 uses
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !49 ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.ph ; 2 uses
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !49
  %i.cj = fsub fast float %i.ci, %i.cg
  %i.ck = fmul fast float %i.cj, %i.ce
  %i.cl = fadd fast float %i.ck, %i.cg            ; 2 uses
  store float %i.cl, ptr %i.ch, align 4, !tbaa !49
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.ph
  store float %i.cl, ptr %i.cm, align 4, !tbaa !49
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cn = icmp eq i32 %i.j, %i.ca
  br i1 %i.cn, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 2 uses
  %i.cp = load float, ptr %i.co, align 4, !tbaa !49
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !49 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !49
  %i.cu = fsub fast float %i.ct, %i.cr
  %i.cv = fmul fast float %i.cu, %i.cp
  %i.cw = fadd fast float %i.cv, %i.cr            ; 2 uses
  store float %i.cw, ptr %i.cs, align 4, !tbaa !49
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv
  store float %i.cw, ptr %i.cx, align 4, !tbaa !49
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.1 ; 2 uses
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !49
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !49 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !49
  %i.de = fsub fast float %i.dd, %i.db
  %i.df = fmul fast float %i.de, %i.cz
  %i.dg = fadd fast float %i.df, %i.db            ; 2 uses
  store float %i.dg, ptr %i.dc, align 4, !tbaa !49
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv.next
  store float %i.dg, ptr %i.dh, align 4, !tbaa !49
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.not.1 = icmp eq i32 %i.u, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !233

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

declare void @_ZNK4ncnn3Mat5cloneEPNS_9AllocatorE(ptr dead_on_unwind writable sret(%"class.ncnn::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10
end_hunk_1
