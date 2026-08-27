Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/partition?download=true
inline.NumInlined: 85
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@partition:bb.a
  %i.cu = extractelement <2 x double> %i.cq, i64 0
  %i.cv = extractelement <2 x double> %i.ct, i64 0
  %i.cw = fcmp ult double %i.cu, %i.cv
  %i.cx = fcmp ult <2 x double> %i.cq, %i.ct
  %i.cy = extractelement <2 x i1> %i.cx, i64 1
  %i.cz = select i1 %i.cw, i1 %i.cy, i1 false
  br i1 %i.cz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph97
  store <2 x double> %i.cq, ptr %i.bu, align 8, !tbaa !34
  store <2 x double> %i.ct, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !34
  %i.da = call i64 @gv_list_append_slot_(ptr noundef nonnull %8, i64 noundef 32) #18
  %i.db = load ptr, ptr %8, align 8, !tbaa !29
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false), !tbaa.struct !35
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph97
  %i.dd = add nuw i64 %.04996, 1                  ; 2 uses
  %.val64 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 3 uses
  %i.de = icmp ult i64 %i.dd, %.val64
  br i1 %i.de, label %.lr.ph97, label %._crit_edge98.loopexit, !llvm.loop !36

._crit_edge106:                                   ; preds = %bb.z, %._crit_edge101
  call void @gv_list_clear_(ptr noundef nonnull %5, i64 noundef 32) #18
  call void @gv_list_free_(ptr noundef nonnull %5) #18
  %.val107 = load i64, ptr %i.bt, align 8, !tbaa !18
  %.not117 = icmp eq i64 %.val107, 0
  br i1 %.not117, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %._crit_edge106
  %i.df = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.aa

bb.w:                                             ; preds = %.lr.ph105, %bb.z
  %.048103 = phi i64 [ 0, %.lr.ph105 ], [ %i.dm, %bb.z ] ; 2 uses
  %i.dg = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %5, i64 noundef %.048103) #18
  %i.dh = load ptr, ptr %i.cf, align 8, !tbaa !37 ; 2 uses
  %magicptr61 = ptrtoint ptr %i.dh to i64
  switch i64 %magicptr61, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %bb.w
  %i.di = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.dj = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.di) #19 ; 0 uses
  call void @abort() #20
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dk = load ptr, ptr %5, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %i.dg
  call void %i.dh(ptr noundef byval(%struct.boxf) align 8 %i.dl) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %bb.y
  %i.dm = add nuw i64 %.048103, 1                 ; 2 uses
  %.val63 = load i64, ptr %i.ce, align 8, !tbaa !18
  %i.dn = icmp ult i64 %i.dm, %.val63
  br i1 %i.dn, label %bb.w, label %._crit_edge106, !llvm.loop !40

