Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/leica?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6LibRaw18parseLeicaLensNameEj:bb.a
  %.not14 = icmp eq i8 %i.k, 45
  br i1 %.not14, label %.tail, label %.tail8.thread

.tail:                                            ; preds = %sub_1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1210
  %i.m = load i8, ptr %i.l, align 2
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %.tail8.thread.sink.split, label %.tail8.thread

sub_110:                                          ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1209
  %i.p = load i8, ptr %i.o, align 1
  %.not16 = icmp eq i8 %i.p, 42
  br i1 %.not16, label %.tail8, label %.tail8.thread

.tail8:                                           ; preds = %sub_110
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1210
  %i.r = load i8, ptr %i.q, align 2
  %i.s = icmp eq i8 %i.r, 42
  br i1 %i.s, label %.tail8.thread.sink.split, label %.tail8.thread

.tail8.thread.sink.split:                         ; preds = %bb.b, %bb.c, %.tail, %.tail8, %bb.a
  store i32 4271950, ptr %i.a, align 8
  br label %.tail8.thread

.tail8.thread:                                    ; preds = %.tail8.thread.sink.split, %sub_0, %.tail, %sub_1, %sub_110, %.tail8
  %.0 = phi i32 [ 1, %sub_1 ], [ 1, %.tail ], [ 1, %.tail8 ], [ 1, %sub_0 ], [ 1, %sub_110 ], [ 0, %.tail8.thread.sink.split ]
  ret i32 %.0
}

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6LibRaw28parseLeicaInternalBodySerialEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5174 ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 4271950, ptr %i.a, align 2
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %i.e) ; 0 uses
  %i.g = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(13) @.str.4, i64 noundef 12) #8
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 48, ptr %i.a, align 2, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5175
  store i8 0, ptr %i.h, align 1, !tbaa !74
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.a, i64 noundef %i.b)
  %i.j = icmp eq i64 %i.i, 13
  br i1 %i.j, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5177
  %i.l = load i8, ptr %i.k, align 1, !tbaa !74
  %i.m = sext i8 %i.l to i32
  %isdigittmp = add nsw i32 %i.m, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %.preheader.1, label %.loopexit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5178
  %i.o = load i8, ptr %i.n, align 2, !tbaa !74
  %i.p = sext i8 %i.o to i32
  %isdigittmp.1 = add nsw i32 %i.p, -48
  %isdigit.1 = icmp ult i32 %isdigittmp.1, 10
  br i1 %isdigit.1, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5179
  %i.r = load i8, ptr %i.q, align 1, !tbaa !74
  %i.s = sext i8 %i.r to i32
  %isdigittmp.2 = add nsw i32 %i.s, -48
  %isdigit.2 = icmp ult i32 %isdigittmp.2, 10
  br i1 %isdigit.2, label %.preheader.3, label %.loopexit

.preheader.3:                                     ; preds = %.preheader.2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5180
  %i.u = load i8, ptr %i.t, align 4, !tbaa !74
  %i.v = sext i8 %i.u to i32
  %isdigittmp.3 = add nsw i32 %i.v, -48
  %isdigit.3 = icmp ult i32 %isdigittmp.3, 10
  br i1 %isdigit.3, label %.preheader.4, label %.loopexit

.preheader.4:                                     ; preds = %.preheader.3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5181
  %i.x = load i8, ptr %i.w, align 1, !tbaa !74
  %i.y = sext i8 %i.x to i32
  %isdigittmp.4 = add nsw i32 %i.y, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  br i1 %isdigit.4, label %.preheader.5, label %.loopexit

.preheader.5:                                     ; preds = %.preheader.4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 5182
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !74
  %i.ab = sext i8 %i.aa to i32
  %isdigittmp.5 = add nsw i32 %i.ab, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  br i1 %isdigit.5, label %.preheader.6, label %.loopexit

.preheader.6:                                     ; preds = %.preheader.5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5183
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !74
  %i.ae = sext i8 %i.ad to i32
  %isdigittmp.6 = add nsw i32 %i.ae, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  br i1 %isdigit.6, label %.preheader.7, label %.loopexit

.preheader.7:                                     ; preds = %.preheader.6
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5184
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !74
  %i.ah = sext i8 %i.ag to i32
  %isdigittmp.7 = add nsw i32 %i.ah, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  br i1 %isdigit.7, label %.preheader.8, label %.loopexit

.preheader.8:                                     ; preds = %.preheader.7
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5185
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !74
  %i.ak = sext i8 %i.aj to i32
  %isdigittmp.8 = add nsw i32 %i.ak, -48
  %isdigit.8 = icmp ult i32 %isdigittmp.8, 10
  br i1 %isdigit.8, label %.preheader.9, label %.loopexit

