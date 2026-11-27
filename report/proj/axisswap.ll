Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/axisswap?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z37pj_projection_specific_setup_axisswapP8PJconsts:bb.a
  %i.bv = icmp ult i8 %switch.tableidx233, 20
  br i1 %i.bv, label %switch.hole_check235, label %bb.l

bb.m:                                             ; preds = %bb.u, %bb.t, %.preheader.3, %bb.s, %bb.r, %.preheader.2, %bb.q, %bb.p, %.preheader.1, %bb.o, %bb.n, %.loopexit
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.8)
  %i.bw = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %.thread

switch.hole_check235:                             ; preds = %switch.lookup248
  %switch.maskindex237 = zext nneg i8 %switch.tableidx233 to i32
  %switch.shifted238 = lshr i32 689155, %switch.maskindex237
  %switch.lobit239 = trunc i32 %switch.shifted238 to i1
  br i1 %switch.lobit239, label %switch.lookup236, label %bb.l

switch.lookup236:                                 ; preds = %switch.hole_check235
  %i.bx = zext nneg i8 %switch.tableidx233 to i64
  %switch.gep240 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Z37pj_projection_specific_setup_axisswapP8PJconsts.4, i64 %i.bx
  %switch.load241 = load i32, ptr %switch.gep240, align 4
  %i.by = zext nneg i8 %switch.tableidx233 to i64
  %switch.gep242 = getelementptr inbounds nuw i8, ptr @switch.table._Z37pj_projection_specific_setup_axisswapP8PJconsts.5, i64 %i.by
  %switch.load243 = load i8, ptr %switch.gep242, align 1
  %switch.ext244 = zext i8 %switch.load243 to i32
  store i32 %switch.load241, ptr %i.p, align 4, !tbaa !40
  store i32 %switch.ext244, ptr %i.o, align 4, !tbaa !40
  br label %.loopexit

.loopexit:                                        ; preds = %switch.lookup236, %.loopexit159
  %.3 = phi i32 [ %.2135, %.loopexit159 ], [ 3, %switch.lookup236 ]
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !40
  %i.ca = load i32, ptr %i.m, align 4, !tbaa !40
  %i.cb = icmp eq i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.m, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !40
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !40
  %i.ce = icmp eq i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = load i32, ptr %i.a, align 4, !tbaa !40
  %i.cg = load i32, ptr %i.q, align 4, !tbaa !40
  %i.ch = icmp eq i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.m, label %.preheader.1

.preheader.1:                                     ; preds = %bb.o
  %i.ci = load i32, ptr %i.m, align 4, !tbaa !40
  %i.cj = load i32, ptr %i.a, align 4, !tbaa !40
  %i.ck = icmp eq i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.m, label %bb.p

bb.p:                                             ; preds = %.preheader.1
  %i.cl = load i32, ptr %i.m, align 4, !tbaa !40
  %i.cm = load i32, ptr %i.o, align 4, !tbaa !40
  %i.cn = icmp eq i32 %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load i32, ptr %i.m, align 4, !tbaa !40
  %i.cp = load i32, ptr %i.q, align 4, !tbaa !40
  %i.cq = icmp eq i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.m, label %.preheader.2

.preheader.2:                                     ; preds = %bb.q
  %i.cr = load i32, ptr %i.o, align 4, !tbaa !40
  %i.cs = load i32, ptr %i.a, align 4, !tbaa !40
  %i.ct = icmp eq i32 %i.cr, %i.cs
  br i1 %i.ct, label %bb.m, label %bb.r

bb.r:                                             ; preds = %.preheader.2
  %i.cu = load i32, ptr %i.o, align 4, !tbaa !40
  %i.cv = load i32, ptr %i.m, align 4, !tbaa !40
  %i.cw = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cw, label %bb.m, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i32, ptr %i.o, align 4, !tbaa !40
  %i.cy = load i32, ptr %i.q, align 4, !tbaa !40
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %bb.m, label %.preheader.3