._crit_edge111:                                   ; preds = %bb.ad, %._crit_edge106
  call void @gv_list_clear_(ptr noundef nonnull %7, i64 noundef 32) #18
  call void @gv_list_free_(ptr noundef nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @gv_list_detach_(ptr noundef nonnull %8, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef 32) #18
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret ptr %i.do

bb.aa:                                            ; preds = %.lr.ph110, %bb.ad
  %.0108 = phi i64 [ 0, %.lr.ph110 ], [ %i.dv, %bb.ad ] ; 2 uses
  %i.dp = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %7, i64 noundef %.0108) #18
  %i.dq = load ptr, ptr %i.df, align 8, !tbaa !37 ; 2 uses
  %magicptr62 = ptrtoint ptr %i.dq to i64
  switch i64 %magicptr62, label %bb.ac [
    i64 1, label %bb.ab
    i64 0, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ds = call i64 @fwrite(ptr nonnull @.str, i64 66, i64 1, ptr %i.dr) #19 ; 0 uses
  call void @abort() #20
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.dt = load ptr, ptr %7, align 8, !tbaa !29
  %i.du = getelementptr inbounds nuw [32 x i8], ptr %i.dt, i64 %i.dp
  call void %i.dq(ptr noundef byval(%struct.boxf) align 8 %i.du) #18
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  %i.dv = add nuw i64 %.0108, 1                   ; 2 uses
  %.val = load i64, ptr %i.bt, align 8, !tbaa !18
  %i.dw = icmp ult i64 %i.dv, %.val
  br i1 %i.dw, label %bb.aa, label %._crit_edge111, !llvm.loop !42
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @genSegments(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly byval(%struct.boxf) align 8 captures(none) %2, ptr nofree noundef writeonly initializes((64, 97), (120, 161), (184, 225), (248, 289), (312, 320)) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #2 {
bb.a:
  %.sroa.068.0.copyload = load double, ptr %2, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8 ; 3 uses
  %.not17.i = icmp eq i32 %4, 0                   ; 2 uses
  br i1 %.not17.i, label %convert.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.a
  %i.a = fneg double %.sroa.5.0.copyload          ; 2 uses
  %i.b = fneg double %.sroa.9.0.copyload          ; 2 uses
  br label %convert.exit

convert.exit:                                     ; preds = %bb.a, %.preheader.preheader.i
  %.sroa.50.0 = phi double [ %.sroa.9.0.copyload, %bb.a ], [ %.sroa.068.0.copyload, %.preheader.preheader.i ] ; 2 uses
  %.sroa.42.0 = phi double [ %.sroa.068.0.copyload, %bb.a ], [ %i.b, %.preheader.preheader.i ] ; 2 uses
  %.sroa.38.0 = phi double [ %.sroa.9.0.copyload, %bb.a ], [ %.sroa.7.0.copyload, %.preheader.preheader.i ] ; 2 uses
  %.sroa.28.0 = phi double [ %.sroa.7.0.copyload, %bb.a ], [ %i.b, %.preheader.preheader.i ] ; 2 uses
  %.sroa.24.0 = phi double [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.7.0.copyload, %.preheader.preheader.i ] ; 2 uses
  %.sroa.16.0 = phi double [ %.sroa.7.0.copyload, %bb.a ], [ %i.a, %.preheader.preheader.i ] ; 2 uses
  %.sroa.12.0 = phi double [ %.sroa.5.0.copyload, %bb.a ], [ %.sroa.068.0.copyload, %.preheader.preheader.i ] ; 2 uses
  %.sroa.0.0 = phi double [ %.sroa.068.0.copyload, %bb.a ], [ %i.a, %.preheader.preheader.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 120
  store i32 2, ptr %i.d, align 8, !tbaa !43
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 124
  store i32 4, ptr %i.e, align 4, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 96
  store i8 0, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 272
  store double %.sroa.0.0, ptr %i.c, align 8, !tbaa !34
  %.sroa.12.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %3, i64 72
  store double %.sroa.12.0, ptr %.sroa.12.0..sroa_idx22, align 8, !tbaa !34
  store double %.sroa.0.0, ptr %i.h, align 8
  %.sroa.12.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %3, i64 280
  store double %.sroa.12.0, ptr %.sroa.12.0..sroa_idx24, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 184
  store i32 3, ptr %i.j, align 8, !tbaa !43
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 188
  store i32 1, ptr %i.k, align 4, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 160
  store i8 0, ptr %i.l, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 80
  store double %.sroa.16.0, ptr %i.i, align 8, !tbaa !34
  %.sroa.24.16..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 136
  store double %.sroa.24.0, ptr %.sroa.24.16..sroa_idx, align 8, !tbaa !34
  store double %.sroa.16.0, ptr %i.m, align 8
  %.sroa.24.16..sroa_idx36 = getelementptr inbounds nuw i8, ptr %3, i64 88
  store double %.sroa.24.0, ptr %.sroa.24.16..sroa_idx36, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 248
  store i32 4, ptr %i.o, align 8, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 252
  store i32 2, ptr %i.p, align 4, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 224
  store i8 0, ptr %i.q, align 8, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 144
  store double %.sroa.28.0, ptr %i.n, align 8, !tbaa !34
  %.sroa.38.32..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 200
  store double %.sroa.38.0, ptr %.sroa.38.32..sroa_idx48, align 8, !tbaa !34
  store double %.sroa.28.0, ptr %i.r, align 8
  %.sroa.38.32..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 152
  store double %.sroa.38.0, ptr %.sroa.38.32..sroa_idx50, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 312
  store i32 1, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 316
  store i32 3, ptr %i.t, align 4, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 288
  store i8 0, ptr %i.u, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 208
  store double %.sroa.42.0, ptr %i.g, align 8, !tbaa !34
  %.sroa.50.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 264
  store double %.sroa.50.0, ptr %.sroa.50.48..sroa_idx, align 8, !tbaa !34
  store double %.sroa.42.0, ptr %i.v, align 8
  %.sroa.50.48..sroa_idx62 = getelementptr inbounds nuw i8, ptr %3, i64 216
  store double %.sroa.50.0, ptr %.sroa.50.48..sroa_idx62, align 8
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %store.exit, %convert.exit
  ret void

.lr.ph:                                           ; preds = %convert.exit, %store.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %store.exit ], [ 5, %convert.exit ] ; 8 uses
  %.075 = phi i64 [ %i.ap, %store.exit ], [ 0, %convert.exit ] ; 2 uses
  %indvars76 = trunc i64 %indvars.iv to i32       ; 3 uses
  %i.w = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.075 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %.sroa.069.0.copyload = load double, ptr %i.x, align 8 ; 4 uses
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %.sroa.570.0.copyload = load double, ptr %.sroa.570.0..sroa_idx, align 8 ; 3 uses
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %.sroa.771.0.copyload = load double, ptr %.sroa.771.0..sroa_idx, align 8 ; 4 uses
  %.sroa.972.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %.sroa.972.0.copyload = load double, ptr %.sroa.972.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not17.i, label %convert.exit15, label %.preheader.preheader.i14

.preheader.preheader.i14:                         ; preds = %.lr.ph
  %i.y = fneg double %.sroa.570.0.copyload        ; 2 uses
  %i.z = fneg double %.sroa.972.0.copyload        ; 2 uses
  br label %convert.exit15

convert.exit15:                                   ; preds = %.lr.ph, %.preheader.preheader.i14
  %.sroa.50.1 = phi double [ %.sroa.570.0.copyload, %.lr.ph ], [ %.sroa.771.0.copyload, %.preheader.preheader.i14 ] ; 2 uses
  %.sroa.42.1 = phi double [ %.sroa.771.0.copyload, %.lr.ph ], [ %i.y, %.preheader.preheader.i14 ] ; 2 uses
  %.sroa.38.1 = phi double [ %.sroa.972.0.copyload, %.lr.ph ], [ %.sroa.771.0.copyload, %.preheader.preheader.i14 ] ; 2 uses
  %.sroa.28.1 = phi double [ %.sroa.771.0.copyload, %.lr.ph ], [ %i.z, %.preheader.preheader.i14 ] ; 2 uses
  %.sroa.24.1 = phi double [ %.sroa.972.0.copyload, %.lr.ph ], [ %.sroa.069.0.copyload, %.preheader.preheader.i14 ] ; 2 uses
  %.sroa.16.1 = phi double [ %.sroa.069.0.copyload, %.lr.ph ], [ %i.z, %.preheader.preheader.i14 ] ; 2 uses
  %.sroa.12.1 = phi double [ %.sroa.570.0.copyload, %.lr.ph ], [ %.sroa.069.0.copyload, %.preheader.preheader.i14 ] ; 2 uses
  %.sroa.0.1 = phi double [ %.sroa.069.0.copyload, %.lr.ph ], [ %i.y, %.preheader.preheader.i14 ] ; 2 uses
  %i.aa = add nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.ab = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.ae = trunc nsw i64 %i.ab to i32              ; 2 uses
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  %5 = trunc nsw i64 %i.aa to i32                 ; 2 uses
  store i32 %5, ptr %i.af, align 4, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i8 0, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds [64 x i8], ptr %3, i64 %i.aa ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store double %.sroa.0.1, ptr %i.ac, align 8, !tbaa !34
  %.sroa.12.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store double %.sroa.12.1, ptr %.sroa.12.0..sroa_idx28, align 8, !tbaa !34
  store double %.sroa.0.1, ptr %i.ai, align 8
  %.sroa.12.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store double %.sroa.12.1, ptr %.sroa.12.0..sroa_idx30, align 8
  %exitcond.not.i.not = icmp samesign ult i64 %indvars.iv, 2147483645
  br i1 %exitcond.not.i.not, label %bb.b, label %store.exit

bb.b:                                             ; preds = %convert.exit15
  %6 = add nuw nsw i64 %indvars.iv, 2             ; 3 uses
  %i.aj = add nuw nsw i32 %indvars76, 2
  %7 = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %i.ab ; 7 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 56
  store i32 %i.aj, ptr %8, align 8, !tbaa !43
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 60
  store i32 %indvars76, ptr %9, align 4, !tbaa !45
  %10 = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 0, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store double %.sroa.16.1, ptr %7, align 8, !tbaa !34
  %.sroa.24.16..sroa_idx38 = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %.sroa.24.1, ptr %.sroa.24.16..sroa_idx38, align 8, !tbaa !34
  store double %.sroa.16.1, ptr %12, align 8
  %.sroa.24.16..sroa_idx40 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store double %.sroa.24.1, ptr %.sroa.24.16..sroa_idx40, align 8
  %i.ak = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %6 ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  store i32 %5, ptr %13, align 8, !tbaa !43
  %14 = getelementptr inbounds nuw i8, ptr %i.ak, i64 60
  store i32 %i.ae, ptr %14, align 4, !tbaa !45
  %15 = getelementptr inbounds nuw [64 x i8], ptr %3, i64 %6 ; 5 uses
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i8 0, ptr %16, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %.sroa.28.1, ptr %15, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double %.sroa.38.1, ptr %i.am, align 8, !tbaa !34
  store double %.sroa.28.1, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  store double %.sroa.38.1, ptr %i.an, align 8
  %17 = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store i32 %indvars76, ptr %17, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 60
  %18 = trunc nuw nsw i64 %6 to i32
  store i32 %18, ptr %i.ao, align 4, !tbaa !45
  %.sroa.24.16..sroa_idx38.a = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i8 0, ptr %.sroa.24.16..sroa_idx38.a, align 8, !tbaa !46
  %19 = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double %.sroa.42.1, ptr %i.ah, align 8, !tbaa !34
  %.sroa.24.16..sroa_idx40.a = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store double %.sroa.50.1, ptr %.sroa.24.16..sroa_idx40.a, align 8, !tbaa !34
  store double %.sroa.42.1, ptr %19, align 8
  %.sroa.50.48..sroa_idx66 = getelementptr inbounds nuw i8, ptr %15, i64 24
  store double %.sroa.50.1, ptr %.sroa.50.48..sroa_idx66, align 8
  br label %store.exit

store.exit:                                       ; preds = %convert.exit15, %bb.b
  %indvars.iv.next = add nuw i64 %indvars.iv, 4
  %i.ap = add nuw i64 %.075, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %1
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47
}

; Function Attrs: nounwind
declare void @srand48(i64 noundef) local_unnamed_addr #3

declare void @construct_trapezoids(ptr dead_on_unwind writable sret(%struct.traps_t) align 8, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @monotonate_trapezoids(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 2) %3, ptr noundef nonnull %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.bitarray_t, align 8         ; 8 uses
  %6 = alloca %struct.monchains_t, align 8        ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %.val63 = load i64, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %i.b = icmp ult i64 %.val63, 65
  br i1 %i.b, label %bitarray_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = lshr i64 %.val63, 3
  %i.d = and i64 %.val63, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = zext i1 %i.e to i64
  %i.g = add nuw nsw i64 %i.c, %i.f               ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 1) #17 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bitarray_new.exit

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str.2, i64 noundef %i.g) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bitarray_new.exit:                                ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.h, %bb.b ]
  store ptr %.sroa.0.0.i, ptr %5, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %.val63, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false)
  %i.m = add i32 %0, 1                            ; 3 uses
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bitarray_new.exit
  %mul.ov.i = icmp slt i32 %0, -1
  br i1 %mul.ov.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.1, i64 noundef %i.n, i64 noundef 56) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 56) #17 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %gv_calloc.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.t = mul nuw nsw i64 %i.n, 56
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.s, ptr noundef nonnull @.str.2, i64 noundef %i.t) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

