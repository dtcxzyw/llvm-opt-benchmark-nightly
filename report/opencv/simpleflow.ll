Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/simpleflow?download=true
inline.NumInlined: 521
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK2cv7optflow20CrossBilateralFilterINS_3VecIhLi3EEENS2_IfLi2EEEEclERKNS_5RangeE:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 3 uses
  %i.c = shl nsw i32 %i.b, 1
  %i.d = or disjoint i32 %i.c, 1
  %i.e = load i32, ptr %1, align 4, !tbaa !55     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56   ; 2 uses
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %.lr.ph91, label %._crit_edge92.split

.lr.ph91:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !197, !nonnull !73, !align !74 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !73, !align !74 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i8, ptr %i.y, align 4, !range !198
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.q, label %.lr.ph91.split, label %._crit_edge92.split

.lr.ph91.split:                                   ; preds = %.lr.ph91
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !65
  %i.ae = icmp slt i32 %i.ad, 2
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !64 ; 2 uses
  %i.ag = sext i32 %i.e to i64
  %i.ah = sext i32 %i.b to i64                    ; 2 uses
  %i.ai = sext i32 %i.d to i64                    ; 2 uses
  %wide.trip.count127 = sext i32 %i.g to i64
  %i.aj = icmp sgt i32 %i.b, -1
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %.lr.ph

._crit_edge92.split:                              ; preds = %._crit_edge, %.lr.ph91, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph91.split, %._crit_edge
  %indvars.iv109 = phi i64 [ %i.ag, %.lr.ph91.split ], [ %indvars.iv.next110, %._crit_edge ] ; 5 uses
  %i.ak = mul i64 %i.n, %indvars.iv109
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = add nsw i64 %indvars.iv109, %i.ah       ; 3 uses
  %i.an = add nsw i64 %indvars.iv109, %i.ai
  br label %bb.b

._crit_edge:                                      ; preds = %.split86.us
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count127
  br i1 %exitcond128.not, label %._crit_edge92.split, label %.lr.ph, !llvm.loop !193

bb.b:                                             ; preds = %.lr.ph, %.split86.us
  %indvars.iv100 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next101, %.split86.us ] ; 5 uses
  %i.ao = add nsw i64 %indvars.iv100, %i.ah       ; 2 uses
  %i.ap = load i64, ptr %i.t, align 8             ; 2 uses
  br i1 %i.aj, label %.lr.ph81.split.us, label %._crit_edge82

