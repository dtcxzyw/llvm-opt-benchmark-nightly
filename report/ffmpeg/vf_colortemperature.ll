Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colortemperature?download=true
inline.NumInlined: 45
inline.NumDeleted: 4
begin_hunk_0_@config_input:bb.a
  %i.k = load i8, ptr %i.j, align 8, !tbaa !46
  %i.l = zext i8 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.n = load i32, ptr %i.e, align 4, !tbaa !43
  %.off = add i32 %i.n, -118
  %switch = icmp ult i32 %.off, 4
  %spec.store.select = select i1 %switch, i32 4, i32 %i.l
  store i32 %spec.store.select, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !49
  %i.r = icmp slt i32 %i.p, 9                     ; 2 uses
  %i.s = select i1 %i.r, ptr @temperature_slice8, ptr @temperature_slice16
  %i.t = and i64 %i.i, 16
  %.not = icmp eq i64 %i.t, 0
  %i.u = select i1 %i.r, ptr @temperature_slice8p, ptr @temperature_slice16p
  %spec.select = select i1 %.not, ptr %i.u, ptr %i.s
  %i.v = icmp eq i32 %i.p, 32
  %storemerge21 = select i1 %i.v, ptr @temperature_slice32, ptr %spec.select
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %storemerge21, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = load i32, ptr %i.e, align 4, !tbaa !43
  %i.z = tail call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.x, i32 noundef %i.y) #7 ; 0 uses
  ret i32 0
}

declare i32 @ff_filter_execute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @ff_filter_get_nb_threads(ptr noundef) local_unnamed_addr #3

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #4

