Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/horner?download=true
inline.NumInlined: 45
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z35pj_projection_specific_setup_hornerP8PJconsts:bb.a
  br label %.critedge121.thread

bb.s:                                             ; preds = %.thread138
  br i1 %.0140, label %bb.t, label %.critedge121

bb.t:                                             ; preds = %bb.s
  %i.dj = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !48
  %i.dl = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef %i.dk, ptr noundef nonnull @.str.10, i32 noundef %i.dd)
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.u, label %.critedge121

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.15)
  %i.dn = tail call noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %.critedge121.thread

bb.v:                                             ; preds = %bb.q, %.thread143
  %.0.ph145 = phi i1 [ %i.cn, %bb.q ], [ true, %.thread143 ]
  %i.do = phi ptr [ %spec.select158, %bb.q ], [ @_ZL17horner_inverse_4dR8PJ_COORDP8PJconsts, %.thread143 ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !69
  %i.dq = add nuw nsw i32 %.sroa.023.0.extract.trunc, 1
  %i.dr = add nuw nsw i32 %.sroa.023.0.extract.trunc, 2
  %i.ds = mul nuw nsw i32 %i.dq, %i.dr
  %i.dt = lshr i32 %i.ds, 1                       ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !49
  %i.dw = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef %i.dv, ptr noundef nonnull @.str.16, i32 noundef %i.dt)
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.17)
  %i.dy = tail call noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %.critedge121.thread

bb.x:                                             ; preds = %bb.v
  %i.dz = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !50
  %i.eb = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef %i.ea, ptr noundef nonnull @.str.18, i32 noundef %i.dt)
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.19)
  %i.ed = tail call noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %.critedge121.thread

bb.z:                                             ; preds = %bb.x
  br i1 %.0.ph145, label %bb.aa, label %.critedge121

bb.aa:                                            ; preds = %bb.z
  %i.ee = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !51
  %i.eg = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef %i.ef, ptr noundef nonnull @.str.7, i32 noundef %i.dt)
  %i.eh = icmp eq i32 %i.eg, 0
  br i1 %i.eh, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.20)
  %i.ei = tail call noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %.critedge121.thread

bb.ac:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !52
  %i.el = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef %i.ek, ptr noundef nonnull @.str.8, i32 noundef %i.dt)
  %i.em = icmp eq i32 %i.el, 0
  br i1 %i.em, label %bb.ad, label %.critedge121

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.21)
  %i.en = tail call noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %.critedge121.thread

.critedge121:                                     ; preds = %bb.s, %bb.t, %bb.z, %bb.ac
  %.0137 = phi i1 [ false, %bb.z ], [ true, %bb.ac ], [ true, %bb.t ], [ false, %bb.s ]
  %i.eo = load ptr, ptr %i.az, align 8, !tbaa !53
  %i.ep = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef %i.eo, ptr noundef nonnull @.str.22, i32 noundef 2)
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge121
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.23)
  %i.er = tail call noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %.critedge121.thread

bb.af:                                            ; preds = %.critedge121
  br i1 %.0137, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.es = load ptr, ptr %i.bb, align 8, !tbaa !54
  %i.et = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef %i.es, ptr noundef nonnull @.str.9, i32 noundef 2)
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.24)
  %i.ev = tail call noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %.critedge121.thread

bb.ai:                                            ; preds = %bb.ag, %bb.af
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.ex = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef nonnull %i.ew, ptr noundef nonnull @.str.25, i32 noundef 1)
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store double 5.000000e+05, ptr %i.ew, align 8, !tbaa !56
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ez = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.fa = tail call fastcc noundef i32 @_ZL11parse_coefsP8PJconstsPdPKci(ptr noundef nonnull %0, ptr noundef nonnull %i.ez, ptr noundef nonnull @.str.26, i32 noundef 1)
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.al, label %.critedge121.thread

bb.al:                                            ; preds = %bb.ak
  store double 1.000000e-03, ptr %i.ez, align 8, !tbaa !57
  br label %.critedge121.thread