.preheader.3:                                     ; preds = %bb.s
  %i.da = load i32, ptr %i.q, align 4, !tbaa !40
  %i.db = load i32, ptr %i.a, align 4, !tbaa !40
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %bb.m, label %bb.t

bb.t:                                             ; preds = %.preheader.3
  %i.dd = load i32, ptr %i.q, align 4, !tbaa !40
  %i.de = load i32, ptr %i.m, align 4, !tbaa !40
  %i.df = icmp eq i32 %i.dd, %i.de
  br i1 %i.df, label %bb.m, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dg = load i32, ptr %i.q, align 4, !tbaa !40
  %i.dh = load i32, ptr %i.o, align 4, !tbaa !40
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.m, label %bb.v

bb.v:                                             ; preds = %bb.u
  switch i32 %.3, label %bb.ac [
    i32 4, label %.sink.split
    i32 3, label %bb.w
    i32 2, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.dj = load i32, ptr %i.a, align 4, !tbaa !40
  %i.dk = icmp ult i32 %i.dj, 3
  br i1 %i.dk, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.dl = load i32, ptr %i.m, align 4, !tbaa !40
  %i.dm = icmp ult i32 %i.dl, 3
  br i1 %i.dm, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.dn = load i32, ptr %i.o, align 4, !tbaa !40
  %i.do = icmp ult i32 %i.dn, 3
  br i1 %i.do, label %.sink.split, label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.dp = load i32, ptr %i.a, align 4, !tbaa !40
  switch i32 %i.dp, label %bb.ac [
    i32 1, label %bb.aa
    i32 0, label %..thread156_crit_edge
  ]

..thread156_crit_edge:                            ; preds = %bb.z
  %.pre = load i32, ptr %i.m, align 4, !tbaa !40
  br label %.thread156

bb.aa:                                            ; preds = %bb.z
  %i.dq = load i32, ptr %i.l, align 4, !tbaa !40
  %i.dr = icmp eq i32 %i.dq, 1
  %.pre207 = load i32, ptr %i.m, align 4, !tbaa !40 ; 2 uses
  %i.ds = icmp eq i32 %.pre207, 0
  %or.cond = select i1 %i.dr, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.ab, label %.thread156

bb.ab:                                            ; preds = %bb.aa
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !40
  %i.dv = icmp eq i32 %i.du, 1
  br i1 %i.dv, label %.sink.split, label %.thread156.thread

.thread156:                                       ; preds = %..thread156_crit_edge, %bb.aa
  %i.dw = phi i32 [ %.pre, %..thread156_crit_edge ], [ %.pre207, %bb.aa ]
  %i.dx = icmp ult i32 %i.dw, 2
  br i1 %i.dx, label %.thread156.thread, label %bb.ac

.thread156.thread:                                ; preds = %bb.ab, %.thread156
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ab, %bb.y, %bb.v, %.thread156.thread
  %.sink224 = phi i64 [ 136, %bb.v ], [ 104, %.thread156.thread ], [ 120, %bb.y ], [ 136, %bb.ab ]
  %_ZL22pj_axisswap_forward_3d6PJ_LPZP8PJconsts.sink = phi ptr [ @_ZL22pj_axisswap_forward_4dR8PJ_COORDP8PJconsts, %bb.v ], [ @_ZL22pj_axisswap_forward_2d5PJ_LPP8PJconsts, %.thread156.thread ], [ @_ZL22pj_axisswap_forward_3d6PJ_LPZP8PJconsts, %bb.y ], [ @_ZL10swap_xy_4dR8PJ_COORDP8PJconsts, %bb.ab ]
  %.sink222 = phi i64 [ 144, %bb.v ], [ 112, %.thread156.thread ], [ 128, %bb.y ], [ 144, %bb.ab ]
  %_ZL22pj_axisswap_reverse_3d6PJ_XYZP8PJconsts.sink = phi ptr [ @_ZL22pj_axisswap_reverse_4dR8PJ_COORDP8PJconsts, %bb.v ], [ @_ZL22pj_axisswap_reverse_2d5PJ_XYP8PJconsts, %.thread156.thread ], [ @_ZL22pj_axisswap_reverse_3d6PJ_XYZP8PJconsts, %bb.y ], [ @_ZL10swap_xy_4dR8PJ_COORDP8PJconsts, %bb.ab ]
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %.sink224
  store ptr %_ZL22pj_axisswap_forward_3d6PJ_LPZP8PJconsts.sink, ptr %i.dy, align 8, !tbaa !53
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink222
  store ptr %_ZL22pj_axisswap_reverse_3d6PJ_XYZP8PJconsts.sink, ptr %i.dz, align 8, !tbaa !53
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split, %bb.z, %bb.w, %bb.x, %bb.y, %bb.v, %.thread156
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !54
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !55
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !56
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  %i.ej = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %.thread

bb.ag:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.ek = load ptr, ptr %0, align 8, !tbaa !51
  %i.el = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.em = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ek, ptr noundef %i.el, ptr noundef nonnull @.str.10)
  %i.en = and i64 %i.em, 4294967295
  %.not151 = icmp eq i64 %i.en, 0
  %spec.select225 = select i1 %.not151, i32 0, i32 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 %spec.select225, ptr %i.eo, align 4, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 %spec.select225, ptr %i.ep, align 8, !tbaa !38
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 364
  store <4 x i32> splat (i32 1), ptr %i.eq, align 4, !tbaa !40
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.g, %bb.ag, %bb.af, %bb.m, %bb.l, %bb.d, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %i.t, %bb.d ], [ %i.bl, %bb.l ], [ %i.bw, %bb.m ], [ %i.ej, %bb.af ], [ %0, %bb.ag ], [ %i.as, %bb.h ], [ %i.al, %bb.g ]
  ret ptr %.1
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL22pj_axisswap_forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.b, align 4, !tbaa !40
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !41
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !41
  %i.x = load <2 x i32>, ptr %i.c, align 4, !tbaa !40
  %i.y = sitofp <2 x i32> %i.x to <2 x double>
  %i.z = insertelement <2 x double> poison, double %i.g, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.l, i64 1
  %i.ab = fmul <2 x double> %i.aa, %i.y
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load <2 x i32>, ptr %i.r, align 4, !tbaa !40
  %i.ad = sitofp <2 x i32> %i.ac to <2 x double>
  %i.ae = insertelement <2 x double> poison, double %i.q, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.w, i64 1
  %i.ag = fmul <2 x double> %i.af, %i.ad
  store <2 x double> %i.ab, ptr %0, align 8, !tbaa !41
  store <2 x double> %i.ag, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL22pj_axisswap_reverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %2 = alloca %union.PJ_COORD, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.b, align 4, !tbaa !40
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !40
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.n
  %i.p = load <4 x i32>, ptr %i.c, align 4, !tbaa !40
  %i.q = sitofp <4 x i32> %i.p to <4 x double>    ; 2 uses
  %i.r = load <2 x double>, ptr %0, align 8, !tbaa !41
  %i.s = shufflevector <4 x double> %i.q, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.t = fmul <2 x double> %i.r, %i.s             ; 2 uses
  %i.u = extractelement <2 x double> %i.t, i64 0
  store double %i.u, ptr %i.f, align 8, !tbaa !41
  %i.v = extractelement <2 x double> %i.t, i64 1
  store double %i.v, ptr %i.j, align 8, !tbaa !41
  %i.w = load <2 x double>, ptr %i.k, align 8, !tbaa !41
  %i.x = shufflevector <4 x double> %i.q, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.y = fmul <2 x double> %i.w, %i.x             ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 0
  store double %i.z, ptr %i.o, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = extractelement <2 x double> %i.y, i64 1
  store double %i.ae, ptr %i.ad, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22pj_axisswap_forward_3d6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_XYZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 16           ; 7 uses
  %4 = alloca %union.PJ_COORD, align 8            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = load <2 x double>, ptr %1, align 8, !tbaa !42
  store <2 x double> %i.c, ptr %3, align 16, !tbaa !41
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %i.e, ptr %i.f, align 16, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i32, ptr %i.b, align 4, !tbaa !40
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.s
  %i.u = load double, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = load i32, ptr %i.v, align 4, !tbaa !40
  %i.x = sitofp i32 %i.w to double
  %i.y = fmul double %i.u, %i.x
  %i.z = load <2 x i32>, ptr %i.g, align 4, !tbaa !40
  %i.aa = sitofp <2 x i32> %i.z to <2 x double>
  %i.ab = insertelement <2 x double> poison, double %i.k, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.p, i64 1
  %i.ad = fmul <2 x double> %i.ac, %i.aa
  store <2 x double> %i.ad, ptr %0, align 8, !tbaa !42
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.y, ptr %.sroa.6.0..sroa_idx12, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL22pj_axisswap_reverse_3d6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_LPZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %i.c = load double, ptr %1, align 8, !tbaa !61
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load double, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 4, !tbaa !40
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul double %i.c, %i.j
  %i.l = load i32, ptr %i.b, align 4, !tbaa !40
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.m
  store double %i.k, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %i.q = sitofp i32 %i.p to double
  %i.r = fmul double %i.e, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !40
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.u
  store double %i.r, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = sitofp i32 %i.x to double
  %i.z = fmul double %i.g, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !40
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ac
  store double %i.z, ptr %i.ad, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL10swap_xy_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree readnone captures(none) %1) #7 {
