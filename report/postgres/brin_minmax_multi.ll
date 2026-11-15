Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/brin_minmax_multi?download=true
inline.NumInlined: 208
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@brin_minmax_multi_distance_timetz:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = load i64, ptr %i.c, align 8
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %i.n = sub i32 %i.k, %i.m
  %i.o = sext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, 1000000
  %i.q = add i64 %i.i, %i.p
  %i.r = sitofp i64 %i.q to double
  %i.s = bitcast double %i.r to i64
  ret i64 %i.s
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @brin_minmax_multi_distance_timestamp(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sitofp i64 %i.d to double
  %i.f = sitofp i64 %i.b to double
  %i.g = fsub double %i.e, %i.f
  %i.h = bitcast double %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @brin_minmax_multi_distance_interval(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = srem i64 %i.g, 86400000000
  %i.i = load i64, ptr %i.c, align 8              ; 2 uses
  %i.j = srem i64 %i.i, 86400000000
  %i.k = sub nsw i64 %i.h, %i.j
  %i.l = sdiv i64 %i.g, 86400000000
  %.neg = sdiv i64 %i.i, -86400000000
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.w = load i32, ptr %i.v, align 4
  %i.x = sext i32 %i.w to i64
  %i.y = sub nsw i64 %i.u, %i.x
  %i.z = mul nsw i64 %i.y, 30
  %i.aa = add nsw i64 %.neg, %i.l
  %i.ab = add nsw i64 %i.aa, %i.o
  %i.ac = sub nsw i64 %i.ab, %i.r
  %i.ad = add nsw i64 %i.ac, %i.z
  %i.ae = sitofp i64 %i.ad to double
  %i.af = sitofp i64 %i.k to double
  %i.ag = fdiv double %i.af, 8.640000e+10
  %i.ah = fadd double %i.ag, %i.ae
  %i.ai = bitcast double %i.ah to i64
  ret i64 %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @brin_minmax_multi_distance_pg_lsn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sub i64 %i.d, %i.b
  %i.f = uitofp i64 %i.e to double
  %i.g = bitcast double %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @brin_minmax_multi_distance_macaddr(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.i = load <2 x i8>, ptr %i.g, align 1
  %i.j = uitofp <2 x i8> %i.i to <2 x double>
  %i.k = load <2 x i8>, ptr %i.h, align 1
  %i.l = uitofp <2 x i8> %i.k to <2 x double>
  %i.m = fsub nnan <2 x double> %i.j, %i.l        ; 2 uses
  %i.n = extractelement <2 x double> %i.m, i64 1
  %i.o = fmul nnan double %i.n, 3.906250e-03
  %i.p = extractelement <2 x double> %i.m, i64 0
  %i.q = fadd double %i.o, %i.p
  %i.r = fmul double %i.q, 3.906250e-03
  %i.s = load <4 x i8>, ptr %i.f, align 1
  %i.t = uitofp <4 x i8> %i.s to <4 x double>
  %i.u = load <4 x i8>, ptr %i.c, align 1
  %i.v = uitofp <4 x i8> %i.u to <4 x double>
  %i.w = fsub nnan <4 x double> %i.t, %i.v        ; 4 uses
  %i.x = extractelement <4 x double> %i.w, i64 3
  %i.y = fadd double %i.r, %i.x
  %i.z = fmul double %i.y, 3.906250e-03
  %i.aa = extractelement <4 x double> %i.w, i64 2
  %i.ab = fadd double %i.z, %i.aa
  %i.ac = fmul double %i.ab, 3.906250e-03
  %i.ad = extractelement <4 x double> %i.w, i64 1
  %i.ae = fadd double %i.ac, %i.ad
  %i.af = fmul double %i.ae, 3.906250e-03
  %i.ag = extractelement <4 x double> %i.w, i64 0
  %i.ah = fadd double %i.af, %i.ag
  %i.ai = fmul double %i.ah, 3.906250e-03
  %i.aj = bitcast double %i.ai to i64
  ret i64 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @brin_minmax_multi_distance_macaddr8(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load <8 x i8>, ptr %i.f, align 1
  %i.h = uitofp <8 x i8> %i.g to <8 x double>
  %i.i = load <8 x i8>, ptr %i.c, align 1
  %i.j = uitofp <8 x i8> %i.i to <8 x double>
  %i.k = fsub nnan <8 x double> %i.h, %i.j        ; 8 uses
  %i.l = extractelement <8 x double> %i.k, i64 7
  %i.m = fmul nnan double %i.l, 3.906250e-03
  %i.n = extractelement <8 x double> %i.k, i64 6
  %i.o = fadd double %i.m, %i.n
  %i.p = fmul double %i.o, 3.906250e-03
  %i.q = extractelement <8 x double> %i.k, i64 5
  %i.r = fadd double %i.p, %i.q
  %i.s = fmul double %i.r, 3.906250e-03
  %i.t = extractelement <8 x double> %i.k, i64 4
  %i.u = fadd double %i.s, %i.t
  %i.v = fmul double %i.u, 3.906250e-03
  %i.w = extractelement <8 x double> %i.k, i64 3
  %i.x = fadd double %i.v, %i.w
  %i.y = fmul double %i.x, 3.906250e-03
  %i.z = extractelement <8 x double> %i.k, i64 2
  %i.aa = fadd double %i.y, %i.z
  %i.ab = fmul double %i.aa, 3.906250e-03
  %i.ac = extractelement <8 x double> %i.k, i64 1
  %i.ad = fadd double %i.ab, %i.ac
  %i.ae = fmul double %i.ad, 3.906250e-03
  %i.af = extractelement <8 x double> %i.k, i64 0
  %i.ag = fadd double %i.ae, %i.af
  %i.ah = fmul double %i.ag, 3.906250e-03
  %i.ai = bitcast double %i.ah to i64
  ret i64 %i.ai
}

; Function Attrs: nounwind uwtable
define dso_local i64 @brin_minmax_multi_distance_inet(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #11 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #11 ; 8 uses
  %i.i = load i8, ptr %i.d, align 1
  %i.j = and i8 %i.i, 1
  %.not.i = icmp eq i8 %i.j, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %i.m = load i8, ptr %i.h, align 1
  %i.n = and i8 %i.m, 1
  %.not.i59 = icmp eq i8 %i.n, 0
  %.v.i60 = select i1 %.not.i59, i64 4, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i60
  %i.p = load i8, ptr %i.o, align 1
  %.not = icmp eq i8 %i.l, %i.p
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i8 %i.l, 2
  %i.r = select i1 %i.q, i64 4, i64 16
  %i.s = tail call ptr @palloc(i64 noundef %i.r) #11 ; 5 uses
  %i.t = load i8, ptr %i.d, align 1
  %i.u = and i8 %i.t, 1
  %.not.i63 = icmp eq i8 %i.u, 0
  %.v.i64 = select i1 %.not.i63, i64 4, i64 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.v, align 1
  %i.y = icmp eq i8 %i.x, 2
  %i.z = select i1 %i.y, i64 4, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.s, ptr noundef nonnull align 1 dereferenceable(4) %i.w, i64 %i.z, i1 false)
  %i.aa = load i8, ptr %i.h, align 1
  %i.ab = and i8 %i.aa, 1
  %.not.i67 = icmp eq i8 %i.ab, 0
  %.v.i68 = select i1 %.not.i67, i64 4, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i68
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 2
  %i.af = select i1 %i.ae, i64 4, i64 16
  %i.ag = tail call ptr @palloc(i64 noundef %i.af) #11 ; 5 uses
  %i.ah = load i8, ptr %i.h, align 1
  %i.ai = and i8 %i.ah, 1
  %.not.i69 = icmp eq i8 %i.ai, 0
  %.v.i70 = select i1 %.not.i69, i64 4, i64 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i70 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.al = load i8, ptr %i.aj, align 1
  %i.am = icmp eq i8 %i.al, 2
  %i.an = select i1 %i.am, i64 4, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.ag, ptr noundef nonnull align 1 dereferenceable(4) %i.ak, i64 %i.an, i1 false)
  %i.ao = load i8, ptr %i.d, align 1
  %i.ap = and i8 %i.ao, 1
  %.not.i73 = icmp eq i8 %i.ap, 0
  %.v.i74 = select i1 %.not.i73, i64 4, i64 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i74 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = load i8, ptr %i.h, align 1
  %i.au = and i8 %i.at, 1
  %.not.i75 = icmp eq i8 %i.au, 0
  %i.av = select i1 %.not.i75, i64 5, i64 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = load i8, ptr %i.aq, align 1
  %i.az = icmp eq i8 %i.ay, 2
  %i.ba = zext i8 %i.ax to i64
  %i.bb = zext i8 %i.as to i64
  %wide.trip.count = select i1 %i.az, i64 4, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.g
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.bc = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.bd = sub nsw i64 %i.bb, %i.bc                ; 2 uses
  %i.be = icmp slt i64 %i.bd, 8
  br i1 %i.be, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bf = trunc nsw i64 %i.bd to i32
  %i.bg = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 0)
  %i.bh = lshr exact i32 65280, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = trunc i32 %i.bh to i8
  %i.bl = and i8 %i.bj, %i.bk
  store i8 %i.bl, ptr %i.bi, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bm = sub nsw i64 %i.ba, %i.bc                ; 2 uses
  %i.bn = icmp slt i64 %i.bm, 8
  br i1 %i.bn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bo = trunc nsw i64 %i.bm to i32
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %i.bq = lshr exact i32 65280, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = trunc i32 %i.bq to i8
  %i.bu = and i8 %i.bs, %i.bt
  store i8 %i.bu, ptr %i.br, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.c, !llvm.loop !12

.preheader:                                       ; preds = %bb.g, %.preheader
  %indvars.iv83 = phi i64 [ %indvars.iv.next84.a, %.preheader ], [ %wide.trip.count, %bb.g ] ; 3 uses
  %.05481 = phi double [ %i.cd, %.preheader ], [ 0.000000e+00, %bb.g ]
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1 ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next84
  %2 = load i8, ptr %1, align 1
  %3 = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next84
  %4 = load i8, ptr %3, align 1
  %5 = uitofp i8 %4 to double
  %6 = uitofp i8 %2 to double
  %7 = fsub nnan double %5, %6
  %8 = fadd double %.05481, %7
  %9 = fmul double %8, 3.906250e-03
  %indvars.iv.next84.a = add nsw i64 %indvars.iv83, -2 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next84.a
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next84.a
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = uitofp i8 %i.by to double
  %i.ca = uitofp i8 %i.bw to double
  %i.cb = fsub nnan double %i.bz, %i.ca
  %i.cc = fadd double %9, %i.cb
  %i.cd = fmul double %i.cc, 3.906250e-03         ; 2 uses
  %i.ce = icmp sgt i64 %indvars.iv83, 2
  br i1 %i.ce, label %.preheader, label %bb.h, !llvm.loop !13

bb.h:                                             ; preds = %.preheader
  tail call void @pfree(ptr noundef nonnull %i.s) #11
  tail call void @pfree(ptr noundef nonnull %i.ag) #11
  %i.cf = bitcast double %i.cd to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  %.0 = phi i64 [ %i.cf, %bb.h ], [ 4607182418800017408, %bb.a ]
  ret i64 %.0
}

