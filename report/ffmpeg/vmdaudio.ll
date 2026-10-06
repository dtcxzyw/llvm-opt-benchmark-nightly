Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vmdaudio?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vmdaudio_decode_frame:bb.a
bb.q:                                             ; preds = %bb.o, %bb.p, %bb.k
  %.184 = phi ptr [ %i.ai, %bb.k ], [ %i.ai, %bb.o ], [ %i.av, %bb.p ]
  %.1 = phi ptr [ %i.ai, %bb.k ], [ %i.at, %bb.o ], [ %i.ai, %bb.p ]
  %i.aw = icmp sgt i32 %i.x, 0
  br i1 %i.aw, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !29
  %i.ay = icmp slt i32 %i.ax, 2
  %i.az = and i32 %i.y, 1
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = select i1 %i.ay, i1 true, i1 %i.ba
  br i1 %i.bb, label %.preheader, label %bb.s

.preheader:                                       ; preds = %bb.r
  %i.bc = sext i32 %i.y to i64
  %i.bd = getelementptr inbounds i8, ptr %.192, i64 %i.bc
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = load i32, ptr %i.v, align 4, !tbaa !33  ; 3 uses
  %.not106112 = icmp slt i32 %i.y, %i.bf
  br i1 %.not106112, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bg = sext i32 %i.bf to i64
  %i.bh = add nsw i32 %i.i, -1
  %i.bi = icmp sgt i32 %i.i, 0
  %wide.trip.count.i = zext i32 %i.i to i64       ; 5 uses
  %.pre118 = load i32, ptr %i.g, align 4, !tbaa !32
  %min.iters.check = icmp ult i32 %i.i, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.bj = shl nuw nsw i64 %n.vec, 1               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 213) #7
  tail call void @abort() #8
  unreachable

bb.t:                                             ; preds = %.lr.ph, %bb.z
  %i.bk = phi i32 [ %i.bf, %.lr.ph ], [ %i.en, %bb.z ]
  %i.bl = phi i32 [ %.pre118, %.lr.ph ], [ %i.eo, %bb.z ]
  %i.bm = phi i64 [ %i.bg, %.lr.ph ], [ %i.ep, %bb.z ] ; 3 uses
  %.2116 = phi ptr [ %.1, %.lr.ph ], [ %.3, %bb.z ] ; 7 uses
  %.285115 = phi ptr [ %.184, %.lr.ph ], [ %.386, %bb.z ] ; 3 uses
  %.293113 = phi ptr [ %.192, %.lr.ph ], [ %i.eq, %bb.z ] ; 8 uses
  %.2116131 = ptrtoaddr ptr %.2116 to i64
  %i.bn = icmp eq i32 %i.bl, 2
  br i1 %i.bn, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.bo = ptrtoaddr ptr %.293113 to i64           ; 3 uses
  %i.bp = getelementptr inbounds i8, ptr %.293113, i64 %i.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br i1 %i.bi, label %.lr.ph.i.preheader, label %.preheader.i

.lr.ph.i.preheader:                               ; preds = %bb.u
  %i.bq = sub i64 %i.bo, %.2116131
  %diff.check = icmp ugt i64 %i.bq, -16
  %or.cond136 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond136, label %.lr.ph.i.preheader137, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.br = getelementptr i8, ptr %.2116, i64 %i.bj ; 2 uses
  %i.bs = getelementptr i8, ptr %.293113, i64 %i.bj ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bt = shl i64 %index, 1                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.2116, i64 %i.bt ; 2 uses
  %next.gep132 = getelementptr i8, ptr %.293113, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep132, i64 8
  %wide.load = load <4 x i16>, ptr %next.gep132, align 1, !tbaa !46 ; 2 uses
  %wide.load133 = load <4 x i16>, ptr %i.bu, align 1, !tbaa !46 ; 2 uses
  %i.bv = sext <4 x i16> %wide.load to <4 x i32>
  %i.bw = sext <4 x i16> %wide.load133 to <4 x i32>
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x i32> %i.bv, ptr %i.bx, align 4, !tbaa !45
  store <4 x i32> %i.bw, ptr %i.by, align 4, !tbaa !45
  %i.bz = getelementptr i8, ptr %next.gep, i64 8
  store <4 x i16> %wide.load, ptr %next.gep, align 2, !tbaa !54
  store <4 x i16> %wide.load133, ptr %i.bz, align 2, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.preheader.loopexit.i, label %.lr.ph.i.preheader137