.critedge121.thread:                              ; preds = %bb.ad, %bb.ab, %bb.y, %bb.w, %bb.r, %bb.u, %bb.l, %bb.ak, %bb.al, %bb.ah, %bb.ae, %bb.d, %bb.c
  %.4 = phi ptr [ %i.m, %bb.c ], [ %i.n, %bb.d ], [ %i.by, %bb.l ], [ %i.er, %bb.ae ], [ %i.ev, %bb.ah ], [ %i.dn, %bb.u ], [ %0, %bb.ak ], [ %0, %bb.al ], [ %i.di, %bb.r ], [ %i.en, %bb.ad ], [ %i.ei, %bb.ab ], [ %i.ed, %bb.y ], [ %i.dy, %bb.w ]
  ret ptr %.4
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL13horner_freeupP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  tail call void @free(ptr noundef %i.f) #10
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.h) #10
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  tail call void @free(ptr noundef %i.j) #10
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  tail call void @free(ptr noundef %i.l) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  tail call void @free(ptr noundef %i.n) #10
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  tail call void @free(ptr noundef %i.p) #10
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.r) #10
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.t) #10
  tail call void @free(ptr noundef nonnull %i.c) #10
  store ptr null, ptr %i.b, align 8, !tbaa !55
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %i.u = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.u, %.sink.split ]
  ret ptr %.0
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal void @_ZL25complex_horner_forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.g = icmp eq <2 x i32> %i.f, zeroinitializer
  %i.h = fneg <2 x double> %i.e
  %i.i = select <2 x i1> %i.g, <2 x double> %i.e, <2 x double> %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.j, align 8, !tbaa !56
  %2 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %3 = insertelement <2 x double> poison, double %.val.i, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fcmp ogt <2 x double> %2, %4
  %6 = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %6, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.l = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !46
  %i.o = shl i32 %i.n, 1
  %i.p = add i32 %i.o, 2                          ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !59 ; 2 uses
  %i.u = icmp ugt i32 %i.p, 2
  br i1 %i.u, label %.lr.ph.i.i.preheader, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.v = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.s, %.lr.ph.i.i.preheader ]
  %i.x = phi <2 x double> [ %i.ae, %.lr.ph.i.i ], [ %i.t, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.02425.i.i, i64 -16 ; 3 uses
  %i.z = fneg <2 x double> %i.x
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ab = fmul <2 x double> %i.v, %i.aa
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.ab)
  %i.ad = load <2 x double>, ptr %i.y, align 8, !tbaa !59
  %i.ae = fadd <2 x double> %i.ac, %i.ad          ; 2 uses
  %i.af = icmp ugt ptr %i.y, %i.l
  br i1 %i.af, label %.lr.ph.i.i, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, !llvm.loop !0

_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ag = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.t, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ae, %.lr.ph.i.i ]
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ah, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL25complex_horner_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.g = icmp eq <2 x i32> %i.f, zeroinitializer
  %i.h = fneg <2 x double> %i.e
  %i.i = select <2 x i1> %i.g, <2 x double> %i.e, <2 x double> %i.h ; 2 uses
  %i.j = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.j, align 8, !tbaa !56
  %2 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %3 = insertelement <2 x double> poison, double %.val.i, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fcmp ogt <2 x double> %2, %4
  %6 = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %6, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.l = load ptr, ptr %.in.i, align 8, !tbaa !61 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !46
  %i.o = shl i32 %i.n, 1
  %i.p = add i32 %i.o, 2                          ; 2 uses
  %i.q = zext i32 %i.p to i64
  %.idx.i.i = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 2 uses
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !59 ; 2 uses
  %i.u = icmp ugt i32 %i.p, 2
  br i1 %i.u, label %.lr.ph.i.i.preheader, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

.lr.ph.i.i.preheader:                             ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.v = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.s, %.lr.ph.i.i.preheader ]
  %i.x = phi <2 x double> [ %i.ae, %.lr.ph.i.i ], [ %i.t, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.02425.i.i, i64 -16 ; 3 uses
  %i.z = fneg <2 x double> %i.x
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.ab = fmul <2 x double> %i.v, %i.aa
  %i.ac = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.x, <2 x double> %i.ab)
  %i.ad = load <2 x double>, ptr %i.y, align 8, !tbaa !59
  %i.ae = fadd <2 x double> %i.ac, %i.ad          ; 2 uses
  %i.af = icmp ugt ptr %i.y, %i.l
  br i1 %i.af, label %.lr.ph.i.i, label %_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, !llvm.loop !0

