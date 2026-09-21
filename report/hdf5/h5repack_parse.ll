Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5repack_parse?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@parse_layout:bb.a

.lr.ph.preheader189:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0119150.ph = phi i32 [ -1, %vector.scevcheck ], [ -1, %.lr.ph.preheader ], [ %i.t, %middle.block ]
  %.0123149.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %i.u, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader189, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader189 ] ; 3 uses
  %.0119150 = phi i32 [ %spec.select, %.lr.ph ], [ %.0119150.ph, %.lr.ph.preheader189 ]
  %.0123149 = phi i32 [ %.1124, %.lr.ph ], [ %.0123149.ph, %.lr.ph.preheader189 ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10    ; 2 uses
  %i.x = icmp eq i8 %i.w, 58
  %i.y = trunc nuw i64 %indvars.iv to i32
  %spec.select = select i1 %i.x, i32 %i.y, i32 %.0119150 ; 2 uses
  %i.z = icmp eq i8 %i.w, 44
  %i.aa = zext i1 %i.z to i32
  %.1124 = add i32 %.0123149, %i.aa               ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ab = and i64 %indvars.iv.next, 4294967295
  %i.ac = icmp ugt i64 %i.d, %i.ab
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !35

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.t, %middle.block ], [ %spec.select, %.lr.ph ] ; 2 uses
  %.1124.lcssa = phi i32 [ %i.u, %middle.block ], [ %.1124, %.lr.ph ]
  %i.ad = add i32 %.1124.lcssa, 1                 ; 2 uses
  %i.ae = icmp eq i32 %spec.select.lcssa, -1
  br i1 %i.ae, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0123.lcssa183 = phi i32 [ %i.ad, %._crit_edge ], [ 1, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 1, ptr %i.af, align 8, !tbaa !40
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.0119.lcssa184 = phi i32 [ -1, %._crit_edge.thread ], [ %spec.select.lcssa, %._crit_edge ] ; 9 uses
  %.0123.lcssa182 = phi i32 [ %.0123.lcssa183, %._crit_edge.thread ], [ %i.ad, %._crit_edge ] ; 2 uses
  %i.ag = zext i32 %.0123.lcssa182 to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #15 ; 8 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @error_msg(ptr noundef nonnull @.str) #14
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  store i32 %.0123.lcssa182, ptr %1, align 4, !tbaa !9
  %i.ak = icmp sgt i32 %.0119.lcssa184, 0
  br i1 %i.ak, label %.preheader145, label %.loopexit146

.preheader145:                                    ; preds = %bb.d
  %i.al = add nsw i32 %.0119.lcssa184, -1
  %i.am = zext nneg i32 %i.al to i64
  %wide.trip.count = zext nneg i32 %.0119.lcssa184 to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader145, %bb.j
  %indvars.iv162 = phi i64 [ 0, %.preheader145 ], [ %indvars.iv.next163, %bb.j ] ; 3 uses
  %.0121154 = phi i32 [ 0, %.preheader145 ], [ %i.ay, %bb.j ] ; 2 uses
  %.2125153 = phi i32 [ 0, %.preheader145 ], [ %.3126, %bb.j ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv162
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !10  ; 2 uses
  %i.ap = sext i32 %.0121154 to i64
  %i.aq = getelementptr inbounds i8, ptr %i.a, i64 %i.ap ; 3 uses
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !10
  %i.ar = icmp eq i8 %i.ao, 44                    ; 2 uses
  %i.as = icmp eq i64 %indvars.iv162, %i.am
  %or.cond141 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond141, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.aq, align 1, !tbaa !10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = getelementptr i8, ptr %i.aq, i64 1
  store i8 0, ptr %i.at, align 1, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.au = zext i32 %.2125153 to i64
  %i.av = getelementptr inbounds nuw [256 x i8], ptr %i.ai, i64 %i.au
  %i.aw = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.av, i64 noundef 256, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a) #14 ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.ax = add i32 %.2125153, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.3126 = phi i32 [ %i.ax, %bb.i ], [ %.2125153, %bb.e ]
  %.1122 = phi i32 [ -1, %bb.i ], [ %.0121154, %bb.e ]
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.ay = add nsw i32 %.1122, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next163, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit146, label %bb.e, !llvm.loop !36

.loopexit146:                                     ; preds = %bb.j, %bb.d
  %i.az = add nsw i32 %.0119.lcssa184, 1          ; 2 uses
  %i.ba = trunc nuw i64 %i.d to i32
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.loopexit146
  call void @free(ptr noundef %i.ai) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.31, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.l:                                             ; preds = %bb.o
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.35, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.m:                                             ; preds = %.loopexit146
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 6500 ; 3 uses
  %i.be = zext i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  store i8 %i.bg, ptr %i.c, align 1, !tbaa !10
  %i.bh = add i32 %.0119.lcssa184, 2
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !10
  %i.bm = add i32 %.0119.lcssa184, 3
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !10
  %i.br = add i32 %.0119.lcssa184, 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !10
  %i.bw = add i32 %.0119.lcssa184, 5
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !10
  store i8 0, ptr %i.bc, align 1, !tbaa !10
  %i.cb = load i32, ptr %i.c, align 1
  %i.cc = xor i32 %i.cb, 1347243843
  %i.cd = getelementptr i8, ptr %i.c, i64 4
  %i.ce = load i16, ptr %i.cd, align 1
  %i.cf = zext i16 %i.ce to i32
  %i.cg = xor i32 %i.cf, 65
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = load i32, ptr %i.c, align 1
  %i.cm = xor i32 %i.cl, 1414418243
  %i.cn = getelementptr i8, ptr %i.c, i64 4
  %i.co = load i16, ptr %i.cn, align 1
  %i.cp = zext i16 %i.co to i32
  %i.cq = xor i32 %i.cp, 73
  %i.cr = or i32 %i.cm, %i.cq
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = load i32, ptr %i.c, align 1
  %i.cw = xor i32 %i.cv, 1314211907
  %i.cx = getelementptr i8, ptr %i.c, i64 4
  %i.cy = load i16, ptr %i.cx, align 1
  %i.cz = zext i16 %i.cy to i32
  %i.da = xor i32 %i.cz, 75
  %i.db = or i32 %i.cw, %i.da
  %i.dc = icmp ne i32 %i.db, 0
  %i.dd = zext i1 %i.dc to i32
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.r, label %bb.l

bb.p:                                             ; preds = %bb.n
  store i32 1, ptr %i.bd, align 4, !tbaa !42
  br label %.loopexit

bb.q:                                             ; preds = %bb.m
  store i32 0, ptr %i.bd, align 4, !tbaa !42
  br label %.loopexit

bb.r:                                             ; preds = %bb.o
  store i32 2, ptr %i.bd, align 4, !tbaa !42
  %i.df = add i32 %.0119.lcssa184, 7              ; 2 uses
  %i.dg = zext i32 %i.df to i64                   ; 3 uses
  %i.dh = icmp ult i64 %i.d, %i.dg
  br i1 %i.dh, label %bb.s, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.di = icmp ugt i64 %i.d, %i.dg
  br i1 %i.di, label %.lr.ph160, label %.loopexit

.lr.ph160:                                        ; preds = %.preheader
  %i.dj = tail call ptr @__ctype_b_loc() #17
  %i.dk = add nsw i64 %i.d, -1
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 6504 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 6760 ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef %i.ai) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.36, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.t:                                             ; preds = %.lr.ph160, %bb.ag
  %i.dn = phi i64 [ %i.dg, %.lr.ph160 ], [ %5, %bb.ag ] ; 2 uses
  %.0159 = phi i32 [ 0, %.lr.ph160 ], [ %.1, %bb.ag ] ; 8 uses
  %.2158.a = phi i32 [ 0, %.lr.ph160 ], [ %.3, %bb.ag ] ; 2 uses
  %.1130157 = phi i32 [ %i.df, %.lr.ph160 ], [ %4, %bb.ag ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10  ; 4 uses
  %i.dq = sext i32 %.2158.a to i64
  %i.dr = getelementptr inbounds i8, ptr %i.b, i64 %i.dq ; 2 uses
  store i8 %i.dp, ptr %i.dr, align 1, !tbaa !10
  %i.ds = add nsw i32 %.2158.a, 1                 ; 3 uses
  %i.dt = load ptr, ptr %i.dj, align 8, !tbaa !20
  %i.du = sext i8 %i.dp to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !22
  %.fr143 = freeze i16 %i.dw
  %i.dx = and i16 %.fr143, 2048
  %i.dy = icmp eq i16 %i.dx, 0
  br i1 %i.dy, label %switch.early.test, label %bb.v

switch.early.test:                                ; preds = %bb.t
  switch i8 %i.dp, label %bb.u [
    i8 120, label %bb.v
    i8 79, label %bb.v
    i8 78, label %bb.v
    i8 69, label %bb.v
  ]

bb.u:                                             ; preds = %switch.early.test
  call void @free(ptr noundef %i.ai) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.37, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.v:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.t
  %i.dz = icmp eq i8 %i.dp, 120                   ; 2 uses
  %i.ea = icmp eq i64 %i.dk, %i.dn                ; 2 uses
  %or.cond = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  br i1 %i.dz, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  store i8 0, ptr %i.dr, align 1, !tbaa !10
  %i.eb = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %i.ec = sext i32 %.0159 to i64
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.ec
  store i64 %i.eb, ptr %i.ed, align 8, !tbaa !43
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @free(ptr noundef %i.ai) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ef = add nsw i32 %.0159, 1
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  br i1 %i.ea, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.eg = sext i32 %i.ds to i64
  %i.eh = getelementptr inbounds i8, ptr %i.b, i64 %i.eg
  store i8 0, ptr %i.eh, align 1, !tbaa !10
  %i.ei = load i32, ptr %i.b, align 1
  %i.ej = xor i32 %i.ei, 1162760014
  %i.ek = getelementptr i8, ptr %i.b, i64 4
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = zext i8 %i.el to i32
  %i.en = or i32 %i.ej, %i.em
  %i.eo = icmp ne i32 %i.en, 0
  %i.ep = zext i1 %i.eo to i32
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 -2, ptr %i.dm, align 8, !tbaa !44
  br label %bb.ag

bb.ad:                                            ; preds = %bb.ab
  %i.er = call i64 @__isoc23_strtoull(ptr noundef nonnull %i.b, ptr noundef null, i32 noundef 0) #14 ; 2 uses
  %i.es = sext i32 %.0159 to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.es
  store i64 %i.er, ptr %i.et, align 8, !tbaa !43
  %i.eu = icmp eq i64 %i.er, 0
  br i1 %i.eu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.ai) #14
  call void (ptr, ...) @error_msg(ptr noundef nonnull @.str.38, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #14
  call void @exit(i32 noundef 1) #16
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ev = add nsw i32 %.0159, 1
  store i32 %i.ev, ptr %i.dm, align 8, !tbaa !44
  br label %bb.ag

bb.ag:                                            ; preds = %bb.v, %bb.aa, %bb.af, %bb.ac, %bb.z
  %.3 = phi i32 [ 0, %bb.z ], [ 0, %bb.ac ], [ 0, %bb.af ], [ %i.ds, %bb.aa ], [ %i.ds, %bb.v ]
  %.1 = phi i32 [ %i.ef, %bb.z ], [ %.0159, %bb.ac ], [ %.0159, %bb.af ], [ %.0159, %bb.aa ], [ %.0159, %bb.v ]
  %4 = add i32 %.1130157, 1                       ; 2 uses
  %5 = zext i32 %4 to i64                         ; 2 uses
  %i.ew = icmp ugt i64 %i.d, %5
  br i1 %i.ew, label %bb.t, label %.loopexit, !llvm.loop !37

.loopexit:                                        ; preds = %bb.ag, %bb.p, %bb.q, %.preheader, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.ai
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { cold noreturn nounwind }
attributes #17 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"", !5, i64 0, !6, i64 256}
!14 = !{!"_Bool", !5, i64 0}
!15 = !{!"long", !5, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"long long", !5, i64 0}
!18 = !{!"", !12, i64 0, !6, i64 8, !6, i64 12, !5, i64 16, !6, i64 6256, !13, i64 6264, !6, i64 6528, !6, i64 6532, !14, i64 6536, !14, i64 6537, !15, i64 6544, !6, i64 6552, !14, i64 6556, !6, i64 6560, !6, i64 6564, !15, i64 6568, !15, i64 6576, !6, i64 6584, !6, i64 6588, !5, i64 6592, !16, i64 6624, !15, i64 6632, !15, i64 6640, !15, i64 6648, !15, i64 6656, !6, i64 6664, !6, i64 6668, !15, i64 6672, !17, i64 6680, !14, i64 6688, !14, i64 6689, !14, i64 6690, !14, i64 6691}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"short", !5, i64 0}
!22 = !{!21, !21, i64 0}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{null}
!28 = distinct !{!28, !11}
!29 = !{!18, !6, i64 12}
!30 = !{!"", !6, i64 0, !6, i64 4, !5, i64 8, !15, i64 1032}
!31 = !{!30, !6, i64 0}
!32 = !{!30, !6, i64 4}
!33 = !{!30, !15, i64 1032}
!34 = distinct !{!34, !11, !38, !39}
!35 = distinct !{!35, !11, !38}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = !{!"llvm.loop.isvectorized", i32 1}
!39 = !{!"llvm.loop.unroll.runtime.disable"}
!40 = !{!18, !6, i64 8}
!41 = !{!"", !5, i64 0, !5, i64 256, !6, i64 6496, !6, i64 6500, !13, i64 6504, !15, i64 6768}
!42 = !{!41, !6, i64 6500}
!43 = !{!15, !15, i64 0}
!44 = !{!41, !6, i64 6760}
end_hunk_0
