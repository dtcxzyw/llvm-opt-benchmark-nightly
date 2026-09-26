Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/escape124?download=true
inline.NumInlined: 44
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@escape124_decode_frame:bb.a
bb.ax:                                            ; preds = %bb.aw, %get_bitsz.exit.i197
  %.0.i198 = phi i32 [ %i.qv, %bb.aw ], [ %i.qr, %get_bitsz.exit.i197 ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !53
  %.not22.i199 = icmp ult i32 %.0.i198, %i.qx
  br i1 %.not22.i199, label %bb.ay, label %decode_macroblock.exit204

bb.ay:                                            ; preds = %bb.ax
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !54 ; 2 uses
  %.not23.i201 = icmp eq ptr %i.qz, null
  br i1 %.not23.i201, label %decode_macroblock.exit204, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ra = zext i32 %.0.i198 to i64
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.ra
  %i.rc = load i64, ptr %i.rb, align 4, !tbaa !46
  br label %decode_macroblock.exit204

decode_macroblock.exit204:                        ; preds = %bb.ax, %bb.ay, %bb.az
  %.sroa.0.0.insert.insert.i200 = phi i64 [ %i.rc, %bb.az ], [ 0, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.0.0.extract.trunc.i205 = trunc i64 %.sroa.0.0.insert.insert.i200 to i32
  %.sroa.2.0.extract.shift.i206 = lshr i64 %.sroa.0.0.insert.insert.i200, 32
  %.sroa.2.0.extract.trunc.i207 = trunc nuw i64 %.sroa.2.0.extract.shift.i206 to i32
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv399
  %i.re = and i64 %indvars.iv399, 12
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %i.re ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i205, ptr %i.rf, align 4, !tbaa !48
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i32 %.sroa.2.0.extract.trunc.i207, ptr %i.rg, align 4, !tbaa !48
  br label %bb.ba

bb.ba:                                            ; preds = %bb.as, %decode_macroblock.exit204
  %.sroa.19.11 = phi i32 [ %.sroa.19.10370, %bb.as ], [ %.sroa.19.21, %decode_macroblock.exit204 ] ; 2 uses
  %.3311 = phi i32 [ %.2310371, %bb.as ], [ %.8, %decode_macroblock.exit204 ] ; 2 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next400, 16
  br i1 %exitcond402.not, label %.critedge2, label %bb.as, !llvm.loop !40

bb.bb:                                            ; preds = %.critedge
  %i.rh = icmp sgt i32 %.013.i.i, %spec.select.i191
  %or.cond385 = select i1 %.not153, i1 %i.rh, i1 false
  br i1 %or.cond385, label %.lr.ph361, label %.critedge2

.lr.ph361:                                        ; preds = %bb.bb, %decode_macroblock.exit221
  %.4360 = phi i32 [ %.9, %decode_macroblock.exit221 ], [ %.1309.lcssa, %bb.bb ] ; 3 uses
  %.sroa.19.12359 = phi i32 [ %i.ty, %decode_macroblock.exit221 ], [ %spec.select.i191, %bb.bb ] ; 3 uses
  %i.ri = lshr i32 %.sroa.19.12359, 3
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rj
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !46
  %spec.select.i208 = add nsw i32 %.sroa.19.12359, 1 ; 5 uses
  %i.rm = zext i8 %i.rl to i32
  %i.rn = and i32 %.sroa.19.12359, 7
  %i.ro = shl nuw nsw i32 1, %i.rn
  %i.rp = and i32 %i.ro, %i.rm
  %.not154 = icmp eq i32 %i.rp, 0
  br i1 %.not154, label %bb.bc, label %.critedge2

bb.bc:                                            ; preds = %.lr.ph361
  %i.rq = lshr i32 %spec.select.i208, 3
  %i.rr = zext nneg i32 %i.rq to i64
  %i.rs = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.rr
  %i.rt = load i8, ptr %i.rs, align 1, !tbaa !46
  %i.ru = icmp slt i32 %spec.select.i208, %i.n
  %i.rv = zext i1 %i.ru to i32
  %spec.select.i.i209 = add i32 %spec.select.i208, %i.rv ; 5 uses
  %i.rw = zext i8 %i.rt to i32
  %i.rx = and i32 %spec.select.i208, 7
  %i.ry = shl nuw nsw i32 1, %i.rx
  %i.rz = and i32 %i.ry, %i.rw
  %.not.i210 = icmp eq i32 %i.rz, 0
  br i1 %.not.i210, label %._crit_edge.i219, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.sa = lshr i32 %spec.select.i.i209, 3
  %i.sb = zext nneg i32 %i.sa to i64
  %i.sc = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.sb
  %i.sd = load i8, ptr %i.sc, align 1, !tbaa !46
  %i.se = icmp slt i32 %spec.select.i.i209, %i.n
  %i.sf = zext i1 %i.se to i32
  %spec.select.i26.i211 = add i32 %spec.select.i.i209, %i.sf
  %i.sg = zext i8 %i.sd to i32
  %i.sh = and i32 %spec.select.i.i209, 7
  %i.si = lshr i32 %i.sg, %i.sh
  %i.sj = and i32 %i.si, 1
  %i.sk = sext i32 %.4360 to i64
  %i.sl = getelementptr inbounds [2 x i8], ptr @decode_macroblock.transitions, i64 %i.sk
  %i.sm = zext nneg i32 %i.sj to i64
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 %i.sm
  %i.so = load i8, ptr %i.sn, align 1, !tbaa !46
  %i.sp = sext i8 %i.so to i32
  br label %._crit_edge.i219

._crit_edge.i219:                                 ; preds = %bb.bc, %bb.bd
  %.sroa.19.22 = phi i32 [ %spec.select.i26.i211, %bb.bd ], [ %spec.select.i.i209, %bb.bc ] ; 4 uses
  %.9 = phi i32 [ %i.sp, %bb.bd ], [ %.4360, %bb.bc ] ; 4 uses
  %i.sq = sext i32 %.9 to i64
  %i.sr = getelementptr inbounds [16 x i8], ptr %i.aj, i64 %i.sq ; 3 uses
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !52 ; 3 uses
  %.not.i.i212 = icmp eq i32 %i.ss, 0
  br i1 %.not.i.i212, label %get_bitsz.exit.i214, label %bb.be

bb.be:                                            ; preds = %._crit_edge.i219
  %i.st = lshr i32 %.sroa.19.22, 3
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 1, !tbaa !46
  %i.sx = and i32 %.sroa.19.22, 7
  %i.sy = lshr i32 %i.sw, %i.sx
  %i.sz = sub i32 32, %i.ss
  %i.ta = lshr i32 -1, %i.sz
  %i.tb = and i32 %i.sy, %i.ta
  %i.tc = add i32 %i.ss, %.sroa.19.22
  %i.td = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.tc)
  br label %get_bitsz.exit.i214

get_bitsz.exit.i214:                              ; preds = %bb.be, %._crit_edge.i219
  %.sroa.19.23 = phi i32 [ %.sroa.19.22, %._crit_edge.i219 ], [ %i.td, %bb.be ] ; 3 uses
  %i.te = phi i32 [ 0, %._crit_edge.i219 ], [ %i.tb, %bb.be ] ; 2 uses
  %i.tf = icmp eq i32 %.9, 1
  br i1 %i.tf, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %get_bitsz.exit.i214
  %i.tg = load i32, ptr %i.ff, align 8, !tbaa !52
  %i.th = shl i32 %.0134375, %i.tg
  %i.ti = add i32 %i.th, %i.te
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %get_bitsz.exit.i214
  %.0.i215 = phi i32 [ %i.ti, %bb.bf ], [ %i.te, %get_bitsz.exit.i214 ] ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.sr, i64 4
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !53
  %.not22.i216 = icmp ult i32 %.0.i215, %i.tk
  br i1 %.not22.i216, label %bb.bh, label %decode_macroblock.exit221

bb.bh:                                            ; preds = %bb.bg
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !54 ; 2 uses
  %.not23.i218 = icmp eq ptr %i.tm, null
  br i1 %.not23.i218, label %decode_macroblock.exit221, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.tn = zext i32 %.0.i215 to i64
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.tn
  %i.tp = load i64, ptr %i.to, align 4, !tbaa !46
  br label %decode_macroblock.exit221

decode_macroblock.exit221:                        ; preds = %bb.bg, %bb.bh, %bb.bi
  %.sroa.0.0.insert.insert.i217 = phi i64 [ %i.tp, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bg ] ; 2 uses
  %i.tq = lshr i32 %.sroa.19.23, 3
  %i.tr = zext nneg i32 %i.tq to i64
  %i.ts = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 1, !tbaa !46
  %i.tu = and i32 %.sroa.19.23, 7
  %i.tv = lshr i32 %i.tt, %i.tu                   ; 2 uses
  %i.tw = and i32 %i.tv, 15
  %i.tx = add i32 %.sroa.19.23, 4
  %i.ty = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %i.tx) ; 3 uses
  %.sroa.0.0.extract.trunc.i222 = trunc i64 %.sroa.0.0.insert.insert.i217 to i32
  %.sroa.2.0.extract.shift.i223 = lshr i64 %.sroa.0.0.insert.insert.i217, 32
  %.sroa.2.0.extract.trunc.i224 = trunc nuw i64 %.sroa.2.0.extract.shift.i223 to i32
  %i.tz = zext nneg i32 %i.tw to i64
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.tz
  %i.ub = and i32 %i.tv, 12
  %i.uc = zext nneg i32 %i.ub to i64
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.ua, i64 %i.uc ; 2 uses
  store i32 %.sroa.0.0.extract.trunc.i222, ptr %i.ud, align 4, !tbaa !48
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  store i32 %.sroa.2.0.extract.trunc.i224, ptr %i.ue, align 4, !tbaa !48
  %i.uf = icmp sgt i32 %.013.i.i, %i.ty
  br i1 %i.uf, label %.lr.ph361, label %.critedge2, !llvm.loop !41