_ZL20complex_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %.lr.ph.i.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.ag = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.t, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ae, %.lr.ph.i.i ]
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ah, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL35complex_horner_iterative_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %.sroa.0.0.copyload = load double, ptr %0, align 8, !tbaa !59 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload = load double, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !59 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %.sroa.2.0.copyload)
  %i.e = fcmp ogt double %i.d, %.val.i
  %i.f = tail call double @llvm.fabs.f64(double %.sroa.0.0.copyload)
  %i.g = fcmp ogt double %i.f, %.val.i
  %or.cond.i.i = or i1 %i.e, %i.g
  br i1 %or.cond.i.i, label %bb.b, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load double, ptr %i.i, align 8, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !59
  %i.n = fsub double %.sroa.2.0.copyload, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !59
  %i.q = fsub double %.sroa.0.0.copyload, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %2 = insertelement <2 x double> poison, double %i.j, i64 0
  %3 = shufflevector <2 x double> %2, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.s = phi i32 [ 31, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ap, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 2 uses
  %4 = phi <2 x double> [ zeroinitializer, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %7, %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i ] ; 3 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !47   ; 2 uses
  %i.u = load i32, ptr %i.r, align 8, !tbaa !46
  %i.v = shl i32 %i.u, 1
  %i.w = add i32 %i.v, 2                          ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = shl nuw nsw i64 %i.x, 3
  %.add.i = add nsw i64 %.idx.i.i, -16            ; 2 uses
  %.ptr46.i = getelementptr inbounds i8, ptr %i.t, i64 %.add.i
  %i.y = load <2 x double>, ptr %.ptr46.i, align 8, !tbaa !59 ; 2 uses
  %i.z = icmp ugt i32 %i.w, 4
  br i1 %i.z, label %.lr.ph.i.i.preheader, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.aa = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.02425.i.idx.i = phi i64 [ %.02425.i.add.i, %.lr.ph.i.i ], [ %.add.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ab = phi <2 x double> [ %i.ah, %.lr.ph.i.i ], [ %i.y, %.lr.ph.i.i.preheader ] ; 3 uses
  %.02425.i.add.i = add nsw i64 %.02425.i.idx.i, -16 ; 2 uses
  %.ptr.i = getelementptr inbounds i8, ptr %i.t, i64 %.02425.i.add.i
  %i.ac = fneg <2 x double> %i.ab
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> %i.ab, <2 x i32> <i32 1, i32 2>
  %i.ae = fmul <2 x double> %i.aa, %i.ad
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> %i.ab, <2 x double> %i.ae)
  %i.ag = load <2 x double>, ptr %.ptr.i, align 8, !tbaa !59
  %i.ah = fadd <2 x double> %i.af, %i.ag          ; 2 uses
  %i.ai = icmp sgt i64 %.02425.i.idx.i, 32
  br i1 %i.ai, label %.lr.ph.i.i, label %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i, !llvm.loop !0

_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i:       ; preds = %.lr.ph.i.i, %bb.c
  %i.aj = phi <2 x double> [ %i.y, %bb.c ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %i.ak = extractelement <2 x double> %i.aj, i64 0
  %i.al = extractelement <2 x double> %i.aj, i64 1
  %i.am = tail call noundef { double, double } @__divdc3(double noundef %i.n, double noundef %i.q, double noundef %i.ak, double noundef %i.al) #10 ; 2 uses
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  %6 = insertelement <2 x double> poison, double %i.ao, i64 0
  %7 = insertelement <2 x double> %6, double %i.an, i64 1 ; 4 uses
  %8 = fsub <2 x double> %7, %4
  %9 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %8)
  %10 = fcmp uge <2 x double> %9, %3
  %11 = bitcast <2 x i1> %10 to i2
  %12 = icmp eq i2 %11, 0                         ; 2 uses
  %i.ap = add nsw i32 %i.s, -1
  %i.aq = icmp eq i32 %i.s, 0
  %.not35.i = select i1 %i.aq, i1 true, i1 %12
  br i1 %.not35.i, label %bb.d, label %bb.c, !llvm.loop !72

bb.d:                                             ; preds = %_ZL19complex_horner_evaljPKd5PJ_UVj.exit.i
  br i1 %12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = tail call i32 @proj_errno_set(ptr noundef %1, i32 noundef 2048) ; 0 uses
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

bb.f:                                             ; preds = %bb.d
  %i.as = fneg <2 x double> %7
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %i.av = load <2 x i32>, ptr %i.b, align 8, !tbaa !60
  %i.aw = icmp eq <2 x i32> %i.av, zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x double> %7, <2 x double> %i.as
  %i.ay = load <2 x double>, ptr %i.au, align 8, !tbaa !59
  %i.az = fadd <2 x double> %i.ax, %i.ay
  br label %_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL30complex_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit: ; preds = %bb.b, %bb.e, %bb.f
  %i.ba = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.az, %bb.f ], [ splat (double +inf), %bb.e ]
  store <2 x double> %i.ba, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17horner_forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !56
  %2 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %3 = insertelement <2 x double> poison, double %.val.i, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fcmp ogt <2 x double> %2, %4
  %6 = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %6, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !61
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load ptr, ptr %.in29.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46   ; 5 uses
  %i.l = add i32 %i.k, 1
  %i.m = add i32 %i.k, 2
  %i.n = mul i32 %i.l, %i.m
  %i.o = lshr i32 %i.n, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.v = load double, ptr %i.u, align 8, !tbaa !59
  %.not.i = icmp eq i32 %i.k, 0
  %i.w = insertelement <2 x double> poison, double %i.t, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.v, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.y = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.loopexit.i
  %.03453.i.i = phi i32 [ %i.aj, %._crit_edge.i.loopexit.i ], [ %i.k, %.lr.ph55.i.i.preheader ] ; 2 uses
  %i.z = phi ptr [ %.142.i.i, %._crit_edge.i.loopexit.i ], [ %i.q, %.lr.ph55.i.i.preheader ]
  %i.aa = phi ptr [ %.13941.i.i, %._crit_edge.i.loopexit.i ], [ %i.r, %.lr.ph55.i.i.preheader ]
  %i.ab = phi <2 x double> [ %i.ai, %._crit_edge.i.loopexit.i ], [ %i.x, %.lr.ph55.i.i.preheader ]
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !59
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !59
  %i.ag = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.ab, <2 x double> %i.ar) ; 2 uses
  %i.aj = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.aj, 0
  br i1 %.not30.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph55.i.i
  %.045.i.i = phi i32 [ %i.as, %.lr.ph.i.i ], [ %i.k, %.lr.ph55.i.i ]
  %.142.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.ae, %.lr.ph55.i.i ] ; 2 uses
  %.13941.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.ac, %.lr.ph55.i.i ] ; 2 uses
  %i.ak = phi <2 x double> [ %i.ar, %.lr.ph.i.i ], [ %i.ah, %.lr.ph55.i.i ]
  %i.al = getelementptr inbounds i8, ptr %.13941.i.i, i64 -8 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds i8, ptr %.142.i.i, i64 -8 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !59
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ak, <2 x double> %i.aq) ; 2 uses
  %i.as = add i32 %.045.i.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.as, %.03453.i.i
  br i1 %.not.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %._crit_edge.i.loopexit.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.at = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.x, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ai, %._crit_edge.i.loopexit.i ]
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.au, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL17horner_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 5 uses
  %.pn.in.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 8, !tbaa !58
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59
  %i.d = load <2 x double>, ptr %.pn.in.i, align 8, !tbaa !59
  %i.e = fsub <2 x double> %i.c, %i.d             ; 3 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.f, align 8, !tbaa !56
  %2 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.e)
  %3 = insertelement <2 x double> poison, double %.val.i, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fcmp ogt <2 x double> %2, %4
  %6 = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %6, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %.in.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load ptr, ptr %.in.i, align 8, !tbaa !61
  %.in29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.i = load ptr, ptr %.in29.i, align 8, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46   ; 5 uses
  %i.l = add i32 %i.k, 1
  %i.m = add i32 %i.k, 2
  %i.n = mul i32 %i.l, %i.m
  %i.o = lshr i32 %i.n, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -8
  %i.t = load double, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 -8
  %i.v = load double, ptr %i.u, align 8, !tbaa !59
  %.not.i = icmp eq i32 %i.k, 0
  %i.w = insertelement <2 x double> poison, double %i.t, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.v, i64 1 ; 2 uses
  br i1 %.not.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i.preheader