.preheader.9:                                     ; preds = %.preheader.8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 5186
  %i.am = load i8, ptr %i.al, align 2, !tbaa !74
  %i.an = sext i8 %i.am to i32
  %isdigittmp.9 = add nsw i32 %i.an, -48
  %isdigit.9 = icmp ult i32 %isdigittmp.9, 10
  br i1 %isdigit.9, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.preheader.9
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5189
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 5183 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 1
  store i32 %i.aq, ptr %i.ao, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5186
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5181
  %i.at = load i16, ptr %i.as, align 1
  store i16 %i.at, ptr %i.ar, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5179
  %i.av = load i16, ptr %i.au, align 1
  store i16 %i.av, ptr %i.ap, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5180
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 5177 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 1
  store i16 %i.ay, ptr %i.aw, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 5188
  store i8 32, ptr %i.az, align 4, !tbaa !74
  store i8 32, ptr %i.ax, align 1, !tbaa !74
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5185
  store i8 47, ptr %i.ba, align 1, !tbaa !74
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 5182
  store i8 47, ptr %i.bb, align 2, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5178
  store i16 12338, ptr %i.bc, align 2
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.preheader.1, %.preheader.2, %.preheader.3, %.preheader.4, %.preheader.5, %.preheader.6, %.preheader.7, %.preheader.8, %.preheader.9, %bb.e, %bb.f, %bb.d, %bb.b
  %.010 = phi i32 [ 2, %bb.f ], [ 0, %bb.b ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %.preheader.9 ], [ 1, %.preheader.8 ], [ 1, %.preheader.7 ], [ 1, %.preheader.6 ], [ 1, %.preheader.5 ], [ 1, %.preheader.4 ], [ 1, %.preheader.3 ], [ 1, %.preheader.2 ], [ 1, %.preheader.1 ], [ 1, %.preheader.preheader ]
  ret i32 %.010
}

declare noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19parseLeicaMakernoteExij(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 19 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca [10 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 381728 ; 5 uses
  %i.h = load i16, ptr %i.g, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !85
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i), !call_target !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.e, i8 0, i64 10, i1 false)
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !78   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.e, i64 noundef 1, i64 noundef 10), !call_target !101 ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  store i8 0, ptr %i.s, align 1, !tbaa !74
  %i.t = load i32, ptr %i.e, align 1
  %i.u = xor i32 %i.t, 1128875340
  %i.v = getelementptr i8, ptr %i.e, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = xor i32 %i.x, 65
  %i.z = or i32 %i.u, %i.y
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %.not = icmp eq i32 %i.ab, 0
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !78  ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !85
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ag = call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef -10, i32 noundef 1), !call_target !104 ; 0 uses
  %i.ah = icmp eq i32 %2, 13312
  %spec.select = select i1 %i.ah, i32 13312, i32 -2
  br label %.thread110

bb.c:                                             ; preds = %bb.a
  %i.ai = call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef -2, i32 noundef 1), !call_target !104 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %4 = load i16, ptr %i.aj, align 1
  %5 = call i16 @llvm.bswap.i16(i16 %4)           ; 2 uses
  %i.ak = zext i16 %5 to i32                      ; 6 uses
  switch i16 %5, label %.thread [
    i16 0, label %sub_0
    i16 2560, label %.thread110
    i16 2304, label %.thread110
    i16 2048, label %.thread110
    i16 767, label %.thread110
    i16 512, label %.thread110
  ]

sub_0:                                            ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.am = load i8, ptr %i.al, align 4
  %.not122 = icmp eq i8 %i.am, 77
  br i1 %.not122, label %.tail, label %sub_0117

.tail:                                            ; preds = %sub_0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = icmp eq i8 %i.ao, 56
  br i1 %i.ap, label %.thread, label %sub_0117

sub_0117:                                         ; preds = %sub_0, %.tail
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.ar = load i8, ptr %i.aq, align 2
  %.not123 = icmp eq i8 %i.ar, 77
  br i1 %.not123, label %.tail116, label %.thread110

.tail116:                                         ; preds = %sub_0117
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 56
  br i1 %i.au, label %.thread, label %.thread110

.thread:                                          ; preds = %bb.c, %.tail116, %.tail
  %.072109 = phi i32 [ %i.ak, %bb.c ], [ -3, %.tail ], [ -3, %.tail116 ]
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av), !call_target !105
  %i.ba = add nsw i64 %i.az, -8
  br label %.thread110

.thread110:                                       ; preds = %bb.b, %sub_0117, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %.tail116, %.thread
  %.1 = phi i32 [ %spec.select, %bb.b ], [ 0, %.tail116 ], [ %.072109, %.thread ], [ %i.ak, %bb.c ], [ %i.ak, %bb.c ], [ %i.ak, %bb.c ], [ %i.ak, %bb.c ], [ %i.ak, %bb.c ], [ 0, %sub_0117 ] ; 2 uses
  %.0 = phi i64 [ %1, %bb.b ], [ %1, %.tail116 ], [ %i.ba, %.thread ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %bb.c ], [ %1, %sub_0117 ] ; 3 uses
  call void @_ZN6LibRaw20setLeicaBodyFeaturesEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %.1)
  %i.bb = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.bc = icmp ugt i16 %i.bb, 1000
  br i1 %i.bc, label %bb.bj, label %bb.d

bb.d:                                             ; preds = %.thread110
  %i.bd = load i16, ptr %i.g, align 8, !tbaa !83
  %.not87121 = icmp eq i16 %i.bb, 0
  br i1 %.not87121, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.be = zext nneg i16 %i.bb to i32
  %i.bf = shl i32 %2, 16                          ; 2 uses
  %i.bg = shl nsw i64 %i.m, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 768288 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 768304
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1492 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 192696 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1354 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1338 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 4800 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 8 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1209 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1210 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5104 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5108
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 5098
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 153252
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 153264
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 153256
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 153260
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN6LibRaw16parseLeicaLensIDEv.exit
  %.in = phi i32 [ %i.be, %.lr.ph ], [ %i.cd, %_ZN6LibRaw16parseLeicaLensIDEv.exit ]
  %i.cd = add nsw i32 %.in, -1                    ; 2 uses
  store i16 %i.bd, ptr %i.g, align 8, !tbaa !83
  call void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !85
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ce), !call_target !105
  %i.cj = load i32, ptr %i.c, align 4, !tbaa !106 ; 3 uses
  %i.ck = icmp ugt i32 %i.cj, 8
  br i1 %i.ck, label %bb.f, label %.thread112

