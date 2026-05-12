inline.NumInlined: 118
inline.NumDeleted: 43
begin_hunk_0_@WebPAnimEncoderAdd
define range(i32 0, 2) i32 @WebPAnimEncoderAdd(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %4 = alloca %struct.WebPConfig, align 4         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %.critedge, label %bb.b

end_hunk_0
begin_hunk_1_@WebPAnimEncoderAdd:bb.a
  br label %.critedge

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %4, ptr noundef nonnull align 4 dereferenceable(116) %3, i64 116, i1 false), !tbaa.struct !72
  br label %bb.ab

bb.y:                                             ; preds = %bb.u
  %i.ao = call i32 @WebPConfigInitInternal(ptr noundef nonnull %4, i32 noundef 0, float noundef 7.500000e+01, i32 noundef 528) #14
  %.not61 = icmp eq i32 %i.ao, 0
  br i1 %.not61, label %bb.z, label %bb.aa

end_hunk_1
begin_hunk_2_@WebPAnimEncoderAdd:bb.a
  br label %.critedge

bb.aa:                                            ; preds = %bb.y
  store i32 1, ptr %4, align 4, !tbaa !74
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
end_hunk_2
begin_hunk_3_@WebPAnimEncoderAdd:bb.a
  br i1 %.not.i64, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %CopyCurrentCanvas.exit
  %i.bg = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, i32 noundef 1, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not102.i = icmp eq i32 %i.bg, 0
  br i1 %.not102.i, label %bb.ae, label %.thread117.i

end_hunk_3
begin_hunk_4_@WebPAnimEncoderAdd:bb.a
  br i1 %.not91.not.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.bq = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, i32 noundef 0, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not100.i = icmp eq i32 %i.bq, 0
  br i1 %.not100.i, label %bb.ah, label %.thread117.i

end_hunk_4
begin_hunk_5_@WebPAnimEncoderAdd:bb.a
  br label %bb.av

bb.aj:                                            ; preds = %bb.af
  %i.bx = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, i32 noundef 0, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not92.i = icmp eq i32 %i.bx, 0
  br i1 %.not92.i, label %bb.ak, label %.thread117.i

bb.ak:                                            ; preds = %bb.aj
  %i.by = load i32, ptr %i.a, align 4, !tbaa !3
  %.not93.i = icmp eq i32 %i.by, 0
  br i1 %.not93.i, label %bb.al, label %.thread134.i

bb.al:                                            ; preds = %bb.ak
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.sroa.0.0.copyload = load <4 x i32>, ptr %i.bz, align 4
  %i.ca = call fastcc i32 @SetFrame(ptr noundef nonnull %0, ptr noundef nonnull readonly %4, i32 noundef 1, ptr noundef %i.bd, ptr noundef %i.a) ; 2 uses
  %.not94.i = icmp eq i32 %i.ca, 0
  br i1 %.not94.i, label %bb.am, label %.thread117.i

bb.am:                                            ; preds = %bb.al
  %i.cb = getelementptr i8, ptr %i.bd, i64 8
  %.val108.i = load i64, ptr %i.cb, align 8, !tbaa !84
  %i.cc = getelementptr i8, ptr %i.bd, i64 56
  %.val109.i = load i64, ptr %i.cc, align 8, !tbaa !85
  %i.cd = sub i64 %.val109.i, %.val108.i          ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !34
end_hunk_5
begin_hunk_6_@WebPAnimEncoderAdd:bb.a
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  br i1 %.not95.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store <4 x i32> %.sroa.0.0.copyload, ptr %i.bz, align 4
  br label %bb.av

.thread134.i:                                     ; preds = %bb.ak, %bb.ah
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !86
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !86
  br label %.thread117.i

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.ai, %bb.ae
  %i.de = load ptr, ptr %i.aq, align 8, !tbaa !75
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 576
  call void @WebPCopyPixels(ptr noundef %i.de, ptr noundef nonnull %i.df) #14
end_hunk_6
begin_hunk_7_@WebPAnimEncoderAdd:bb.a
  %.pre.i = load i32, ptr %i.a, align 4
  %i.dg = icmp eq i32 %.pre.i, 0
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !86
  %i.dj = add i64 %i.di, 1
  store i64 %i.dj, ptr %i.dh, align 8, !tbaa !86
  br i1 %i.dg, label %CacheFrame.exit.thread, label %.thread117.i