.lr.ph55.i.i.preheader:                           ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.y = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.i

.lr.ph55.i.i:                                     ; preds = %.lr.ph55.i.i.preheader, %._crit_edge.i.loopexit.i
  %.03453.i.i = phi i32 [ %i.aj, %._crit_edge.i.loopexit.i ], [ %i.k, %.lr.ph55.i.i.preheader ] ; 2 uses
  %i.z = phi ptr [ %.142.i.i, %._crit_edge.i.loopexit.i ], [ %i.q, %.lr.ph55.i.i.preheader ]
  %i.aa = phi ptr [ %.13941.i.i, %._crit_edge.i.loopexit.i ], [ %i.r, %.lr.ph55.i.i.preheader ]
  %i.ab = phi <2 x double> [ %i.ai, %._crit_edge.i.loopexit.i ], [ %i.x, %.lr.ph55.i.i.preheader ]
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -16 ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !59
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 -16 ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !59
  %i.ag = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %i.af, i64 1
  br label %.lr.ph.i.i

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.e, <2 x double> %i.ab, <2 x double> %i.ar) ; 2 uses
  %i.aj = add i32 %.03453.i.i, -1                 ; 2 uses
  %.not30.i = icmp eq i32 %i.aj, 0
  br i1 %.not30.i, label %_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit, label %.lr.ph55.i.i, !llvm.loop !1

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph55.i.i
  %.045.i.i = phi i32 [ %i.as, %.lr.ph.i.i ], [ %i.k, %.lr.ph55.i.i ]
  %.142.i.i = phi ptr [ %i.an, %.lr.ph.i.i ], [ %i.ae, %.lr.ph55.i.i ] ; 2 uses
  %.13941.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.ac, %.lr.ph55.i.i ] ; 2 uses
  %i.ak = phi <2 x double> [ %i.ar, %.lr.ph.i.i ], [ %i.ah, %.lr.ph55.i.i ]
  %i.al = getelementptr inbounds i8, ptr %.13941.i.i, i64 -8 ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !59
  %i.an = getelementptr inbounds i8, ptr %.142.i.i, i64 -8 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !59
  %i.ap = insertelement <2 x double> poison, double %i.am, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ak, <2 x double> %i.aq) ; 2 uses
  %i.as = add i32 %.045.i.i, -1                   ; 2 uses
  %.not.i.i = icmp ult i32 %i.as, %.03453.i.i
  br i1 %.not.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !2