.thread112:                                       ; preds = %bb.e
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !106
  %i.cm = or i32 %i.cl, %i.bf
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !106
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cn = zext i32 %i.cj to i64
  %i.co = add nsw i64 %i.ci, %i.cn
  %i.cp = icmp sgt i64 %i.co, %i.bg
  br i1 %i.cp, label %_ZN6LibRaw16parseLeicaLensIDEv.exit, label %bb.g, !llvm.loop !82

bb.g:                                             ; preds = %bb.f
  %i.cq = load i32, ptr %i.a, align 4, !tbaa !106
  %i.cr = or i32 %i.cq, %i.bf
  store i32 %i.cr, ptr %i.a, align 4, !tbaa !106
  %i.cs = icmp ugt i32 %i.cj, 104857600
  br i1 %i.cs, label %_ZN6LibRaw16parseLeicaLensIDEv.exit, label %bb.h

bb.h:                                             ; preds = %.thread112, %bb.g
  %i.ct = load ptr, ptr %i.bh, align 8, !tbaa !108
  %.not88 = icmp eq ptr %i.ct, null
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cu = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !85
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cu), !call_target !105
  %i.cz = load ptr, ptr %i.bh, align 8, !tbaa !108
  %i.da = load ptr, ptr %i.bi, align 8, !tbaa !109
  %i.db = load i32, ptr %i.a, align 4, !tbaa !106
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !106
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !106
  %i.de = load i16, ptr %i.g, align 8, !tbaa !83
  %i.df = sext i16 %i.de to i32
  %i.dg = load ptr, ptr %i.f, align 8, !tbaa !78
  call void %i.cz(ptr noundef %i.da, i32 noundef %i.db, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.df, ptr noundef %i.dg, i64 noundef %.0)
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !85
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, i64 noundef %i.cy, i32 noundef 0), !call_target !104 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  switch i32 %.1, label %_ZN6LibRaw16parseLeicaLensIDEv.exit [
    i32 -3, label %bb.k
    i32 -2, label %bb.u
    i32 0, label %bb.v
    i32 4096, label %bb.y
    i32 1792, label %bb.y
    i32 1280, label %bb.y
    i32 1024, label %bb.y
    i32 256, label %bb.y
    i32 6656, label %bb.aa
    i32 1536, label %bb.aa
    i32 512, label %bb.af
    i32 767, label %bb.al
    i32 768, label %bb.aq
    i32 2560, label %bb.as
    i32 2304, label %bb.as
    i32 2048, label %bb.as
    i32 13312, label %bb.az
  ]

bb.k:                                             ; preds = %bb.j
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !106
  switch i32 %i.dm, label %_ZN6LibRaw16parseLeicaLensIDEv.exit [
    i32 784, label %bb.l
    i32 787, label %bb.o
    i32 800, label %bb.t
  ]

bb.l:                                             ; preds = %bb.k
  %i.dn = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.do = zext i32 %i.dn to i64                   ; 3 uses
  store i64 %i.do, ptr %i.bl, align 8, !tbaa !77
  %.not.i = icmp eq i32 %i.dn, 0
  br i1 %.not.i, label %_ZN6LibRaw16parseLeicaLensIDEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = shl nuw nsw i64 %i.do, 6
  %i.dq = and i64 %i.dp, 274877906688
  %i.dr = and i64 %i.do, 3
  %i.ds = or disjoint i64 %i.dq, %i.dr
  store i64 %i.ds, ptr %i.bl, align 8, !tbaa !77
  %i.dt = add i32 %i.dn, -4
  %or.cond.i = icmp ult i32 %i.dt, 232
  br i1 %or.cond.i, label %bb.n, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.n:                                             ; preds = %bb.m
  %i.du = load i16, ptr %i.bm, align 2, !tbaa !73
  store i16 %i.du, ptr %i.bn, align 2, !tbaa !75
  store i16 2, ptr %i.bo, align 8, !tbaa !76
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.o:                                             ; preds = %bb.k
  %i.dv = load float, ptr %i.bj, align 4, !tbaa !110
  %i.dw = call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn olt float %i.dw, 1.700000e-01
  br i1 %i.dx, label %bb.p, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.p:                                             ; preds = %bb.o
  %i.dy = load i32, ptr %i.b, align 4, !tbaa !106
  %i.dz = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.dy)
  %i.ea = fptrunc reassoc nsz arcp contract afn double %i.dz to float ; 3 uses
  store float %i.ea, ptr %i.bj, align 4, !tbaa !110
  %i.eb = fpext reassoc nsz arcp contract afn float %i.ea to double
  %i.ec = fcmp reassoc nsz arcp contract afn ogt double %i.eb, 1.263000e+02
  br i1 %i.ec, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !110
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.r:                                             ; preds = %bb.p
  %i.ed = load float, ptr %i.bk, align 8, !tbaa !111
  %i.ee = call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.ed)
  %i.ef = fcmp reassoc nsz arcp contract afn olt float %i.ee, 1.700000e-01
  br i1 %i.ef, label %bb.s, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.s:                                             ; preds = %bb.r
  store float %i.ea, ptr %i.bk, align 8, !tbaa !111
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.t:                                             ; preds = %bb.k
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !106
  %i.eh = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.eg)
  %i.ei = fptrunc reassoc nsz arcp contract afn double %i.eh to float
  store float %i.ei, ptr %i.bp, align 8, !tbaa !112
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.u:                                             ; preds = %bb.j
  %i.ej = load i32, ptr %i.a, align 4, !tbaa !106
  %i.ek = icmp eq i32 %i.ej, 13
  br i1 %i.ek, label %.preheader.preheader, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