.critedge2:                                       ; preds = %.lr.ph361, %decode_macroblock.exit221, %bb.ba, %bb.bb
  %.sroa.19.13 = phi i32 [ %.sroa.19.11, %bb.ba ], [ %spec.select.i191, %bb.bb ], [ %i.ty, %decode_macroblock.exit221 ], [ %spec.select.i208, %.lr.ph361 ]
  %.5 = phi i32 [ %.3311, %bb.ba ], [ %.1309.lcssa, %bb.bb ], [ %.9, %decode_macroblock.exit221 ], [ %.4360, %.lr.ph361 ]
  %i.ug = getelementptr inbounds [2 x i8], ptr %.0124382, i64 %i.ep
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.0124382, ptr noundef nonnull readonly align 16 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ug, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ey, i64 16, i1 false)
  %i.uh = getelementptr inbounds i8, ptr %.0124382, i64 %.idx.i227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.uh, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ez, i64 16, i1 false)
  %i.ui = getelementptr inbounds i8, ptr %.0124382, i64 %.idx22.i228
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ui, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fa, i64 16, i1 false)
  %i.uj = getelementptr inbounds i8, ptr %.0124382, i64 %.idx24.i229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.uj, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fb, i64 16, i1 false)
  %i.uk = getelementptr inbounds i8, ptr %.0124382, i64 %.idx26.i230
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.uk, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fc, i64 16, i1 false)
  %i.ul = getelementptr inbounds i8, ptr %.0124382, i64 %.idx28.i231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.ul, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fd, i64 16, i1 false)
  %i.um = getelementptr inbounds i8, ptr %.0124382, i64 %.idx30.i232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.um, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fe, i64 16, i1 false)
  br label %copy_superblock.exit