_ZL17real_default_implP8PJconstsPKN12_GLOBAL__N_16hornerE12PJ_DIRECTION5PJ_UV.exit: ; preds = %._crit_edge.i.loopexit.i, %bb.b, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.at = phi <2 x double> [ splat (double +inf), %bb.b ], [ %i.x, %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i ], [ %i.ai, %._crit_edge.i.loopexit.i ]
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.au, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL27horner_iterative_inverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = load <2 x double>, ptr %0, align 8, !tbaa !59 ; 2 uses
  %i.d = getelementptr i8, ptr %i.b, i64 16
  %.val.i = load double, ptr %i.d, align 8, !tbaa !56
  %2 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.c)
  %3 = insertelement <2 x double> poison, double %.val.i, i64 0
  %4 = shufflevector <2 x double> %3, <2 x double> poison, <2 x i32> zeroinitializer
  %5 = fcmp ogt <2 x double> %2, %4
  %6 = bitcast <2 x i1> %5 to i2
  %.not = icmp eq i2 %6, 0
  br i1 %.not, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2050) ; 0 uses
  br label %_ZL27real_iterative_inverse_implP8PJconstsPKN12_GLOBAL__N_16hornerE5PJ_UV.exit

_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !46   ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load double, ptr %i.h, align 8, !tbaa !57 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 3 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !59
  %i.p = insertelement <2 x double> poison, double %i.l, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = fsub <2 x double> %i.c, %i.q             ; 3 uses
  %i.s = add i32 %i.g, 1                          ; 2 uses
  %i.t = add i32 %i.g, 2
  %i.u = mul i32 %i.s, %i.t
  %i.v = lshr i32 %i.u, 1
  %i.w = zext nneg i32 %i.v to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.w
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.w
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !59 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 -8 ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !59 ; 3 uses
  %i.ad = icmp ugt i32 %i.g, 1
  %i.ae = zext i32 %i.s to i64                    ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ae
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -8 ; 3 uses
  %i.aj = fneg <2 x double> %i.r
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.al = load double, ptr %i.ag, align 8, !tbaa !59 ; 4 uses
  %i.am = load double, ptr %i.ai, align 8, !tbaa !59 ; 4 uses
  br i1 %i.ad, label %.lr.ph55.i.preheader.us.i.preheader, label %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.split.i

.lr.ph55.i.preheader.us.i.preheader:              ; preds = %_ZL19coords_out_of_rangeP8PJconstsPKN12_GLOBAL__N_16hornerEdd.exit.i
  %i.an = add i32 %i.g, -1                        ; 2 uses
  %i.ao = add i32 %i.g, -2                        ; 2 uses
  %i.ap = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %i.aa, i64 1
  %xtraiter = and i32 %i.an, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %i.ar = icmp ult i32 %i.ao, 3
  %xtraiter63 = and i32 %i.an, 3                  ; 2 uses
  %lcmp.mod64.not = icmp eq i32 %xtraiter63, 0
  %i.as = icmp ult i32 %i.ao, 3
  %i.at = insertelement <2 x double> poison, double %i.i, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph55.i.preheader.us.i