declare ptr @palloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @pfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 2) i64 @brin_minmax_multi_add_value(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.compare_context, align 8    ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8
  %i.e = inttoptr i64 %i.d to ptr                 ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i64, ptr %i.f, align 8
  %i.h = inttoptr i64 %i.g to ptr                 ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load i64, ptr %i.i, align 8              ; 7 uses
  %i.k = load ptr, ptr %0, align 8
  %i.l = tail call ptr @get_fn_opclass_options(ptr noundef %i.k) #11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 10 uses
  %i.o = load i16, ptr %i.h, align 8              ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = sext i16 %i.o to i64
  %i.s = load i32, ptr %i.q, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = getelementptr i8, ptr %i.q, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -68
  %i.x = getelementptr [100 x i8], ptr %i.w, i64 %i.r ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 3 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !range !10, !noundef !11 ; 2 uses
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not95 = icmp eq ptr %i.af, null
  br i1 %.not95, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = mul i32 %i.ah, 291
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.aj = phi i32 [ %i.ai, %bb.c ], [ 37248, %bb.b ]
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %brin_minmax_multi_get_values.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not4.i = icmp eq i32 %i.al, 0
  %spec.select.i = select i1 %.not4.i, i32 32, i32 %i.al
  br label %brin_minmax_multi_get_values.exit

brin_minmax_multi_get_values.exit:                ; preds = %bb.d, %bb.e
  %i.am = phi i32 [ 32, %bb.d ], [ %spec.select.i, %bb.e ] ; 3 uses
  %i.an = mul i32 %i.am, 10
  %i.ao = tail call i32 @llvm.umin.i32(i32 %i.an, i32 %i.aj)
  %i.ap = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.am)
  %i.aq = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 256)
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 8192) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.at, ptr @CurrentMemoryContext, align 8
  %i.av = shl nuw nsw i32 %i.ar, 3
  %narrow = add nuw nsw i32 %i.av, 48
  %i.aw = zext nneg i32 %narrow to i64
  %i.ax = tail call ptr @palloc0(i64 noundef %i.aw) #11 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  store i32 %i.ar, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i16 %i.o, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.n, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 68 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4
  store i32 %i.bc, ptr %i.ax, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i32 %i.am, ptr %i.bd, align 8
  %i.be = load i32, ptr %i.bb, align 4
  %i.bf = tail call fastcc ptr @minmax_multi_get_strategy_procinfo(ptr noundef nonnull %i.e, i16 noundef zeroext %i.o, i32 noundef %i.be, i16 noundef zeroext 1)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.bf, ptr %i.bg, align 8
  store ptr %i.au, ptr @CurrentMemoryContext, align 8
  store i8 0, ptr %i.z, align 1
  %i.bh = ptrtoint ptr %i.ax to i64
  store i64 %i.bh, ptr %i.y, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @brin_minmax_multi_serialize, ptr %i.bi, align 8
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.bj = load i64, ptr %i.y, align 8             ; 2 uses
  %i.bk = inttoptr i64 %i.bj to ptr
  %.not = icmp eq i64 %i.bj, 0
  br i1 %.not, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 304
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not94 = icmp eq ptr %i.bo, null
  br i1 %.not94, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = mul i32 %i.bq, 291
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bs = phi i32 [ %i.br, %bb.h ], [ 37248, %bb.g ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.bu, ptr @CurrentMemoryContext, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = tail call ptr @pg_detoast_datum(ptr noundef %i.bz) #11 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load i32, ptr %i.cb, align 4            ; 2 uses
  %i.cd = mul i32 %i.cc, 10
  %. = tail call i32 @llvm.umin.i32(i32 %i.cd, i32 %i.bs)
  %i.ce = tail call i32 @llvm.smax.i32(i32 %., i32 %i.cc)
  %i.cf = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 256)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 8192)
  %i.ch = tail call fastcc ptr @brin_range_deserialize(i32 noundef %i.cg, ptr noundef %i.ca) ; 6 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i16 %i.o, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.n, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 68
  %i.cl = load i32, ptr %i.ck, align 4            ; 2 uses
  store i32 %i.cl, ptr %i.ch, align 8
  %i.cm = tail call fastcc ptr @minmax_multi_get_strategy_procinfo(ptr noundef nonnull %i.e, i16 noundef zeroext %i.o, i32 noundef %i.cl, i16 noundef zeroext 1)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = ptrtoint ptr %i.ch to i64
  store i64 %i.co, ptr %i.y, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr @brin_minmax_multi_serialize, ptr %i.cp, align 8
  store ptr %i.bv, ptr @CurrentMemoryContext, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %brin_minmax_multi_get_values.exit
  %.0 = phi ptr [ %i.ax, %brin_minmax_multi_get_values.exit ], [ %i.bk, %bb.f ], [ %i.ch, %bb.i ] ; 14 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 68 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = tail call fastcc ptr @minmax_multi_get_strategy_procinfo(ptr noundef nonnull readonly %i.e, i16 noundef zeroext %i.o, i32 noundef %i.cr, i16 noundef zeroext 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ct = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 11 uses
  %i.cu = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.cv = shl i32 %i.cu, 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 13 uses
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = add i32 %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %.0, i64 36 ; 3 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = icmp sge i32 %i.cy, %i.da               ; 2 uses
  br i1 %i.db, label %bb.k, label %ensure_free_space_in_buffer.exit.i

bb.k:                                             ; preds = %bb.j
  %i.dc = load i32, ptr %i.cq, align 4
  %i.dd = tail call fastcc ptr @minmax_multi_get_strategy_procinfo(ptr noundef nonnull readonly %i.e, i16 noundef zeroext %i.o, i32 noundef %i.dc, i16 noundef zeroext 1) ; 2 uses
  tail call fastcc void @range_deduplicate_values(ptr noundef nonnull %.0)
  %i.de = load i32, ptr %i.ct, align 8            ; 2 uses
  %i.df = shl i32 %i.de, 1
  %i.dg = load i32, ptr %i.cw, align 8
  %i.dh = add i32 %i.df, %i.dg
  %i.di = sitofp i32 %i.dh to double
end_hunk_0