declare ptr @av_pix_fmt_desc_get(i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load float, ptr %i.g, align 4, !tbaa !51 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load float, ptr %i.i, align 8, !tbaa !52 ; 3 uses
  %i.k = getelementptr i8, ptr %i.b, i64 20       ; 5 uses
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %i.m = sext i32 %2 to i64
  %i.n = mul nsw i64 %i.l, %i.m
  %i.o = sext i32 %3 to i64                       ; 2 uses
  %i.p = sdiv i64 %i.n, %i.o                      ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = add nsw i32 %2, 1
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.l, %i.s
  %i.u = sdiv i64 %i.t, %i.o                      ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !53   ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aa = load <2 x i32>, ptr %i.z, align 4, !tbaa !53 ; 3 uses
  %i.ab = extractelement <2 x i32> %i.aa, i64 0   ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 3 uses
  %i.ad = extractelement <2 x i32> %i.aa, i64 1   ; 3 uses
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = icmp slt i32 %i.q, %i.v
  br i1 %i.af, label %.preheader.lr.ph, label %._crit_edge146.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ag = icmp sgt i32 %i.d, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br i1 %i.ag, label %.preheader.preheader, label %._crit_edge146.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.aj = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %sext = shl i64 %i.p, 32
  %i.ak = ashr exact i64 %sext, 32                ; 4 uses
  %i.al = mul nsw i64 %i.ak, %i.y
  %i.am = getelementptr i8, ptr %i.aj, i64 %i.al  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !54 ; 2 uses
  %i.ap = mul nsw i64 %i.ak, %i.ac
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap  ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.at = mul nsw i64 %i.ak, %i.ae
  %i.au = getelementptr i8, ptr %i.as, i64 %i.at  ; 4 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 6 uses
  %i.av = xor i64 %i.p, -1
  %i.aw = add i64 %i.u, %i.av
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = add nsw i64 %i.ak, %i.ax                ; 3 uses
  %i.az = mul i64 %i.ay, %i.y
  %i.ba = getelementptr i8, ptr %i.aj, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.ba, i64 %wide.trip.count ; 3 uses
  %i.bb = mul i64 %i.ay, %i.ac
  %i.bc = getelementptr i8, ptr %i.ao, i64 %i.bb
  %scevgep152 = getelementptr i8, ptr %i.bc, i64 %wide.trip.count ; 3 uses
  %i.bd = mul i64 %i.ay, %i.ae
  %i.be = getelementptr i8, ptr %i.as, i64 %i.bd
  %scevgep153 = getelementptr i8, ptr %i.be, i64 %wide.trip.count ; 3 uses
  %scevgep154 = getelementptr i8, ptr %i.b, i64 32 ; 3 uses
  %i.bf = insertelement <2 x ptr> poison, ptr %i.aq, i64 0
  %i.bg = insertelement <2 x ptr> %i.bf, ptr %i.am, i64 1
  %i.bh = insertelement <2 x ptr> poison, ptr %scevgep, i64 0
  %i.bi = insertelement <2 x ptr> %i.bh, ptr %scevgep153, i64 1
  %i.bj = insertelement <2 x ptr> poison, ptr %i.am, i64 0
  %i.bk = insertelement <2 x ptr> %i.bj, ptr %i.au, i64 1
  %i.bl = insertelement <2 x ptr> poison, ptr %scevgep152, i64 0
  %i.bm = insertelement <2 x ptr> %i.bl, ptr %scevgep, i64 1
  %i.bn = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.bo = shufflevector <2 x i32> %i.bn, <2 x i32> poison, <2 x i32> zeroinitializer
  %min.iters.check = icmp ult i32 %i.d, 4
  %i.bp = icmp ult <2 x ptr> %i.bk, %i.bm
  %i.bq = icmp ult <2 x ptr> %i.bg, %i.bi
  %i.br = or <2 x i32> %i.aa, %i.bo
  %i.bs = and <2 x i1> %i.bq, %i.bp
  %i.bt = icmp slt <2 x i32> %i.br, zeroinitializer
  %i.bu = or <2 x i1> %i.bs, %i.bt
  %i.bv = bitcast <2 x i1> %i.bu to i2
  %conflict.rdx = icmp ne i2 %i.bv, 0
  %bound0161 = icmp ult ptr %i.am, %scevgep154
  %bound1162 = icmp ult ptr %i.k, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %stride.check164 = icmp slt i32 %i.x, 0
  %i.bw = or i1 %found.conflict163, %stride.check164
  %conflict.rdx165 = or i1 %conflict.rdx, %i.bw
  %bound0166 = icmp ult ptr %i.aq, %scevgep153
  %bound1167 = icmp ult ptr %i.au, %scevgep152
  %found.conflict168 = and i1 %bound0166, %bound1167
  %i.bx = or i32 %i.ad, %i.ab
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = or i1 %found.conflict168, %i.by
  %conflict.rdx171 = or i1 %conflict.rdx165, %i.bz
  %bound0172 = icmp ult ptr %i.aq, %scevgep154
  %bound1173 = icmp ult ptr %i.k, %scevgep152
  %found.conflict174 = and i1 %bound0172, %bound1173
  %stride.check175 = icmp slt i32 %i.ab, 0
  %i.ca = or i1 %found.conflict174, %stride.check175
  %conflict.rdx176 = or i1 %conflict.rdx171, %i.ca
  %bound0177 = icmp ult ptr %i.au, %scevgep154
  %bound1178 = icmp ult ptr %i.k, %scevgep153
  %found.conflict179 = and i1 %bound0177, %bound1178
  %stride.check180 = icmp slt i32 %i.ad, 0
  %i.cb = or i1 %found.conflict179, %stride.check180
  %conflict.rdx181 = or i1 %conflict.rdx176, %i.cb
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert182 = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat183 = shufflevector <4 x float> %broadcast.splatinsert182, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.cc = insertelement <2 x float> poison, float %i.h, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = insertelement <2 x float> poison, float %i.j, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0124145 = phi i32 [ %i.ep, %._crit_edge ], [ %i.q, %.preheader.preheader ]
  %.0125144 = phi ptr [ %i.eo, %._crit_edge ], [ %i.au, %.preheader.preheader ] ; 3 uses
  %.0126143 = phi ptr [ %i.en, %._crit_edge ], [ %i.aq, %.preheader.preheader ] ; 3 uses
  %.0127142 = phi ptr [ %i.em, %._crit_edge ], [ %i.am, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx181
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.cg = load float, ptr %i.k, align 4, !tbaa !32, !alias.scope !55
  %broadcast.splatinsert186 = insertelement <4 x float> poison, float %i.cg, i64 0
  %broadcast.splat187 = shufflevector <4 x float> %broadcast.splatinsert186, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = load float, ptr %i.ah, align 8, !tbaa !32, !alias.scope !55
  %broadcast.splatinsert188 = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat189 = shufflevector <4 x float> %broadcast.splatinsert188, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = load float, ptr %i.ai, align 4, !tbaa !32, !alias.scope !55
  %broadcast.splatinsert190 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat191 = shufflevector <4 x float> %broadcast.splatinsert190, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0127142, i64 %index ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.cj, align 1, !tbaa !58, !alias.scope !59, !noalias !61
  %i.ck = uitofp <4 x i8> %wide.load to <4 x float> ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0126143, i64 %index ; 2 uses
  %wide.load184 = load <4 x i8>, ptr %i.cl, align 1, !tbaa !58, !alias.scope !64, !noalias !65
  %i.cm = uitofp <4 x i8> %wide.load184 to <4 x float> ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0125144, i64 %index ; 2 uses
  %wide.load185 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !58, !alias.scope !66, !noalias !55
  %i.co = uitofp <4 x i8> %wide.load185 to <4 x float> ; 6 uses
  %i.cp = fmul nsz <4 x float> %broadcast.splat187, %i.co
  %i.cq = fmul nsz <4 x float> %broadcast.splat189, %i.ck
  %i.cr = fmul nsz <4 x float> %broadcast.splat191, %i.cm
  %i.cs = fsub nsz <4 x float> %i.cp, %i.co
  %i.ct = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %broadcast.splat, <4 x float> %i.co) ; 6 uses
  %i.cu = fsub nsz <4 x float> %i.cq, %i.ck
  %i.cv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %broadcast.splat, <4 x float> %i.ck) ; 6 uses
  %i.cw = fsub nsz <4 x float> %i.cr, %i.cm
  %i.cx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %broadcast.splat, <4 x float> %i.cm) ; 7 uses
  %4 = fcmp nsz ogt <4 x float> %i.co, %i.ck      ; 2 uses
  %5 = select nsz <4 x i1> %4, <4 x float> %i.co, <4 x float> %i.ck ; 2 uses
  %6 = fcmp nsz ogt <4 x float> %5, %i.cm
  %7 = select nsz <4 x i1> %6, <4 x float> %5, <4 x float> %i.cm
  %8 = select nsz <4 x i1> %4, <4 x float> %i.ck, <4 x float> %i.co ; 2 uses
  %9 = fcmp nsz ogt <4 x float> %8, %i.cm
  %10 = select nsz <4 x i1> %9, <4 x float> %i.cm, <4 x float> %8
  %i.cy = fadd nsz <4 x float> %7, %10
  %i.cz = fadd nsz <4 x float> %i.cy, splat (float f0x34000000)
  %i.da = fcmp nsz ogt <4 x float> %i.ct, %i.cv   ; 2 uses
  %i.db = select nsz <4 x i1> %i.da, <4 x float> %i.ct, <4 x float> %i.cv ; 2 uses
  %i.dc = fcmp nsz ogt <4 x float> %i.db, %i.cx
  %i.dd = select nsz <4 x i1> %i.dc, <4 x float> %i.db, <4 x float> %i.cx
  %i.de = select nsz <4 x i1> %i.da, <4 x float> %i.cv, <4 x float> %i.ct ; 2 uses
  %i.df = fcmp nsz ogt <4 x float> %i.de, %i.cx
  %i.dg = select nsz <4 x i1> %i.df, <4 x float> %i.cx, <4 x float> %i.de
  %i.dh = fadd nsz <4 x float> %i.dd, %i.dg
  %i.di = fadd nsz <4 x float> %i.dh, splat (float f0x34000000)
  %i.dj = fdiv nsz <4 x float> %i.cz, %i.di       ; 3 uses
  %i.dk = fmul nsz <4 x float> %i.ct, %i.dj
  %i.dl = fmul nsz <4 x float> %i.cv, %i.dj
  %i.dm = fmul nsz <4 x float> %i.cx, %i.dj
  %i.dn = fsub nsz <4 x float> %i.dk, %i.ct
  %i.do = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %broadcast.splat183, <4 x float> %i.ct)
  %i.dp = fsub nsz <4 x float> %i.dl, %i.cv
  %i.dq = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %broadcast.splat183, <4 x float> %i.cv)
  %i.dr = fsub nsz <4 x float> %i.dm, %i.cx
  %i.ds = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> %broadcast.splat183, <4 x float> %i.cx)
  %i.dt = fptosi <4 x float> %i.dq to <4 x i32>   ; 3 uses
  %i.du = icmp ult <4 x i32> %i.dt, splat (i32 256)
  %i.dv = icmp sgt <4 x i32> %i.dt, splat (i32 -1)
  %i.dw = sext <4 x i1> %i.dv to <4 x i8>
  %i.dx = trunc nuw <4 x i32> %i.dt to <4 x i8>
  %i.dy = select <4 x i1> %i.du, <4 x i8> %i.dx, <4 x i8> %i.dw
  store <4 x i8> %i.dy, ptr %i.cj, align 1, !tbaa !58, !alias.scope !59, !noalias !61
  %i.dz = fptosi <4 x float> %i.ds to <4 x i32>   ; 3 uses
  %i.ea = icmp ult <4 x i32> %i.dz, splat (i32 256)
  %i.eb = icmp sgt <4 x i32> %i.dz, splat (i32 -1)
  %i.ec = sext <4 x i1> %i.eb to <4 x i8>
  %i.ed = trunc nuw <4 x i32> %i.dz to <4 x i8>
  %i.ee = select <4 x i1> %i.ea, <4 x i8> %i.ed, <4 x i8> %i.ec
  store <4 x i8> %i.ee, ptr %i.cl, align 1, !tbaa !58, !alias.scope !64, !noalias !65
  %i.ef = fptosi <4 x float> %i.do to <4 x i32>   ; 3 uses
  %i.eg = icmp ult <4 x i32> %i.ef, splat (i32 256)
  %i.eh = icmp sgt <4 x i32> %i.ef, splat (i32 -1)
  %i.ei = sext <4 x i1> %i.eh to <4 x i8>
  %i.ej = trunc nuw <4 x i32> %i.ef to <4 x i8>
  %i.ek = select <4 x i1> %i.eg, <4 x i8> %i.ej, <4 x i8> %i.ei
  store <4 x i8> %i.ek, ptr %i.cn, align 1, !tbaa !58, !alias.scope !66, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge146.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.em = getelementptr inbounds i8, ptr %.0127142, i64 %i.y
  %i.en = getelementptr inbounds i8, ptr %.0126143, i64 %i.ac
  %i.eo = getelementptr inbounds i8, ptr %.0125144, i64 %i.ae
  %i.ep = add nsw i32 %.0124145, 1                ; 2 uses
  %exitcond148.not = icmp eq i32 %i.ep, %i.v
  br i1 %exitcond148.not, label %._crit_edge146.split, label %.preheader, !llvm.loop !71

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0127142, i64 %indvars.iv ; 2 uses
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !58
  %i.es = getelementptr inbounds nuw i8, ptr %.0126143, i64 %indvars.iv ; 2 uses
  %i.et = load i8, ptr %i.es, align 1, !tbaa !58
  %i.eu = uitofp nsz i8 %i.et to float            ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0125144, i64 %indvars.iv ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !58
  %i.ex = load float, ptr %i.ai, align 4, !tbaa !32
  %i.ey = fmul nsz float %i.ex, %i.eu
  %i.ez = insertelement <2 x i8> poison, i8 %i.ew, i64 0
  %i.fa = insertelement <2 x i8> %i.ez, i8 %i.er, i64 1
  %i.fb = uitofp <2 x i8> %i.fa to <2 x float>    ; 5 uses
  %i.fc = load <2 x float>, ptr %i.k, align 4, !tbaa !32
  %i.fd = fmul nsz <2 x float> %i.fc, %i.fb
  %i.fe = fsub nsz <2 x float> %i.fd, %i.fb
  %i.ff = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.cd, <2 x float> %i.fb) ; 3 uses
  %i.fg = fsub nsz float %i.ey, %i.eu
  %i.fh = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fg, float %i.h, float %i.eu) ; 5 uses
  %11 = extractelement <2 x float> %i.fb, i64 0   ; 3 uses
  %12 = extractelement <2 x float> %i.fb, i64 1   ; 3 uses
  %13 = fcmp nsz ogt float %11, %12               ; 2 uses
  %14 = select nsz i1 %13, float %11, float %12   ; 2 uses
  %15 = fcmp nsz ogt float %14, %i.eu
  %. = select nsz i1 %15, float %14, float %i.eu
  %16 = select nsz i1 %13, float %12, float %11   ; 2 uses
  %17 = fcmp nsz ogt float %16, %i.eu
  %18 = select nsz i1 %17, float %i.eu, float %16
  %i.fi = fadd nsz float %., %18
  %i.fj = fadd nsz float %i.fi, f0x34000000
  %i.fk = extractelement <2 x float> %i.ff, i64 0 ; 6 uses
  %i.fl = extractelement <2 x float> %i.ff, i64 1 ; 3 uses
  %i.fm = fcmp nsz ogt float %i.fk, %i.fl         ; 2 uses
  %i.fn = select nsz i1 %i.fm, float %i.fk, float %i.fl ; 2 uses
  %i.fo = fcmp nsz ogt float %i.fn, %i.fh
  %i.fp = select nsz i1 %i.fo, float %i.fn, float %i.fh
  %i.fq = select nsz i1 %i.fm, float %i.fl, float %i.fk ; 2 uses
  %i.fr = fcmp nsz ogt float %i.fq, %i.fh
  %i.fs = select nsz i1 %i.fr, float %i.fh, float %i.fq
  %i.ft = fadd nsz float %i.fp, %i.fs
  %i.fu = fadd nsz float %i.ft, f0x34000000
  %i.fv = fdiv nsz float %i.fj, %i.fu             ; 2 uses
  %i.fw = fmul nsz float %i.fk, %i.fv
  %i.fx = fsub nsz float %i.fw, %i.fk
  %i.fy = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fx, float %i.j, float %i.fk)
  %i.fz = insertelement <2 x float> %i.ff, float %i.fh, i64 0 ; 3 uses
  %i.ga = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul nsz <2 x float> %i.fz, %i.gb
  %i.gd = fsub nsz <2 x float> %i.gc, %i.fz
  %i.ge = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.cf, <2 x float> %i.fz)
  %i.gf = fptosi <2 x float> %i.ge to <2 x i32>   ; 3 uses
  %i.gg = extractelement <2 x i32> %i.gf, i64 1   ; 2 uses
  %isnotneg.i139 = icmp sgt i32 %i.gg, -1
  %i.gh = sext i1 %isnotneg.i139 to i8
  %i.gi = trunc nuw i32 %i.gg to i8
  %i.gj = icmp ult <2 x i32> %i.gf, splat (i32 256) ; 2 uses
  %i.gk = extractelement <2 x i1> %i.gj, i64 1
  %.0.i140 = select i1 %i.gk, i8 %i.gi, i8 %i.gh
  store i8 %.0.i140, ptr %i.eq, align 1, !tbaa !58
  %i.gl = extractelement <2 x i32> %i.gf, i64 0   ; 2 uses
  %isnotneg.i136 = icmp sgt i32 %i.gl, -1
  %i.gm = sext i1 %isnotneg.i136 to i8
  %i.gn = trunc nuw i32 %i.gl to i8
  %i.go = extractelement <2 x i1> %i.gj, i64 0
  %.0.i137 = select i1 %i.go, i8 %i.gn, i8 %i.gm
  store i8 %.0.i137, ptr %i.es, align 1, !tbaa !58
  %i.gp = fptosi float %i.fy to i32               ; 3 uses
  %.not.i = icmp ult i32 %i.gp, 256
  %isnotneg.i = icmp sgt i32 %i.gp, -1
  %i.gq = sext i1 %isnotneg.i to i8
  %i.gr = trunc nuw i32 %i.gp to i8
  %.0.i = select i1 %.not.i, i8 %i.gr, i8 %i.gq
  store i8 %.0.i, ptr %i.ev, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !72
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice16(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !52 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !51 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %i.m = sext i32 %2 to i64
  %i.n = mul nsw i64 %i.l, %i.m
  %i.o = sext i32 %3 to i64                       ; 2 uses
  %i.p = sdiv i64 %i.n, %i.o                      ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = add nsw i32 %2, 1
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.l, %i.s
  %i.u = sdiv i64 %i.t, %i.o                      ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !53   ; 3 uses
  %i.y = sext i32 %i.x to i64
  %i.z = lshr i64 %i.y, 1                         ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !53 ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = lshr i64 %i.ac, 1                       ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !53 ; 3 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = lshr i64 %i.ag, 1                       ; 3 uses
  %i.ai = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %sext = shl i64 %i.p, 32                        ; 2 uses
  %i.aj = ashr exact i64 %sext, 32                ; 3 uses
  %i.ak = mul i64 %i.z, %i.aj
  %i.al = getelementptr [2 x i8], ptr %i.ai, i64 %i.ak ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54 ; 2 uses
  %i.ao = mul i64 %i.ad, %i.aj
  %i.ap = getelementptr [2 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54 ; 2 uses
  %i.as = mul i64 %i.ah, %i.aj
  %i.at = getelementptr [2 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  %i.au = icmp slt i32 %i.q, %i.v
  br i1 %i.au, label %.preheader.lr.ph, label %._crit_edge152.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !49
  %i.ax = icmp sgt i32 %i.d, 0
  %notmask.i143 = shl nsw i32 -1, %i.aw           ; 4 uses
  %i.ay = xor i32 %notmask.i143, -1               ; 4 uses
  br i1 %i.ax, label %.preheader.lr.ph.split, label %._crit_edge152.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ba = load <2 x float>, ptr %i.k, align 4, !tbaa !32 ; 3 uses
  %i.bb = load float, ptr %i.az, align 4, !tbaa !32 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 4 uses
  %i.bc = ashr exact i64 %sext, 31
  %i.bd = xor i64 %i.p, -1
  %i.be = add i64 %i.u, %i.bd
  %i.bf = shl i64 %i.be, 1
  %i.bg = and i64 %i.bf, 8589934590
  %i.bh = add nsw i64 %i.bc, %i.bg                ; 3 uses
  %i.bi = mul i64 %i.z, %i.bh
  %i.bj = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.bk = getelementptr i8, ptr %i.ai, i64 %i.bi
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bj ; 2 uses
  %i.bl = mul i64 %i.ad, %i.bh
  %i.bm = getelementptr i8, ptr %i.an, i64 %i.bl
  %scevgep158 = getelementptr i8, ptr %i.bm, i64 %i.bj ; 2 uses
  %i.bn = mul i64 %i.ah, %i.bh
  %i.bo = getelementptr i8, ptr %i.ar, i64 %i.bn
  %scevgep159 = getelementptr i8, ptr %i.bo, i64 %i.bj ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 8
  %bound0 = icmp ult ptr %i.al, %scevgep158
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.bp = or i32 %i.ab, %i.x
  %i.bq = icmp slt i32 %i.bp, 0
  %i.br = or i1 %found.conflict, %i.bq
  %bound0161 = icmp ult ptr %i.al, %scevgep159
  %bound1162 = icmp ult ptr %i.at, %scevgep
  %found.conflict163 = and i1 %bound0161, %bound1162
  %i.bs = or i32 %i.af, %i.x
  %i.bt = icmp slt i32 %i.bs, 0
  %i.bu = or i1 %found.conflict163, %i.bt
  %conflict.rdx = or i1 %i.br, %i.bu
  %bound0166 = icmp ult ptr %i.ap, %scevgep159
  %bound1167 = icmp ult ptr %i.at, %scevgep158
  %found.conflict168 = and i1 %bound0166, %bound1167
  %i.bv = or i32 %i.af, %i.ab
  %i.bw = icmp slt i32 %i.bv, 0
  %i.bx = or i1 %found.conflict168, %i.bw
  %conflict.rdx171 = or i1 %conflict.rdx, %i.bx
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.ba, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat173 = shufflevector <2 x float> %i.ba, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert174 = insertelement <8 x float> poison, float %i.bb, i64 0
  %broadcast.splat175 = shufflevector <8 x float> %broadcast.splatinsert174, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert176 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat177 = shufflevector <8 x float> %broadcast.splatinsert176, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert178 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat179 = shufflevector <8 x float> %broadcast.splatinsert178, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert180 = insertelement <8 x i32> poison, i32 %notmask.i143, i64 0
  %broadcast.splat181 = shufflevector <8 x i32> %broadcast.splatinsert180, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert182 = insertelement <8 x i32> poison, i32 %i.ay, i64 0
  %broadcast.splat183 = shufflevector <8 x i32> %broadcast.splatinsert182, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.by = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = insertelement <2 x float> poison, float %i.h, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x i32> poison, i32 %notmask.i143, i64 0
  %i.cd = shufflevector <2 x i32> %i.cc, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.0128151 = phi i32 [ %i.q, %.preheader.lr.ph.split ], [ %i.en, %._crit_edge ]
  %.0129150 = phi ptr [ %i.at, %.preheader.lr.ph.split ], [ %i.em, %._crit_edge ] ; 3 uses
  %.0130149 = phi ptr [ %i.ap, %.preheader.lr.ph.split ], [ %i.el, %._crit_edge ] ; 3 uses
  %.0131148 = phi ptr [ %i.al, %.preheader.lr.ph.split ], [ %i.ek, %._crit_edge ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx171
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %.0131148, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ce, align 2, !tbaa !73, !alias.scope !75, !noalias !78
  %i.cf = uitofp <8 x i16> %wide.load to <8 x float> ; 6 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.0130149, i64 %index ; 2 uses
  %wide.load184 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !73, !alias.scope !81, !noalias !82
  %i.ch = uitofp <8 x i16> %wide.load184 to <8 x float> ; 7 uses
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %.0129150, i64 %index ; 2 uses
  %wide.load185 = load <8 x i16>, ptr %i.ci, align 2, !tbaa !73, !alias.scope !82
  %i.cj = uitofp <8 x i16> %wide.load185 to <8 x float> ; 6 uses
  %i.ck = fmul nsz <8 x float> %broadcast.splat, %i.cj
  %i.cl = fmul nsz <8 x float> %broadcast.splat173, %i.cf
  %i.cm = fmul nsz <8 x float> %broadcast.splat175, %i.ch
  %i.cn = fsub nsz <8 x float> %i.ck, %i.cj
  %i.co = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cn, <8 x float> %broadcast.splat177, <8 x float> %i.cj) ; 6 uses
  %i.cp = fsub nsz <8 x float> %i.cl, %i.cf
  %i.cq = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cp, <8 x float> %broadcast.splat177, <8 x float> %i.cf) ; 6 uses
  %i.cr = fsub nsz <8 x float> %i.cm, %i.ch
  %i.cs = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cr, <8 x float> %broadcast.splat177, <8 x float> %i.ch) ; 7 uses
  %4 = fcmp nsz ogt <8 x float> %i.cj, %i.cf      ; 2 uses
  %5 = select nsz <8 x i1> %4, <8 x float> %i.cj, <8 x float> %i.cf ; 2 uses
  %6 = fcmp nsz ogt <8 x float> %5, %i.ch
  %7 = select nsz <8 x i1> %6, <8 x float> %5, <8 x float> %i.ch
  %8 = select nsz <8 x i1> %4, <8 x float> %i.cf, <8 x float> %i.cj ; 2 uses
  %9 = fcmp nsz ogt <8 x float> %8, %i.ch
  %10 = select nsz <8 x i1> %9, <8 x float> %i.ch, <8 x float> %8
  %i.ct = fadd nsz <8 x float> %7, %10
  %i.cu = fadd nsz <8 x float> %i.ct, splat (float f0x34000000)
  %i.cv = fcmp nsz ogt <8 x float> %i.co, %i.cq   ; 2 uses
  %i.cw = select nsz <8 x i1> %i.cv, <8 x float> %i.co, <8 x float> %i.cq ; 2 uses
  %i.cx = fcmp nsz ogt <8 x float> %i.cw, %i.cs
  %i.cy = select nsz <8 x i1> %i.cx, <8 x float> %i.cw, <8 x float> %i.cs
  %i.cz = select nsz <8 x i1> %i.cv, <8 x float> %i.cq, <8 x float> %i.co ; 2 uses
  %i.da = fcmp nsz ogt <8 x float> %i.cz, %i.cs
  %i.db = select nsz <8 x i1> %i.da, <8 x float> %i.cs, <8 x float> %i.cz
  %i.dc = fadd nsz <8 x float> %i.cy, %i.db
  %i.dd = fadd nsz <8 x float> %i.dc, splat (float f0x34000000)
  %i.de = fdiv nsz <8 x float> %i.cu, %i.dd       ; 3 uses
  %i.df = fmul nsz <8 x float> %i.co, %i.de
  %i.dg = fmul nsz <8 x float> %i.cq, %i.de
  %i.dh = fmul nsz <8 x float> %i.cs, %i.de
  %i.di = fsub nsz <8 x float> %i.df, %i.co
  %i.dj = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.di, <8 x float> %broadcast.splat179, <8 x float> %i.co)
  %i.dk = fsub nsz <8 x float> %i.dg, %i.cq
  %i.dl = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dk, <8 x float> %broadcast.splat179, <8 x float> %i.cq)
  %i.dm = fsub nsz <8 x float> %i.dh, %i.cs
  %i.dn = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dm, <8 x float> %broadcast.splat179, <8 x float> %i.cs)
  %i.do = fptosi <8 x float> %i.dl to <8 x i32>   ; 3 uses
  %i.dp = and <8 x i32> %broadcast.splat181, %i.do
  %i.dq = icmp eq <8 x i32> %i.dp, zeroinitializer
  %i.dr = icmp slt <8 x i32> %i.do, zeroinitializer
  %i.ds = select <8 x i1> %i.dr, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat183
  %i.dt = select <8 x i1> %i.dq, <8 x i32> %i.do, <8 x i32> %i.ds
  %i.du = trunc <8 x i32> %i.dt to <8 x i16>
  store <8 x i16> %i.du, ptr %i.ce, align 2, !tbaa !73, !alias.scope !75, !noalias !78
  %i.dv = fptosi <8 x float> %i.dn to <8 x i32>   ; 3 uses
  %i.dw = and <8 x i32> %broadcast.splat181, %i.dv
  %i.dx = icmp eq <8 x i32> %i.dw, zeroinitializer
  %i.dy = icmp slt <8 x i32> %i.dv, zeroinitializer
  %i.dz = select <8 x i1> %i.dy, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat183
  %i.ea = select <8 x i1> %i.dx, <8 x i32> %i.dv, <8 x i32> %i.dz
  %i.eb = trunc <8 x i32> %i.ea to <8 x i16>
  store <8 x i16> %i.eb, ptr %i.cg, align 2, !tbaa !73, !alias.scope !81, !noalias !82
  %i.ec = fptosi <8 x float> %i.dj to <8 x i32>   ; 3 uses
  %i.ed = and <8 x i32> %broadcast.splat181, %i.ec
  %i.ee = icmp eq <8 x i32> %i.ed, zeroinitializer
  %i.ef = icmp slt <8 x i32> %i.ec, zeroinitializer
  %i.eg = select <8 x i1> %i.ef, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat183
  %i.eh = select <8 x i1> %i.ee, <8 x i32> %i.ec, <8 x i32> %i.eg
  %i.ei = trunc <8 x i32> %i.eh to <8 x i16>
  store <8 x i16> %i.ei, ptr %i.ci, align 2, !tbaa !73, !alias.scope !82
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge152.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %.0131148, i64 %i.z
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.0130149, i64 %i.ad
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %.0129150, i64 %i.ah
  %i.en = add nsw i32 %.0128151, 1                ; 2 uses
  %exitcond154.not = icmp eq i32 %i.en, %i.v
  br i1 %exitcond154.not, label %._crit_edge152.split, label %.preheader, !llvm.loop !84

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.0131148, i64 %indvars.iv ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !73
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %.0130149, i64 %indvars.iv ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !73
  %i.es = uitofp nsz i16 %i.er to float           ; 7 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %.0129150, i64 %indvars.iv ; 2 uses
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !73
  %i.ev = fmul nsz float %i.bb, %i.es
  %i.ew = insertelement <2 x i16> poison, i16 %i.eu, i64 0
  %i.ex = insertelement <2 x i16> %i.ew, i16 %i.ep, i64 1
  %i.ey = uitofp <2 x i16> %i.ex to <2 x float>   ; 5 uses
  %i.ez = fmul nsz <2 x float> %i.ba, %i.ey
  %i.fa = fsub nsz <2 x float> %i.ez, %i.ey
  %i.fb = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fa, <2 x float> %i.bz, <2 x float> %i.ey) ; 3 uses
  %i.fc = fsub nsz float %i.ev, %i.es
  %i.fd = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fc, float %i.j, float %i.es) ; 5 uses
  %11 = extractelement <2 x float> %i.ey, i64 0   ; 3 uses
  %12 = extractelement <2 x float> %i.ey, i64 1   ; 3 uses
  %13 = fcmp nsz ogt float %11, %12               ; 2 uses
  %14 = select nsz i1 %13, float %11, float %12   ; 2 uses
  %15 = fcmp nsz ogt float %14, %i.es
  %. = select nsz i1 %15, float %14, float %i.es
  %16 = select nsz i1 %13, float %12, float %11   ; 2 uses
  %17 = fcmp nsz ogt float %16, %i.es
  %18 = select nsz i1 %17, float %i.es, float %16
  %i.fe = fadd nsz float %., %18
  %i.ff = fadd nsz float %i.fe, f0x34000000
  %i.fg = extractelement <2 x float> %i.fb, i64 0 ; 6 uses
  %i.fh = extractelement <2 x float> %i.fb, i64 1 ; 3 uses
  %i.fi = fcmp nsz ogt float %i.fg, %i.fh         ; 2 uses
  %i.fj = select nsz i1 %i.fi, float %i.fg, float %i.fh ; 2 uses
  %i.fk = fcmp nsz ogt float %i.fj, %i.fd
  %i.fl = select nsz i1 %i.fk, float %i.fj, float %i.fd
  %i.fm = select nsz i1 %i.fi, float %i.fh, float %i.fg ; 2 uses
  %i.fn = fcmp nsz ogt float %i.fm, %i.fd
  %i.fo = select nsz i1 %i.fn, float %i.fd, float %i.fm
  %i.fp = fadd nsz float %i.fl, %i.fo
  %i.fq = fadd nsz float %i.fp, f0x34000000
  %i.fr = fdiv nsz float %i.ff, %i.fq             ; 2 uses
  %i.fs = fmul nsz float %i.fg, %i.fr
  %i.ft = fsub nsz float %i.fs, %i.fg
  %i.fu = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ft, float %i.h, float %i.fg)
  %i.fv = insertelement <2 x float> %i.fb, float %i.fd, i64 0 ; 3 uses
  %i.fw = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fy = fmul nsz <2 x float> %i.fv, %i.fx
  %i.fz = fsub nsz <2 x float> %i.fy, %i.fv
  %i.ga = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.cb, <2 x float> %i.fv)
  %i.gb = fptosi <2 x float> %i.ga to <2 x i32>   ; 3 uses
  %i.gc = extractelement <2 x i32> %i.gb, i64 1   ; 2 uses
  %isnotneg.inv.i145 = icmp slt i32 %i.gc, 0
  %i.gd = select i1 %isnotneg.inv.i145, i32 0, i32 %i.ay
  %i.ge = and <2 x i32> %i.cd, %i.gb
  %i.gf = icmp eq <2 x i32> %i.ge, zeroinitializer ; 2 uses
  %i.gg = extractelement <2 x i1> %i.gf, i64 1
  %.0.i146 = select i1 %i.gg, i32 %i.gc, i32 %i.gd
  %i.gh = trunc i32 %.0.i146 to i16
  store i16 %i.gh, ptr %i.eo, align 2, !tbaa !73
  %i.gi = extractelement <2 x i32> %i.gb, i64 0   ; 2 uses
  %isnotneg.inv.i141 = icmp slt i32 %i.gi, 0
  %i.gj = select i1 %isnotneg.inv.i141, i32 0, i32 %i.ay
  %i.gk = extractelement <2 x i1> %i.gf, i64 0
  %.0.i142 = select i1 %i.gk, i32 %i.gi, i32 %i.gj
  %i.gl = trunc i32 %.0.i142 to i16
  store i16 %i.gl, ptr %i.eq, align 2, !tbaa !73
  %i.gm = fptosi float %i.fu to i32               ; 3 uses
  %i.gn = and i32 %notmask.i143, %i.gm
  %.not.i = icmp eq i32 %i.gn, 0
  %isnotneg.inv.i = icmp slt i32 %i.gm, 0
  %i.go = select i1 %isnotneg.inv.i, i32 0, i32 %i.ay
  %.0.i = select i1 %.not.i, i32 %i.gm, i32 %i.go
  %i.gp = trunc i32 %.0.i to i16
  store i16 %i.gp, ptr %i.et, align 2, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !85
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice8p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !51 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !52 ; 3 uses
  %i.m = getelementptr i8, ptr %i.b, i64 20       ; 5 uses
  %i.n = sext i32 %i.h to i64                     ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = sext i32 %3 to i64                       ; 2 uses
  %i.r = sdiv i64 %i.p, %i.q                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = add nsw i32 %2, 1
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = sdiv i64 %i.v, %i.q                      ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = icmp slt i32 %i.s, %i.x
  br i1 %i.ab, label %.preheader.lr.ph, label %._crit_edge146.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ac = icmp sgt i32 %i.f, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br i1 %i.ac, label %.preheader.preheader, label %._crit_edge146.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !58
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !58
  %i.al = load ptr, ptr %1, align 8, !tbaa !54    ; 7 uses
  %sext = shl i64 %i.r, 32
  %i.am = ashr exact i64 %sext, 32                ; 2 uses
  %i.an = mul nsw i64 %i.am, %i.aa                ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 %i.an
  %i.ap = sext i32 %i.d to i64
  %i.aq = zext i8 %i.ak to i64                    ; 3 uses
  %i.ar = zext i8 %i.ai to i64                    ; 3 uses
  %i.as = zext i8 %i.ag to i64                    ; 3 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 5 uses
  %i.at = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep = getelementptr i8, ptr %i.at, i64 %i.aq ; 3 uses
  %i.au = xor i64 %i.r, -1
  %i.av = add i64 %i.w, %i.au
  %i.aw = and i64 %i.av, 4294967295
  %i.ax = add nsw i64 %i.am, %i.aw
  %i.ay = mul i64 %i.ax, %i.aa                    ; 2 uses
  %i.az = add i64 %i.ay, %wide.trip.count         ; 2 uses
  %i.ba = getelementptr i8, ptr %i.al, i64 %i.az
  %scevgep156 = getelementptr i8, ptr %i.ba, i64 %i.aq ; 3 uses
  %i.bb = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep157 = getelementptr i8, ptr %i.bb, i64 %i.ar ; 3 uses
  %i.bc = getelementptr i8, ptr %i.al, i64 %i.az
  %scevgep158 = getelementptr i8, ptr %i.bc, i64 %i.ar ; 3 uses
  %i.bd = getelementptr i8, ptr %i.al, i64 %i.an
  %scevgep159 = getelementptr i8, ptr %i.bd, i64 %i.as ; 3 uses
  %i.be = getelementptr i8, ptr %i.al, i64 %i.ay
  %i.bf = getelementptr i8, ptr %i.be, i64 %wide.trip.count
  %scevgep160 = getelementptr i8, ptr %i.bf, i64 %i.as ; 3 uses
  %min.iters.check = icmp ugt i32 %i.f, 3
  %ident.check.not = icmp eq i32 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep158
  %bound1 = icmp ult ptr %scevgep157, %scevgep156
  %found.conflict = and i1 %bound0, %bound1
  %bound0162 = icmp ult ptr %scevgep, %scevgep160
  %bound1163 = icmp ult ptr %scevgep159, %scevgep156
  %found.conflict164 = and i1 %bound0162, %bound1163
  %stride.check165 = icmp slt i32 %i.z, 0
  %i.bg = or i1 %found.conflict164, %stride.check165
  %conflict.rdx = or i1 %found.conflict, %i.bg
  %bound0167 = icmp ult ptr %scevgep, %i.c
  %bound1168 = icmp ult ptr %i.m, %scevgep156
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx171 = or i1 %found.conflict169, %conflict.rdx
  %bound0172 = icmp ult ptr %scevgep157, %scevgep160
  %bound1173 = icmp ult ptr %scevgep159, %scevgep158
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx177 = or i1 %found.conflict174, %conflict.rdx171
  %bound0178 = icmp ult ptr %scevgep157, %i.c
  %bound1179 = icmp ult ptr %i.m, %scevgep158
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx182 = or i1 %found.conflict180, %conflict.rdx177
  %bound0183 = icmp ult ptr %scevgep159, %i.c
  %bound1184 = icmp ult ptr %i.m, %scevgep160
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx187 = or i1 %found.conflict185, %conflict.rdx182
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert188 = insertelement <4 x float> poison, float %i.l, i64 0
  %broadcast.splat189 = shufflevector <4 x float> %broadcast.splatinsert188, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.bh = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0128145 = phi i32 [ %i.ds, %._crit_edge ], [ %i.s, %.preheader.preheader ]
  %.0129144 = phi ptr [ %i.dr, %._crit_edge ], [ %i.ao, %.preheader.preheader ] ; 4 uses
  %invariant.gep = getelementptr i8, ptr %.0129144, i64 %i.aq ; 2 uses
  %invariant.gep152 = getelementptr i8, ptr %.0129144, i64 %i.ar ; 2 uses
  %invariant.gep154 = getelementptr i8, ptr %.0129144, i64 %i.as ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx187
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.bl = load float, ptr %i.m, align 4, !tbaa !32, !alias.scope !87
  %broadcast.splatinsert192 = insertelement <4 x float> poison, float %i.bl, i64 0
  %broadcast.splat193 = shufflevector <4 x float> %broadcast.splatinsert192, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bm = load float, ptr %i.ad, align 8, !tbaa !32, !alias.scope !87
  %broadcast.splatinsert194 = insertelement <4 x float> poison, float %i.bm, i64 0
  %broadcast.splat195 = shufflevector <4 x float> %broadcast.splatinsert194, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = load float, ptr %i.ae, align 4, !tbaa !32, !alias.scope !87
  %broadcast.splatinsert196 = insertelement <4 x float> poison, float %i.bn, i64 0
  %broadcast.splat197 = shufflevector <4 x float> %broadcast.splatinsert196, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bo = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <4 x i8>, ptr %i.bo, align 1, !tbaa !58, !alias.scope !90, !noalias !92
  %i.bp = uitofp <4 x i8> %wide.load to <4 x float> ; 6 uses
  %i.bq = getelementptr i8, ptr %invariant.gep152, i64 %index ; 2 uses
  %wide.load190 = load <4 x i8>, ptr %i.bq, align 1, !tbaa !58, !alias.scope !95, !noalias !96
  %i.br = uitofp <4 x i8> %wide.load190 to <4 x float> ; 7 uses
  %i.bs = getelementptr i8, ptr %invariant.gep154, i64 %index ; 2 uses
  %wide.load191 = load <4 x i8>, ptr %i.bs, align 1, !tbaa !58, !alias.scope !97, !noalias !87
  %i.bt = uitofp <4 x i8> %wide.load191 to <4 x float> ; 6 uses
  %i.bu = fmul nsz <4 x float> %broadcast.splat193, %i.bt
  %i.bv = fmul nsz <4 x float> %broadcast.splat195, %i.bp
  %i.bw = fmul nsz <4 x float> %broadcast.splat197, %i.br
  %i.bx = fsub nsz <4 x float> %i.bu, %i.bt
  %i.by = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %broadcast.splat, <4 x float> %i.bt) ; 6 uses
  %i.bz = fsub nsz <4 x float> %i.bv, %i.bp
  %i.ca = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %broadcast.splat, <4 x float> %i.bp) ; 6 uses
  %i.cb = fsub nsz <4 x float> %i.bw, %i.br
  %i.cc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %broadcast.splat, <4 x float> %i.br) ; 7 uses
  %4 = fcmp nsz ogt <4 x float> %i.bt, %i.bp      ; 2 uses
  %5 = select nsz <4 x i1> %4, <4 x float> %i.bt, <4 x float> %i.bp ; 2 uses
  %6 = fcmp nsz ogt <4 x float> %5, %i.br
  %7 = select nsz <4 x i1> %6, <4 x float> %5, <4 x float> %i.br
  %8 = select nsz <4 x i1> %4, <4 x float> %i.bp, <4 x float> %i.bt ; 2 uses
  %9 = fcmp nsz ogt <4 x float> %8, %i.br
  %10 = select nsz <4 x i1> %9, <4 x float> %i.br, <4 x float> %8
  %i.cd = fadd nsz <4 x float> %7, %10
  %i.ce = fadd nsz <4 x float> %i.cd, splat (float f0x34000000)
  %i.cf = fcmp nsz ogt <4 x float> %i.by, %i.ca   ; 2 uses
  %i.cg = select nsz <4 x i1> %i.cf, <4 x float> %i.by, <4 x float> %i.ca ; 2 uses
  %i.ch = fcmp nsz ogt <4 x float> %i.cg, %i.cc
  %i.ci = select nsz <4 x i1> %i.ch, <4 x float> %i.cg, <4 x float> %i.cc
  %i.cj = select nsz <4 x i1> %i.cf, <4 x float> %i.ca, <4 x float> %i.by ; 2 uses
  %i.ck = fcmp nsz ogt <4 x float> %i.cj, %i.cc
  %i.cl = select nsz <4 x i1> %i.ck, <4 x float> %i.cc, <4 x float> %i.cj
  %i.cm = fadd nsz <4 x float> %i.ci, %i.cl
  %i.cn = fadd nsz <4 x float> %i.cm, splat (float f0x34000000)
  %i.co = fdiv nsz <4 x float> %i.ce, %i.cn       ; 3 uses
  %i.cp = fmul nsz <4 x float> %i.by, %i.co
  %i.cq = fmul nsz <4 x float> %i.ca, %i.co
  %i.cr = fmul nsz <4 x float> %i.cc, %i.co
  %i.cs = fsub nsz <4 x float> %i.cp, %i.by
  %i.ct = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %broadcast.splat189, <4 x float> %i.by)
  %i.cu = fsub nsz <4 x float> %i.cq, %i.ca
  %i.cv = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %broadcast.splat189, <4 x float> %i.ca)
  %i.cw = fsub nsz <4 x float> %i.cr, %i.cc
  %i.cx = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %broadcast.splat189, <4 x float> %i.cc)
  %i.cy = fptosi <4 x float> %i.cv to <4 x i32>   ; 3 uses
  %i.cz = icmp ult <4 x i32> %i.cy, splat (i32 256)
  %i.da = icmp sgt <4 x i32> %i.cy, splat (i32 -1)
  %i.db = sext <4 x i1> %i.da to <4 x i8>
  %i.dc = trunc nuw <4 x i32> %i.cy to <4 x i8>
  %i.dd = select <4 x i1> %i.cz, <4 x i8> %i.dc, <4 x i8> %i.db
  store <4 x i8> %i.dd, ptr %i.bo, align 1, !tbaa !58, !alias.scope !90, !noalias !92
  %i.de = fptosi <4 x float> %i.cx to <4 x i32>   ; 3 uses
  %i.df = icmp ult <4 x i32> %i.de, splat (i32 256)
  %i.dg = icmp sgt <4 x i32> %i.de, splat (i32 -1)
  %i.dh = sext <4 x i1> %i.dg to <4 x i8>
  %i.di = trunc nuw <4 x i32> %i.de to <4 x i8>
  %i.dj = select <4 x i1> %i.df, <4 x i8> %i.di, <4 x i8> %i.dh
  store <4 x i8> %i.dj, ptr %i.bq, align 1, !tbaa !58, !alias.scope !95, !noalias !96
  %i.dk = fptosi <4 x float> %i.ct to <4 x i32>   ; 3 uses
  %i.dl = icmp ult <4 x i32> %i.dk, splat (i32 256)
  %i.dm = icmp sgt <4 x i32> %i.dk, splat (i32 -1)
  %i.dn = sext <4 x i1> %i.dm to <4 x i8>
  %i.do = trunc nuw <4 x i32> %i.dk to <4 x i8>
  %i.dp = select <4 x i1> %i.dl, <4 x i8> %i.do, <4 x i8> %i.dn
  store <4 x i8> %i.dp, ptr %i.bs, align 1, !tbaa !58, !alias.scope !97, !noalias !87
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge146.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.dr = getelementptr inbounds i8, ptr %.0129144, i64 %i.aa
  %i.ds = add nsw i32 %.0128145, 1                ; 2 uses
  %exitcond148.not = icmp eq i32 %i.ds, %i.x
  br i1 %exitcond148.not, label %._crit_edge146.split, label %.preheader, !llvm.loop !99

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dt = mul nsw i64 %indvars.iv, %i.ap          ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.dt ; 2 uses
  %i.du = load i8, ptr %gep, align 1, !tbaa !58
  %gep153 = getelementptr i8, ptr %invariant.gep152, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %gep153, align 1, !tbaa !58
  %i.dw = uitofp nsz i8 %i.dv to float            ; 7 uses
  %gep155 = getelementptr i8, ptr %invariant.gep154, i64 %i.dt ; 2 uses
  %i.dx = load i8, ptr %gep155, align 1, !tbaa !58
  %i.dy = load float, ptr %i.ae, align 4, !tbaa !32
  %i.dz = fmul nsz float %i.dy, %i.dw
  %i.ea = insertelement <2 x i8> poison, i8 %i.dx, i64 0
  %i.eb = insertelement <2 x i8> %i.ea, i8 %i.du, i64 1
  %i.ec = uitofp <2 x i8> %i.eb to <2 x float>    ; 5 uses
  %i.ed = load <2 x float>, ptr %i.m, align 4, !tbaa !32
  %i.ee = fmul nsz <2 x float> %i.ed, %i.ec
  %i.ef = fsub nsz <2 x float> %i.ee, %i.ec
  %i.eg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.bi, <2 x float> %i.ec) ; 3 uses
  %i.eh = fsub nsz float %i.dz, %i.dw
  %i.ei = tail call nsz noundef float @llvm.fmuladd.f32(float %i.eh, float %i.j, float %i.dw) ; 5 uses
  %11 = extractelement <2 x float> %i.ec, i64 0   ; 3 uses
  %12 = extractelement <2 x float> %i.ec, i64 1   ; 3 uses
  %13 = fcmp nsz ogt float %11, %12               ; 2 uses
  %14 = select nsz i1 %13, float %11, float %12   ; 2 uses
  %15 = fcmp nsz ogt float %14, %i.dw
  %. = select nsz i1 %15, float %14, float %i.dw
  %16 = select nsz i1 %13, float %12, float %11   ; 2 uses
  %17 = fcmp nsz ogt float %16, %i.dw
  %18 = select nsz i1 %17, float %i.dw, float %16
  %i.ej = fadd nsz float %., %18
  %i.ek = fadd nsz float %i.ej, f0x34000000
  %i.el = extractelement <2 x float> %i.eg, i64 0 ; 6 uses
  %i.em = extractelement <2 x float> %i.eg, i64 1 ; 3 uses
  %i.en = fcmp nsz ogt float %i.el, %i.em         ; 2 uses
  %i.eo = select nsz i1 %i.en, float %i.el, float %i.em ; 2 uses
  %i.ep = fcmp nsz ogt float %i.eo, %i.ei
  %i.eq = select nsz i1 %i.ep, float %i.eo, float %i.ei
  %i.er = select nsz i1 %i.en, float %i.em, float %i.el ; 2 uses
  %i.es = fcmp nsz ogt float %i.er, %i.ei
  %i.et = select nsz i1 %i.es, float %i.ei, float %i.er
  %i.eu = fadd nsz float %i.eq, %i.et
  %i.ev = fadd nsz float %i.eu, f0x34000000
  %i.ew = fdiv nsz float %i.ek, %i.ev             ; 2 uses
  %i.ex = fmul nsz float %i.el, %i.ew
  %i.ey = fsub nsz float %i.ex, %i.el
  %i.ez = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ey, float %i.l, float %i.el)
  %i.fa = insertelement <2 x float> %i.eg, float %i.ei, i64 0 ; 3 uses
  %i.fb = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = fmul nsz <2 x float> %i.fa, %i.fc
  %i.fe = fsub nsz <2 x float> %i.fd, %i.fa
  %i.ff = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fe, <2 x float> %i.bk, <2 x float> %i.fa)
  %i.fg = fptosi <2 x float> %i.ff to <2 x i32>   ; 3 uses
  %i.fh = extractelement <2 x i32> %i.fg, i64 1   ; 2 uses
  %isnotneg.i141 = icmp sgt i32 %i.fh, -1
  %i.fi = sext i1 %isnotneg.i141 to i8
  %i.fj = trunc nuw i32 %i.fh to i8
  %i.fk = icmp ult <2 x i32> %i.fg, splat (i32 256) ; 2 uses
  %i.fl = extractelement <2 x i1> %i.fk, i64 1
  %.0.i142 = select i1 %i.fl, i8 %i.fj, i8 %i.fi
  store i8 %.0.i142, ptr %gep, align 1, !tbaa !58
  %i.fm = extractelement <2 x i32> %i.fg, i64 0   ; 2 uses
  %isnotneg.i138 = icmp sgt i32 %i.fm, -1
  %i.fn = sext i1 %isnotneg.i138 to i8
  %i.fo = trunc nuw i32 %i.fm to i8
  %i.fp = extractelement <2 x i1> %i.fk, i64 0
  %.0.i139 = select i1 %i.fp, i8 %i.fo, i8 %i.fn
  store i8 %.0.i139, ptr %gep153, align 1, !tbaa !58
  %i.fq = fptosi float %i.ez to i32               ; 3 uses
  %.not.i = icmp ult i32 %i.fq, 256
  %isnotneg.i = icmp sgt i32 %i.fq, -1
  %i.fr = sext i1 %isnotneg.i to i8
  %i.fs = trunc nuw i32 %i.fq to i8
  %.0.i = select i1 %.not.i, i8 %i.fs, i8 %i.fr
  store i8 %.0.i, ptr %gep155, align 1, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !100
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice16p(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load float, ptr %i.i, align 8, !tbaa !52 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !51 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.n = sext i32 %i.h to i64                     ; 2 uses
  %i.o = sext i32 %2 to i64
  %i.p = mul nsw i64 %i.n, %i.o
  %i.q = sext i32 %3 to i64                       ; 2 uses
  %i.r = sdiv i64 %i.p, %i.q                      ; 3 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = add nsw i32 %2, 1
  %i.u = sext i32 %i.t to i64
  %i.v = mul nsw i64 %i.n, %i.u
  %i.w = sdiv i64 %i.v, %i.q                      ; 2 uses
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.z = load i32, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = lshr i64 %i.aa, 1                       ; 4 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !54    ; 7 uses
  %sext = shl i64 %i.r, 32                        ; 2 uses
  %i.ad = ashr exact i64 %sext, 32                ; 2 uses
  %i.ae = mul nsw i64 %i.ab, %i.ad
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.ae
  %i.ag = icmp slt i32 %i.s, %i.x
  br i1 %i.ag, label %.preheader.lr.ph, label %._crit_edge152.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !49
  %i.aj = icmp sgt i32 %i.f, 0
  %notmask.i145 = shl nsw i32 -1, %i.ai           ; 4 uses
  %i.ak = xor i32 %notmask.i145, -1               ; 4 uses
  br i1 %i.aj, label %.preheader.lr.ph.split, label %._crit_edge152.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.am = load i8, ptr %i.al, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !58
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 41
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.as = load <2 x float>, ptr %i.m, align 4, !tbaa !32 ; 3 uses
  %i.at = load float, ptr %i.ar, align 4, !tbaa !32 ; 2 uses
  %i.au = sext i32 %i.d to i64
  %i.av = zext i8 %i.aq to i64                    ; 2 uses
  %i.aw = zext i8 %i.ao to i64                    ; 2 uses
  %i.ax = zext i8 %i.am to i64                    ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64    ; 4 uses
  %i.ay = mul i64 %i.ab, %i.ad
  %i.az = shl i64 %i.ay, 1                        ; 3 uses
  %i.ba = shl nuw nsw i64 %i.av, 1                ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ac, i64 %i.az
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.ba ; 2 uses
  %i.bc = ashr exact i64 %sext, 31
  %i.bd = xor i64 %i.r, -1
  %i.be = add i64 %i.w, %i.bd
  %i.bf = shl i64 %i.be, 1
  %i.bg = and i64 %i.bf, 8589934590
  %i.bh = add nsw i64 %i.bc, %i.bg
  %i.bi = mul i64 %i.ab, %i.bh                    ; 2 uses
  %i.bj = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ac, i64 %i.bi
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.bj
  %scevgep162 = getelementptr i8, ptr %i.bl, i64 %i.ba ; 2 uses
  %i.bm = shl nuw nsw i64 %i.aw, 1                ; 2 uses
  %i.bn = getelementptr i8, ptr %i.ac, i64 %i.az
  %scevgep163 = getelementptr i8, ptr %i.bn, i64 %i.bm ; 2 uses
  %i.bo = add i64 %i.bi, %i.bj                    ; 2 uses
  %i.bp = getelementptr i8, ptr %i.ac, i64 %i.bo
  %scevgep164 = getelementptr i8, ptr %i.bp, i64 %i.bm ; 2 uses
  %i.bq = shl nuw nsw i64 %i.ax, 1                ; 2 uses
  %i.br = getelementptr i8, ptr %i.ac, i64 %i.az
  %scevgep165 = getelementptr i8, ptr %i.br, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.ac, i64 %i.bo
  %scevgep166 = getelementptr i8, ptr %i.bs, i64 %i.bq ; 2 uses
  %min.iters.check = icmp ugt i32 %i.f, 7
  %ident.check.not = icmp eq i32 %i.d, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %scevgep, %scevgep164
  %bound1 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict = and i1 %bound0, %bound1
  %bound0168 = icmp ult ptr %scevgep, %scevgep166
  %bound1169 = icmp ult ptr %scevgep165, %scevgep162
  %found.conflict170 = and i1 %bound0168, %bound1169
  %stride.check171 = icmp slt i32 %i.z, 0
  %i.bt = or i1 %found.conflict170, %stride.check171
  %conflict.rdx = or i1 %found.conflict, %i.bt
  %bound0173 = icmp ult ptr %scevgep163, %scevgep166
  %bound1174 = icmp ult ptr %scevgep165, %scevgep164
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx178 = or i1 %found.conflict175, %conflict.rdx
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <2 x float> %i.as, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat180 = shufflevector <2 x float> %i.as, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert181 = insertelement <8 x float> poison, float %i.at, i64 0
  %broadcast.splat182 = shufflevector <8 x float> %broadcast.splatinsert181, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <8 x float> poison, float %i.l, i64 0
  %broadcast.splat184 = shufflevector <8 x float> %broadcast.splatinsert183, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert185 = insertelement <8 x float> poison, float %i.j, i64 0
  %broadcast.splat186 = shufflevector <8 x float> %broadcast.splatinsert185, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert187 = insertelement <8 x i32> poison, i32 %notmask.i145, i64 0
  %broadcast.splat188 = shufflevector <8 x i32> %broadcast.splatinsert187, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert189 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat190 = shufflevector <8 x i32> %broadcast.splatinsert189, <8 x i32> poison, <8 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.bu = insertelement <2 x float> poison, float %i.l, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x i32> poison, i32 %notmask.i145, i64 0
  %i.bz = shufflevector <2 x i32> %i.by, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge
  %.0132151 = phi i32 [ %i.s, %.preheader.lr.ph.split ], [ %i.eh, %._crit_edge ]
  %.0133150 = phi ptr [ %i.af, %.preheader.lr.ph.split ], [ %i.eg, %._crit_edge ] ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %.0133150, i64 %i.av ; 2 uses
  %invariant.gep158 = getelementptr [2 x i8], ptr %.0133150, i64 %i.aw ; 2 uses
  %invariant.gep160 = getelementptr [2 x i8], ptr %.0133150, i64 %i.ax ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx178
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.ca = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.ca, align 2, !tbaa !73, !alias.scope !101, !noalias !104
  %i.cb = uitofp <8 x i16> %wide.load to <8 x float> ; 6 uses
  %i.cc = getelementptr [2 x i8], ptr %invariant.gep158, i64 %index ; 2 uses
  %wide.load191 = load <8 x i16>, ptr %i.cc, align 2, !tbaa !73, !alias.scope !107, !noalias !108
  %i.cd = uitofp <8 x i16> %wide.load191 to <8 x float> ; 7 uses
  %i.ce = getelementptr [2 x i8], ptr %invariant.gep160, i64 %index ; 2 uses
  %wide.load192 = load <8 x i16>, ptr %i.ce, align 2, !tbaa !73, !alias.scope !108
  %i.cf = uitofp <8 x i16> %wide.load192 to <8 x float> ; 6 uses
  %i.cg = fmul nsz <8 x float> %broadcast.splat, %i.cf
  %i.ch = fmul nsz <8 x float> %broadcast.splat180, %i.cb
  %i.ci = fmul nsz <8 x float> %broadcast.splat182, %i.cd
  %i.cj = fsub nsz <8 x float> %i.cg, %i.cf
  %i.ck = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cj, <8 x float> %broadcast.splat184, <8 x float> %i.cf) ; 6 uses
  %i.cl = fsub nsz <8 x float> %i.ch, %i.cb
  %i.cm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cl, <8 x float> %broadcast.splat184, <8 x float> %i.cb) ; 6 uses
  %i.cn = fsub nsz <8 x float> %i.ci, %i.cd
  %i.co = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cn, <8 x float> %broadcast.splat184, <8 x float> %i.cd) ; 7 uses
  %4 = fcmp nsz ogt <8 x float> %i.cf, %i.cb      ; 2 uses
  %5 = select nsz <8 x i1> %4, <8 x float> %i.cf, <8 x float> %i.cb ; 2 uses
  %6 = fcmp nsz ogt <8 x float> %5, %i.cd
  %7 = select nsz <8 x i1> %6, <8 x float> %5, <8 x float> %i.cd
  %8 = select nsz <8 x i1> %4, <8 x float> %i.cb, <8 x float> %i.cf ; 2 uses
  %9 = fcmp nsz ogt <8 x float> %8, %i.cd
  %10 = select nsz <8 x i1> %9, <8 x float> %i.cd, <8 x float> %8
  %i.cp = fadd nsz <8 x float> %7, %10
  %i.cq = fadd nsz <8 x float> %i.cp, splat (float f0x34000000)
  %i.cr = fcmp nsz ogt <8 x float> %i.ck, %i.cm   ; 2 uses
  %i.cs = select nsz <8 x i1> %i.cr, <8 x float> %i.ck, <8 x float> %i.cm ; 2 uses
  %i.ct = fcmp nsz ogt <8 x float> %i.cs, %i.co
  %i.cu = select nsz <8 x i1> %i.ct, <8 x float> %i.cs, <8 x float> %i.co
  %i.cv = select nsz <8 x i1> %i.cr, <8 x float> %i.cm, <8 x float> %i.ck ; 2 uses
  %i.cw = fcmp nsz ogt <8 x float> %i.cv, %i.co
  %i.cx = select nsz <8 x i1> %i.cw, <8 x float> %i.co, <8 x float> %i.cv
  %i.cy = fadd nsz <8 x float> %i.cu, %i.cx
  %i.cz = fadd nsz <8 x float> %i.cy, splat (float f0x34000000)
  %i.da = fdiv nsz <8 x float> %i.cq, %i.cz       ; 3 uses
  %i.db = fmul nsz <8 x float> %i.ck, %i.da
  %i.dc = fmul nsz <8 x float> %i.cm, %i.da
  %i.dd = fmul nsz <8 x float> %i.co, %i.da
  %i.de = fsub nsz <8 x float> %i.db, %i.ck
  %i.df = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.de, <8 x float> %broadcast.splat186, <8 x float> %i.ck)
  %i.dg = fsub nsz <8 x float> %i.dc, %i.cm
  %i.dh = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.dg, <8 x float> %broadcast.splat186, <8 x float> %i.cm)
  %i.di = fsub nsz <8 x float> %i.dd, %i.co
  %i.dj = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.di, <8 x float> %broadcast.splat186, <8 x float> %i.co)
  %i.dk = fptosi <8 x float> %i.dh to <8 x i32>   ; 3 uses
  %i.dl = and <8 x i32> %broadcast.splat188, %i.dk
  %i.dm = icmp eq <8 x i32> %i.dl, zeroinitializer
  %i.dn = icmp slt <8 x i32> %i.dk, zeroinitializer
  %i.do = select <8 x i1> %i.dn, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat190
  %i.dp = select <8 x i1> %i.dm, <8 x i32> %i.dk, <8 x i32> %i.do
  %i.dq = trunc <8 x i32> %i.dp to <8 x i16>
  store <8 x i16> %i.dq, ptr %i.ca, align 2, !tbaa !73, !alias.scope !101, !noalias !104
  %i.dr = fptosi <8 x float> %i.dj to <8 x i32>   ; 3 uses
  %i.ds = and <8 x i32> %broadcast.splat188, %i.dr
  %i.dt = icmp eq <8 x i32> %i.ds, zeroinitializer
  %i.du = icmp slt <8 x i32> %i.dr, zeroinitializer
  %i.dv = select <8 x i1> %i.du, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat190
  %i.dw = select <8 x i1> %i.dt, <8 x i32> %i.dr, <8 x i32> %i.dv
  %i.dx = trunc <8 x i32> %i.dw to <8 x i16>
  store <8 x i16> %i.dx, ptr %i.cc, align 2, !tbaa !73, !alias.scope !107, !noalias !108
  %i.dy = fptosi <8 x float> %i.df to <8 x i32>   ; 3 uses
  %i.dz = and <8 x i32> %broadcast.splat188, %i.dy
  %i.ea = icmp eq <8 x i32> %i.dz, zeroinitializer
  %i.eb = icmp slt <8 x i32> %i.dy, zeroinitializer
  %i.ec = select <8 x i1> %i.eb, <8 x i32> zeroinitializer, <8 x i32> %broadcast.splat190
  %i.ed = select <8 x i1> %i.ea, <8 x i32> %i.dy, <8 x i32> %i.ec
  %i.ee = trunc <8 x i32> %i.ed to <8 x i16>
  store <8 x i16> %i.ee, ptr %i.ce, align 2, !tbaa !73, !alias.scope !108
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge152.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %.0133150, i64 %i.ab
  %i.eh = add nsw i32 %.0132151, 1                ; 2 uses
  %exitcond154.not = icmp eq i32 %i.eh, %i.x
  br i1 %exitcond154.not, label %._crit_edge152.split, label %.preheader, !llvm.loop !110

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ei = mul nsw i64 %indvars.iv, %i.au          ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.ei ; 2 uses
  %i.ej = load i16, ptr %gep, align 2, !tbaa !73
  %gep159 = getelementptr [2 x i8], ptr %invariant.gep158, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %gep159, align 2, !tbaa !73
  %i.el = uitofp nsz i16 %i.ek to float           ; 7 uses
  %gep161 = getelementptr [2 x i8], ptr %invariant.gep160, i64 %i.ei ; 2 uses
  %i.em = load i16, ptr %gep161, align 2, !tbaa !73
  %i.en = fmul nsz float %i.at, %i.el
  %i.eo = insertelement <2 x i16> poison, i16 %i.em, i64 0
  %i.ep = insertelement <2 x i16> %i.eo, i16 %i.ej, i64 1
  %i.eq = uitofp <2 x i16> %i.ep to <2 x float>   ; 5 uses
  %i.er = fmul nsz <2 x float> %i.as, %i.eq
  %i.es = fsub nsz <2 x float> %i.er, %i.eq
  %i.et = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.bv, <2 x float> %i.eq) ; 3 uses
  %i.eu = fsub nsz float %i.en, %i.el
  %i.ev = tail call nsz noundef float @llvm.fmuladd.f32(float %i.eu, float %i.l, float %i.el) ; 5 uses
  %11 = extractelement <2 x float> %i.eq, i64 0   ; 3 uses
  %12 = extractelement <2 x float> %i.eq, i64 1   ; 3 uses
  %13 = fcmp nsz ogt float %11, %12               ; 2 uses
  %14 = select nsz i1 %13, float %11, float %12   ; 2 uses
  %15 = fcmp nsz ogt float %14, %i.el
  %. = select nsz i1 %15, float %14, float %i.el
  %16 = select nsz i1 %13, float %12, float %11   ; 2 uses
  %17 = fcmp nsz ogt float %16, %i.el
  %18 = select nsz i1 %17, float %i.el, float %16
  %i.ew = fadd nsz float %., %18
  %i.ex = fadd nsz float %i.ew, f0x34000000
  %i.ey = extractelement <2 x float> %i.et, i64 0 ; 6 uses
  %i.ez = extractelement <2 x float> %i.et, i64 1 ; 3 uses
  %i.fa = fcmp nsz ogt float %i.ey, %i.ez         ; 2 uses
  %i.fb = select nsz i1 %i.fa, float %i.ey, float %i.ez ; 2 uses
  %i.fc = fcmp nsz ogt float %i.fb, %i.ev
  %i.fd = select nsz i1 %i.fc, float %i.fb, float %i.ev
  %i.fe = select nsz i1 %i.fa, float %i.ez, float %i.ey ; 2 uses
  %i.ff = fcmp nsz ogt float %i.fe, %i.ev
  %i.fg = select nsz i1 %i.ff, float %i.ev, float %i.fe
  %i.fh = fadd nsz float %i.fd, %i.fg
  %i.fi = fadd nsz float %i.fh, f0x34000000
  %i.fj = fdiv nsz float %i.ex, %i.fi             ; 2 uses
  %i.fk = fmul nsz float %i.ey, %i.fj
  %i.fl = fsub nsz float %i.fk, %i.ey
  %i.fm = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fl, float %i.j, float %i.ey)
  %i.fn = insertelement <2 x float> %i.et, float %i.ev, i64 0 ; 3 uses
  %i.fo = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul nsz <2 x float> %i.fn, %i.fp
  %i.fr = fsub nsz <2 x float> %i.fq, %i.fn
  %i.fs = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.bx, <2 x float> %i.fn)
  %i.ft = fptosi <2 x float> %i.fs to <2 x i32>   ; 3 uses
  %i.fu = extractelement <2 x i32> %i.ft, i64 1   ; 2 uses
  %isnotneg.inv.i147 = icmp slt i32 %i.fu, 0
  %i.fv = select i1 %isnotneg.inv.i147, i32 0, i32 %i.ak
  %i.fw = and <2 x i32> %i.bz, %i.ft
  %i.fx = icmp eq <2 x i32> %i.fw, zeroinitializer ; 2 uses
  %i.fy = extractelement <2 x i1> %i.fx, i64 1
  %.0.i148 = select i1 %i.fy, i32 %i.fu, i32 %i.fv
  %i.fz = trunc i32 %.0.i148 to i16
  store i16 %i.fz, ptr %gep, align 2, !tbaa !73
  %i.ga = extractelement <2 x i32> %i.ft, i64 0   ; 2 uses
  %isnotneg.inv.i143 = icmp slt i32 %i.ga, 0
  %i.gb = select i1 %isnotneg.inv.i143, i32 0, i32 %i.ak
  %i.gc = extractelement <2 x i1> %i.fx, i64 0
  %.0.i144 = select i1 %i.gc, i32 %i.ga, i32 %i.gb
  %i.gd = trunc i32 %.0.i144 to i16
  store i16 %i.gd, ptr %gep159, align 2, !tbaa !73
  %i.ge = fptosi float %i.fm to i32               ; 3 uses
  %i.gf = and i32 %notmask.i145, %i.ge
  %.not.i = icmp eq i32 %i.gf, 0
  %isnotneg.inv.i = icmp slt i32 %i.ge, 0
  %i.gg = select i1 %isnotneg.inv.i, i32 0, i32 %i.ak
  %.0.i = select i1 %.not.i, i32 %i.ge, i32 %i.gg
  %i.gh = trunc i32 %.0.i to i16
  store i16 %i.gh, ptr %gep161, align 2, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !111
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @temperature_slice32(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.d = load i32, ptr %i.c, align 8, !tbaa !50   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load float, ptr %i.g, align 8, !tbaa !52 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = load float, ptr %i.i, align 4, !tbaa !51 ; 3 uses
  %i.k = getelementptr i8, ptr %i.b, i64 20       ; 5 uses
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %i.m = sext i32 %2 to i64
  %i.n = mul nsw i64 %i.l, %i.m
  %i.o = sext i32 %3 to i64                       ; 2 uses
  %i.p = sdiv i64 %i.n, %i.o                      ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = add nsw i32 %2, 1
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %i.l, %i.s
  %i.u = sdiv i64 %i.t, %i.o                      ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.y = load <2 x i32>, ptr %i.w, align 8, !tbaa !53 ; 2 uses
  %i.z = load i32, ptr %i.x, align 4, !tbaa !53   ; 2 uses
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !53
  %i.ab = sext i32 %i.aa to i64
  %i.ac = lshr i64 %i.ab, 2                       ; 3 uses
  %i.ad = sext i32 %i.z to i64
  %i.ae = lshr i64 %i.ad, 2                       ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !53 ; 3 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = lshr i64 %i.ah, 2                       ; 3 uses
  %i.aj = icmp slt i32 %i.q, %i.v
  br i1 %i.aj, label %.preheader.lr.ph, label %._crit_edge140.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.ak = icmp sgt i32 %i.d, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br i1 %i.ak, label %.preheader.preheader, label %._crit_edge140.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.an = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %sext = shl i64 %i.p, 32                        ; 2 uses
  %i.ao = ashr exact i64 %sext, 32                ; 3 uses
  %i.ap = mul i64 %i.ac, %i.ao
  %i.aq = getelementptr [4 x i8], ptr %i.an, i64 %i.ap ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.at = mul i64 %i.ae, %i.ao
  %i.au = getelementptr [4 x i8], ptr %i.as, i64 %i.at ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !54 ; 2 uses
  %i.ax = mul i64 %i.ai, %i.ao
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %i.ax ; 4 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 4 uses
  %i.az = ashr exact i64 %sext, 30
  %i.ba = xor i64 %i.p, -1
  %i.bb = add i64 %i.u, %i.ba
  %i.bc = shl i64 %i.bb, 2
  %i.bd = and i64 %i.bc, 17179869180
  %i.be = add nsw i64 %i.az, %i.bd                ; 3 uses
  %i.bf = mul i64 %i.ac, %i.be
  %i.bg = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.bh = getelementptr i8, ptr %i.an, i64 %i.bf
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.bg ; 3 uses
  %i.bi = mul i64 %i.ae, %i.be
  %i.bj = getelementptr i8, ptr %i.as, i64 %i.bi
  %scevgep146 = getelementptr i8, ptr %i.bj, i64 %i.bg ; 3 uses
  %i.bk = mul i64 %i.ai, %i.be
  %i.bl = getelementptr i8, ptr %i.aw, i64 %i.bk
  %scevgep147 = getelementptr i8, ptr %i.bl, i64 %i.bg ; 3 uses
  %scevgep148 = getelementptr i8, ptr %i.b, i64 32 ; 3 uses
  %i.bm = insertelement <2 x i32> %i.y, i32 %i.ag, i64 1
  %i.bn = shufflevector <2 x i32> %i.bm, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bo = shufflevector <2 x i32> %i.y, <2 x i32> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 1>
  %i.bp = insertelement <4 x i32> %i.bo, i32 0, i64 2
  %min.iters.check = icmp ult i32 %i.d, 4
  %bound0 = icmp ult ptr %i.aq, %scevgep146
  %bound1 = icmp ult ptr %i.au, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0150 = icmp ult ptr %i.aq, %scevgep147
  %bound1151 = icmp ult ptr %i.ay, %scevgep
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0155 = icmp ult ptr %i.aq, %scevgep148
  %bound1156 = icmp ult ptr %i.k, %scevgep
  %found.conflict157 = and i1 %bound0155, %bound1156
  %bound0160 = icmp ult ptr %i.au, %scevgep147
  %bound1161 = icmp ult ptr %i.ay, %scevgep146
  %found.conflict162 = and i1 %bound0160, %bound1161
  %i.bq = or <4 x i32> %i.bn, %i.bp
  %i.br = icmp slt <4 x i32> %i.bq, zeroinitializer
  %bound0166 = icmp ult ptr %i.au, %scevgep148
  %bound1167 = icmp ult ptr %i.k, %scevgep146
  %found.conflict168 = and i1 %bound0166, %bound1167
  %stride.check169 = icmp slt i32 %i.z, 0
  %bound0171 = icmp ult ptr %i.ay, %scevgep148
  %bound1172 = icmp ult ptr %i.k, %scevgep147
  %found.conflict173 = and i1 %bound0171, %bound1172
  %stride.check174 = icmp slt i32 %i.ag, 0
  %i.bs = bitcast <4 x i1> %i.br to i4
  %i.bt = icmp ne i4 %i.bs, 0
  %op.rdx = or i1 %i.bt, %stride.check169
  %op.rdx186 = or i1 %stride.check174, %found.conflict
  %op.rdx187 = or i1 %found.conflict152, %found.conflict157
  %op.rdx188 = or i1 %found.conflict162, %found.conflict168
  %op.rdx189 = or i1 %op.rdx, %op.rdx186
  %op.rdx190 = or i1 %op.rdx187, %op.rdx188
  %op.rdx191 = or i1 %op.rdx189, %op.rdx190
  %op.rdx192 = or i1 %op.rdx191, %found.conflict173
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.j, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert176 = insertelement <4 x float> poison, float %i.h, i64 0
  %broadcast.splat177 = shufflevector <4 x float> %broadcast.splatinsert176, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %i.bu = insertelement <2 x float> poison, float %i.j, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.0124139 = phi i32 [ %i.dr, %._crit_edge ], [ %i.q, %.preheader.preheader ]
  %.0125138 = phi ptr [ %i.dq, %._crit_edge ], [ %i.ay, %.preheader.preheader ] ; 3 uses
  %.0126137 = phi ptr [ %i.dp, %._crit_edge ], [ %i.au, %.preheader.preheader ] ; 3 uses
  %.0127136 = phi ptr [ %i.do, %._crit_edge ], [ %i.aq, %.preheader.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx192
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %i.bw = load float, ptr %i.k, align 4, !tbaa !32, !alias.scope !112
  %broadcast.splatinsert180 = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat181 = shufflevector <4 x float> %broadcast.splatinsert180, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = load float, ptr %i.al, align 8, !tbaa !32, !alias.scope !112
  %broadcast.splatinsert182 = insertelement <4 x float> poison, float %i.bx, i64 0
  %broadcast.splat183 = shufflevector <4 x float> %broadcast.splatinsert182, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = load float, ptr %i.am, align 4, !tbaa !32, !alias.scope !112
  %broadcast.splatinsert184 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat185 = shufflevector <4 x float> %broadcast.splatinsert184, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0127136, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.bz, align 4, !tbaa !32, !alias.scope !115, !noalias !117 ; 6 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.0126137, i64 %index ; 2 uses
  %wide.load178 = load <4 x float>, ptr %i.ca, align 4, !tbaa !32, !alias.scope !120, !noalias !121 ; 7 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0125138, i64 %index ; 2 uses
  %wide.load179 = load <4 x float>, ptr %i.cb, align 4, !tbaa !32, !alias.scope !122, !noalias !112 ; 6 uses
  %i.cc = fmul nsz <4 x float> %wide.load179, %broadcast.splat181
  %i.cd = fmul nsz <4 x float> %wide.load, %broadcast.splat183
  %i.ce = fmul nsz <4 x float> %wide.load178, %broadcast.splat185
  %i.cf = fsub nsz <4 x float> %i.cc, %wide.load179
  %i.cg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %broadcast.splat, <4 x float> %wide.load179) ; 6 uses
  %i.ch = fsub nsz <4 x float> %i.cd, %wide.load
  %i.ci = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %broadcast.splat, <4 x float> %wide.load) ; 6 uses
  %i.cj = fsub nsz <4 x float> %i.ce, %wide.load178
  %i.ck = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %broadcast.splat, <4 x float> %wide.load178) ; 7 uses
  %i.cl = fcmp nsz ogt <4 x float> %wide.load179, %wide.load ; 2 uses
  %i.cm = select nsz <4 x i1> %i.cl, <4 x float> %wide.load179, <4 x float> %wide.load ; 2 uses
  %i.cn = fcmp nsz ogt <4 x float> %i.cm, %wide.load178
  %i.co = select nsz <4 x i1> %i.cn, <4 x float> %i.cm, <4 x float> %wide.load178
  %i.cp = select nsz <4 x i1> %i.cl, <4 x float> %wide.load, <4 x float> %wide.load179 ; 2 uses
  %i.cq = fcmp nsz ogt <4 x float> %i.cp, %wide.load178
  %i.cr = select nsz <4 x i1> %i.cq, <4 x float> %wide.load178, <4 x float> %i.cp
  %i.cs = fadd nsz <4 x float> %i.co, %i.cr
  %i.ct = fadd nsz <4 x float> %i.cs, splat (float f0x34000000)
  %i.cu = fcmp nsz ogt <4 x float> %i.cg, %i.ci   ; 2 uses
  %i.cv = select nsz <4 x i1> %i.cu, <4 x float> %i.cg, <4 x float> %i.ci ; 2 uses
  %i.cw = fcmp nsz ogt <4 x float> %i.cv, %i.ck
  %i.cx = select nsz <4 x i1> %i.cw, <4 x float> %i.cv, <4 x float> %i.ck
  %i.cy = select nsz <4 x i1> %i.cu, <4 x float> %i.ci, <4 x float> %i.cg ; 2 uses
  %i.cz = fcmp nsz ogt <4 x float> %i.cy, %i.ck
  %i.da = select nsz <4 x i1> %i.cz, <4 x float> %i.ck, <4 x float> %i.cy
  %i.db = fadd nsz <4 x float> %i.cx, %i.da
  %i.dc = fadd nsz <4 x float> %i.db, splat (float f0x34000000)
  %i.dd = fdiv nsz <4 x float> %i.ct, %i.dc       ; 3 uses
  %i.de = fmul nsz <4 x float> %i.cg, %i.dd
  %i.df = fmul nsz <4 x float> %i.ci, %i.dd
  %i.dg = fmul nsz <4 x float> %i.ck, %i.dd
  %i.dh = fsub nsz <4 x float> %i.de, %i.cg
  %i.di = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %broadcast.splat177, <4 x float> %i.cg)
  %i.dj = fsub nsz <4 x float> %i.df, %i.ci
  %i.dk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> %broadcast.splat177, <4 x float> %i.ci)
  %i.dl = fsub nsz <4 x float> %i.dg, %i.ck
  %i.dm = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %broadcast.splat177, <4 x float> %i.ck)
  store <4 x float> %i.dk, ptr %i.bz, align 4, !tbaa !32, !alias.scope !115, !noalias !117
  store <4 x float> %i.dm, ptr %i.ca, align 4, !tbaa !32, !alias.scope !120, !noalias !121
  store <4 x float> %i.di, ptr %i.cb, align 4, !tbaa !32, !alias.scope !122, !noalias !112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ]
  br label %scalar.ph