.lr.ph.i.preheader137:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.02429.i.ph = phi ptr [ %.2116, %.lr.ph.i.preheader ], [ %i.br, %middle.block ] ; 2 uses
  %.02628.i.ph = phi ptr [ %.293113, %.lr.ph.i.preheader ], [ %i.bs, %middle.block ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader137, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader137 ] ; 2 uses
  %.02429.i.prol = phi ptr [ %i.cf, %.lr.ph.i.prol ], [ %.02429.i.ph, %.lr.ph.i.preheader137 ] ; 2 uses
  %.02628.i.prol = phi ptr [ %i.ce, %.lr.ph.i.prol ], [ %.02628.i.ph, %.lr.ph.i.preheader137 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader137 ]
  %i.cb = load i16, ptr %.02628.i.prol, align 1, !tbaa !46 ; 2 uses
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.prol
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !45
  %i.ce = getelementptr inbounds nuw i8, ptr %.02628.i.prol, i64 2 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02429.i.prol, i64 2 ; 3 uses
  store i16 %i.cb, ptr %.02429.i.prol, align 2, !tbaa !54
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !38

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader137
  %.lcssa139.unr = phi ptr [ poison, %.lr.ph.i.preheader137 ], [ %i.ce, %.lr.ph.i.prol ]
  %.lcssa138.unr = phi ptr [ poison, %.lr.ph.i.preheader137 ], [ %i.cf, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader137 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.02429.i.unr = phi ptr [ %.02429.i.ph, %.lr.ph.i.preheader137 ], [ %i.cf, %.lr.ph.i.prol ]
  %.02628.i.unr = phi ptr [ %.02628.i.ph, %.lr.ph.i.preheader137 ], [ %i.ce, %.lr.ph.i.prol ]
  %i.cg = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ch = icmp ugt i64 %i.cg, -4
  br i1 %i.ch, label %.preheader.loopexit.i, label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %.lcssa130 = phi ptr [ %i.bs, %middle.block ], [ %.lcssa139.unr, %.lr.ph.i.prol.loopexit ], [ %i.dg, %.lr.ph.i ] ; 2 uses
  %.lcssa = phi ptr [ %i.br, %middle.block ], [ %.lcssa138.unr, %.lr.ph.i.prol.loopexit ], [ %i.dh, %.lr.ph.i ]
  %.pre.i = ptrtoaddr ptr %.lcssa130 to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.u
  %.026.lcssa38.pre-phi.i = phi i64 [ %.pre.i, %.preheader.loopexit.i ], [ %i.bo, %bb.u ]
  %.026.lcssa.i = phi ptr [ %.lcssa130, %.preheader.loopexit.i ], [ %.293113, %bb.u ] ; 3 uses
  %.024.lcssa.i = phi ptr [ %.lcssa, %.preheader.loopexit.i ], [ %.2116, %bb.u ]
  %i.ci = icmp ult ptr %.026.lcssa.i, %i.bp
  br i1 %i.ci, label %.lr.ph35.preheader.i, label %decode_audio_s16.exit

.lr.ph35.preheader.i:                             ; preds = %.preheader.i
  %i.cj = add i64 %i.bm, %i.bo
  %i.ck = sub i64 %i.cj, %.026.lcssa38.pre-phi.i
  %scevgep.i = getelementptr i8, ptr %.026.lcssa.i, i64 %i.ck
  br label %.lr.ph35.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02429.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.02429.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.02628.i = phi ptr [ %i.dg, %.lr.ph.i ], [ %.02628.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.cl = load i16, ptr %.02628.i, align 1, !tbaa !46 ; 2 uses
  %i.cm = sext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %.02628.i, i64 2
  %i.cp = getelementptr inbounds nuw i8, ptr %.02429.i, i64 2
  store i16 %i.cl, ptr %.02429.i, align 2, !tbaa !54
  %i.cq = load i16, ptr %i.co, align 1, !tbaa !46 ; 2 uses
  %i.cr = sext i16 %i.cq to i32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %.02628.i, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %.02429.i, i64 4
  store i16 %i.cq, ptr %i.cp, align 2, !tbaa !54
  %i.cw = load i16, ptr %i.cu, align 1, !tbaa !46 ; 2 uses
  %i.cx = sext i16 %i.cw to i32
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i32 %i.cx, ptr %i.cz, align 4, !tbaa !45
  %i.da = getelementptr inbounds nuw i8, ptr %.02628.i, i64 6
  %i.db = getelementptr inbounds nuw i8, ptr %.02429.i, i64 6
  store i16 %i.cw, ptr %i.cv, align 2, !tbaa !54
  %i.dc = load i16, ptr %i.da, align 1, !tbaa !46 ; 2 uses
  %i.dd = sext i16 %i.dc to i32
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  store i32 %i.dd, ptr %i.df, align 4, !tbaa !45
  %i.dg = getelementptr inbounds nuw i8, ptr %.02628.i, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.02429.i, i64 8 ; 2 uses
  store i16 %i.dc, ptr %i.db, align 2, !tbaa !54
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !39

.lr.ph35.i:                                       ; preds = %bb.x, %.lr.ph35.preheader.i
  %.134.i = phi i32 [ %i.eg, %bb.x ], [ 0, %.lr.ph35.preheader.i ] ; 3 uses
  %.12533.i = phi ptr [ %i.ef, %bb.x ], [ %.024.lcssa.i, %.lr.ph35.preheader.i ] ; 2 uses
  %.12732.i = phi ptr [ %i.di, %bb.x ], [ %.026.lcssa.i, %.lr.ph35.preheader.i ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.12732.i, i64 1 ; 2 uses
  %i.dj = load i8, ptr %.12732.i, align 1, !tbaa !46 ; 3 uses
  %.not.i = icmp sgt i8 %i.dj, -1
  br i1 %.not.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph35.i
  %i.dk = and i8 %i.dj, 127
  %i.dl = zext nneg i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @vmdaudio_table, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !54
  %i.do = zext i16 %i.dn to i32
  %i.dp = sext i32 %.134.i to i64                 ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !45
  %i.ds = sub nsw i32 %i.dr, %i.do
  br label %bb.x

bb.w:                                             ; preds = %.lr.ph35.i
  %i.dt = zext nneg i8 %i.dj to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr @vmdaudio_table, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !54
  %i.dw = zext i16 %i.dv to i32
  %i.dx = sext i32 %.134.i to i64                 ; 2 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !45
  %i.ea = add nsw i32 %i.dz, %i.dw
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.eb = phi i32 [ %i.ea, %bb.w ], [ %i.ds, %bb.v ]
  %.pre-phi.i = phi i64 [ %i.dx, %bb.w ], [ %i.dp, %bb.v ]
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.pre-phi.i
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.eb, i32 -32768)
  %i.ee = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 32767) ; 2 uses
  %.0.i.i = trunc nsw i32 %i.ee to i16
  store i32 %i.ee, ptr %i.ec, align 4, !tbaa !45
  %i.ef = getelementptr inbounds nuw i8, ptr %.12533.i, i64 2
  store i16 %.0.i.i, ptr %.12533.i, align 2, !tbaa !54
  %i.eg = xor i32 %.134.i, %i.bh
  %exitcond39.not.i = icmp eq ptr %i.di, %scevgep.i
  br i1 %exitcond39.not.i, label %decode_audio_s16.exit, label %.lr.ph35.i, !llvm.loop !40

decode_audio_s16.exit:                            ; preds = %bb.x, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.eh = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [2 x i8], ptr %.2116, i64 %i.ei
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.285115, ptr align 1 %.293113, i64 %i.bm, i1 false)
  %i.ek = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %.285115, i64 %i.el
  %.pre = load i32, ptr %i.g, align 4, !tbaa !32
  %.pre119 = load i32, ptr %i.v, align 4, !tbaa !33
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %decode_audio_s16.exit
  %i.en = phi i32 [ %i.bk, %decode_audio_s16.exit ], [ %.pre119, %bb.y ] ; 2 uses
  %i.eo = phi i32 [ 2, %decode_audio_s16.exit ], [ %.pre, %bb.y ]
  %.386 = phi ptr [ %.285115, %decode_audio_s16.exit ], [ %i.em, %bb.y ]
  %.3 = phi ptr [ %i.ej, %decode_audio_s16.exit ], [ %.2116, %bb.y ]
  %i.ep = sext i32 %i.en to i64                   ; 3 uses
  %i.eq = getelementptr inbounds i8, ptr %.293113, i64 %i.ep ; 2 uses
  %i.er = ptrtoint ptr %i.eq to i64
  %i.es = sub i64 %i.be, %i.er
  %.not106 = icmp slt i64 %i.es, %i.ep
  br i1 %.not106, label %.loopexit, label %bb.t, !llvm.loop !41

