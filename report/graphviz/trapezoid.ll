inline.NumInlined: 101
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@add_segment:bb.a
  store i64 %.0783848, ptr %i.aly, align 8, !tbaa !36
  %i.alz = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ama = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.amb = getelementptr inbounds nuw [96 x i8], ptr %i.alz, i64 %i.ama
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 56
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !37
  %i.ame = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.amd) #10
  %i.amf = getelementptr inbounds nuw [96 x i8], ptr %i.alz, i64 %i.ame
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amf, i64 48 ; 2 uses
  br i1 %.0772, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i64 %i.qk, ptr %i.amg, align 8, !tbaa !39
  %i.amh = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.ami = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.amj = getelementptr inbounds nuw [96 x i8], ptr %i.amh, i64 %i.ami
  %i.amk = getelementptr inbounds nuw i8, ptr %i.amj, i64 64
  %i.aml = load i64, ptr %i.amk, align 8, !tbaa !38
  %i.amm = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.aml) #10
  %i.amn = getelementptr inbounds nuw [96 x i8], ptr %i.amh, i64 %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 40
  store i64 %i.qk, ptr %i.amo, align 8, !tbaa !36
  %i.amp = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.amq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.amr = getelementptr inbounds nuw [96 x i8], ptr %i.amp, i64 %i.amq
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 64
  %i.amt = load i64, ptr %i.ams, align 8, !tbaa !38
  %i.amu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.amt) #10
  %i.amv = getelementptr inbounds nuw [96 x i8], ptr %i.amp, i64 %i.amu
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 48
  store i64 -1, ptr %i.amw, align 8, !tbaa !39
  %i.amx = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  store i64 -1, ptr %i.amg, align 8, !tbaa !39
  %i.amy = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.amz = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.ana = getelementptr inbounds nuw [96 x i8], ptr %i.amy, i64 %i.amz
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 64
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !38
  %i.and = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.anc) #10
  %i.ane = getelementptr inbounds nuw [96 x i8], ptr %i.amy, i64 %i.and
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 40
  store i64 %.0783848, ptr %i.anf, align 8, !tbaa !36
  %i.ang = load ptr, ptr %2, align 8, !tbaa !8    ; 2 uses
  %i.anh = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.ani = getelementptr inbounds nuw [96 x i8], ptr %i.ang, i64 %i.anh
  %i.anj = getelementptr inbounds nuw i8, ptr %i.ani, i64 64
  %i.ank = load i64, ptr %i.anj, align 8, !tbaa !38
  %i.anl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.ank) #10
  %i.anm = getelementptr inbounds nuw [96 x i8], ptr %i.ang, i64 %i.anl
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anm, i64 48
  store i64 %i.qk, ptr %i.ann, align 8, !tbaa !39
  %i.ano = load ptr, ptr %2, align 8, !tbaa !8
  %i.anp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.anq = getelementptr inbounds nuw [96 x i8], ptr %i.ano, i64 %i.anp
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anq, i64 64
  %i.ans = load i64, ptr %i.anr, align 8, !tbaa !38
  %i.ant = load ptr, ptr %2, align 8, !tbaa !8
  %i.anu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qk) #10
  %i.anv = getelementptr inbounds nuw [96 x i8], ptr %i.ant, i64 %i.anu
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 56
  store i64 %i.ans, ptr %i.anw, align 8, !tbaa !37
  %i.anx = load ptr, ptr %2, align 8, !tbaa !8
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cb, %is_left_of.exit823.thread837, %is_left_of.exit823.thread, %bb.bi, %is_left_of.exit.thread829, %is_left_of.exit.thread, %bb.ck, %bb.cl, %bb.ci
  %.sink918.sink = phi i64 [ %i.zz, %bb.bi ], [ %i.qk, %bb.ci ], [ %.0783848, %bb.ck ], [ %i.qk, %bb.cl ], [ %i.qk, %is_left_of.exit.thread ], [ %.0783848, %is_left_of.exit.thread829 ], [ %i.qk, %is_left_of.exit823.thread ], [ %.0783848, %is_left_of.exit823.thread837 ], [ %i.ahc, %bb.cb ]
  %.sink916.sink = phi ptr [ %i.zv, %bb.bi ], [ %i.alq, %bb.ci ], [ %i.amx, %bb.ck ], [ %i.anx, %bb.cl ], [ %i.wu, %is_left_of.exit.thread ], [ %i.xh, %is_left_of.exit.thread829 ], [ %i.adx, %is_left_of.exit823.thread ], [ %i.aek, %is_left_of.exit823.thread837 ], [ %i.agy, %bb.cb ]
  %.sink915.sink = phi i64 [ 48, %bb.bi ], [ 64, %bb.ci ], [ 64, %bb.ck ], [ 64, %bb.cl ], [ 64, %is_left_of.exit.thread ], [ 64, %is_left_of.exit.thread829 ], [ 64, %is_left_of.exit823.thread ], [ 64, %is_left_of.exit823.thread837 ], [ 48, %bb.cb ]
  %.sink912.sink = phi i64 [ %i.qk, %bb.bi ], [ -1, %bb.ci ], [ -1, %bb.ck ], [ -1, %bb.cl ], [ -1, %is_left_of.exit.thread ], [ -1, %is_left_of.exit.thread829 ], [ -1, %is_left_of.exit823.thread ], [ -1, %is_left_of.exit823.thread837 ], [ %i.qk, %bb.cb ]
  %.sink920 = phi i64 [ 56, %bb.bi ], [ 64, %bb.ci ], [ 56, %bb.ck ], [ 64, %bb.cl ], [ 56, %is_left_of.exit.thread ], [ 56, %is_left_of.exit.thread829 ], [ 64, %is_left_of.exit823.thread ], [ 64, %is_left_of.exit823.thread837 ], [ 64, %bb.cb ]
  %i.any = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.sink918.sink) #10
  %i.anz = getelementptr inbounds nuw [96 x i8], ptr %.sink916.sink, i64 %i.any
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 %.sink915.sink
  store i64 %.sink912.sink, ptr %i.aoa, align 8, !tbaa !13
  %i.aob = load ptr, ptr %2, align 8, !tbaa !8
  %i.aoc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.aod = getelementptr inbounds nuw [96 x i8], ptr %i.aob, i64 %i.aoc
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 %.sink920
  %.1784 = load i64, ptr %i.aoe, align 8, !tbaa !13 ; 2 uses
  %i.aof = load ptr, ptr %2, align 8, !tbaa !8
  %i.aog = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.0783848) #10
  %i.aoh = getelementptr inbounds nuw [96 x i8], ptr %i.aof, i64 %i.aog
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.aoh, i64 4
  store i32 %0, ptr %i.aoi, align 4, !tbaa !34
  %i.aoj = load ptr, ptr %2, align 8, !tbaa !8
  %i.aok = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %i.qk) #10
  %i.aol = getelementptr inbounds nuw [96 x i8], ptr %i.aoj, i64 %i.aok
  store i32 %0, ptr %i.aol, align 8, !tbaa !35
  %i.aom = add i64 %.1784, -1
  %i.aon = icmp ult i64 %i.aom, -2
  br i1 %i.aon, label %bb.al, label %.critedge