.thread117.i:                                     ; preds = %bb.aj, %bb.al, %bb.av, %.thread134.i, %bb.ag, %bb.ad
  %5 = phi i1 [ false, %bb.av ], [ true, %bb.ad ], [ true, %bb.ag ], [ false, %.thread134.i ], [ true, %bb.al ], [ true, %bb.aj ]
  %.3122.i = phi i32 [ 0, %bb.av ], [ %i.bg, %bb.ad ], [ %i.bq, %bb.ag ], [ 0, %.thread134.i ], [ %i.bx, %bb.aj ], [ %i.ca, %bb.al ] ; 3 uses
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %FrameRelease.exit.i, label %bb.aw

end_hunk_7
begin_hunk_8_@WebPAnimEncoderAdd:bb.a
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %FrameRelease.exit.i
  br i1 %5, label %CacheFrame.exit, label %CacheFrame.exit.thread

CacheFrame.exit:                                  ; preds = %bb.ay
  %i.dt = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 100, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %.3122.i) #14 ; 0 uses
end_hunk_8
begin_hunk_9_@WebPAnimEncoderAdd:bb.a

.critedge:                                        ; preds = %CacheFrame.exit, %bb.f, %bb.g, %bb.i, %CacheFrame.exit.thread, %bb.az, %bb.a, %bb.z, %bb.w, %bb.t, %bb.o, %bb.l
  %.1 = phi i32 [ 0, %CacheFrame.exit.thread ], [ 1, %bb.l ], [ 0, %bb.o ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.t ], [ 1, %bb.az ], [ 0, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %CacheFrame.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret i32 %.1
}

end_hunk_9
begin_hunk_10_@IncreasePreviousDuration:bb.a
  %i.g = getelementptr [104 x i8], ptr %.val36, i64 %.val37
  %i.h = getelementptr [104 x i8], ptr %i.g, i64 %i.d ; 13 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -80      ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !87
  %i.k = add nsw i32 %i.j, %1                     ; 3 uses
  %i.l = icmp sgt i32 %i.k, 16777215
  br i1 %i.l, label %bb.b, label %bb.i
end_hunk_10
begin_hunk_11_@IncreasePreviousDuration:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.a, ptr %2, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 28, ptr %i.m, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, ptr noundef nonnull align 16 dereferenceable(72) @__const.IncreasePreviousDuration.lossy_1x1_bytes, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr %i.b, ptr %3, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 72, ptr %i.n, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.p = load i32, ptr %i.o, align 4, !tbaa !89
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load i32, ptr %i.q, align 4, !tbaa !90
  %.not33 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not33, ptr %3, ptr %2
  br label %bb.d
end_hunk_11
begin_hunk_12_@IncreasePreviousDuration:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i32 0, ptr %i.t, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  store i32 3, ptr %i.u, align 4, !tbaa !91
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 0, ptr %i.v, align 8, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 0, ptr %i.x, align 8, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 0, ptr %i.y, align 4, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i32 %1, ptr %i.z, align 8, !tbaa !87
  %i.aa = icmp eq ptr %i.h, null
  br i1 %i.aa, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %., i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  %.not18.i = icmp eq i64 %i.ac, 0
  br i1 %.not18.i, label %bb.h, label %bb.f

end_hunk_12
begin_hunk_13_@IncreasePreviousDuration:bb.a

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr %., align 8, !tbaa !55
  %i.ag = load i64, ptr %i.ab, align 8, !tbaa !88 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.af, i64 %i.ag, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !88
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
end_hunk_13
begin_hunk_14_@IncreasePreviousDuration:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 0, ptr %i.ao, align 8, !tbaa !83
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ap, ptr noundef nonnull align 4 dereferenceable(16) @__const.IncreasePreviousDuration.rect, i64 16, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
end_hunk_14
begin_hunk_15_@IncreasePreviousDuration:bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i32 %i.k, ptr %i.i, align 8, !tbaa !87
  %i.aq = getelementptr i8, ptr %i.h, i64 -32
  store i32 %i.k, ptr %i.aq, align 8, !tbaa !97
  br label %bb.j
end_hunk_15
begin_hunk_16_@WebPAnimEncoderAssemble:bb.a

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.f = load i64, ptr %i.e, align 8, !tbaa !86   ; 3 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