copy_superblock.exit:                             ; preds = %.preheader.preheader.i, %.preheader14.preheader.i, %.critedge2
  %.1131326 = phi i32 [ 0, %.critedge2 ], [ %.1131327, %.preheader14.preheader.i ], [ %.1131327, %.preheader.preheader.i ]
  %.sroa.19.14 = phi i32 [ %.sroa.19.13, %.critedge2 ], [ %.sroa.19.5325, %.preheader14.preheader.i ], [ %.sroa.19.5325, %.preheader.preheader.i ] ; 2 uses
  %.6 = phi i32 [ %.5, %.critedge2 ], [ %.0308374, %.preheader14.preheader.i ], [ %.0308374, %.preheader.preheader.i ]
  %i.un = add i32 %.0132378, 1                    ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.0124382, i64 16
  %.not156 = icmp eq ptr %.0126380, null          ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.0126380, i64 16 ; 2 uses
  %spec.select = select i1 %.not156, ptr null, ptr %i.up
  %i.uq = icmp eq i32 %i.un, %i.h                 ; 3 uses
  %i.ur = getelementptr inbounds [2 x i8], ptr %i.up, i64 %i.fj
  %.2128 = select i1 %.not156, ptr null, ptr %i.ur
  %.1133 = select i1 %i.uq, i32 0, i32 %i.un
  %.3129 = select i1 %i.uq, ptr %.2128, ptr %spec.select
  %.1125.idx = select i1 %i.uq, i64 %i.fi, i64 0
  %.1125 = getelementptr inbounds [2 x i8], ptr %i.uo, i64 %.1125.idx
  %i.us = add i32 %.1131326, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ut = add nuw i32 %.0134375, 1                ; 2 uses
  %i.uu = load i32, ptr %i.p, align 8, !tbaa !32
  %i.uv = icmp ult i32 %i.ut, %i.uu
  br i1 %i.uv, label %bb.x, label %._crit_edge, !llvm.loop !42