.critedge:                                        ; preds = %greater_than_equal_to.exit, %bb.cm, %bb.ak, %.thread839
  %.2777 = phi i64 [ %.1776, %.thread839 ], [ 0, %bb.ak ], [ %.0775852, %greater_than_equal_to.exit ], [ %.1776, %bb.cm ]
  %.2 = phi i64 [ %spec.select, %.thread839 ], [ 0, %bb.ak ], [ %.0774853, %greater_than_equal_to.exit ], [ %spec.select, %bb.cm ]
  tail call fastcc void @merge_trapezoids(i32 noundef %0, i64 noundef %.0, i64 noundef %i.gr, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  tail call fastcc void @merge_trapezoids(i32 noundef %0, i64 noundef %.2, i64 noundef %.2777, i32 noundef 2, ptr noundef %2, ptr noundef %3)
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.aoo, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret void
}

declare hidden i64 @gv_list_get_(ptr noundef byval(%struct.list_t_) align 8, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare hidden void @gv_list_clear_(ptr noundef, i64 noundef) local_unnamed_addr #3

declare hidden void @gv_list_free_(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log2(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nounwind uwtable
define internal fastcc i64 @locate_endpoint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr101 = phi i64 [ %2, %bb.a ], [ %.tr101.be, %tailrecurse.backedge ]
  %i.b = load ptr, ptr %4, align 8, !tbaa !8
  %i.c = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %4, i64 noundef %.tr101) #10
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %i.c ; 5 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21
  switch i32 %i.e, label %bb.af [
    i32 3, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.f
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !42
  ret i64 %i.g

bb.c:                                             ; preds = %tailrecurse
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load <2 x double>, ptr %0, align 8       ; 3 uses
  %i.j = load <2 x double>, ptr %i.h, align 8     ; 3 uses
  %i.k = extractelement <2 x double> %i.j, i64 1  ; 2 uses
  %i.l = fadd double %i.k, f0x3E7AD7F29ABCAF48    ; 2 uses
  %i.m = extractelement <2 x double> %i.i, i64 1  ; 2 uses
  %i.n = fcmp ogt double %i.m, %i.l
  %i.o = fadd double %i.k, f0xBE7AD7F29ABCAF48    ; 2 uses
  %i.p = fcmp uge double %i.m, %i.o
  %i.q = extractelement <2 x double> %i.i, i64 0
  %i.r = extractelement <2 x double> %i.j, i64 0  ; 2 uses
  %i.s = fcmp ogt double %i.q, %i.r
  %narrow.i = select i1 %i.p, i1 %i.s, i1 false
  %i.t = select i1 %i.n, i1 true, i1 %narrow.i
  br i1 %i.t, label %tailrecurse.backedge, label %bb.d

tailrecurse.backedge:                             ; preds = %bb.c, %is_left_of.exit84, %bb.w, %bb.y, %bb.ad, %bb.ab, %is_left_of.exit, %bb.l, %bb.n, %bb.s, %bb.q, %bb.i, %bb.d, %bb.e, %is_left_of.exit.thread90
  %.sink = phi i64 [ 40, %is_left_of.exit84 ], [ %., %bb.e ], [ 48, %bb.c ], [ 40, %is_left_of.exit ], [ %.110, %bb.i ], [ 40, %bb.d ], [ 48, %is_left_of.exit.thread90 ], [ 40, %bb.q ], [ 40, %bb.s ], [ 40, %bb.n ], [ 40, %bb.l ], [ 40, %bb.ab ], [ 40, %bb.ad ], [ 40, %bb.y ], [ 40, %bb.w ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink
  %.tr101.be = load i64, ptr %i.u, align 8, !tbaa !13
  br label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.v = fsub <2 x double> %i.i, %i.j
  %i.w = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.v)
  %i.x = fcmp ole <2 x double> %i.w, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.y = extractelement <2 x i1> %i.x, i64 0
  %i.z = extractelement <2 x i1> %i.x, i64 1
  %i.aa = select i1 %i.z, i1 %i.y, i1 false
  br i1 %i.aa, label %bb.e, label %tailrecurse.backedge

bb.e:                                             ; preds = %bb.d
  %i.ab = load double, ptr %1, align 8
  %i.ac = load double, ptr %i.a, align 8          ; 2 uses
  %i.ad = fcmp ogt double %i.ac, %i.l
  %i.ae = fcmp uge double %i.ac, %i.o
  %i.af = fcmp ogt double %i.ab, %i.r
  %narrow.i77 = select i1 %i.ae, i1 %i.af, i1 false
  %i.ag = select i1 %i.ad, i1 true, i1 %narrow.i77
  %. = select i1 %i.ag, i64 48, i64 40
  br label %tailrecurse.backedge

bb.f:                                             ; preds = %tailrecurse
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !27
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [64 x i8], ptr %3, i64 %i.aj ; 4 uses
  %i.al = load <2 x double>, ptr %0, align 8      ; 9 uses
  %i.am = load <2 x double>, ptr %i.ak, align 8   ; 5 uses
  %i.an = extractelement <2 x double> %i.am, i64 1 ; 11 uses
  %i.ao = extractelement <2 x double> %i.am, i64 0 ; 9 uses
  %i.ap = fsub <2 x double> %i.al, %i.am          ; 3 uses
  %i.aq = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ap)
  %i.ar = fcmp ole <2 x double> %i.aq, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.as = extractelement <2 x i1> %i.ar, i64 0
  %i.at = extractelement <2 x i1> %i.ar, i64 1
  %i.au = select i1 %i.at, i1 %i.as, i1 false
  br i1 %i.au, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aw = load <2 x double>, ptr %i.av, align 8   ; 5 uses
  %i.ax = fsub <2 x double> %i.al, %i.aw          ; 3 uses
  %i.ay = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ax)
  %i.az = fcmp ole <2 x double> %i.ay, splat (double f0x3E7AD7F29ABCAF48) ; 2 uses
  %i.ba = extractelement <2 x i1> %i.az, i64 0
  %i.bb = extractelement <2 x i1> %i.az, i64 1
  %i.bc = select i1 %i.bb, i1 %i.ba, i1 false
  br i1 %i.bc, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bd = load double, ptr %i.a, align 8, !tbaa !67 ; 6 uses
  %i.be = extractelement <2 x double> %i.al, i64 1
  %i.bf = fsub double %i.be, %i.bd
  %i.bg = tail call double @llvm.fabs.f64(double %i.bf)
  %i.bh = fcmp ugt double %i.bg, f0x3E7AD7F29ABCAF48
  br i1 %i.bh, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load double, ptr %1, align 8, !tbaa !68
  %i.bj = extractelement <2 x double> %i.al, i64 0
  %i.bk = fcmp olt double %i.bi, %i.bj
  %.110 = select i1 %i.bk, i64 40, i64 48
  br label %tailrecurse.backedge

bb.j:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bm = load double, ptr %i.bl, align 8         ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bo = load double, ptr %i.bn, align 8         ; 6 uses
  %i.bp = fadd double %i.an, f0x3E7AD7F29ABCAF48
  %i.bq = fcmp ogt double %i.bo, %i.bp
  %i.br = fadd double %i.an, f0xBE7AD7F29ABCAF48
  %i.bs = fcmp uge double %i.bo, %i.br
  %i.bt = fcmp ogt double %i.bm, %i.ao
  %narrow.i.i = select i1 %i.bs, i1 %i.bt, i1 false
  %i.bu = select i1 %i.bq, i1 true, i1 %narrow.i.i
  %i.bv = fsub double %i.bo, %i.bd
  %i.bw = tail call double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ugt double %i.bw, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.bu, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = load double, ptr %1, align 8, !tbaa !68
  %i.bz = fcmp olt double %i.by, %i.bm
  br i1 %i.bz, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.m:                                             ; preds = %bb.k
  %i.ca = fsub double %i.an, %i.bd
  %i.cb = tail call double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ugt double %i.cb, f0x3E7AD7F29ABCAF48
  %i.cd = load double, ptr %1, align 8            ; 2 uses
  br i1 %i.cc, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = fcmp olt double %i.cd, %i.ao
  br i1 %i.ce, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.o:                                             ; preds = %bb.m
  %i.cf = fsub double %i.bm, %i.ao
  %i.cg = fsub double %i.bd, %i.an
  %i.ch = fsub double %i.bo, %i.an
  %i.ci = fsub double %i.cd, %i.ao
  %i.cj = fneg double %i.ci
  %i.ck = fmul double %i.ch, %i.cj
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cg, double %i.ck)
  br label %is_left_of.exit