end_hunk_16
begin_hunk_17_@OptimizeSingleFrame:bb.a
WebPUtilClearPic.exit.i.i:                        ; preds = %WebPUtilClearPic.exit.i.i.loopexit.unr-lcssa, %.lr.ph.us.i13.i.i.i.epil, %.lr.ph18.i9.i.i.i, %bb.e
  %i.az = load ptr, ptr %6, align 8, !tbaa !55
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !88
  %i.bc = call i32 @WebPGetFeaturesInternal(ptr noundef %i.az, i64 noundef %i.bb, ptr noundef nonnull %3, i32 noundef 528) #14
  %.not9.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not9.i.i, label %bb.f, label %DecodeFrameOntoCanvas.exit.thread.i
end_hunk_17
begin_hunk_18_@OptimizeSingleFrame:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !12
  %i.bz = load ptr, ptr %6, align 8, !tbaa !55
  %i.ca = load i64, ptr %i.ba, align 8, !tbaa !88
  %i.cb = call i32 @WebPDecode(ptr noundef %i.bz, i64 noundef %i.ca, ptr noundef nonnull %3) #14
  %.not11.i.not.i = icmp eq i32 %i.cb, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
end_hunk_18
begin_hunk_19_@OptimizeSingleFrame:bb.a
  %.val15.i = load i64, ptr %i.cg, align 8, !tbaa !119
  store ptr %.val14.i, ptr %7, align 8, !tbaa !55
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %.val15.i, ptr %i.ch, align 8, !tbaa !88
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !90
  %.not11.i = icmp eq i32 %i.cj, 0
  br i1 %.not11.i, label %FrameToFullCanvas.exit.thread, label %bb.i

end_hunk_19
begin_hunk_20_@OptimizeSingleFrame:bb.a
bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %5, align 8, !tbaa !117
  store ptr %.val.i, ptr %7, align 8, !tbaa !55
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !88
  br label %FrameToFullCanvas.exit.thread28

FrameToFullCanvas.exit.thread28:                  ; preds = %bb.k, %bb.j
end_hunk_20
begin_hunk_21_@OptimizeSingleFrame:bb.a

bb.m:                                             ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !88
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !88
  %i.cw = icmp ult i64 %i.ct, %i.cv
  br i1 %i.cw, label %bb.n, label %bb.o

end_hunk_21
begin_hunk_22_@SetFrame:bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !74     ; 3 uses
  %.not = icmp eq i32 %i.c, 0                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !90
  %i.f = icmp ne i32 %i.e, 0                      ; 2 uses
  %not..not = xor i1 %.not, true
  %. = select i1 %not..not, i1 true, i1 %i.f
end_hunk_22
begin_hunk_23_@SetFrame:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 16 dereferenceable(48) %i.cr, i64 48, i1 false), !tbaa.struct !130
  %.val.us.i = load ptr, ptr %5, align 16, !tbaa !117
  store ptr %.val.us.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %i.cm, ptr %i.fj, align 8, !tbaa !88
  %i.cs = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.i = load i64, ptr %i.fp, align 8, !tbaa !77
end_hunk_23
begin_hunk_24_@SetFrame:bb.a

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr i8, ptr %i.cu, i64 -176
  store i32 %i.fm, ptr %i.cw, align 8, !tbaa !94
  br label %.preheader.split.us.1.thread.i

bb.w:                                             ; preds = %bb.u
end_hunk_24
begin_hunk_25_@SetFrame:bb.a
  %i.db = getelementptr i8, ptr %i.cu, i64 %.sink14.i.us.i
  store i32 %i.fm, ptr %i.db, align 8, !tbaa !100
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.dc, i64 16, i1 false), !tbaa.struct !96
  br i1 %.not43.1.i, label %.preheader.split.us.2.i, label %.thread.i

bb.x:                                             ; preds = %.preheader.split.us.1.i
end_hunk_25
begin_hunk_26_@SetFrame:bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.val45.us.1.i = load i64, ptr %i.df, align 16, !tbaa !119
  store ptr %.val.us.1.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.us.1.i, ptr %i.fj, align 8, !tbaa !88
  %i.dg = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.1.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.1.i = load i64, ptr %i.fp, align 8, !tbaa !77
end_hunk_26
begin_hunk_27_@SetFrame:bb.a

bb.z:                                             ; preds = %bb.y
  %i.dk = getelementptr i8, ptr %i.di, i64 -176
  store i32 %i.fm, ptr %i.dk, align 8, !tbaa !94
  br label %SetPreviousDisposeMethod.exit.us.1.i