.preheader.preheader:                             ; preds = %bb.u
  %i.el = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.em = uitofp reassoc nsz arcp contract afn i16 %i.el to float
  store float %i.em, ptr %i.by, align 4, !tbaa !113
  %i.en = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.eo = uitofp reassoc nsz arcp contract afn i16 %i.en to float
  store float %i.eo, ptr %i.cb, align 8, !tbaa !113
  %i.ep = call noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
end_hunk_0
begin_hunk_1_@_ZN6LibRaw19parseLeicaMakernoteExij:bb.a
  switch i8 %i.hi, label %bb.ap [
    i8 45, label %sub_1.i101
    i8 42, label %sub_110.i96
  ]

sub_1.i101:                                       ; preds = %sub_0.i95
  %i.hl = load i8, ptr %i.bs, align 1
  %.not14.i102 = icmp eq i8 %i.hl, 45
  br i1 %.not14.i102, label %.tail.i103, label %bb.ap

.tail.i103:                                       ; preds = %sub_1.i101
  %i.hm = load i8, ptr %i.bt, align 2
  %i.hn = icmp eq i8 %i.hm, 45
  br i1 %i.hn, label %_ZN6LibRaw18parseLeicaLensNameEj.exit104, label %bb.ap

sub_110.i96:                                      ; preds = %sub_0.i95
  %i.ho = load i8, ptr %i.bs, align 1
  %.not16.i97 = icmp eq i8 %i.ho, 42
  br i1 %.not16.i97, label %.tail8.i99, label %bb.ap

.tail8.i99:                                       ; preds = %sub_110.i96
  %i.hp = load i8, ptr %i.bt, align 2
  %i.hq = icmp eq i8 %i.hp, 42
  br i1 %i.hq, label %_ZN6LibRaw18parseLeicaLensNameEj.exit104, label %bb.ap

_ZN6LibRaw18parseLeicaLensNameEj.exit104:         ; preds = %bb.am, %bb.an, %bb.ao, %.tail.i103, %.tail8.i99
  store i32 4271950, ptr %i.br, align 8
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.ap:                                            ; preds = %sub_1.i101, %.tail.i103, %.tail8.i99, %sub_0.i95, %sub_110.i96
  %i.hr = load <2 x i16>, ptr %i.bu, align 8, !tbaa !120
  store <2 x i16> %i.hr, ptr %i.bo, align 8, !tbaa !120
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.aq:                                            ; preds = %bb.j
  %i.hs = load i32, ptr %i.a, align 4, !tbaa !106
  %i.ht = icmp eq i32 %i.hs, 13312
  br i1 %i.ht, label %bb.ar, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN6LibRaw19parseLeicaMakernoteExij(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %.0, i32 noundef 13312, i32 noundef %3)
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.as:                                            ; preds = %bb.j, %bb.j, %bb.j
  %i.hu = load i32, ptr %i.a, align 4, !tbaa !106 ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 772
  %i.hw = load i32, ptr %i.c, align 4
  %i.hx = icmp eq i32 %i.hw, 1
  %or.cond25 = select i1 %i.hv, i1 %i.hx, i1 false
  br i1 %or.cond25, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.hy = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !85
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 56
  %i.ib = load ptr, ptr %i.ia, align 8
  %i.ic = call noundef i32 %i.ib(ptr noundef nonnull align 8 dereferenceable(8) %i.hy), !call_target !118 ; 3 uses
  %.not89 = icmp eq i32 %i.ic, 0
  br i1 %.not89, label %thread-pre-split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.id = load i16, ptr %i.bm, align 2, !tbaa !73
  %i.ie = icmp eq i16 %i.id, 22
  br i1 %i.ie, label %bb.av, label %thread-pre-split

bb.av:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 1 dereferenceable(12) @.str.9, i64 12, i1 false) #9
  store i16 17, ptr %i.bn, align 2, !tbaa !75
  store i16 2, ptr %i.bo, align 8, !tbaa !76
  %.not90 = icmp eq i32 %i.ic, 255
  br i1 %.not90, label %_ZN6LibRaw16parseLeicaLensIDEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.if = shl nsw i32 %i.ic, 8
  %i.ig = sext i32 %i.if to i64
  store i64 %i.ig, ptr %i.bl, align 8, !tbaa !77
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

thread-pre-split:                                 ; preds = %bb.at, %bb.au
  %.pr = load i32, ptr %i.a, align 4, !tbaa !106
  br label %bb.ax

bb.ax:                                            ; preds = %thread-pre-split, %bb.as
  %i.ih = phi i32 [ %.pr, %thread-pre-split ], [ %i.hu, %bb.as ]
  %i.ii = icmp eq i32 %i.ih, 1280
  br i1 %i.ii, label %bb.ay, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ij = load i32, ptr %i.c, align 4, !tbaa !106
  %i.ik = call noundef i32 @_ZN6LibRaw28parseLeicaInternalBodySerialEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ij) ; 0 uses
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.az:                                            ; preds = %bb.j
  %i.il = load i32, ptr %i.a, align 4, !tbaa !106
  switch i32 %i.il, label %_ZN6LibRaw16parseLeicaLensIDEv.exit [
    i32 872428546, label %bb.ba
    i32 872428549, label %bb.bb
    i32 872428550, label %bb.be
  ]