bb.p:                                             ; preds = %bb.j
  br i1 %i.bx, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cm = load double, ptr %1, align 8, !tbaa !68
  %i.cn = fcmp olt double %i.cm, %i.bm
  br i1 %i.cn, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.r:                                             ; preds = %bb.p
  %i.co = fsub double %i.an, %i.bd
  %i.cp = tail call double @llvm.fabs.f64(double %i.co)
  %i.cq = fcmp ugt double %i.cp, f0x3E7AD7F29ABCAF48
  %i.cr = load double, ptr %1, align 8            ; 2 uses
  br i1 %i.cq, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = fcmp olt double %i.cr, %i.ao
  br i1 %i.cs, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.t:                                             ; preds = %bb.r
  %i.ct = fsub double %i.ao, %i.bm
  %i.cu = fsub double %i.bd, %i.bo
  %i.cv = fsub double %i.an, %i.bo
  %i.cw = fsub double %i.cr, %i.bm
  %i.cx = fneg double %i.cw
  %i.cy = fmul double %i.cv, %i.cx
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.cu, double %i.cy)
  br label %is_left_of.exit

is_left_of.exit:                                  ; preds = %bb.o, %bb.t
  %.0.i = phi double [ %i.cl, %bb.o ], [ %i.cz, %bb.t ]
  %i.da = fcmp ogt double %.0.i, 0.000000e+00
  br i1 %i.da, label %tailrecurse.backedge, label %is_left_of.exit.thread90