gv_calloc.exit:                                   ; preds = %bb.f
  store ptr %i.q, ptr @vert, align 8, !tbaa !41
  %i.v = zext nneg i32 %0 to i64                  ; 2 uses
  %.not.i64 = icmp eq i32 %0, 0
  br i1 %.not.i64, label %.thread.i67, label %bb.i

.thread.i67:                                      ; preds = %gv_calloc.exit
  %i.w = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #17
  br label %gv_calloc.exit68

bb.h:                                             ; preds = %bitarray_new.exit
  %i.x = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 56) #17
  store ptr %i.x, ptr @vert, align 8, !tbaa !41
  %i.y = sext i32 %0 to i64
  %i.z = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.aa = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.z, ptr noundef nonnull @.str.1, i64 noundef %i.y, i64 noundef 4) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

bb.i:                                             ; preds = %gv_calloc.exit
  %i.ab = tail call noalias ptr @calloc(i64 noundef %i.v, i64 noundef 4) #17 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %gv_calloc.exit68

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ae = shl nuw nsw i64 %i.v, 2
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.2, i64 noundef %i.ae) #15 ; 0 uses
  tail call fastcc void @graphviz_exit() #16
  unreachable

gv_calloc.exit68:                                 ; preds = %.thread.i67, %bb.i
  %i.ag = phi ptr [ %i.w, %.thread.i67 ], [ %i.ab, %bb.i ]
  store ptr %i.ag, ptr @mon, align 8, !tbaa !48
  %.not95 = icmp eq i64 %.val63, 0
  br i1 %.not95, label %inside_polygon.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %gv_calloc.exit68, %inside_polygon.exit.thread
  %.05784 = phi i64 [ %i.bx, %inside_polygon.exit.thread ], [ 0, %gv_calloc.exit68 ] ; 3 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !29
  %i.ai = tail call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %2, i64 noundef %.05784) #18
  %i.aj = getelementptr inbounds nuw [96 x i8], ptr %i.ah, i64 %i.ai ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !50 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 92
  %i.an = load i8, ptr %i.am, align 4, !tbaa !51, !range !52, !noundef !53
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %inside_polygon.exit.thread