.lr.ph81.split.us:                                ; preds = %bb.b
  %i.aq = mul i64 %i.ap, %i.am
  %.sink.idx.i = select i1 %i.ae, i64 0, i64 %i.aq
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink.idx.i
  %i.ar = getelementptr inbounds nuw [3 x i8], ptr %.sink.i, i64 %i.ao ; 3 uses
  %i.as = load ptr, ptr %i.u, align 8, !tbaa !199, !nonnull !73, !align !74 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !48
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !200, !nonnull !73, !align !74 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !48
  %i.bc = load ptr, ptr %i.w, align 8, !tbaa !201, !nonnull !73, !align !74 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !48
  %i.bh = add nuw nsw i64 %indvars.iv100, %i.ai
  %i.bi = load ptr, ptr %i.x, align 8, !tbaa !202, !nonnull !73, !align !74
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51 ; 3 uses
  %.pre.pre = load i8, ptr %i.ar, align 1, !tbaa !23
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %.pre131.pre = load i8, ptr %.phi.trans.insert.phi.trans.insert, align 1, !tbaa !23
  %.phi.trans.insert132.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %.pre133.pre = load i8, ptr %.phi.trans.insert132.phi.trans.insert, align 1, !tbaa !23
  %i.bk = zext i8 %.pre.pre to i32
  %i.bl = zext i8 %.pre131.pre to i32
  %i.bm = zext i8 %.pre133.pre to i32
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph81.split.us
  %indvars.iv111 = phi i64 [ %indvars.iv109, %.lr.ph81.split.us ], [ %indvars.iv.next112, %._crit_edge.us ] ; 4 uses
  %indvars.iv107 = phi i64 [ 0, %.lr.ph81.split.us ], [ %indvars.iv.next108, %._crit_edge.us ] ; 2 uses
  %.06577.us = phi double [ 0.000000e+00, %.lr.ph81.split.us ], [ %i.dk, %._crit_edge.us ]
  %i.bn = phi <2 x double> [ zeroinitializer, %.lr.ph81.split.us ], [ %i.dj, %._crit_edge.us ]
  %i.bo = mul i64 %i.ap, %indvars.iv111
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bo
  %i.bq = mul i64 %i.aw, %indvars.iv111
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bq
  %i.bs = mul i64 %i.bb, %indvars.iv111
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bs
  %i.bu = mul i64 %i.bg, %indvars.iv107
  %i.bv = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bu
  br label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph.us, %.preheader.us
  %indvars.iv102 = phi i64 [ %indvars.iv100, %.lr.ph.us ], [ %indvars.iv.next103, %.preheader.us ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %.preheader.us ] ; 2 uses
  %.174.us = phi double [ %.06577.us, %.lr.ph.us ], [ %i.dk, %.preheader.us ]
  %i.bw = phi <2 x double> [ %i.bn, %.lr.ph.us ], [ %i.dj, %.preheader.us ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !67
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv102
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !67
  %i.cb = fmul float %i.by, %i.ca
  %i.cc = fpext float %i.cb to double
  %i.cd = getelementptr inbounds nuw [3 x i8], ptr %i.bp, i64 %indvars.iv102 ; 3 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !23
  %i.cf = zext i8 %i.ce to i32
  %i.cg = sub nsw i32 %i.bk, %i.cf
  %i.ch = tail call i32 @llvm.abs.i32(i32 %i.cg, i1 true)
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !63
  %i.cl = fmul double %i.ck, %i.cc
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !23
  %i.co = zext i8 %i.cn to i32
  %i.cp = sub nsw i32 %i.bl, %i.co
  %i.cq = tail call i32 @llvm.abs.i32(i32 %i.cp, i1 true)
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !63
  %i.cu = fmul double %i.cl, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !23
  %i.cx = zext i8 %i.cw to i32
  %i.cy = sub nsw i32 %i.bm, %i.cx
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.da
  %i.dc = load double, ptr %i.db, align 8, !tbaa !63
  %i.dd = fmul double %i.cu, %i.dc                ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv102
  %i.df = load <2 x float>, ptr %i.de, align 4, !tbaa !67
  %i.dg = fpext <2 x float> %i.df to <2 x double>
  %i.dh = insertelement <2 x double> poison, double %i.dd, i64 0
  %i.di = shufflevector <2 x double> %i.dh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.di, <2 x double> %i.dg, <2 x double> %i.bw) ; 3 uses
  %i.dk = fadd double %.174.us, %i.dd             ; 3 uses
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dl = icmp slt i64 %indvars.iv.next103, %i.bh
  br i1 %i.dl, label %.preheader.us, label %._crit_edge.us, !llvm.loop !194

._crit_edge.us:                                   ; preds = %.preheader.us
  %indvars.iv.next112 = add nsw i64 %indvars.iv111, 1 ; 2 uses
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %i.dm = icmp slt i64 %indvars.iv.next112, %i.an
  br i1 %i.dm, label %.lr.ph.us, label %._crit_edge82, !llvm.loop !195