is_left_of.exit.thread90:                         ; preds = %is_left_of.exit84, %bb.w, %bb.y, %bb.ad, %bb.ab, %bb.q, %bb.s, %bb.n, %bb.l, %is_left_of.exit
  br label %tailrecurse.backedge

bb.u:                                             ; preds = %bb.g
  %i.db = fadd double %i.an, f0x3E7AD7F29ABCAF48
  %i.dc = extractelement <2 x double> %i.aw, i64 1 ; 3 uses
  %i.dd = fcmp ogt double %i.dc, %i.db
  %i.de = fadd double %i.an, f0xBE7AD7F29ABCAF48
  %i.df = fcmp uge double %i.dc, %i.de
  %i.dg = extractelement <2 x double> %i.aw, i64 0 ; 3 uses
  %i.dh = fcmp ogt double %i.dg, %i.ao
  %narrow.i.i78 = select i1 %i.df, i1 %i.dh, i1 false
  %i.di = select i1 %i.dd, i1 true, i1 %narrow.i.i78
  %i.dj = extractelement <2 x double> %i.al, i64 1 ; 3 uses
  %i.dk = fsub double %i.dc, %i.dj
  %i.dl = tail call double @llvm.fabs.f64(double %i.dk)
  %i.dm = fcmp ugt double %i.dl, f0x3E7AD7F29ABCAF48 ; 2 uses
  br i1 %i.di, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  br i1 %i.dm, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dn = extractelement <2 x double> %i.al, i64 0
  %i.do = fcmp olt double %i.dn, %i.dg
  br i1 %i.do, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.x:                                             ; preds = %bb.v
  %i.dp = fsub double %i.an, %i.dj
  %i.dq = tail call double @llvm.fabs.f64(double %i.dp)
  %i.dr = fcmp ugt double %i.dq, f0x3E7AD7F29ABCAF48
  br i1 %i.dr, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ds = extractelement <2 x double> %i.al, i64 0
  %i.dt = fcmp olt double %i.ds, %i.ao
  br i1 %i.dt, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.z:                                             ; preds = %bb.x
  %foldExtExtBinop = fsub <2 x double> %i.aw, %i.am ; 2 uses
  %i.du = extractelement <2 x double> %i.ap, i64 0
  %5 = fneg double %i.du
  %i.dv = extractelement <2 x double> %foldExtExtBinop, i64 1
  %6 = fmul double %i.dv, %5
  %7 = extractelement <2 x double> %i.ap, i64 1
  %i.dw = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dw, double %7, double %6)
  br label %is_left_of.exit84