bb.ba:                                            ; preds = %bb.az
  %i.im = load i32, ptr %i.b, align 4, !tbaa !106
  %i.in = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.im)
  %i.io = fptrunc reassoc nsz arcp contract afn double %i.in to float
  store float %i.io, ptr %i.bp, align 8, !tbaa !112
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.bb:                                            ; preds = %bb.az
  %i.ip = call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.iq = zext i32 %i.ip to i64                   ; 3 uses
  store i64 %i.iq, ptr %i.bl, align 8, !tbaa !77
  %.not.i105 = icmp eq i32 %i.ip, 0
  br i1 %.not.i105, label %_ZN6LibRaw16parseLeicaLensIDEv.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ir = shl nuw nsw i64 %i.iq, 6
  %i.is = and i64 %i.ir, 274877906688
  %i.it = and i64 %i.iq, 3
  %i.iu = or disjoint i64 %i.is, %i.it
  store i64 %i.iu, ptr %i.bl, align 8, !tbaa !77
  %i.iv = add i32 %i.ip, -4
  %or.cond.i106 = icmp ult i32 %i.iv, 232
  br i1 %or.cond.i106, label %bb.bd, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.bd:                                            ; preds = %bb.bc
  %i.iw = load i16, ptr %i.bm, align 2, !tbaa !73
  store i16 %i.iw, ptr %i.bn, align 2, !tbaa !75
  store i16 2, ptr %i.bo, align 8, !tbaa !76
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.be:                                            ; preds = %bb.az
  %i.ix = load float, ptr %i.bj, align 4, !tbaa !110
  %i.iy = call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.ix)
  %i.iz = fcmp reassoc nsz arcp contract afn olt float %i.iy, 1.700000e-01
  br i1 %i.iz, label %bb.bf, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.bf:                                            ; preds = %bb.be
  %i.ja = load i32, ptr %i.b, align 4, !tbaa !106
  %i.jb = call reassoc nsz arcp contract afn noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.ja)
  %i.jc = fptrunc reassoc nsz arcp contract afn double %i.jb to float ; 3 uses
  store float %i.jc, ptr %i.bj, align 4, !tbaa !110
  %i.jd = fpext reassoc nsz arcp contract afn float %i.jc to double
  %i.je = fcmp reassoc nsz arcp contract afn ogt double %i.jd, 1.263000e+02
  br i1 %i.je, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !110
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.bh:                                            ; preds = %bb.bf
  %i.jf = load float, ptr %i.bk, align 8, !tbaa !111
  %i.jg = call reassoc nsz arcp contract afn noundef float @llvm.fabs.f32(float %i.jf)
  %i.jh = fcmp reassoc nsz arcp contract afn olt float %i.jg, 1.700000e-01
  br i1 %i.jh, label %bb.bi, label %_ZN6LibRaw16parseLeicaLensIDEv.exit

bb.bi:                                            ; preds = %bb.bh
  store float %i.jc, ptr %i.bk, align 8, !tbaa !111
  br label %_ZN6LibRaw16parseLeicaLensIDEv.exit

_ZN6LibRaw16parseLeicaLensIDEv.exit:              ; preds = %bb.g, %.preheader.preheader, %bb.u, %bb.z, %bb.y, %bb.ai, %bb.ak, %bb.aj, %bb.ag, %bb.af, %bb.ar, %bb.aq, %bb.bg, %bb.bi, %bb.bh, %bb.be, %bb.ba, %bb.aw, %bb.av, %bb.ay, %bb.ax, %bb.al, %bb.ap, %bb.ab, %bb.w, %bb.x, %bb.t, %bb.q, %bb.s, %bb.r, %bb.v, %bb.aa, %bb.az, %bb.j, %bb.l, %bb.m, %bb.n, %sub_0.i, %sub_1.i, %.tail.i, %sub_110.i, %.tail8.i, %.tail8.thread.sink.split.i, %_ZN6LibRaw18parseLeicaLensNameEj.exit104, %bb.bb, %bb.bc, %bb.bd, %bb.o, %bb.k, %bb.f
  %i.ji = load ptr, ptr %i.f, align 8, !tbaa !78  ; 2 uses
  %i.jj = load i64, ptr %i.d, align 8, !tbaa !121
  %i.jk = load ptr, ptr %i.ji, align 8, !tbaa !85
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = call noundef i32 %i.jm(ptr noundef nonnull align 8 dereferenceable(8) %i.ji, i64 noundef %i.jj, i32 noundef 0) ; 0 uses
  %.not87 = icmp eq i32 %i.cd, 0
  br i1 %.not87, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %_ZN6LibRaw16parseLeicaLensIDEv.exit, %bb.d
  store i16 %i.h, ptr %i.g, align 8, !tbaa !83
  br label %bb.bj

bb.bj:                                            ; preds = %.thread110, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