._crit_edge140.split:                             ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret i32 0

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.0127136, i64 %i.ac
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0126137, i64 %i.ae
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.0125138, i64 %i.ai
  %i.dr = add nsw i32 %.0124139, 1                ; 2 uses
  %exitcond142.not = icmp eq i32 %i.dr, %i.v
  br i1 %exitcond142.not, label %._crit_edge140.split, label %.preheader, !llvm.loop !124

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.0127136, i64 %indvars.iv ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !32 ; 4 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.0126137, i64 %indvars.iv ; 2 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !32 ; 7 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %.0125138, i64 %indvars.iv ; 2 uses
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !32 ; 4 uses
  %i.dy = load float, ptr %i.am, align 4, !tbaa !32
  %i.dz = fmul nsz float %i.dv, %i.dy
  %i.ea = load <2 x float>, ptr %i.k, align 4, !tbaa !32
  %i.eb = insertelement <2 x float> poison, float %i.dx, i64 0
  %i.ec = insertelement <2 x float> %i.eb, float %i.dt, i64 1 ; 3 uses
  %i.ed = fmul nsz <2 x float> %i.ec, %i.ea
  %i.ee = fsub nsz <2 x float> %i.ed, %i.ec
  %i.ef = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.bv, <2 x float> %i.ec) ; 2 uses
  %i.eg = fsub nsz float %i.dz, %i.dv
  %i.eh = tail call nsz noundef float @llvm.fmuladd.f32(float %i.eg, float %i.j, float %i.dv) ; 7 uses
  %i.ei = fcmp nsz ogt float %i.dx, %i.dt         ; 2 uses
  %i.ej = select nsz i1 %i.ei, float %i.dx, float %i.dt ; 2 uses
  %i.ek = fcmp nsz ogt float %i.ej, %i.dv
  %. = select nsz i1 %i.ek, float %i.ej, float %i.dv
  %i.el = select nsz i1 %i.ei, float %i.dt, float %i.dx ; 2 uses
  %i.em = fcmp nsz ogt float %i.el, %i.dv
  %i.en = select nsz i1 %i.em, float %i.dv, float %i.el
  %i.eo = fadd nsz float %., %i.en
  %i.ep = fadd nsz float %i.eo, f0x34000000
  %i.eq = extractelement <2 x float> %i.ef, i64 0 ; 6 uses
  %i.er = extractelement <2 x float> %i.ef, i64 1 ; 6 uses
  %i.es = fcmp nsz ogt float %i.eq, %i.er         ; 2 uses
  %i.et = select nsz i1 %i.es, float %i.eq, float %i.er ; 2 uses
  %i.eu = fcmp nsz ogt float %i.et, %i.eh
  %i.ev = select nsz i1 %i.eu, float %i.et, float %i.eh
  %i.ew = select nsz i1 %i.es, float %i.er, float %i.eq ; 2 uses
  %i.ex = fcmp nsz ogt float %i.ew, %i.eh
  %i.ey = select nsz i1 %i.ex, float %i.eh, float %i.ew
  %i.ez = fadd nsz float %i.ev, %i.ey
  %i.fa = fadd nsz float %i.ez, f0x34000000
  %i.fb = fdiv nsz float %i.ep, %i.fa             ; 3 uses
  %i.fc = fmul nsz float %i.eq, %i.fb
  %i.fd = fmul nsz float %i.er, %i.fb
  %i.fe = fmul nsz float %i.eh, %i.fb
  %i.ff = fsub nsz float %i.fc, %i.eq
  %i.fg = tail call nsz noundef float @llvm.fmuladd.f32(float %i.ff, float %i.h, float %i.eq)
  %i.fh = fsub nsz float %i.fd, %i.er
  %i.fi = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fh, float %i.h, float %i.er)
  %i.fj = fsub nsz float %i.fe, %i.eh
  %i.fk = tail call nsz noundef float @llvm.fmuladd.f32(float %i.fj, float %i.h, float %i.eh)
  store float %i.fi, ptr %i.ds, align 4, !tbaa !32
  store float %i.fk, ptr %i.du, align 4, !tbaa !32
  store float %i.fg, ptr %i.dw, align 4, !tbaa !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !125
}