._crit_edge82:                                    ; preds = %._crit_edge.us, %bb.b
  %.065.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %i.dk, %._crit_edge.us ] ; 2 uses
  %i.dn = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.dj, %._crit_edge.us ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv100 ; 4 uses
  %i.dp = tail call double @llvm.fabs.f64(double %.065.lcssa)
  %i.dq = fcmp olt double %i.dp, 1.000000e-09
  %or.cond = select i1 %i.aa, i1 %i.dq, i1 false
  br i1 %or.cond, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %._crit_edge82
  %i.dr = insertelement <2 x double> poison, double %.065.lcssa, i64 0
  %i.ds = shufflevector <2 x double> %i.dr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dt = fdiv <2 x double> %i.dn, %i.ds
  %i.du = fptrunc <2 x double> %i.dt to <2 x float> ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 0
  store float %i.dv, ptr %i.do, align 4, !tbaa !67
  %i.dw = extractelement <2 x float> %i.du, i64 1
  br label %.split86.us

.split.us:                                        ; preds = %._crit_edge82
  %i.dx = load ptr, ptr %i.u, align 8, !tbaa !199, !nonnull !73, !align !74 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !65
  %.fr93 = freeze i32 %i.dz
  %i.ea = icmp slt i32 %.fr93, 2
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !64
  %invariant.gep = getelementptr [8 x i8], ptr %i.ec, i64 %i.ao ; 4 uses
  br i1 %i.ea, label %.split.us.split.us.preheader, label %.split.us.split.preheader

.split.us.split.preheader:                        ; preds = %.split.us
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 128 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = mul i64 %i.ee, %i.am
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ef
  %i.eg = load float, ptr %gep, align 4, !tbaa !67
  store float %i.eg, ptr %i.do, align 4, !tbaa !67
  %i.eh = load i64, ptr %i.ed, align 8
  %i.ei = mul i64 %i.eh, %i.am
  %i.ej = getelementptr i8, ptr %invariant.gep, i64 %i.ei
  br label %.split.us.split.us.preheader.a

.split.us.split.us.preheader:                     ; preds = %.split.us
  %2 = load float, ptr %invariant.gep, align 4, !tbaa !67
  store float %2, ptr %i.do, align 4, !tbaa !67
  br label %.split.us.split.us.preheader.a

.split.us.split.us.preheader.a:                   ; preds = %.split.us.split.preheader, %.split.us.split.us.preheader
  %invariant.gep.sink = phi ptr [ %invariant.gep, %.split.us.split.us.preheader ], [ %i.ej, %.split.us.split.preheader ]
  %i.ek = getelementptr inbounds nuw i8, ptr %invariant.gep.sink, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !67
  br label %.split86.us