bb.a:
  %i.a = load <2 x double>, ptr %0, align 8, !tbaa !42
  %i.b = shufflevector <2 x double> %i.a, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.b, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { double, double } @_ZL22pj_axisswap_forward_2d5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #8 {
bb.a:
  %i.a = alloca [2 x double], align 16            ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store double %0, ptr %i.a, align 16, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %1, ptr %i.d, align 8, !tbaa !42
  %i.e = load i32, ptr %i.c, align 4, !tbaa !40
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.f
  %i.h = load double, ptr %i.g, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40
  %i.k = sitofp i32 %i.j to double
  %i.l = fmul double %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !40
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o
  %i.q = load double, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.s = load i32, ptr %i.r, align 4, !tbaa !40
  %i.t = sitofp i32 %i.s to double
  %i.u = fmul double %i.q, %i.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %.fca.0.insert = insertvalue { double, double } poison, double %i.l, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.u, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL22pj_axisswap_reverse_2d5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 4, !tbaa !40
  %i.e = sitofp i32 %i.d to double
  %i.f = fmul double %0, %i.e
  %i.g = load i32, ptr %i.b, align 4, !tbaa !40
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.h
  store double %i.f, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !40
  %i.l = sitofp i32 %i.k to double
  %i.m = fmul double %1, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.p
  store double %i.m, ptr %i.q, align 8, !tbaa !41
  %.sroa.07.0.copyload = load double, ptr %3, align 8, !tbaa !42
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.28.0.copyload = load double, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !42
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.07.0.copyload, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.28.0.copyload, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !15, i64 380}
!38 = !{!36, !15, i64 384}
!39 = !{!36, !8, i64 88}
!40 = !{!5, !5, i64 0}
!41 = !{!4, !4, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!36, !10, i64 8}
!44 = !{!36, !10, i64 16}
!45 = !{!36, !5, i64 360}
!46 = distinct !{!46, !52}
!47 = distinct !{null}
!48 = distinct !{!48, !52}
!49 = distinct !{!49, !52}
!50 = !{!36, !11, i64 24}
!51 = !{!36, !9, i64 0}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!8, !8, i64 0}
!54 = !{!36, !8, i64 136}
!55 = !{!36, !8, i64 120}
!56 = !{!36, !8, i64 104}
!57 = !{i64 0, i64 32, !41}
!58 = !{!"_ZTS6PJ_LPZ", !14, i64 0, !14, i64 8, !14, i64 16}
!59 = !{!58, !14, i64 16}
!60 = !{!"_ZTS6PJ_XYZ", !14, i64 0, !14, i64 8, !14, i64 16}
!61 = !{!60, !14, i64 0}
!62 = !{!60, !14, i64 8}
!63 = !{!60, !14, i64 16}
!64 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !42}
end_hunk_0