bb.aa:                                            ; preds = %bb.u
  br i1 %i.dm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = extractelement <2 x double> %i.al, i64 0
  %i.dz = fcmp olt double %i.dy, %i.dg
  br i1 %i.dz, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.ac:                                            ; preds = %bb.aa
  %i.ea = fsub double %i.an, %i.dj
  %i.eb = tail call double @llvm.fabs.f64(double %i.ea)
  %i.ec = fcmp ugt double %i.eb, f0x3E7AD7F29ABCAF48
  br i1 %i.ec, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = extractelement <2 x double> %i.al, i64 0
  %i.ee = fcmp olt double %i.ed, %i.ao
  br i1 %i.ee, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.ae:                                            ; preds = %bb.ac
  %foldExtExtBinop113 = fsub <2 x double> %i.am, %i.aw ; 2 uses
  %i.ef = extractelement <2 x double> %i.ax, i64 0
  %8 = fneg double %i.ef
  %i.eg = extractelement <2 x double> %foldExtExtBinop113, i64 1
  %9 = fmul double %i.eg, %8
  %10 = extractelement <2 x double> %i.ax, i64 1
  %i.eh = extractelement <2 x double> %foldExtExtBinop113, i64 0
  %i.ei = tail call double @llvm.fmuladd.f64(double %i.eh, double %10, double %9)
  br label %is_left_of.exit84