bb.aa:                                            ; preds = %bb.y
end_hunk_27
begin_hunk_28_@SetFrame:bb.a
  %i.do = getelementptr i8, ptr %i.di, i64 %.sink14.i.us.1.i
  store i32 %i.fm, ptr %i.do, align 8, !tbaa !100
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i64 16, i1 false), !tbaa.struct !96
  br label %.preheader.split.us.2.i

.preheader.split.us.2.i:                          ; preds = %SetPreviousDisposeMethod.exit.us.1.i, %.thread.i, %.preheader.split.us.1.thread.i, %.preheader.split.us.1.i
end_hunk_28
begin_hunk_29_@SetFrame:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 216
  %.val45.us.2.i = load i64, ptr %i.dt, align 8, !tbaa !119
  store ptr %.val.us.2.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.us.2.i, ptr %i.fj, align 8, !tbaa !88
  %i.du = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.2.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.2.i = load i64, ptr %i.fp, align 8, !tbaa !77
end_hunk_29
begin_hunk_30_@SetFrame:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.dy = getelementptr i8, ptr %i.dw, i64 -176
  store i32 %i.fm, ptr %i.dy, align 8, !tbaa !94
  br label %.preheader.split.us.3.thread.i

bb.af:                                            ; preds = %bb.ad
end_hunk_30
begin_hunk_31_@SetFrame:bb.a
  %i.ed = getelementptr i8, ptr %i.dw, i64 %.sink14.i.us.2.i
  store i32 %i.fm, ptr %i.ed, align 8, !tbaa !100
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.ee, i64 16, i1 false), !tbaa.struct !96
  %i.ef = load i32, ptr %i.fc, align 8, !tbaa !128
  %.not.us.355.i = icmp eq i32 %i.ef, 0
  br i1 %.not.us.355.i, label %PickBestCandidate.exit, label %.thread56.i
end_hunk_31
begin_hunk_32_@SetFrame:bb.a
  %.val.us.3.i = load ptr, ptr %i.fb, align 8, !tbaa !117
  %.val45.us.3.i = load i64, ptr %i.fe, align 16, !tbaa !119
  store ptr %.val.us.3.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.us.3.i, ptr %i.fj, align 8, !tbaa !88
  %i.ei = load i64, ptr %i.fn, align 8, !tbaa !67
  %.val.i.us.3.i = load ptr, ptr %i.fo, align 8, !tbaa !39
  %.val13.i.us.3.i = load i64, ptr %i.fp, align 8, !tbaa !77
end_hunk_32
begin_hunk_33_@SetFrame:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.em = getelementptr i8, ptr %i.ek, i64 -176
  store i32 %i.fm, ptr %i.em, align 8, !tbaa !94
  br label %SetPreviousDisposeMethod.exit.us.3.i

bb.aj:                                            ; preds = %bb.ah
end_hunk_33
begin_hunk_34_@SetFrame:bb.a
  %i.eq = getelementptr i8, ptr %i.ek, i64 %.sink14.i.us.3.i
  store i32 %i.fm, ptr %i.eq, align 8, !tbaa !100
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false), !tbaa.struct !96
  br label %PickBestCandidate.exit

bb.ak:                                            ; preds = %bb.r
end_hunk_34
begin_hunk_35_@SetFrame:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fi, ptr noundef nonnull align 16 dereferenceable(48) %i.fu, i64 48, i1 false), !tbaa.struct !130
  %.val.i = load ptr, ptr %5, align 16, !tbaa !117
  store ptr %.val.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %i.cm, ptr %i.fj, align 8, !tbaa !88
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !96
  br i1 %.not43.1.i, label %.preheader.split.2.i, label %.thread58.i

bb.ap:                                            ; preds = %.preheader.split.1.i
end_hunk_35
begin_hunk_36_@SetFrame:bb.a
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 112
  %.val45.1.i = load i64, ptr %i.fy, align 16, !tbaa !119
  store ptr %.val.1.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.1.i, ptr %i.fj, align 8, !tbaa !88
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !96
  br label %.preheader.split.2.i