.lr.ph55.i.preheader.us.i:                        ; preds = %.lr.ph55.i.preheader.us.i.preheader, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i
  %i.av = phi i32 [ %i.ef, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i ], [ 31, %.lr.ph55.i.preheader.us.i.preheader ] ; 2 uses
  %i.aw = phi <2 x double> [ %i.dy, %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i ], [ zeroinitializer, %.lr.ph55.i.preheader.us.i.preheader ] ; 13 uses
  %i.ax = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph55.i.us.i

.lr.ph55.i.us.i:                                  ; preds = %._crit_edge.i.us.i, %.lr.ph55.i.preheader.us.i
  %.03453.i.us.i = phi i32 [ %i.bq, %._crit_edge.i.us.i ], [ %i.g, %.lr.ph55.i.preheader.us.i ] ; 3 uses
  %.03750.i.us.i = phi ptr [ %.1.lcssa.i.us.i, %._crit_edge.i.us.i ], [ %i.ab, %.lr.ph55.i.preheader.us.i ]
  %.03849.i.us.i = phi ptr [ %.139.lcssa.i.us.i, %._crit_edge.i.us.i ], [ %i.z, %.lr.ph55.i.preheader.us.i ]
  %i.ay = phi <2 x double> [ %i.bp, %._crit_edge.i.us.i ], [ %i.aq, %.lr.ph55.i.preheader.us.i ]
  %i.az = getelementptr inbounds i8, ptr %.03849.i.us.i, i64 -8 ; 3 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !59
  %i.bb = getelementptr inbounds i8, ptr %.03750.i.us.i, i64 -8 ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !59
  %.not40.i.us.i = icmp ult i32 %i.g, %.03453.i.us.i
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.ba, i64 1 ; 2 uses
  br i1 %.not40.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph55.i.us.i, %.lr.ph.i.us.i
  %.045.i.us.i = phi i32 [ %i.bn, %.lr.ph.i.us.i ], [ %i.g, %.lr.ph55.i.us.i ]
  %.142.i.us.i = phi ptr [ %i.bi, %.lr.ph.i.us.i ], [ %i.bb, %.lr.ph55.i.us.i ]
  %.13941.i.us.i = phi ptr [ %i.bg, %.lr.ph.i.us.i ], [ %i.az, %.lr.ph55.i.us.i ]
  %i.bf = phi <2 x double> [ %i.bm, %.lr.ph.i.us.i ], [ %i.be, %.lr.ph55.i.us.i ]
  %i.bg = getelementptr inbounds i8, ptr %.13941.i.us.i, i64 -8 ; 3 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !59
  %i.bi = getelementptr inbounds i8, ptr %.142.i.us.i, i64 -8 ; 3 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !59
  %i.bk = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bh, i64 1
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.bf, <2 x double> %i.bl) ; 2 uses
  %i.bn = add i32 %.045.i.us.i, -1                ; 2 uses
  %.not.i.us.i = icmp ult i32 %i.bn, %.03453.i.us.i
  br i1 %.not.i.us.i, label %._crit_edge.i.us.i, label %.lr.ph.i.us.i, !llvm.loop !2

._crit_edge.i.us.i:                               ; preds = %.lr.ph.i.us.i, %.lr.ph55.i.us.i
  %.139.lcssa.i.us.i = phi ptr [ %i.az, %.lr.ph55.i.us.i ], [ %i.bg, %.lr.ph.i.us.i ]
  %.1.lcssa.i.us.i = phi ptr [ %i.bb, %.lr.ph55.i.us.i ], [ %i.bi, %.lr.ph.i.us.i ]
  %i.bo = phi <2 x double> [ %i.be, %.lr.ph55.i.us.i ], [ %i.bm, %.lr.ph.i.us.i ]
  %i.bp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ax, <2 x double> %i.ay, <2 x double> %i.bo) ; 4 uses
  %i.bq = add i32 %.03453.i.us.i, -1              ; 2 uses
  %i.br = icmp ugt i32 %i.bq, 1
  br i1 %i.br, label %.lr.ph55.i.us.i, label %.lr.ph.i65.us.i.preheader, !llvm.loop !1

.lr.ph.i65.us.i.preheader:                        ; preds = %._crit_edge.i.us.i
  br i1 %lcmp.mod.not, label %.lr.ph.i65.us.i.prol.loopexit, label %.lr.ph.i65.us.i.prol.preheader