bb.k:                                             ; preds = %.lr.ph
  %i.ap = load i32, ptr %i.aj, align 8, !tbaa !54
  %i.aq = icmp slt i32 %i.ap, 1
  %i.ar = icmp slt i32 %i.al, 1
  %or.cond.i = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond.i, label %inside_polygon.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.at = load i64, ptr %i.as, align 8, !tbaa !55
  %i.au = add i64 %i.at, -1
  %i.av = icmp ult i64 %i.au, -2
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !56
  %i.ay = add i64 %i.ax, -1
  %i.az = icmp ult i64 %i.ay, -2
  br i1 %i.az, label %bb.n, label %inside_polygon.exit

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !57
  %i.bc = add i64 %i.bb, -1
  %i.bd = icmp ult i64 %i.bc, -2
  br i1 %i.bd, label %inside_polygon.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !58
  %i.bg = add i64 %i.bf, -1
  %i.bh = icmp ult i64 %i.bg, -2
  br i1 %i.bh, label %inside_polygon.exit.thread, label %inside_polygon.exit

inside_polygon.exit:                              ; preds = %bb.m, %bb.o
  %i.bi = zext nneg i32 %i.al to i64
  %i.bj = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %i.bi ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bn = load double, ptr %i.bm, align 8         ; 2 uses
  %i.bo = load double, ptr %i.bj, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bq = load double, ptr %i.bp, align 8         ; 2 uses
  %i.br = fadd double %i.bq, f0x3E7AD7F29ABCAF48
  %i.bs = fcmp ogt double %i.bn, %i.br
  %i.bt = fadd double %i.bq, f0xBE7AD7F29ABCAF48
  %i.bu = fcmp uge double %i.bn, %i.bt
  %i.bv = fcmp ogt double %i.bl, %i.bo
  %narrow.i.i = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = select i1 %i.bs, i1 true, i1 %narrow.i.i
  br i1 %i.bw, label %inside_polygon.exit._crit_edge, label %inside_polygon.exit.thread