declare void @_ZN6LibRaw8tiff_getExPjS0_S0_Px(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

declare noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 short", !11, i64 0}
!13 = !{!"short", !7, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = !{!"_ZTS20libraw_image_sizes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !8, i64 16, !14, i64 24, !8, i64 32, !7, i64 36, !13, i64 164, !7, i64 166}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"_ZTS16libraw_iparams_t", !7, i64 0, !7, i64 4, !7, i64 68, !7, i64 132, !7, i64 196, !7, i64 260, !8, i64 324, !8, i64 328, !8, i64 332, !8, i64 336, !8, i64 340, !8, i64 344, !7, i64 348, !7, i64 384, !7, i64 420, !8, i64 428, !16, i64 432}
!18 = !{!"float", !7, i64 0}
!19 = !{!"_ZTS18libraw_nikonlens_t", !18, i64 0, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7}
!20 = !{!"_ZTS16libraw_dnglens_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12}
!21 = !{!"long long", !7, i64 0}
!22 = !{!"_ZTS24libraw_makernotes_lens_t", !21, i64 0, !7, i64 8, !13, i64 136, !13, i64 138, !21, i64 144, !13, i64 152, !13, i64 154, !7, i64 156, !13, i64 220, !7, i64 222, !7, i64 238, !18, i64 256, !18, i64 260, !18, i64 264, !18, i64 268, !18, i64 272, !18, i64 276, !18, i64 280, !18, i64 284, !18, i64 288, !18, i64 292, !18, i64 296, !18, i64 300, !18, i64 304, !18, i64 308, !18, i64 312, !21, i64 320, !7, i64 328, !21, i64 456, !7, i64 464, !21, i64 592, !7, i64 600, !13, i64 728, !18, i64 732}
!23 = !{!"_ZTS17libraw_lensinfo_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !7, i64 20, !7, i64 148, !7, i64 276, !7, i64 404, !13, i64 532, !19, i64 536, !20, i64 544, !22, i64 560}
!24 = !{!"_ZTS13libraw_area_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!25 = !{!"_ZTS25libraw_canon_makernotes_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16, !8, i64 32, !7, i64 36, !13, i64 52, !13, i64 54, !7, i64 56, !13, i64 58, !13, i64 60, !13, i64 62, !13, i64 64, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !8, i64 84, !18, i64 88, !13, i64 92, !13, i64 94, !13, i64 96, !13, i64 98, !8, i64 100, !13, i64 104, !8, i64 108, !8, i64 112, !13, i64 116, !8, i64 120, !24, i64 124, !24, i64 132, !24, i64 140, !24, i64 148, !24, i64 156, !7, i64 164}
!26 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6}
!27 = !{!"_ZTS25libraw_nikon_makernotes_t", !14, i64 0, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 19, !7, i64 20, !7, i64 21, !7, i64 34, !7, i64 54, !7, i64 58, !7, i64 62, !7, i64 66, !7, i64 67, !7, i64 68, !7, i64 69, !7, i64 70, !7, i64 71, !7, i64 73, !7, i64 74, !7, i64 75, !7, i64 76, !7, i64 77, !7, i64 78, !7, i64 82, !7, i64 86, !13, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !7, i64 112, !7, i64 144, !7, i64 145, !7, i64 146, !8, i64 148, !8, i64 152, !8, i64 156, !7, i64 160, !7, i64 162, !13, i64 170, !26, i64 172, !13, i64 180, !13, i64 182, !13, i64 184, !8, i64 188, !7, i64 192, !7, i64 212, !8, i64 232, !7, i64 236, !8, i64 248, !16, i64 256, !13, i64 264, !13, i64 266, !7, i64 268, !13, i64 270, !14, i64 272, !14, i64 280, !14, i64 288}
!28 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !8, i64 0, !14, i64 8, !7, i64 16, !7, i64 24, !7, i64 88, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !7, i64 168, !7, i64 200, !8, i64 264, !7, i64 268, !7, i64 276, !7, i64 288}
!29 = !{!"_ZTS18libraw_fuji_info_t", !18, i64 0, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14, !13, i64 16, !13, i64 18, !7, i64 20, !7, i64 53, !18, i64 88, !13, i64 92, !13, i64 94, !7, i64 96, !13, i64 100, !8, i64 104, !8, i64 108, !13, i64 112, !7, i64 114, !13, i64 120, !13, i64 122, !13, i64 124, !13, i64 126, !13, i64 128, !8, i64 132, !13, i64 136, !7, i64 138, !7, i64 151, !7, i64 156, !8, i64 164, !13, i64 168, !8, i64 172, !13, i64 176, !7, i64 178, !7, i64 196, !8, i64 324, !8, i64 328, !8, i64 332, !7, i64 336, !8, i64 344}
!30 = !{!"_ZTS27libraw_olympus_makernotes_t", !7, i64 0, !13, i64 6, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !7, i64 64, !7, i64 72, !13, i64 82, !7, i64 84, !13, i64 88, !13, i64 90, !7, i64 92, !7, i64 352, !13, i64 392, !7, i64 394, !7, i64 396, !7, i64 404, !13, i64 416, !13, i64 418, !13, i64 420, !13, i64 422, !14, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !8, i64 452, !13, i64 456, !13, i64 458}
!31 = !{!"_ZTS18libraw_sony_info_t", !13, i64 0, !7, i64 2, !7, i64 3, !8, i64 4, !7, i64 8, !8, i64 12, !7, i64 16, !7, i64 17, !13, i64 18, !7, i64 20, !7, i64 24, !7, i64 25, !13, i64 26, !7, i64 28, !7, i64 38, !7, i64 39, !7, i64 40, !13, i64 48, !7, i64 50, !7, i64 51, !7, i64 52, !13, i64 54, !8, i64 56, !13, i64 60, !7, i64 62, !13, i64 66, !13, i64 68, !13, i64 70, !13, i64 72, !13, i64 74, !13, i64 76, !13, i64 78, !8, i64 80, !18, i64 84, !13, i64 88, !8, i64 92, !8, i64 96, !13, i64 100, !7, i64 102, !8, i64 124, !13, i64 128, !8, i64 132, !7, i64 136, !7, i64 137, !13, i64 138, !13, i64 140, !13, i64 142, !13, i64 144, !13, i64 146, !13, i64 148, !13, i64 150, !13, i64 152, !13, i64 154, !8, i64 156, !13, i64 160, !7, i64 162, !18, i64 180}
!32 = !{!"_ZTS25libraw_kodak_makernotes_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !7, i64 12, !7, i64 48, !7, i64 84, !7, i64 120, !7, i64 156, !7, i64 192, !13, i64 228, !13, i64 230, !13, i64 232, !13, i64 234, !18, i64 236, !18, i64 240}
!33 = !{!"_ZTS29libraw_panasonic_makernotes_t", !13, i64 0, !13, i64 2, !7, i64 4, !8, i64 36, !18, i64 40, !7, i64 44, !13, i64 56, !13, i64 58, !8, i64 60, !8, i64 64}
!34 = !{!"_ZTS26libraw_pentax_makernotes_t", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 12, !8, i64 16, !8, i64 20, !13, i64 24, !7, i64 26, !13, i64 30, !7, i64 32, !7, i64 33, !13, i64 34}
!35 = !{!"_ZTS22libraw_p1_makernotes_t", !7, i64 0, !7, i64 64, !7, i64 128, !7, i64 384}
!36 = !{!"_ZTS25libraw_ricoh_makernotes_t", !13, i64 0, !7, i64 4, !7, i64 12, !13, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 42, !13, i64 44, !13, i64 46, !13, i64 48, !13, i64 50, !14, i64 56, !14, i64 64}
!37 = !{!"_ZTS27libraw_samsung_makernotes_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 40, !14, i64 88, !8, i64 96, !7, i64 100}
!38 = !{!"_ZTS24libraw_metadata_common_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !18, i64 36, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !18, i64 60, !13, i64 64, !7, i64 66, !18, i64 196, !7, i64 200, !8, i64 296}
!39 = !{!"_ZTS19libraw_makernotes_t", !25, i64 0, !27, i64 168, !28, i64 464, !29, i64 848, !30, i64 1200, !31, i64 1664, !32, i64 1848, !33, i64 2092, !34, i64 2160, !35, i64 2196, !36, i64 2648, !37, i64 2720, !38, i64 2856}
!40 = !{!"_ZTS21libraw_shootinginfo_t", !13, i64 0, !13, i64 2, !13, i64 4, !13, i64 6, !13, i64 8, !13, i64 10, !13, i64 12, !7, i64 14, !7, i64 78}
!41 = !{!"_ZTS22libraw_output_params_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 64, !7, i64 112, !18, i64 128, !18, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !7, i64 224, !8, i64 240, !8, i64 244, !18, i64 248, !18, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !18, i64 288, !18, i64 292, !8, i64 296, !8, i64 300}
!42 = !{!"any p2 pointer", !11, i64 0}
!43 = !{!"p2 omnipotent char", !42, i64 0}
!44 = !{!"_ZTS26libraw_raw_unpack_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !18, i64 28, !7, i64 32, !43, i64 40}
!45 = !{!"_ZTS5ph1_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !18, i64 32}
!46 = !{!"_ZTS19libraw_dng_levels_t", !8, i64 0, !7, i64 4, !8, i64 16420, !7, i64 16424, !18, i64 32840, !7, i64 32844, !7, i64 32860, !7, i64 32868, !8, i64 32884, !7, i64 32888, !7, i64 32904, !18, i64 32920, !18, i64 32924, !7, i64 32928}
!47 = !{!"_ZTS18libraw_colordata_t", !7, i64 0, !7, i64 131072, !8, i64 147488, !8, i64 147492, !8, i64 147496, !7, i64 147500, !18, i64 147516, !18, i64 147520, !7, i64 147524, !7, i64 147652, !7, i64 147668, !7, i64 147684, !7, i64 147732, !7, i64 147780, !7, i64 147828, !45, i64 147876, !18, i64 147912, !18, i64 147916, !7, i64 147920, !7, i64 147984, !7, i64 148048, !7, i64 148112, !7, i64 148176, !7, i64 148193, !11, i64 148264, !8, i64 148272, !7, i64 148276, !7, i64 148308, !46, i64 148648, !7, i64 181624, !7, i64 185720, !8, i64 187000, !7, i64 187004, !8, i64 187076, !8, i64 187080}
!48 = !{!"long", !7, i64 0}
!49 = !{!"_ZTS17libraw_gps_info_t", !7, i64 0, !7, i64 12, !7, i64 24, !18, i64 36, !7, i64 40, !7, i64 41, !7, i64 42, !7, i64 43, !7, i64 44}
!50 = !{!"_ZTS17libraw_imgother_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !48, i64 16, !8, i64 24, !7, i64 28, !49, i64 156, !7, i64 204, !7, i64 716, !7, i64 780}
!51 = !{!"_ZTS24LibRaw_thumbnail_formats", !7, i64 0}
!52 = !{!"_ZTS18libraw_thumbnail_t", !51, i64 0, !13, i64 4, !13, i64 6, !8, i64 8, !8, i64 12, !16, i64 16}
!53 = !{!"_ZTS23libraw_thumbnail_list_t", !8, i64 0, !7, i64 8}
!54 = !{!"p1 float", !11, i64 0}
!55 = !{!"_ZTS31libraw_internal_output_params_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 12, !13, i64 14}
!56 = !{!"_ZTS16libraw_rawdata_t", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !54, i64 32, !54, i64 40, !54, i64 48, !12, i64 56, !12, i64 64, !17, i64 72, !15, i64 512, !55, i64 696, !47, i64 712}
!57 = !{!"_ZTS13libraw_data_t", !12, i64 0, !15, i64 8, !17, i64 192, !23, i64 632, !39, i64 1928, !40, i64 5088, !41, i64 5232, !44, i64 5536, !8, i64 5584, !8, i64 5588, !47, i64 5592, !50, i64 192680, !52, i64 193480, !53, i64 193504, !56, i64 193768, !11, i64 381568}
!58 = !{!"p1 _ZTS10LibRaw_TLS", !11, i64 0}
!59 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !11, i64 0}
!60 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!61 = !{!"_ZTS15internal_data_t", !59, i64 0, !60, i64 8, !8, i64 16, !16, i64 24, !21, i64 32, !21, i64 40, !7, i64 48}
!62 = !{!"p1 int", !11, i64 0}
!63 = !{!"_ZTS13output_data_t", !62, i64 0, !62, i64 8}
!64 = !{!"_ZTS15identify_data_t", !8, i64 0, !21, i64 8, !21, i64 16, !8, i64 24, !8, i64 28, !8, i64 32}
!65 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !7, i64 0}
!66 = !{!"_ZTS12pana8_tags_t", !7, i64 0, !7, i64 24, !13, i64 36, !7, i64 38, !7, i64 46, !7, i64 80, !7, i64 114, !13, i64 148, !13, i64 150, !7, i64 152, !7, i64 192, !7, i64 204, !7, i64 224, !7, i64 234}
!67 = !{!"_ZTS15unpacker_data_t", !13, i64 0, !7, i64 2, !7, i64 10, !8, i64 16, !21, i64 24, !21, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !21, i64 64, !21, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !65, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !21, i64 144, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !66, i64 192, !7, i64 440, !8, i64 2488, !8, i64 2492, !13, i64 2496, !13, i64 2498, !8, i64 2500, !8, i64 2504, !8, i64 2508, !8, i64 2512, !8, i64 2516, !8, i64 2520, !8, i64 2524, !7, i64 2528, !13, i64 2608}
!68 = !{!"_ZTS22libraw_internal_data_t", !61, i64 0, !55, i64 64, !63, i64 80, !64, i64 96, !67, i64 136}
!69 = !{!"p1 _ZTS6decode", !11, i64 0}
!70 = !{!"_ZTS13libraw_memmgr", !42, i64 0, !8, i64 8}
!71 = !{!"_ZTS18libraw_callbacks_t", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144}
!72 = !{!"_ZTS6LibRaw", !57, i64 8, !58, i64 381584, !68, i64 381592, !7, i64 384344, !69, i64 433496, !69, i64 433504, !7, i64 433512, !70, i64 768232, !71, i64 768248, !7, i64 768400, !7, i64 768416, !7, i64 768432, !11, i64 768448, !11, i64 768456, !11, i64 768464, !48, i64 768472, !11, i64 768480, !11, i64 768488, !11, i64 768496, !11, i64 768504}
!73 = !{!72, !13, i64 1354}
!74 = !{!7, !7, i64 0}
!75 = !{!72, !13, i64 1338}
!76 = !{!72, !13, i64 1336}
!77 = !{!72, !21, i64 1200}
!78 = !{!72, !59, i64 381592}
!79 = !{!72, !13, i64 1352}
!80 = !{!72, !13, i64 1420}
!81 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !86, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!82 = distinct !{!82, !107}
!83 = !{!72, !13, i64 381728}
!84 = !{!"vtable pointer", !6, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!87 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!88 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !87, line: 109, baseType: !88)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!91 = !{!89, !90}
!92 = !DISubroutineType(types: !91)
!93 = !DISubprogram(name: "size", linkageName: "_ZN26LibRaw_abstract_datastream4sizeEv", scope: !81, file: !86, line: 104, type: !92, scopeLine: 104, containingType: !81, virtualIndex: 6, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIFile(filename: "/usr/lib/llvm-24/lib/clang/24/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!97 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 18, baseType: !97)
!99 = !{!94, !90, !95, !98, !98}
!100 = !DISubroutineType(types: !99)
!101 = !DISubprogram(name: "read", linkageName: "_ZN26LibRaw_abstract_datastream4readEPvmm", scope: !81, file: !86, line: 101, type: !100, scopeLine: 101, containingType: !81, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!102 = !{!94, !90, !89, !94}
!103 = !DISubroutineType(types: !102)
!104 = !DISubprogram(name: "seek", linkageName: "_ZN26LibRaw_abstract_datastream4seekExi", scope: !81, file: !86, line: 102, type: !103, scopeLine: 102, containingType: !81, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!105 = !DISubprogram(name: "tell", linkageName: "_ZN26LibRaw_abstract_datastream4tellEv", scope: !81, file: !86, line: 103, type: !92, scopeLine: 103, containingType: !81, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!106 = !{!8, !8, i64 0}
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!72, !11, i64 768288}
!109 = !{!72, !11, i64 768304}
!110 = !{!72, !18, i64 1492}
!111 = !{!72, !18, i64 192696}
!112 = !{!72, !18, i64 4800}
!113 = !{!18, !18, i64 0}
!114 = !{!72, !13, i64 5098}
!115 = !{!72, !13, i64 5108}
!116 = !{!94, !90}
!117 = !DISubroutineType(types: !116)
!118 = !DISubprogram(name: "get_char", linkageName: "_ZN26LibRaw_abstract_datastream8get_charEv", scope: !81, file: !86, line: 105, type: !117, scopeLine: 105, containingType: !81, virtualIndex: 7, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!119 = !{!72, !13, i64 5104}
!120 = !{!13, !13, i64 0}
!121 = !{!21, !21, i64 0}
end_hunk_1
