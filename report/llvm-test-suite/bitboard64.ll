inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@_ZN10BitBoard648unSetBitEi:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -1, -2147483647) i32 @_ZN10BitBoard646getBitEi(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %or.cond = icmp ugt i32 %1, 63
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp samesign ult i32 %1, 32
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i32, ptr %0, align 4, !tbaa !8
  %i.c = shl nuw i32 1, %1
  %i.d = and i32 %i.b, %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10
  %i.g = add nsw i32 %1, -32
  %i.h = shl nuw i32 1, %i.g
  %i.i = and i32 %i.f, %i.h
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ %i.i, %bb.d ], [ %i.d, %bb.c ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZN10BitBoard6412readFromFileEP8_IO_FILE(ptr noundef nonnull align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 21 uses
  %i.b = alloca i8, align 1                       ; 21 uses
  store i32 0, ptr %0, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  store i32 0, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !11
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not = icmp eq i64 %i.d, 1
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.a, align 1, !tbaa !11
  %i.f = zext i8 %i.e to i32
  %i.g = load i32, ptr %0, align 4, !tbaa !8
  %i.h = or i32 %i.g, %i.f
  store i32 %i.h, ptr %0, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !11
  %i.i = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.1 = icmp eq i64 %i.i, 1
  br i1 %.not.1, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.a, align 1, !tbaa !11
  %i.k = zext i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = load i32, ptr %0, align 4, !tbaa !8
  %i.n = or i32 %i.l, %i.m
  store i32 %i.n, ptr %0, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !11
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.2 = icmp eq i64 %i.o, 1
  br i1 %.not.2, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.a, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 16
  %i.s = load i32, ptr %0, align 4, !tbaa !8
  %i.t = or i32 %i.r, %i.s
  store i32 %i.t, ptr %0, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !11
  %i.u = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.3 = icmp eq i64 %i.u, 1
  br i1 %.not.3, label %.preheader.preheader, label %.thread

.preheader.preheader:                             ; preds = %bb.d
  %i.v = load i8, ptr %i.a, align 1, !tbaa !11
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw i32 %i.w, 24
  %i.y = load i32, ptr %0, align 4, !tbaa !8
  %i.z = or i32 %i.x, %i.y
  store i32 %i.z, ptr %0, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.aa = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20 = icmp eq i64 %i.aa, 1
  br i1 %.not20, label %.preheader.1, label %bb.e

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.loopexit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ab = load i8, ptr %i.b, align 1, !tbaa !11
  %i.ac = zext i8 %i.ab to i32
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ae = or i32 %i.ad, %i.ac
  store i32 %i.ae, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.af = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.1 = icmp eq i64 %i.af, 1
  br i1 %.not20.1, label %.preheader.2, label %bb.e

.preheader.2:                                     ; preds = %.preheader.1
  %i.ag = load i8, ptr %i.b, align 1, !tbaa !11
  %i.ah = zext i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 8
  %i.aj = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ak = or i32 %i.ai, %i.aj
  store i32 %i.ak, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.al = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.2 = icmp eq i64 %i.al, 1
  br i1 %.not20.2, label %.preheader.3, label %bb.e

.preheader.3:                                     ; preds = %.preheader.2
  %i.am = load i8, ptr %i.b, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 16
  %i.ap = load i32, ptr %i.c, align 4, !tbaa !10
  %i.aq = or i32 %i.ao, %i.ap
  store i32 %i.aq, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i8 0, ptr %i.b, align 1, !tbaa !11
  %i.ar = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.3 = icmp eq i64 %i.ar, 1
  br i1 %.not20.3, label %.loopexit.loopexit, label %bb.e

.loopexit.loopexit:                               ; preds = %.preheader.3
  %i.as = load i8, ptr %i.b, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw i32 %i.at, 24
  %i.av = load i32, ptr %i.c, align 4, !tbaa !10
  %i.aw = or i32 %i.au, %i.av
  store i32 %i.aw, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

bb.e:                                             ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e, %.thread
  %.6 = phi i32 [ -1, %.thread ], [ -1, %bb.e ], [ 0, %.loopexit.loopexit ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @_ZN10BitBoard6411writeToFileEP8_IO_FILE(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 16 uses
  %i.b = alloca i8, align 1                       ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = load i32, ptr %0, align 4, !tbaa !8
  %i.d = trunc i32 %i.c to i8
  store i8 %i.d, ptr %i.a, align 1, !tbaa !11
  %i.e = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not = icmp eq i64 %i.e, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.f = load i32, ptr %0, align 4, !tbaa !8
  %i.g = lshr i32 %i.f, 8
  %i.h = trunc i32 %i.g to i8
  store i8 %i.h, ptr %i.a, align 1, !tbaa !11
  %i.i = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.1 = icmp eq i64 %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not.1, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.shift = getelementptr inbounds nuw i8, ptr %0, i64 2
  %2 = load i16, ptr %.shift, align 2, !tbaa !8
  %i.j = trunc i16 %2 to i8
  store i8 %i.j, ptr %i.a, align 1, !tbaa !11
  %i.k = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.2 = icmp eq i64 %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not.2, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %.shift29 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %3 = load i8, ptr %.shift29, align 1, !tbaa !8
  store i8 %3, ptr %i.a, align 1, !tbaa !11
  %i.l = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not.3 = icmp eq i64 %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %.not.3, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %i.o = trunc i32 %i.n to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !11
  %i.p = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20 = icmp eq i64 %i.p, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not20, label %bb.e, label %.thread

bb.e:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.q = load i32, ptr %i.m, align 4, !tbaa !10
  %i.r = lshr i32 %i.q, 8
  %i.s = trunc i32 %i.r to i8
  store i8 %i.s, ptr %i.b, align 1, !tbaa !11
  %i.t = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.1 = icmp eq i64 %i.t, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not20.1, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.shift30 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %4 = load i16, ptr %.shift30, align 2, !tbaa !10
  %i.u = trunc i16 %4 to i8
  store i8 %i.u, ptr %i.b, align 1, !tbaa !11
  %i.v = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.2 = icmp eq i64 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br i1 %.not20.2, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %.shift31 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %5 = load i8, ptr %.shift31, align 1, !tbaa !10
  store i8 %5, ptr %i.b, align 1, !tbaa !11
  %i.w = call i64 @fwrite(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %1)
  %.not20.3 = icmp ne i64 %i.w, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %spec.select = sext i1 %.not20.3 to i32
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %.preheader, %bb.e, %bb.f
  %.6 = phi i32 [ -1, %bb.f ], [ -1, %.preheader ], [ -1, %bb.a ], [ -1, %bb.e ], [ %spec.select, %bb.g ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ]
  ret i32 %.6
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -20, 81) i32 @_Z6getBFPii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = add i32 %0, -1
  %or.cond = icmp ult i32 %i.a, 9
  %i.b = add i32 %1, -1
  %i.c = icmp ult i32 %i.b, 9
  %or.cond5 = and i1 %or.cond, %i.c
  br i1 %or.cond5, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 5
  %i.e = add nuw nsw i32 %1, 4
  %i.f = icmp samesign ugt i32 %0, %i.e
  %or.cond39 = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp samesign ult i32 %1, 6              ; 2 uses
  %i.h = add nsw i32 %1, -5
  %.not = icmp samesign ugt i32 %0, %i.h
  %or.cond41 = select i1 %i.g, i1 true, i1 %.not
  br i1 %or.cond41, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = mul nuw nsw i32 %1, 9
  %i.j = add nuw nsw i32 %i.i, %0
  %i.k = icmp samesign ugt i32 %1, 1
  %spec.select.v = select i1 %i.k, i32 -14, i32 -10
  %spec.select = add nsw i32 %i.j, %spec.select.v ; 2 uses
  %i.l = icmp samesign ugt i32 %1, 2
  %i.m = add nsw i32 %spec.select, -3
  %.1 = select i1 %i.l, i32 %i.m, i32 %spec.select ; 2 uses
  %i.n = icmp samesign ugt i32 %1, 3
  %i.o = add nsw i32 %.1, -2
  %.2 = select i1 %i.n, i32 %i.o, i32 %.1
  %i.p = icmp samesign ugt i32 %1, 4
  %i.q = sext i1 %i.p to i32
  %not. = xor i1 %i.g, true
  %i.r = sext i1 %not. to i32
  %.3 = add nsw i32 %i.r, %i.q
  %.4 = add nsw i32 %.3, %.2                      ; 2 uses
  %i.s = icmp samesign ugt i32 %1, 6
  %i.t = add nsw i32 %.4, -2
  %.5 = select i1 %i.s, i32 %i.t, i32 %.4         ; 2 uses
  %i.u = icmp samesign ugt i32 %1, 7
  %i.v = add nsw i32 %.5, -3
  %.6 = select i1 %i.u, i32 %i.v, i32 %.5         ; 2 uses
  %i.w = icmp samesign ugt i32 %1, 8
  %i.x = add nsw i32 %.6, -4
  %.7 = select i1 %i.w, i32 %i.x, i32 %.6
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.b, %bb.d
  %.035 = phi i32 [ -1, %bb.c ], [ -1, %bb.b ], [ %.7, %bb.d ], [ -1, %bb.a ]
  ret i32 %.035
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10BitBoard645printEv(ptr noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.g
  %indvars.iv = phi i32 [ 4, %bb.a ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.01221 = phi i32 [ 1, %bb.a ], [ %i.aj, %bb.g ] ; 12 uses
  %umax = tail call i32 @llvm.umax.i32(i32 %indvars.iv, i32 1)
  %i.b = icmp samesign ugt i32 %.01221, 4         ; 3 uses
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.018 = phi i32 [ %i.d, %.lr.ph ], [ 0, %bb.b ]
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  %i.d = add nuw i32 %.018, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.d, %umax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !12

.loopexit:                                        ; preds = %.lr.ph, %bb.b
  %i.e = add nuw nsw i32 %.01221, 4
  %i.f = icmp samesign ult i32 %.01221, 6         ; 2 uses
  %i.g = add nsw i32 %.01221, -5
  %i.h = mul nuw nsw i32 %.01221, 9
  %i.i = icmp samesign ugt i32 %.01221, 1
  %spec.select.v.i = select i1 %i.i, i32 -14, i32 -10
  %i.j = add nsw i32 %spec.select.v.i, %i.h
  %i.k = icmp samesign ugt i32 %.01221, 2
  %i.l = icmp samesign ugt i32 %.01221, 3
  %i.m = sext i1 %i.b to i32
  %not..i = xor i1 %i.f, true
  %i.n = sext i1 %not..i to i32
  %.3.i = add nsw i32 %i.n, %i.m
  %i.o = icmp samesign ugt i32 %.01221, 6
  %i.p = icmp samesign ugt i32 %.01221, 7
  %i.q = icmp eq i32 %.01221, 9
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.f
  %.01119 = phi i32 [ 1, %.loopexit ], [ %i.ah, %bb.f ] ; 4 uses
  %i.r = icmp samesign ule i32 %.01119, %i.e
  %or.cond39.i.not24 = select i1 %i.b, i1 true, i1 %i.r
  %.not.i = icmp samesign ugt i32 %.01119, %i.g
  %or.cond41.i = select i1 %i.f, i1 true, i1 %.not.i
  %or.cond = select i1 %or.cond39.i.not24, i1 %or.cond41.i, i1 false
  br i1 %or.cond, label %_Z6getBFPii.exit, label %_Z6getBFPii.exit.thread

_Z6getBFPii.exit:                                 ; preds = %bb.c
  %spec.select.i = add i32 %i.j, %.01119          ; 2 uses
  %i.s = add nsw i32 %spec.select.i, -3
  %.1.i = select i1 %i.k, i32 %i.s, i32 %spec.select.i ; 2 uses
  %i.t = add nsw i32 %.1.i, -2
  %.2.i = select i1 %i.l, i32 %i.t, i32 %.1.i
  %.4.i = add nsw i32 %.3.i, %.2.i                ; 2 uses
  %i.u = add nsw i32 %.4.i, -2
  %.5.i = select i1 %i.o, i32 %i.u, i32 %.4.i     ; 2 uses
  %i.v = add nsw i32 %.5.i, -3
  %.6.i = select i1 %i.p, i32 %i.v, i32 %.5.i     ; 2 uses
  %i.w = add nsw i32 %.6.i, -4
  %.7.i = select i1 %i.q, i32 %i.w, i32 %.6.i     ; 5 uses
  %i.x = icmp eq i32 %.7.i, -1
  br i1 %i.x, label %_Z6getBFPii.exit.thread, label %bb.d

_Z6getBFPii.exit.thread:                          ; preds = %bb.c, %_Z6getBFPii.exit
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %_Z6getBFPii.exit
  %or.cond.i14 = icmp ugt i32 %.7.i, 63
  br i1 %or.cond.i14, label %_ZN10BitBoard646getBitEi.exit.thread, label %_ZN10BitBoard646getBitEi.exit

_ZN10BitBoard646getBitEi.exit:                    ; preds = %bb.d
  %i.z = icmp samesign ult i32 %.7.i, 32          ; 2 uses
  %i.aa = load i32, ptr %0, align 4
  %i.ab = load i32, ptr %i.a, align 4
  %i.ac = add nsw i32 %.7.i, -32
  %.7.i.sink = select i1 %i.z, i32 %.7.i, i32 %i.ac
  %.sink = select i1 %i.z, i32 %i.aa, i32 %i.ab
  %i.ad = shl nuw i32 1, %.7.i.sink
  %i.ae = and i32 %.sink, %i.ad
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.e, label %_ZN10BitBoard646getBitEi.exit.thread

_ZN10BitBoard646getBitEi.exit.thread:             ; preds = %bb.d, %_ZN10BitBoard646getBitEi.exit
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN10BitBoard646getBitEi.exit
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 2) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_Z6getBFPii.exit.thread, %bb.e, %_ZN10BitBoard646getBitEi.exit.thread
  %i.ah = add nuw nsw i32 %.01119, 1              ; 2 uses
  %exitcond25.not = icmp eq i32 %i.ah, 10
  br i1 %exitcond25.not, label %bb.g, label %bb.c, !llvm.loop !14

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.aj = add nuw nsw i32 %.01221, 1              ; 2 uses
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %exitcond26.not = icmp eq i32 %i.aj, 10
  br i1 %exitcond26.not, label %bb.h, label %bb.b, !llvm.loop !15

bb.h:                                             ; preds = %bb.g
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

end_hunk_0