.split86.us:                                      ; preds = %.split.us.split.us.preheader.a, %.split.preheader
  %.sink = phi float [ %i.dw, %.split.preheader ], [ %i.el, %.split.us.split.us.preheader.a ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store float %.sink, ptr %i.em, align 4, !tbaa !67
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !196
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !46}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!12 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !10, i64 8, !11, i64 16}
!13 = !{!12, !10, i64 8}
!14 = !{!"p1 _ZTSN2cv3MatE", !10, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 8}
!17 = !{!15, !14, i64 0}
!18 = !{!"p1 omnipotent char", !10, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"long", !6, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !6, i64 16}
!22 = !{!21, !18, i64 0}
!23 = !{!6, !6, i64 0}
!24 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!25 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !24, i64 4, !7, i64 8, !6, i64 12}
!26 = !{!25, !7, i64 0}
!27 = !{!7, !7, i64 0}
!28 = !{!"p1 _ZTSN2cv5MatOpE", !10, i64 0}
!29 = !{!"p1 _ZTSN2cv12MatAllocatorE", !10, i64 0}
!30 = !{!"p1 _ZTSN2cv8UMatDataE", !10, i64 0}
!31 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!32 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !29, i64 56, !30, i64 64, !25, i64 72, !31, i64 128}
!33 = !{!"double", !6, i64 0}
!34 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!35 = !{!"_ZTSN2cv3VecIdLi4EEE", !34, i64 0}
!36 = !{!"_ZTSN2cv7Scalar_IdEE", !35, i64 0}
!37 = !{!"_ZTSN2cv7MatExprE", !28, i64 0, !7, i64 8, !32, i64 16, !32, i64 224, !32, i64 432, !33, i64 640, !33, i64 648, !36, i64 656}
!38 = !{!37, !28, i64 0}
!39 = !{!"vtable pointer", !5, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!11, !7, i64 0}
!42 = !{!11, !7, i64 4}
!43 = !{!12, !7, i64 0}
!44 = !{!32, !7, i64 8}
!45 = !{!32, !7, i64 12}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!15, !14, i64 16}
!48 = !{!20, !20, i64 0}
!49 = !{!"p1 double", !10, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!50, !49, i64 0}
!52 = !{!50, !49, i64 16}
!53 = !{!50, !49, i64 8}
!54 = !{!"_ZTSN2cv5RangeE", !7, i64 0, !7, i64 4}
!55 = !{!54, !7, i64 0}
!56 = !{!54, !7, i64 4}
!57 = !{!14, !14, i64 0}
!58 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!59 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !10, i64 0}
!60 = !{!"_ZTSN2cv7optflow28CalcOpticalFlowSingleScaleSFINS_3VecIhLi3EEENS2_IfLi2EEEEE", !58, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !14, i64 48, !59, i64 56}
!61 = !{!60, !7, i64 40}
!62 = !{!59, !59, i64 0}
!63 = !{!33, !33, i64 0}
!64 = !{!32, !18, i64 24}
!65 = !{!32, !7, i64 4}
!66 = !{!"float", !6, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"llvm.loop.unswitch.partial.disable"}
!69 = !{!"llvm.loop.peeled.count", i32 1}
!70 = !{!"bool", !6, i64 0}
!71 = !{!"_ZTSN2cv7optflow20CrossBilateralFilterINS_3VecIhLi3EEENS2_IfLi2EEEEE", !58, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !70, i64 44, !14, i64 48, !59, i64 56}
!72 = !{!71, !7, i64 40}
!73 = !{}
!74 = !{i64 8}
!75 = distinct !{!75, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!76 = distinct !{!76, !75, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!77 = distinct !{!77, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!78 = distinct !{!78, !77, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!79 = distinct !{!79, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!80 = distinct !{!80, !79, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!81 = distinct !{!81, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!82 = distinct !{!82, !81, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!84 = distinct !{!84, !83, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!86 = distinct !{!86, !85, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!88 = distinct !{!88, !87, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!89 = distinct !{!89, i1 true, !"_ZNK2cv7MatExprcvNS_3MatEEv"}
!90 = distinct !{!90, !89, !"_ZNK2cv7MatExprcvNS_3MatEEv: argument 0"}
!91 = distinct !{!91, !46}
!92 = distinct !{!92, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!93 = distinct !{!93, !92, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!94 = !{!76}
!95 = !{!78}
!96 = !{!80}
!97 = !{!82}
!98 = !{!84}
!99 = !{!86}
!100 = !{!88}
!101 = !{!90}
!102 = !{!93}
!103 = distinct !{!103, !46}
!104 = !{!19, !18, i64 0}
!105 = !{!21, !20, i64 8}
!106 = distinct !{!106, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!107 = distinct !{!107, !106, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!109 = distinct !{!109, !108, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!111 = distinct !{!111, !110, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!112 = distinct !{!112, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!113 = distinct !{!113, !112, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!114 = distinct !{!114, !46}
!115 = !{!107}
!116 = !{!109}
!117 = !{!111}
!118 = !{!113}
!119 = !{!60, !7, i64 44}
!120 = distinct !{!120, i1 true, !"_ZN2cvngIfLi2EEENS_3VecIT_XT0_EEERKS3_"}
!121 = distinct !{!121, !120, !"_ZN2cvngIfLi2EEENS_3VecIT_XT0_EEERKS3_: argument 0"}
!122 = distinct !{!122, !46}
!123 = distinct !{!123, !46}
!124 = !{!121}
end_hunk_0