.lr.ph.i65.us.i.prol.preheader:                   ; preds = %.lr.ph.i65.us.i.preheader
  %i.bs = extractelement <2 x double> %i.aw, i64 0
  br label %.lr.ph.i65.us.i.prol

.lr.ph.i65.us.i.prol:                             ; preds = %.lr.ph.i65.us.i.prol, %.lr.ph.i65.us.i.prol.preheader
  %.015.i.us.i.prol = phi i32 [ %i.bw, %.lr.ph.i65.us.i.prol ], [ %i.g, %.lr.ph.i65.us.i.prol.preheader ]
  %.01114.i.us.i.prol = phi double [ %i.bv, %.lr.ph.i65.us.i.prol ], [ %i.al, %.lr.ph.i65.us.i.prol.preheader ]
  %.01213.i.us.i.prol = phi ptr [ %i.bt, %.lr.ph.i65.us.i.prol ], [ %i.ag, %.lr.ph.i65.us.i.prol.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i65.us.i.prol ], [ 0, %.lr.ph.i65.us.i.prol.preheader ]
  %i.bt = getelementptr inbounds i8, ptr %.01213.i.us.i.prol, i64 -8 ; 3 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !59
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bs, double %.01114.i.us.i.prol, double %i.bu) ; 3 uses
  %i.bw = add i32 %.015.i.us.i.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i65.us.i.prol.loopexit, label %.lr.ph.i65.us.i.prol, !llvm.loop !73

.lr.ph.i65.us.i.prol.loopexit:                    ; preds = %.lr.ph.i65.us.i.prol, %.lr.ph.i65.us.i.preheader
  %.015.i.us.i.unr = phi i32 [ %i.g, %.lr.ph.i65.us.i.preheader ], [ %i.bw, %.lr.ph.i65.us.i.prol ]
  %.01114.i.us.i.unr = phi double [ %i.al, %.lr.ph.i65.us.i.preheader ], [ %i.bv, %.lr.ph.i65.us.i.prol ]
  %.01213.i.us.i.unr = phi ptr [ %i.ag, %.lr.ph.i65.us.i.preheader ], [ %i.bt, %.lr.ph.i65.us.i.prol ]
  %.lcssa59.unr = phi double [ poison, %.lr.ph.i65.us.i.preheader ], [ %i.bv, %.lr.ph.i65.us.i.prol ]
  br i1 %i.ar, label %.lr.ph.i68.us.i.preheader, label %.lr.ph.i65.us.i.preheader.new

.lr.ph.i65.us.i.preheader.new:                    ; preds = %.lr.ph.i65.us.i.prol.loopexit
  %i.bx = extractelement <2 x double> %i.aw, i64 0
  %i.by = extractelement <2 x double> %i.aw, i64 0
  %i.bz = extractelement <2 x double> %i.aw, i64 0
  %i.ca = extractelement <2 x double> %i.aw, i64 0
  br label %.lr.ph.i65.us.i

.lr.ph.i65.us.i:                                  ; preds = %.lr.ph.i65.us.i, %.lr.ph.i65.us.i.preheader.new
  %.015.i.us.i = phi i32 [ %.015.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.cn, %.lr.ph.i65.us.i ]
  %.01114.i.us.i = phi double [ %.01114.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.cm, %.lr.ph.i65.us.i ]
  %.01213.i.us.i = phi ptr [ %.01213.i.us.i.unr, %.lr.ph.i65.us.i.preheader.new ], [ %i.ck, %.lr.ph.i65.us.i ] ; 4 uses
  %i.cb = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -8
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !59
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bx, double %.01114.i.us.i, double %i.cc)
  %i.ce = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -16
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !59
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cd, double %i.cf)
  %i.ch = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -24
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !59
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bz, double %i.cg, double %i.ci)
  %i.ck = getelementptr inbounds i8, ptr %.01213.i.us.i, i64 -32 ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !59
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.ca, double %i.cj, double %i.cl) ; 2 uses
  %i.cn = add i32 %.015.i.us.i, -4                ; 2 uses
  %i.co = icmp ugt i32 %i.cn, 1
  br i1 %i.co, label %.lr.ph.i65.us.i, label %.lr.ph.i68.us.i.preheader, !llvm.loop !74

.lr.ph.i68.us.i.preheader:                        ; preds = %.lr.ph.i65.us.i, %.lr.ph.i65.us.i.prol.loopexit
  %.lcssa59 = phi double [ %.lcssa59.unr, %.lr.ph.i65.us.i.prol.loopexit ], [ %i.cm, %.lr.ph.i65.us.i ] ; 2 uses
  br i1 %lcmp.mod64.not, label %.lr.ph.i68.us.i.prol.loopexit, label %.lr.ph.i68.us.i.prol.preheader