._crit_edge:                                      ; preds = %copy_superblock.exit, %bb.w
  %.sroa.19.4.lcssa = phi i32 [ %.sroa.19.3, %bb.w ], [ %.sroa.19.14, %copy_superblock.exit ]
  %i.uw = sdiv i32 %.sroa.19.4.lcssa, 8
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %i.ag, i32 noundef %i.c, i32 noundef %i.uw) #6
  %i.ux = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.uy = tail call i32 @av_frame_replace(ptr noundef %i.ux, ptr noundef nonnull %1) #6 ; 2 uses
  %i.uz = icmp slt i32 %i.uy, 0
  br i1 %i.uz, label %.thread, label %bb.bj

bb.bj:                                            ; preds = %._crit_edge
  store i32 1, ptr %2, align 4, !tbaa !48
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.p, %bb.i, %bb.o, %bb.t, %._crit_edge, %bb.v, %bb.e, %bb.d, %bb.b, %bb.a, %bb.bj
  %.3 = phi i32 [ -1094995529, %bb.b ], [ -1094995529, %bb.a ], [ -12, %bb.t ], [ -1094995529, %bb.d ], [ %i.ek, %bb.v ], [ 0, %bb.bj ], [ %., %bb.e ], [ %i.uy, %._crit_edge ], [ -1094995529, %bb.o ], [ -1094995529, %bb.i ], [ -1094995529, %bb.p ], [ -1094995529, %bb.q ]
  ret i32 %.3
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @escape124_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @av_freep(ptr noundef nonnull %i.d) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !57

bb.c:                                             ; preds = %bb.b
  tail call void @av_frame_free(ptr noundef nonnull %i.b) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @av_frame_alloc() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_replace(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noalias ptr @av_malloc(i64 noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!29 = !{!27, !6, i64 112}
!30 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!31 = !{!"Escape124Context", !30, i64 0, !6, i64 8, !5, i64 16}
!32 = !{!31, !6, i64 8}
!33 = !{!31, !30, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!27, !6, i64 136}
!36 = !{!27, !6, i64 116}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !34}
!40 = distinct !{!40, !34}
!41 = distinct !{!41, !34}
!42 = distinct !{!42, !34}
!43 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!44 = !{!43, !6, i64 32}
!45 = !{!43, !14, i64 24}
!46 = !{!5, !5, i64 0}
!47 = !{!14, !14, i64 0}
!48 = !{!6, !6, i64 0}
!49 = !{!"p1 _ZTS10MacroBlock", !9, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"CodeBook", !6, i64 0, !6, i64 4, !49, i64 8}
!52 = !{!51, !6, i64 0}
!53 = !{!51, !6, i64 4}
!54 = !{!51, !49, i64 8}
!55 = !{!"short", !5, i64 0}
!56 = !{!55, !55, i64 0}
!57 = distinct !{!57, !34}
end_hunk_0