inside_polygon.exit.thread:                       ; preds = %bb.n, %bb.o, %bb.k, %.lr.ph, %inside_polygon.exit
  %i.bx = add nuw i64 %.05784, 1                  ; 3 uses
  %.val62 = load i64, ptr %i.a, align 8, !tbaa !18
  %i.by = icmp ult i64 %i.bx, %.val62
  br i1 %i.by, label %.lr.ph, label %inside_polygon.exit._crit_edge, !llvm.loop !59

inside_polygon.exit._crit_edge:                   ; preds = %inside_polygon.exit.thread, %inside_polygon.exit, %gv_calloc.exit68
  %.057.lcssa = phi i64 [ 0, %gv_calloc.exit68 ], [ %.05784, %inside_polygon.exit ], [ %i.bx, %inside_polygon.exit.thread ] ; 5 uses
  %.not86 = icmp slt i32 %0, 1
  br i1 %.not86, label %._crit_edge90, label %.lr.ph89

.lr.ph89:                                         ; preds = %inside_polygon.exit._crit_edge
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 6 uses
  %wide.trip.count = zext i32 %i.m to i64
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph89, %monchains_at.exit81
  %indvars.iv = phi i64 [ 1, %.lr.ph89 ], [ %indvars.iv.next, %monchains_at.exit81 ] ; 13 uses
  %i.cb = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 60
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !45
  %.val9.i = load i64, ptr %i.bz, align 8, !tbaa !18
end_hunk_0