.lr.ph.i68.us.i.prol.preheader:                   ; preds = %.lr.ph.i68.us.i.preheader
  %i.cp = extractelement <2 x double> %i.aw, i64 1
  br label %.lr.ph.i68.us.i.prol

.lr.ph.i68.us.i.prol:                             ; preds = %.lr.ph.i68.us.i.prol, %.lr.ph.i68.us.i.prol.preheader
  %.015.i69.us.i.prol = phi i32 [ %i.ct, %.lr.ph.i68.us.i.prol ], [ %i.g, %.lr.ph.i68.us.i.prol.preheader ]
  %.01114.i70.us.i.prol = phi double [ %i.cs, %.lr.ph.i68.us.i.prol ], [ %i.am, %.lr.ph.i68.us.i.prol.preheader ]
  %.01213.i71.us.i.prol = phi ptr [ %i.cq, %.lr.ph.i68.us.i.prol ], [ %i.ai, %.lr.ph.i68.us.i.prol.preheader ]
  %prol.iter65 = phi i32 [ %prol.iter65.next, %.lr.ph.i68.us.i.prol ], [ 0, %.lr.ph.i68.us.i.prol.preheader ]
  %i.cq = getelementptr inbounds i8, ptr %.01213.i71.us.i.prol, i64 -8 ; 3 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !59
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cp, double %.01114.i70.us.i.prol, double %i.cr) ; 3 uses
  %i.ct = add i32 %.015.i69.us.i.prol, -1         ; 2 uses
  %prol.iter65.next = add i32 %prol.iter65, 1     ; 2 uses
  %prol.iter65.cmp.not = icmp eq i32 %prol.iter65.next, %xtraiter63
  br i1 %prol.iter65.cmp.not, label %.lr.ph.i68.us.i.prol.loopexit, label %.lr.ph.i68.us.i.prol, !llvm.loop !75

.lr.ph.i68.us.i.prol.loopexit:                    ; preds = %.lr.ph.i68.us.i.prol, %.lr.ph.i68.us.i.preheader
  %.015.i69.us.i.unr = phi i32 [ %i.g, %.lr.ph.i68.us.i.preheader ], [ %i.ct, %.lr.ph.i68.us.i.prol ]
  %.01114.i70.us.i.unr = phi double [ %i.am, %.lr.ph.i68.us.i.preheader ], [ %i.cs, %.lr.ph.i68.us.i.prol ]
  %.01213.i71.us.i.unr = phi ptr [ %i.ai, %.lr.ph.i68.us.i.preheader ], [ %i.cq, %.lr.ph.i68.us.i.prol ]
  %.lcssa60.unr = phi double [ poison, %.lr.ph.i68.us.i.preheader ], [ %i.cs, %.lr.ph.i68.us.i.prol ]
  br i1 %i.as, label %_ZL23single_real_horner_evaljPKddj.exit72.loopexit.us.i, label %.lr.ph.i68.us.i.preheader.new

.lr.ph.i68.us.i.preheader.new:                    ; preds = %.lr.ph.i68.us.i.prol.loopexit
  %i.cu = extractelement <2 x double> %i.aw, i64 1
  %i.cv = extractelement <2 x double> %i.aw, i64 1
  %i.cw = extractelement <2 x double> %i.aw, i64 1
  %i.cx = extractelement <2 x double> %i.aw, i64 1
  br label %.lr.ph.i68.us.i

.lr.ph.i68.us.i:                                  ; preds = %.lr.ph.i68.us.i, %.lr.ph.i68.us.i.preheader.new
  %.015.i69.us.i = phi i32 [ %.015.i69.us.i.unr, %.lr.ph.i68.us.i.preheader.new ], [ %i.dk, %.lr.ph.i68.us.i ]
  %.01114.i70.us.i = phi double [ %.01114.i70.us.i.unr, %.lr.ph.i68.us.i.preheader.new ], [ %i.dj, %.lr.ph.i68.us.i ]
  %.01213.i71.us.i = phi ptr [ %.01213.i71.us.i.unr, %.lr.ph.i68.us.i.preheader.new ], [ %i.dh, %.lr.ph.i68.us.i ] ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.01213.i71.us.i, i64 -8
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !59
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cu, double %.01114.i70.us.i, double %i.cz)
  %i.db = getelementptr inbounds i8, ptr %.01213.i71.us.i, i64 -16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !59
end_hunk_0