declare i32 @ff_fill_rgba_map(ptr noundef, i32 noundef) local_unnamed_addr #0

declare ptr @av_default_item_name(ptr noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #4

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 16}
!10 = !{!"AVFilterLink", !11, i64 0, !13, i64 8, !11, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !14, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !15, i64 72, !14, i64 96, !16, i64 104, !6, i64 112, !6, i64 116, !18, i64 120, !18, i64 168}
!11 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!14 = !{!"AVRational", !6, i64 0, !6, i64 4}
!15 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!16 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"AVFilterFormatsConfig", !19, i64 0, !19, i64 8, !20, i64 16, !19, i64 24, !19, i64 32, !19, i64 40}
!19 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!20 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!21 = !{!22, !12, i64 72}
!22 = !{!"AVFilterContext", !23, i64 0, !24, i64 8, !25, i64 16, !13, i64 24, !26, i64 32, !6, i64 40, !13, i64 48, !26, i64 56, !6, i64 64, !12, i64 72, !27, i64 80, !6, i64 88, !6, i64 92, !25, i64 96, !6, i64 104, !28, i64 112, !6, i64 120}
!23 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!24 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!25 = !{!"p1 omnipotent char", !12, i64 0}
!26 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!27 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!28 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!29 = !{!30, !31, i64 8}
!30 = !{!"ColorTemperatureContext", !23, i64 0, !31, i64 8, !31, i64 12, !31, i64 16, !7, i64 20, !6, i64 32, !6, i64 36, !7, i64 40, !12, i64 48}
!31 = !{!"float", !7, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!30, !12, i64 48}
!34 = !{!35, !6, i64 108}
!35 = !{!"AVFrame", !7, i64 0, !7, i64 64, !36, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !14, i64 124, !37, i64 136, !37, i64 144, !14, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !38, i64 248, !6, i64 256, !16, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !37, i64 304, !39, i64 312, !6, i64 320, !28, i64 328, !28, i64 336, !37, i64 344, !37, i64 352, !37, i64 360, !37, i64 368, !12, i64 376, !15, i64 384, !37, i64 408, !6, i64 416}
!36 = !{!"p2 omnipotent char", !17, i64 0}
!37 = !{!"long", !7, i64 0}
!38 = !{!"p2 _ZTS11AVBufferRef", !17, i64 0}
!39 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!40 = !{!22, !26, i64 56}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!43 = !{!10, !6, i64 36}
!44 = !{!45, !37, i64 16}
!45 = !{!"AVPixFmtDescriptor", !25, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !37, i64 16, !7, i64 24, !25, i64 104}
!46 = !{!45, !7, i64 8}
!47 = !{!48, !6, i64 16}
!48 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!49 = !{!30, !6, i64 36}
!50 = !{!35, !6, i64 104}
!51 = !{!30, !31, i64 12}
!52 = !{!30, !31, i64 16}
!53 = !{!6, !6, i64 0}
!54 = !{!25, !25, i64 0}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!7, !7, i64 0}
!59 = !{!60}
!60 = distinct !{!60, !57}
!61 = !{!62, !63, !56}
!62 = distinct !{!62, !57}
!63 = distinct !{!63, !57}
!64 = !{!62}
!65 = !{!63, !56}
!66 = !{!63}
!67 = distinct !{!67, !68, !69, !70}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, !68}
!72 = distinct !{!72, !68, !69}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !7, i64 0}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79, !80}
!79 = distinct !{!79, !77}
!80 = distinct !{!80, !77}
!81 = !{!79}
!82 = !{!80}
!83 = distinct !{!83, !68, !69, !70}
!84 = distinct !{!84, !68}
!85 = distinct !{!85, !68, !69}
!86 = !{!30, !6, i64 32}
!87 = !{!88}
!88 = distinct !{!88, !89}
!89 = distinct !{!89, !"LVerDomain"}
!90 = !{!91}
!91 = distinct !{!91, !89}
!92 = !{!93, !94, !88}
!93 = distinct !{!93, !89}
!94 = distinct !{!94, !89}
!95 = !{!93}
!96 = !{!94, !88}
!97 = !{!94}
!98 = distinct !{!98, !68, !69, !70}
!99 = distinct !{!99, !68}
!100 = distinct !{!100, !68, !69}
!101 = !{!102}
!102 = distinct !{!102, !103}
!103 = distinct !{!103, !"LVerDomain"}
!104 = !{!105, !106}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !103}
!107 = !{!105}
!108 = !{!106}
!109 = distinct !{!109, !68, !69, !70}
!110 = distinct !{!110, !68}
!111 = distinct !{!111, !68, !69}
!112 = !{!113}
!113 = distinct !{!113, !114}
!114 = distinct !{!114, !"LVerDomain"}
!115 = !{!116}
!116 = distinct !{!116, !114}
!117 = !{!118, !119, !113}
!118 = distinct !{!118, !114}
!119 = distinct !{!119, !114}
!120 = !{!118}
!121 = !{!119, !113}
!122 = !{!119}
!123 = distinct !{!123, !68, !69, !70}
!124 = distinct !{!124, !68}
!125 = distinct !{!125, !68, !69}
end_hunk_0
