inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8292
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %i.n = trunc i32 %i.m to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.n, ptr %i.o, align 1, !tbaa !74
  %i.p = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.p, ptr %i.q, align 2, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.s = load i32, ptr %i.r, align 8, !tbaa !65
  %i.t = tail call i32 @Swap32NtoB(i32 noundef %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.t, ptr %i.u, align 4, !tbaa !76
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8276
  %i.w = load i32, ptr %i.v, align 4, !tbaa !77
  %i.x = tail call i32 @Swap32NtoB(i32 noundef %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.x, ptr %i.y, align 4, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !79
  %i.ab = tail call i32 @Swap32NtoB(i32 noundef %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !80
  ret void
}

declare i32 @Swap32NtoB(i32 noundef) local_unnamed_addr #7

declare zeroext i16 @Swap16NtoB(i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 24, 49) i32 @_ZN11ALACEncoder18GetMagicCookieSizeEj(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8300) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = icmp ugt i32 %1, 2
  %. = select i1 %i.a, i32 48, i32 24
  ret i32 %.
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ALACEncoder14GetMagicCookieEPvPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8300) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8284
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27
  %i.c = tail call i32 @Swap32NtoB(i32 noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !10
  %i.f = trunc i16 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8292
  %i.h = load i32, ptr %i.g, align 4, !tbaa !73   ; 2 uses
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8280
  %i.l = load i32, ptr %i.k, align 8, !tbaa !65
  %i.m = tail call i32 @Swap32NtoB(i32 noundef %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8276
  %i.o = load i32, ptr %i.n, align 4, !tbaa !77
  %i.p = tail call i32 @Swap32NtoB(i32 noundef %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8296
  %i.r = load i32, ptr %i.q, align 8, !tbaa !79
  %i.s = tail call i32 @Swap32NtoB(i32 noundef %i.r)
  %i.t = icmp ugt i8 %i.i, 2                      ; 2 uses
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.mask = and i32 %i.h, 255
  %i.u = add nsw i32 %.mask, -1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZL21ALACChannelLayoutTags, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.09.0 = phi i32 [ %i.x, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ 48, %bb.b ], [ 24, %bb.a ]      ; 3 uses
  %i.y = load i32, ptr %2, align 4, !tbaa !4
  %.not = icmp ult i32 %i.y, %.0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.c, ptr %1, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.f, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 40, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 10, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 14, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 9
  store i8 %i.i, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i16 %i.j, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.m, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %i.p, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 %i.s, ptr %.sroa.16.0..sroa_idx, align 1
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.z, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom, i64 3, i1 false)
  %.sroa.4.0..0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 24, ptr %.sroa.4.0..0.2.sroa_idx, align 1
  %.sroa.5.0..0.2.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i64 1851877475, ptr %.sroa.5.0..0.2.sroa_idx, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.sroa.09.0, ptr %i.aa, align 1
  %.sroa.510.0..0.4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %.sroa.510.0..0.4.sroa_idx, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %storemerge = phi i32 [ %.0, %bb.d ], [ %.0, %bb.e ], [ 0, %bb.c ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 -108, 1) i32 @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription(ptr noundef nonnull align 8 dereferenceable(8300) initializes((12, 28), (32, 80), (8288, 8300)) %0, ptr nofree noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !81
  %i.b = fptoui double %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8296
  store i32 %i.b, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !60   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8292 ; 3 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82
  %switch.tableidx = add i32 %i.h, -1             ; 2 uses
  %i.i = icmp ult i32 %switch.tableidx, 4
  br i1 %i.i, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.j = shl nuw nsw i32 %switch.tableidx, 4
  %switch.shiftamt = zext nneg i32 %i.j to i64
  %switch.downshift = lshr i64 9007302335266832, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %switch.masked, ptr %i.k, align 8, !tbaa !10
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, i8 0, i64 16, i1 false), !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8284 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27   ; 2 uses
  %i.o = mul i32 %i.e, 5
  %i.p = mul i32 %i.o, %i.n
  %i.q = add i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8288 ; 2 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !29
  %i.s = zext i32 %i.n to i64
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias ptr @calloc(i64 noundef %i.t, i64 noundef 1) #16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !19
  %i.w = load i32, ptr %i.m, align 4, !tbaa !27
  %i.x = zext i32 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = tail call noalias ptr @calloc(i64 noundef %i.y, i64 noundef 1) #16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !27
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = tail call noalias ptr @calloc(i64 noundef %i.ad, i64 noundef 1) #16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !21
  %i.ag = load i32, ptr %i.m, align 4, !tbaa !27
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = tail call noalias ptr @calloc(i64 noundef %i.ai, i64 noundef 1) #16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !22
  %i.al = load i32, ptr %i.m, align 4, !tbaa !27
  %i.am = shl i32 %i.al, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = shl nuw nsw i64 %i.an, 1
  %i.ap = tail call noalias ptr @calloc(i64 noundef %i.ao, i64 noundef 1) #16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !23
  %i.ar = load i32, ptr %i.r, align 8, !tbaa !29
  %i.as = zext i32 %i.ar to i64
  %i.at = tail call noalias ptr @calloc(i64 noundef %i.as, i64 noundef 1) #16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.at, ptr %i.au, align 8, !tbaa !24
  %i.av = insertelement <4 x ptr> poison, ptr %i.u, i64 0
  %i.aw = insertelement <4 x ptr> %i.av, ptr %i.z, i64 1
  %i.ax = insertelement <4 x ptr> %i.aw, ptr %i.ae, i64 2
  %i.ay = insertelement <4 x ptr> %i.ax, ptr %i.aj, i64 3
  %i.az = icmp eq <4 x ptr> %i.ay, splat (ptr null)
  %i.ba = bitcast <4 x i1> %i.az to i4
  %.not = icmp eq i4 %i.ba, 0
  br i1 %.not, label %2, label %.loopexit

2:                                                ; preds = %bb.b
  %.not18 = icmp eq ptr %i.ap, null
  %.not19 = icmp eq ptr %i.at, null
  %or.cond = or i1 %.not18, %.not19
  br i1 %or.cond, label %.loopexit, label %.preheader24

.preheader24:                                     ; preds = %2
  %i.bb = load i32, ptr %i.f, align 4, !tbaa !73
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4176
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [512 x i8], ptr %i.bd, i64 %indvars.iv ; 16 uses
  %i.bg = getelementptr inbounds nuw [512 x i8], ptr %i.be, i64 %indvars.iv ; 16 uses
  tail call void @init_coefs(ptr noundef nonnull %i.bf, i32 noundef 9, i32 noundef 16)
  tail call void @init_coefs(ptr noundef nonnull %i.bg, i32 noundef 9, i32 noundef 16)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  tail call void @init_coefs(ptr noundef nonnull %i.bh, i32 noundef 9, i32 noundef 16)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  tail call void @init_coefs(ptr noundef nonnull %i.bi, i32 noundef 9, i32 noundef 16)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  tail call void @init_coefs(ptr noundef nonnull %i.bj, i32 noundef 9, i32 noundef 16)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  tail call void @init_coefs(ptr noundef nonnull %i.bk, i32 noundef 9, i32 noundef 16)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  tail call void @init_coefs(ptr noundef nonnull %i.bl, i32 noundef 9, i32 noundef 16)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  tail call void @init_coefs(ptr noundef nonnull %i.bm, i32 noundef 9, i32 noundef 16)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  tail call void @init_coefs(ptr noundef nonnull %i.bn, i32 noundef 9, i32 noundef 16)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  tail call void @init_coefs(ptr noundef nonnull %i.bo, i32 noundef 9, i32 noundef 16)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 160
  tail call void @init_coefs(ptr noundef nonnull %i.bp, i32 noundef 9, i32 noundef 16)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 160
  tail call void @init_coefs(ptr noundef nonnull %i.bq, i32 noundef 9, i32 noundef 16)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 192
  tail call void @init_coefs(ptr noundef nonnull %i.br, i32 noundef 9, i32 noundef 16)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bg, i64 192
  tail call void @init_coefs(ptr noundef nonnull %i.bs, i32 noundef 9, i32 noundef 16)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  tail call void @init_coefs(ptr noundef nonnull %i.bt, i32 noundef 9, i32 noundef 16)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 224
  tail call void @init_coefs(ptr noundef nonnull %i.bu, i32 noundef 9, i32 noundef 16)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bf, i64 256
  tail call void @init_coefs(ptr noundef nonnull %i.bv, i32 noundef 9, i32 noundef 16)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 256
  tail call void @init_coefs(ptr noundef nonnull %i.bw, i32 noundef 9, i32 noundef 16)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bf, i64 288
  tail call void @init_coefs(ptr noundef nonnull %i.bx, i32 noundef 9, i32 noundef 16)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bg, i64 288
  tail call void @init_coefs(ptr noundef nonnull %i.by, i32 noundef 9, i32 noundef 16)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bf, i64 320
  tail call void @init_coefs(ptr noundef nonnull %i.bz, i32 noundef 9, i32 noundef 16)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bg, i64 320
  tail call void @init_coefs(ptr noundef nonnull %i.ca, i32 noundef 9, i32 noundef 16)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 352
  tail call void @init_coefs(ptr noundef nonnull %i.cb, i32 noundef 9, i32 noundef 16)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 352
  tail call void @init_coefs(ptr noundef nonnull %i.cc, i32 noundef 9, i32 noundef 16)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bf, i64 384
  tail call void @init_coefs(ptr noundef nonnull %i.cd, i32 noundef 9, i32 noundef 16)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bg, i64 384
  tail call void @init_coefs(ptr noundef nonnull %i.ce, i32 noundef 9, i32 noundef 16)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 416
  tail call void @init_coefs(ptr noundef nonnull %i.cf, i32 noundef 9, i32 noundef 16)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bg, i64 416
  tail call void @init_coefs(ptr noundef nonnull %i.cg, i32 noundef 9, i32 noundef 16)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 448
  tail call void @init_coefs(ptr noundef nonnull %i.ch, i32 noundef 9, i32 noundef 16)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bg, i64 448
  tail call void @init_coefs(ptr noundef nonnull %i.ci, i32 noundef 9, i32 noundef 16)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bf, i64 480
  tail call void @init_coefs(ptr noundef nonnull %i.cj, i32 noundef 9, i32 noundef 16)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bg, i64 480
  tail call void @init_coefs(ptr noundef nonnull %i.ck, i32 noundef 9, i32 noundef 16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cl = load i32, ptr %i.f, align 4, !tbaa !73
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %.preheader, label %.loopexit, !llvm.loop !83

.loopexit:                                        ; preds = %.preheader, %.preheader24, %bb.b, %2
  %.014 = phi i32 [ -108, %bb.b ], [ -108, %2 ], [ 0, %.preheader24 ], [ 0, %.preheader ]
  ret i32 %.014
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

declare void @init_coefs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8300) initializes((8, 10)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !84
  %.not = icmp eq i32 %i.b, 1819304813
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !82
  %i.e = and i32 %i.d, 1
  %.not6 = icmp eq i32 %i.e, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !85   ; 3 uses
  %i.h = icmp ult i32 %i.g, 17
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 16, ptr %i.i, align 8, !tbaa !10
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %i.g, 21
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 20, ptr %i.k, align 8, !tbaa !10
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = icmp ult i32 %i.g, 25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i16 24, ptr %i.m, align 8, !tbaa !10
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i16 32, ptr %i.m, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTS11ALACEncoder", !12, i64 8, !13, i64 10, !6, i64 12, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !16, i64 64, !17, i64 72, !6, i64 80, !6, i64 4176, !5, i64 8272, !5, i64 8276, !5, i64 8280, !5, i64 8284, !5, i64 8288, !5, i64 8292, !5, i64 8296}
!12 = !{!"short", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"p1 int", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 short", !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!11, !13, i64 10}
!19 = !{!11, !14, i64 32}
!20 = !{!11, !14, i64 40}
!21 = !{!11, !14, i64 48}
!22 = !{!11, !14, i64 56}
!23 = !{!11, !16, i64 64}
!24 = !{!11, !17, i64 72}
!25 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 4, !4, i64 20, i64 4, !4}
!26 = !{!17, !17, i64 0}
!27 = !{!11, !5, i64 8284}
!28 = !{!12, !12, i64 0}
!29 = !{!11, !5, i64 8288}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !31}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = distinct !{!38, !31}
!39 = distinct !{!39, !31}
!40 = distinct !{!40, !31}
!41 = distinct !{!41, !31, !42, !43}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !31, !42, !43}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !31, !42}
!48 = distinct !{!48, !31, !42, !43}
!49 = distinct !{!49, !31, !43, !42}
!50 = distinct !{!50, !31, !42}
!51 = distinct !{!51, !31}
!52 = distinct !{!52, !31}
!53 = distinct !{!53, !31}
!54 = distinct !{!54, !31}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = !{!58, !5, i64 16}
!58 = !{!"_ZTS22AudioFormatDescription", !59, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!59 = !{!"double", !6, i64 0}
!60 = !{!58, !5, i64 28}
!61 = !{i8 0, i8 2}
!62 = !{}
!63 = distinct !{!63, !31}
!64 = !{!11, !5, i64 8272}
!65 = !{!11, !5, i64 8280}
!66 = !{!67, !5, i64 0}
!67 = !{!"_ZTS18ALACSpecificConfig", !5, i64 0, !6, i64 4, !6, i64 5, !6, i64 6, !6, i64 7, !6, i64 8, !6, i64 9, !12, i64 10, !5, i64 12, !5, i64 16, !5, i64 20}
!68 = !{!67, !6, i64 4}
!69 = !{!67, !6, i64 5}
!70 = !{!67, !6, i64 6}
!71 = !{!67, !6, i64 8}
!72 = !{!67, !6, i64 7}
!73 = !{!11, !5, i64 8292}
!74 = !{!67, !6, i64 9}
!75 = !{!67, !12, i64 10}
!76 = !{!67, !5, i64 12}
!77 = !{!11, !5, i64 8276}
!78 = !{!67, !5, i64 16}
!79 = !{!11, !5, i64 8296}
!80 = !{!67, !5, i64 20}
!81 = !{!58, !59, i64 0}
!82 = !{!58, !5, i64 12}
!83 = distinct !{!83, !31}
!84 = !{!58, !5, i64 8}
!85 = !{!58, !5, i64 32}
end_hunk_0