is_left_of.exit84:                                ; preds = %bb.z, %bb.ae
  %.0.i80 = phi double [ %i.dx, %bb.z ], [ %i.ei, %bb.ae ]
  %i.ej = fcmp ogt double %.0.i80, 0.000000e+00
  br i1 %i.ej, label %tailrecurse.backedge, label %is_left_of.exit.thread90

bb.af:                                            ; preds = %tailrecurse
  %i.ek = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.el = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ek, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 307) #13 ; 0 uses
  tail call void @abort() #12
  unreachable
}

; Function Attrs: nounwind uwtable
define internal fastcc void @update_trapezoid(double %.16.val, double %.24.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !36
  %i.f = add i64 %i.e, -1
  %i.g = icmp ult i64 %i.f, -2
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !8
  %i.i = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.j = getelementptr inbounds nuw [96 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !39
  %i.m = add i64 %i.l, -1
  %i.n = icmp ult i64 %i.m, -2
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %1, align 8, !tbaa !8
  %i.p = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.q = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !69
  %i.t = add i64 %i.s, -1
  %i.u = icmp ult i64 %i.t, -2
  %i.v = load ptr, ptr %1, align 8, !tbaa !8
  %i.w = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.x = getelementptr inbounds nuw [96 x i8], ptr %i.v, i64 %i.w ; 2 uses
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load i32, ptr %i.y, align 8, !tbaa !70
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.ad = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !39
  %i.ag = load ptr, ptr %1, align 8, !tbaa !8
  %i.ah = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.ai = getelementptr inbounds nuw [96 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i64 %i.af, ptr %i.aj, align 8, !tbaa !36
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.al = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store i64 -1, ptr %i.am, align 8, !tbaa !39
  %i.an = load ptr, ptr %1, align 8, !tbaa !8
  %i.ao = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.ap = getelementptr inbounds nuw [96 x i8], ptr %i.an, i64 %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !39
  %i.as = load ptr, ptr %1, align 8, !tbaa !8
  %i.at = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.au = getelementptr inbounds nuw [96 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  store i64 %i.ar, ptr %i.av, align 8, !tbaa !36
  %i.aw = load ptr, ptr %1, align 8, !tbaa !8
  %i.ax = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.ay = getelementptr inbounds nuw [96 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink47 = phi i64 [ %i.ba, %bb.f ], [ -1, %bb.e ]
  %.sink42 = phi i64 [ %2, %bb.f ], [ %3, %bb.e ] ; 3 uses
  %.sink39 = phi i64 [ 40, %bb.f ], [ 48, %bb.e ] ; 2 uses
  %.sink23 = phi i64 [ 48, %bb.f ], [ 40, %bb.e ]
  %i.bb = load ptr, ptr %1, align 8, !tbaa !8
  %i.bc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.bd = getelementptr inbounds nuw [96 x i8], ptr %i.bb, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store i64 %.sink47, ptr %i.be, align 8, !tbaa !39
  %i.bf = load ptr, ptr %1, align 8, !tbaa !8
  %i.bg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.bh = getelementptr inbounds nuw [96 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !69
  %i.bk = load ptr, ptr %1, align 8, !tbaa !8
  %i.bl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.sink42) #10
  %i.bm = getelementptr inbounds nuw [96 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sink39
  store i64 %i.bj, ptr %i.bn, align 8, !tbaa !13
  %i.bo = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.bp = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.bq = getelementptr inbounds nuw [96 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36
  %i.bt = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.bs) #10
  %i.bu = getelementptr inbounds nuw [96 x i8], ptr %i.bo, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store i64 %2, ptr %i.bv, align 8, !tbaa !37
  %i.bw = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.bx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.sink42) #10
  %i.by = getelementptr inbounds nuw [96 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sink23
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !13
  %i.cb = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.ca) #10
  %i.cc = getelementptr inbounds nuw [96 x i8], ptr %i.bw, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store i64 %.sink42, ptr %i.cd, align 8, !tbaa !37
  %i.ce = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.cf = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.cg = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.sink39
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.cj = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.ci) #10
  %i.ck = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  store i64 %3, ptr %i.cl, align 8, !tbaa !37
  %i.cm = load ptr, ptr %1, align 8, !tbaa !8
  %i.cn = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.co = getelementptr inbounds nuw [96 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 80
  store i64 0, ptr %i.cp, align 8, !tbaa !69
  %i.cq = load ptr, ptr %1, align 8, !tbaa !8
  br label %bb.x

bb.h:                                             ; preds = %bb.c
  %i.cr = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !39
  %i.ct = load ptr, ptr %1, align 8, !tbaa !8
  %i.cu = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.cv = getelementptr inbounds nuw [96 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store i64 %i.cs, ptr %i.cw, align 8, !tbaa !36
  %i.cx = load ptr, ptr %1, align 8, !tbaa !8
  %i.cy = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.cz = getelementptr inbounds nuw [96 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store i64 -1, ptr %i.da, align 8, !tbaa !39
  %i.db = load ptr, ptr %1, align 8, !tbaa !8
  %i.dc = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.dd = getelementptr inbounds nuw [96 x i8], ptr %i.db, i64 %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 48
  store i64 -1, ptr %i.de, align 8, !tbaa !39
  %i.df = load ptr, ptr %1, align 8, !tbaa !8     ; 2 uses
  %i.dg = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %3) #10
  %i.dh = getelementptr inbounds nuw [96 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !36
  br label %bb.x

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.dk = load ptr, ptr %1, align 8, !tbaa !8
  %i.dl = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %2) #10
  %i.dm = getelementptr inbounds nuw [96 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !36 ; 2 uses
  %i.dp = load ptr, ptr %1, align 8, !tbaa !8
  %i.dq = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.do) #10
  %i.dr = getelementptr inbounds nuw [96 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 56
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !37 ; 3 uses
  %i.du = add i64 %i.dt, -1
  %i.dv = icmp ult i64 %i.du, -2
  br i1 %i.dv, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.dw = load ptr, ptr %1, align 8, !tbaa !8
  %i.dx = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.do) #10
  %i.dy = getelementptr inbounds nuw [96 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !38
  %i.eb = add i64 %i.ea, -1
  %i.ec = icmp ult i64 %i.eb, -2
  br i1 %i.ec, label %bb.k, label %bb.w

bb.k:                                             ; preds = %bb.j
  %i.ed = load ptr, ptr %1, align 8, !tbaa !8
  %i.ee = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %i.dt) #10
  %i.ef = getelementptr inbounds nuw [96 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
end_hunk_0