.preheader.split.2.i:                             ; preds = %bb.aq, %.thread58.i, %.preheader.split.1.thread.i, %.preheader.split.1.i
end_hunk_36
begin_hunk_37_@SetFrame:bb.a
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 216
  %.val45.2.i = load i64, ptr %i.ge, align 8, !tbaa !119
  store ptr %.val.2.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.2.i, ptr %i.fj, align 8, !tbaa !88
  %i.gf = getelementptr inbounds nuw i8, ptr %5, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 16 dereferenceable(16) %i.gf, i64 16, i1 false), !tbaa.struct !96
  %i.gg = load i32, ptr %i.fc, align 8, !tbaa !128
  %.not.359.i = icmp eq i32 %i.gg, 0
  br i1 %.not.359.i, label %PickBestCandidate.exit, label %.thread60.i
end_hunk_37
begin_hunk_38_@SetFrame:bb.a
  %.val.3.i = load ptr, ptr %i.fb, align 8, !tbaa !117
  %.val45.3.i = load i64, ptr %i.fe, align 16, !tbaa !119
  store ptr %.val.3.i, ptr %i.fi, align 8, !tbaa !55
  store i64 %.val45.3.i, ptr %i.fj, align 8, !tbaa !88
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i64 16, i1 false), !tbaa.struct !96
  br label %PickBestCandidate.exit

bb.av:                                            ; preds = %DisposeFrameRectangle.exit, %bb.e, %bb.q, %bb.o
end_hunk_38
begin_hunk_39_@GetSubRects:bb.a

GetSubRect.exit.thread:                           ; preds = %IsEmptyRect.exit.thread.i, %GetSubRect.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !96
  %i.fa = load i32, ptr %i.i, align 4, !tbaa !125
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 296
  br i1 %or.cond.i, label %bb.m, label %GetSubRect.exit.thread.MinimizeChangeRectangle.exit65_crit_edge
end_hunk_39
begin_hunk_40_@GenerateCandidates:bb.a
  %i.do = phi i1 [ false, %CopyCurrentCanvas.exit ], [ %i.ax, %.thread99 ], [ %i.ax, %.lr.ph35.i ], [ %i.ax, %PixelsAreSimilar.exit.us.i ], [ %i.ax, %bb.g ], [ %i.ax, %bb.h ], [ %i.ax, %bb.i ], [ %i.ax, %._crit_edge.us.i79 ] ; 3 uses
  %i.dp = phi i1 [ false, %CopyCurrentCanvas.exit ], [ true, %.thread99 ], [ true, %.lr.ph35.i ], [ false, %PixelsAreSimilar.exit.us.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.i ], [ true, %._crit_edge.us.i79 ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !90
  %.not67 = icmp eq i32 %i.dr, 0
  br i1 %.not67, label %bb.j, label %bb.k

end_hunk_40
begin_hunk_41_@GenerateCandidates:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %9, ptr noundef nonnull readonly align 4 dereferenceable(116) %6, i64 116, i1 false), !tbaa.struct !72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i8 0, i64 104, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ge, i64 16, i1 false), !tbaa.struct !96
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 3, ptr %i.gg, align 4, !tbaa !142
  %i.gh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
end_hunk_41
begin_hunk_42_@GenerateCandidates:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %8, ptr noundef nonnull readonly align 4 dereferenceable(116) %7, i64 116, i1 false), !tbaa.struct !72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, i8 0, i64 104, i1 false)
  %i.uu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uu, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.ut, i64 16, i1 false), !tbaa.struct !96
  %i.uv = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 3, ptr %i.uv, align 4, !tbaa !142
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
end_hunk_42
begin_hunk_43_@llvm.assume
!81 = !{!20, !29, i64 1120}
!82 = !{!20, !4, i64 1140}
!83 = !{!20, !4, i64 1152}
!84 = !{!79, !29, i64 8}
!85 = !{!79, !29, i64 56}
!86 = !{!20, !29, i64 1168}
!87 = !{!79, !4, i64 24}
!88 = !{!56, !29, i64 8}
!89 = !{!20, !4, i64 68}
!90 = !{!20, !4, i64 28}
!91 = !{!79, !4, i64 28}
!92 = !{!79, !4, i64 16}
!93 = !{!79, !4, i64 20}
!94 = !{!79, !4, i64 32}
!95 = !{!79, !4, i64 36}
!96 = !{i64 0, i64 4, !3, i64 4, i64 4, !3, i64 8, i64 4, !3, i64 12, i64 4, !3}
!97 = !{!79, !4, i64 72}
!98 = !{!80, !4, i64 16}
!99 = !{!80, !4, i64 20}
end_hunk_43