.loopexit:                                        ; preds = %bb.z, %.preheader, %bb.q
  store i32 1, ptr %2, align 4, !tbaa !45
  %i.et = load i32, ptr %i.d, align 8, !tbaa !44
  br label %bb.aa

bb.aa:                                            ; preds = %bb.g, %bb.j, %bb.i, %.loopexit, %bb.d, %bb.b
  %.195 = phi i32 [ %i.e, %bb.b ], [ -22, %bb.d ], [ -22, %bb.g ], [ -1094995529, %bb.i ], [ %i.et, %.loopexit ], [ %i.ag, %bb.j ]
  ret i32 %.195
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #3

declare void @av_channel_layout_default(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!27, !6, i64 356}
!30 = !{!27, !6, i64 380}
!31 = !{!"VmdAudioContext", !6, i64 0, !6, i64 4}
!32 = !{!31, !6, i64 0}
!33 = !{!31, !6, i64 4}
!34 = !{!27, !6, i64 648}
!35 = !{!27, !6, i64 348}
!36 = !{!27, !6, i64 344}
!37 = distinct !{!37, !55, !56, !57}
!38 = distinct !{!38, !58}
!39 = distinct !{!39, !55, !56}
!40 = distinct !{!40, !55}
!41 = distinct !{!41, !55}
!42 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!43 = !{!42, !14, i64 24}
!44 = !{!42, !6, i64 32}
!45 = !{!6, !6, i64 0}
!46 = !{!5, !5, i64 0}
!47 = !{!"p2 omnipotent char", !25, i64 0}
!48 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!49 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!50 = !{!"AVFrame", !5, i64 0, !5, i64 64, !47, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !48, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !49, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!51 = !{!50, !6, i64 112}
!52 = !{!14, !14, i64 0}
!53 = !{!"short", !5, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
