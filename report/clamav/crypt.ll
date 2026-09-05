Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/crypt?download=true
inline.NumInlined: 110
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN9CryptData8SetKey15EPKc:bb.a
  store i16 0, ptr %i.e, align 2, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 2 uses
  store i16 0, ptr %i.f, align 8, !tbaa !15
  %i.g = load i8, ptr %1, align 1, !tbaa !12      ; 2 uses
  %.not13 = icmp eq i8 %i.g, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.h = phi i16 [ %i.v, %.lr.ph ], [ 0, %bb.a ]
  %i.i = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.a ]
  %i.j = phi i8 [ %i.y, %.lr.ph ], [ %i.g, %bb.a ] ; 2 uses
  %.014 = phi i64 [ %i.w, %.lr.ph ], [ 0, %bb.a ]
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = zext i8 %i.j to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  %i.o = and i32 %i.i, 65535
  %i.p = xor i32 %i.o, %i.k
  %i.q = xor i32 %i.p, %i.n                       ; 2 uses
  %i.r = trunc i32 %i.q to i16
  store i16 %i.r, ptr %i.f, align 8, !tbaa !15
  %i.s = lshr i32 %i.n, 16
  %i.t = add nuw nsw i32 %i.s, %i.k
  %i.u = trunc i32 %i.t to i16
  %i.v = add i16 %i.h, %i.u                       ; 2 uses
  store i16 %i.v, ptr %i.e, align 2, !tbaa !15
  %i.w = add i64 %.014, 1                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12    ; 2 uses
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1
}

declare void @_Z9InitCRC32Pj(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z5CRC32jPKvm(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN9CryptData17SetAV15EncryptionEv(ptr noundef nonnull align 8 dereferenceable(2516) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  tail call void @_Z9InitCRC32Pj(ptr noundef nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 940
  store i32 2, ptr %i.b, align 4, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store <4 x i16> <i16 18277, i16 -28639, i16 29570, i16 21013>, ptr %i.c, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN9CryptData18SetCmt13EncryptionEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2516) initializes((940, 944), (2504, 2507)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 940
  store i32 1, ptr %i.a, align 4, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i8 0, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2505
  store i8 7, ptr %i.c, align 1, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2506
  store i8 77, ptr %i.d, align 2, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN9CryptData9Decrypt13EPhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2516) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not4 = icmp eq i64 %2, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2506 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2505 ; 6 uses
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.d = add nsw i64 %2, -1
  %i.e = load i8, ptr %i.b, align 2, !tbaa !12
  %i.f = load i8, ptr %i.c, align 1, !tbaa !12
  %i.g = add i8 %i.f, %i.e                        ; 2 uses
  store i8 %i.g, ptr %i.c, align 1, !tbaa !12
  %i.h = load i8, ptr %i.a, align 8, !tbaa !12
  %i.i = add i8 %i.h, %i.g                        ; 2 uses
  store i8 %i.i, ptr %i.a, align 8, !tbaa !12
  %i.j = load i8, ptr %1, align 1, !tbaa !12
  %i.k = sub i8 %i.j, %i.i
  store i8 %i.k, ptr %1, align 1, !tbaa !12
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.06.unr = phi i64 [ %2, %.lr.ph ], [ %i.d, %.prol.loopexit.unr-lcssa ]
  %.035.unr = phi ptr [ %1, %.lr.ph ], [ %i.l, %.prol.loopexit.unr-lcssa ]
  %i.m = icmp eq i64 %2, 1
  br i1 %i.m, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.06 = phi i64 [ %i.v, %.lr.ph.new ], [ %.06.unr, %.prol.loopexit ]
  %.035 = phi ptr [ %i.ad, %.lr.ph.new ], [ %.035.unr, %.prol.loopexit ] ; 4 uses
  %i.n = load i8, ptr %i.b, align 2, !tbaa !12
  %i.o = load i8, ptr %i.c, align 1, !tbaa !12
  %i.p = add i8 %i.o, %i.n                        ; 2 uses
  store i8 %i.p, ptr %i.c, align 1, !tbaa !12
  %i.q = load i8, ptr %i.a, align 8, !tbaa !12
  %i.r = add i8 %i.q, %i.p                        ; 2 uses
  store i8 %i.r, ptr %i.a, align 8, !tbaa !12
  %i.s = load i8, ptr %.035, align 1, !tbaa !12
  %i.t = sub i8 %i.s, %i.r
  store i8 %i.t, ptr %.035, align 1, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %.035, i64 1 ; 2 uses
  %i.v = add i64 %.06, -2                         ; 2 uses
  %i.w = load i8, ptr %i.b, align 2, !tbaa !12
  %i.x = load i8, ptr %i.c, align 1, !tbaa !12
  %i.y = add i8 %i.x, %i.w                        ; 2 uses
  store i8 %i.y, ptr %i.c, align 1, !tbaa !12
  %i.z = load i8, ptr %i.a, align 8, !tbaa !12
  %i.aa = add i8 %i.z, %i.y                       ; 2 uses
  store i8 %i.aa, ptr %i.a, align 8, !tbaa !12
  %i.ab = load i8, ptr %i.u, align 1, !tbaa !12
  %i.ac = sub i8 %i.ab, %i.aa
  store i8 %i.ac, ptr %i.u, align 1, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %.035, i64 2
  %.not.1 = icmp eq i64 %i.v, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !2

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN9CryptData7Crypt15EPhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2516) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not4 = icmp eq i64 %2, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2508 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2510 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2512 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2514 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.06 = phi i64 [ %2, %.lr.ph ], [ %i.f, %bb.b ]
  %.035 = phi ptr [ %1, %.lr.ph ], [ %i.ae, %bb.b ] ; 3 uses
  %i.f = add i64 %.06, -1                         ; 2 uses
  %i.g = load i16, ptr %i.a, align 4, !tbaa !15
  %i.h = add i16 %i.g, 4660                       ; 2 uses
  %i.i = lshr i16 %i.h, 1
  %i.j = and i16 %i.i, 255
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 2 uses
  %i.n = load i16, ptr %i.c, align 2, !tbaa !15
  %i.o = trunc i32 %i.m to i16
  %i.p = xor i16 %i.n, %i.o                       ; 2 uses
  store i16 %i.p, ptr %i.c, align 2, !tbaa !15
  %i.q = lshr i32 %i.m, 16
  %i.r = load i16, ptr %i.d, align 8, !tbaa !15
  %i.s = trunc nuw i32 %i.q to i16
  %i.t = sub i16 %i.r, %i.s                       ; 2 uses
  store i16 %i.t, ptr %i.d, align 8, !tbaa !15
  %i.u = xor i16 %i.t, %i.h
  %i.v = load i16, ptr %i.e, align 2, !tbaa !15   ; 2 uses
  %i.w = tail call i16 @llvm.fshl.i16(i16 %i.v, i16 %i.v, i16 15)
  %i.x = xor i16 %i.w, %i.p                       ; 2 uses
  %i.y = tail call i16 @llvm.fshl.i16(i16 %i.x, i16 %i.x, i16 15) ; 2 uses
  store i16 %i.y, ptr %i.e, align 2, !tbaa !15
  %i.z = xor i16 %i.y, %i.u                       ; 2 uses
  store i16 %i.z, ptr %i.a, align 4, !tbaa !15
  %i.aa = lshr i16 %i.z, 8
  %i.ab = load i8, ptr %.035, align 1, !tbaa !12
  %i.ac = trunc nuw i16 %i.aa to i8
  %i.ad = xor i8 %i.ab, %i.ac
  store i8 %i.ad, ptr %.035, align 1, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN9CryptData8SetKey20EPKc(ptr noundef nonnull align 8 dereferenceable(2516) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  tail call void @_Z9InitCRC32Pj(ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @_Z8strncpyzPcPKcm(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef 512)
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #17 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2488
  store <4 x i32> <i32 -744245127, i32 1064112887, i32 1964352053, i32 -1528303325>, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.e, ptr noundef nonnull align 16 dereferenceable(256) @_ZL16InitSubstTable20, i64 256, i1 false)
  %.not54 = icmp eq i64 %i.c, 0
  br i1 %.not54, label %._crit_edge53, label %.preheader39

.preheader39:                                     ; preds = %bb.a, %._crit_edge46
  %.03447 = phi i32 [ %i.j, %._crit_edge46 ], [ 0, %bb.a ] ; 2 uses
  %.034.tr = trunc nuw i32 %.03447 to i8          ; 2 uses
  br label %bb.b

.split48:                                         ; preds = %._crit_edge46
  %i.f = and i64 %i.c, 15
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.lr.ph52.preheader, label %.loopexit.thread61

.loopexit.thread61:                               ; preds = %.split48
  %i.g = or i64 %i.c, 15
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.c
  %2 = add i64 %i.c, 1
  %i.h = add i64 %i.g, 1
  %umax = call i64 @llvm.umax.i64(i64 %2, i64 %i.h)
  %i.i = sub i64 %umax, %i.c
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.i, i1 false), !tbaa !12
  br label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.split48, %.loopexit.thread61
  br label %.lr.ph52

._crit_edge46:                                    ; preds = %._crit_edge
  %i.j = add nuw nsw i32 %.03447, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, 256
  br i1 %exitcond.not, label %.split48, label %.preheader39, !llvm.loop !42

bb.b:                                             ; preds = %.preheader39, %._crit_edge
  %.03344 = phi i64 [ 0, %.preheader39 ], [ %i.v, %._crit_edge ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %.03344 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !12
  %.narrow = sub i8 %i.l, %.034.tr
  %i.m = zext i8 %.narrow to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %.narrow37 = add i8 %i.q, %.034.tr
  %i.r = zext i8 %.narrow37 to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !16
  %i.u = and i32 %i.t, 255                        ; 2 uses
  %.03240 = and i32 %i.o, 255                     ; 2 uses
  %.not3841 = icmp eq i32 %.03240, %i.u
  br i1 %.not3841, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.v = add nuw i64 %.03344, 2                   ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.c
  br i1 %i.w, label %bb.b, label %._crit_edge46, !llvm.loop !43

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.b ] ; 2 uses
  %.03243 = phi i32 [ %.032, %.lr.ph ], [ %.03240, %bb.b ] ; 2 uses
  %i.x = zext nneg i32 %.03243 to i64             ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.x ; 2 uses
  %i.z = add i64 %.03344, %i.x
  %i.aa = add i64 %i.z, %indvars.iv
  %i.ab = and i64 %i.aa, 255
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.ab ; 2 uses
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !12
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !12
  store i8 %i.ae, ptr %i.y, align 1, !tbaa !12
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !12
  %i.af = add nuw nsw i32 %.03243, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.032 = and i32 %i.af, 255                      ; 2 uses
  %.not38 = icmp eq i32 %.032, %i.u
  br i1 %.not38, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge53:                                    ; preds = %.lr.ph52, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.lr.ph52:                                         ; preds = %.lr.ph52.preheader, %.lr.ph52
  %.050 = phi i64 [ %i.ah, %.lr.ph52 ], [ 0, %.lr.ph52.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %.050
  call void @_ZN9CryptData14EncryptBlock20EPh(ptr noundef nonnull align 8 dereferenceable(2516) %0, ptr noundef nonnull %i.ag)
  %i.ah = add i64 %.050, 16                       ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.c
  br i1 %i.ai, label %.lr.ph52, label %._crit_edge53, !llvm.loop !45
}

declare void @_Z8strncpyzPcPKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN9CryptData6Swap20EPhS0_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(2516) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !12
  %i.b = load i8, ptr %2, align 1, !tbaa !12
  store i8 %i.b, ptr %1, align 1, !tbaa !12
  store i8 %i.a, ptr %2, align 1, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN9CryptData14EncryptBlock20EPh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(2516) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2488 ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !16   ; 2 uses
  %i.d = xor i32 %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2492 ; 7 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = xor i32 %i.h, %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2496 ; 7 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16
  %i.n = xor i32 %i.m, %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2500 ; 7 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !16
  %i.s = xor i32 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 8 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.u = xor i32 %i.ez, %i.c                      ; 2 uses
  store i32 %i.u, ptr %1, align 4, !tbaa !16
  %i.v = load i32, ptr %i.g, align 4, !tbaa !16
  %i.w = xor i32 %i.v, %i.gf
  store i32 %i.w, ptr %i.e, align 4, !tbaa !16
  %i.x = load i32, ptr %i.l, align 8, !tbaa !16
  %i.y = xor i32 %i.x, %.03843
  store i32 %i.y, ptr %i.j, align 4, !tbaa !16
  %i.z = load i32, ptr %i.q, align 4, !tbaa !16
  %i.aa = xor i32 %i.z, %.03744
  store i32 %i.aa, ptr %i.o, align 4, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 16 uses
  %.promoted.i = load i32, ptr %i.b, align 8, !tbaa !16
  %.promoted10.i = load i32, ptr %i.g, align 4, !tbaa !16
  %.promoted11.i = load i32, ptr %i.l, align 8, !tbaa !16
  %.promoted12.i = load i32, ptr %i.q, align 4, !tbaa !16
  %i.ac = and i32 %i.u, 255
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.ag = xor i32 %i.af, %.promoted.i             ; 2 uses
  store i32 %i.ag, ptr %i.b, align 8, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !12
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !16
  %i.am = xor i32 %i.al, %.promoted10.i           ; 2 uses
  store i32 %i.am, ptr %i.g, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !12
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !16
  %i.as = xor i32 %i.ar, %.promoted11.i           ; 2 uses
  store i32 %i.as, ptr %i.l, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.au = load i8, ptr %i.at, align 1, !tbaa !12
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !16
  %i.ay = xor i32 %i.ax, %.promoted12.i           ; 2 uses
  store i32 %i.ay, ptr %i.q, align 4, !tbaa !16
  %i.az = load i8, ptr %i.e, align 4, !tbaa !12
  %i.ba = zext i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bd = xor i32 %i.bc, %i.ag                    ; 2 uses
  store i32 %i.bd, ptr %i.b, align 8, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !12
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bj = xor i32 %i.bi, %i.am                    ; 2 uses
  store i32 %i.bj, ptr %i.g, align 4, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !12
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !16
  %i.bp = xor i32 %i.bo, %i.as                    ; 2 uses
  store i32 %i.bp, ptr %i.l, align 8, !tbaa !16
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !12
  %i.bs = zext i8 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !16
  %i.bv = xor i32 %i.bu, %i.ay                    ; 2 uses
  store i32 %i.bv, ptr %i.q, align 4, !tbaa !16
  %i.bw = load i8, ptr %i.j, align 4, !tbaa !12
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16
  %i.ca = xor i32 %i.bz, %i.bd                    ; 2 uses
  store i32 %i.ca, ptr %i.b, align 8, !tbaa !16
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !12
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !16
  %i.cg = xor i32 %i.cf, %i.bj                    ; 2 uses
  store i32 %i.cg, ptr %i.g, align 4, !tbaa !16
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !12
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !16
  %i.cm = xor i32 %i.cl, %i.bp                    ; 2 uses
  store i32 %i.cm, ptr %i.l, align 8, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !12
end_hunk_0
begin_hunk_1_@_ZN9CryptData14DecryptBlock20EPh:bb.a
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !12
  %i.es = zext i8 %i.er to i32
  %i.et = shl nuw i32 %i.es, 24
  %i.eu = or disjoint i32 %i.en, %i.et
  %i.ev = xor i32 %i.eu, %.04041                  ; 2 uses
  %i.ew = tail call i32 @llvm.fshl.i32(i32 %.03843, i32 %.03843, i32 17)
  %i.ex = xor i32 %.03744, %i.ew
  %i.ey = add i32 %i.dr, %i.ex                    ; 4 uses
  %i.ez = and i32 %i.ey, 255
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !12
  %i.fd = zext i8 %i.fc to i32
  %i.fe = lshr i32 %i.ey, 8
  %i.ff = and i32 %i.fe, 255
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !12
  %i.fj = zext i8 %i.fi to i32
  %i.fk = shl nuw nsw i32 %i.fj, 8
  %i.fl = or disjoint i32 %i.fk, %i.fd
  %i.fm = lshr i32 %i.ey, 16
  %i.fn = and i32 %i.fm, 255
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !12
  %i.fr = zext i8 %i.fq to i32
  %i.fs = shl nuw nsw i32 %i.fr, 16
  %i.ft = or disjoint i32 %i.fl, %i.fs
  %i.fu = lshr i32 %i.ey, 24
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !12
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 24
  %i.ga = or disjoint i32 %i.ft, %i.fz
  %i.gb = xor i32 %i.ga, %.03942                  ; 2 uses
  %i.gc = add nsw i32 %.045, -1
  %.not = icmp eq i32 %.045, 0
  br i1 %.not, label %bb.b, label %bb.c, !llvm.loop !47
}

; Function Attrs: mustprogress uwtable
define void @_ZN9CryptData8SetKey30EbP11SecPasswordPKwPKh(ptr noundef nonnull align 8 dereferenceable(2516) %0, i1 noundef zeroext %1, ptr noundef nonnull %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 23 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [1032 x i8], align 16             ; 6 uses
  %5 = alloca %struct.sha1_context, align 8       ; 7 uses
  %i.d = alloca [3 x i8], align 1                 ; 6 uses
  %6 = alloca %struct.sha1_context, align 8       ; 4 uses
  %i.e = alloca [5 x i32], align 16               ; 4 uses
  %i.f = alloca [5 x i32], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %cond = icmp eq ptr %4, null
  %i.g = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %2) ; 2 uses
  br i1 %cond, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  br i1 %i.g, label %bb.f, label %.split.1

.split.us.preheader:                              ; preds = %bb.a
  br i1 %i.g, label %bb.b, label %.split.us.1

bb.b:                                             ; preds = %.split.us.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i8, ptr %i.h, align 8, !tbaa !50, !range !29, !noundef !30
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.split.us.1, label %.split51.us

.split.us.1:                                      ; preds = %bb.b, %.split.us.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.l = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.k, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.l, label %bb.c, label %.split.us.2

bb.c:                                             ; preds = %.split.us.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load i8, ptr %i.m, align 8, !tbaa !50, !range !29, !noundef !30
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %.split.us.2, label %.split51.us

.split.us.2:                                      ; preds = %bb.c, %.split.us.1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.p, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.q, label %bb.d, label %.split.us.3

bb.d:                                             ; preds = %.split.us.2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.s = load i8, ptr %i.r, align 8, !tbaa !50, !range !29, !noundef !30
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.split.us.3, label %.split51.us

.split.us.3:                                      ; preds = %bb.d, %.split.us.2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.v = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.u, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.v, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.split.us.3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.x = load i8, ptr %i.w, align 8, !tbaa !50, !range !29, !noundef !30
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.critedge, label %.split51.us

bb.f:                                             ; preds = %.split.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !50, !range !29, !noundef !30
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.g, label %.split.1

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 1
  %i.ae = load i64, ptr %4, align 1
  %i.af = icmp ne i64 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i32
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.split51.us, label %.split.1

.split51.us:                                      ; preds = %bb.g, %bb.i, %bb.k, %bb.m, %bb.b, %bb.c, %bb.d, %bb.e
  %.us-phi = phi ptr [ %i.u, %bb.e ], [ %0, %bb.b ], [ %i.k, %bb.c ], [ %i.p, %bb.d ], [ %0, %bb.g ], [ %i.ak, %bb.i ], [ %i.av, %bb.k ], [ %i.bg, %bb.m ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.us-phi, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  call void @_Z11SecHideDataPvmbb(ptr noundef nonnull %i.a, i64 noundef 16, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.us-phi, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  br label %bb.u

.split.1:                                         ; preds = %.split.preheader, %bb.f, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.al = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.ak, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.al, label %bb.h, label %.split.2

bb.h:                                             ; preds = %.split.1
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.an = load i8, ptr %i.am, align 8, !tbaa !50, !range !29, !noundef !30
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %.split.2

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aq = load i64, ptr %i.ap, align 1
  %i.ar = load i64, ptr %4, align 1
  %i.as = icmp ne i64 %i.aq, %i.ar
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.split51.us, label %.split.2

.split.2:                                         ; preds = %bb.i, %bb.h, %.split.1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aw = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.av, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.aw, label %bb.j, label %.split.3

bb.j:                                             ; preds = %.split.2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !50, !range !29, !noundef !30
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.k, label %.split.3

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bb = load i64, ptr %i.ba, align 1
  %i.bc = load i64, ptr %4, align 1
  %i.bd = icmp ne i64 %i.bb, %i.bc
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %.split51.us, label %.split.3

.split.3:                                         ; preds = %bb.k, %bb.j, %.split.2
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bh = tail call noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25) %i.bg, ptr noundef nonnull align 8 dereferenceable(25) %2)
  br i1 %i.bh, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.split.3
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !50, !range !29, !noundef !30
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bm = load i64, ptr %i.bl, align 1
  %i.bn = load i64, ptr %4, align 1
  %i.bo = icmp ne i64 %i.bm, %i.bn
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.split51.us, label %.critedge

.critedge:                                        ; preds = %.split.3, %bb.l, %bb.m, %.split.us.3, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.br = tail call i64 @wcslen(ptr noundef %3) #17 ; 2 uses
  %i.bs = shl i64 %i.br, 1                        ; 4 uses
  %i.bt = call noundef ptr @_Z9WideToRawPKwmPhm(ptr noundef %3, i64 noundef %i.br, ptr noundef nonnull %i.c, i64 noundef %i.bs) ; 0 uses
  %i.bu = icmp ne ptr %4, null                    ; 3 uses
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bs
  %i.bw = load i64, ptr %4, align 1
  store i64 %i.bw, ptr %i.bv, align 2
  %i.bx = add i64 %i.bs, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.critedge
  %.044 = phi i64 [ %i.bx, %bb.n ], [ %i.bs, %.critedge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @_Z9sha1_initP12sha1_context(ptr noundef nonnull %5)
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.p

.preheader:                                       ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @_Z9sha1_doneP12sha1_contextPj(ptr noundef nonnull %5, ptr noundef nonnull %i.f)
  %i.cb = load i32, ptr %i.f, align 16, !tbaa !16 ; 4 uses
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.a, align 16, !tbaa !12
  %i.cd = lshr i32 %i.cb, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !12
  %i.cg = lshr i32 %i.cb, 16
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ch, ptr %i.ci, align 2, !tbaa !12
  %i.cj = lshr i32 %i.cb, 24
  %i.ck = trunc nuw i32 %i.cj to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !16 ; 4 uses
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.co, ptr %i.cp, align 4, !tbaa !12
  %i.cq = lshr i32 %i.cn, 8
  %i.cr = trunc i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !12
  %i.ct = lshr i32 %i.cn, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.cu, ptr %i.cv, align 2, !tbaa !12
  %i.cw = lshr i32 %i.cn, 24
  %i.cx = trunc nuw i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !12
  %i.cz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !16 ; 4 uses
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.db, ptr %i.dc, align 8, !tbaa !12
  %i.dd = lshr i32 %i.da, 8
  %i.de = trunc i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 %i.de, ptr %i.df, align 1, !tbaa !12
  %i.dg = lshr i32 %i.da, 16
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.dh, ptr %i.di, align 2, !tbaa !12
  %i.dj = lshr i32 %i.da, 24
  %i.dk = trunc nuw i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !16 ; 4 uses
  %i.do = trunc i32 %i.dn to i8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 %i.do, ptr %i.dp, align 4, !tbaa !12
  %i.dq = lshr i32 %i.dn, 8
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !12
  %i.dt = lshr i32 %i.dn, 16
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %i.du, ptr %i.dv, align 2, !tbaa !12
  %i.dw = lshr i32 %i.dn, 24
  %i.dx = trunc nuw i32 %i.dw to i8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !12
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !31
  %i.eb = zext i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.eb ; 2 uses
  %i.ed = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIwSaIwEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(25) %i.ec, ptr noundef nonnull align 8 dereferenceable(25) %2) ; 0 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !32, !range !29, !noundef !30
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i8 %i.ef, ptr %i.eg, align 8, !tbaa !32
  %i.eh = load i32, ptr %i.dz, align 8, !tbaa !31
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 72
  %i.el = zext i1 %i.bu to i8
  store i8 %i.el, ptr %i.ek, align 8, !tbaa !50
  br i1 %i.bu, label %bb.s, label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.r
  %.04353 = phi i32 [ 0, %bb.o ], [ %i.ey, %bb.r ] ; 6 uses
  call void @_Z18sha1_process_rar29P12sha1_contextPKhm(ptr noundef nonnull %5, ptr noundef nonnull %i.c, i64 noundef %.044)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.em = trunc i32 %.04353 to i8
  store i8 %i.em, ptr %i.d, align 1, !tbaa !12
  %i.en = lshr i32 %.04353, 8
  %i.eo = trunc i32 %i.en to i8
  store i8 %i.eo, ptr %i.by, align 1, !tbaa !12
  %i.ep = lshr i32 %.04353, 16
  %i.eq = trunc nuw nsw i32 %i.ep to i8
  store i8 %i.eq, ptr %i.bz, align 1, !tbaa !12
  call void @_Z12sha1_processP12sha1_contextPKhm(ptr noundef nonnull %5, ptr noundef nonnull %i.d, i64 noundef 3)
  %i.er = and i32 %.04353, 16383
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) %5, i64 96, i1 false), !tbaa.struct !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @_Z9sha1_doneP12sha1_contextPj(ptr noundef nonnull %6, ptr noundef nonnull %i.e)
  %i.et = load i32, ptr %i.ca, align 16, !tbaa !16
  %i.eu = trunc i32 %i.et to i8
  %i.ev = lshr exact i32 %.04353, 14
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ew
  store i8 %i.eu, ptr %i.ex, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ey = add nuw nsw i32 %.04353, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ey, 262144
  br i1 %exitcond.not, label %.preheader, label %bb.p, !llvm.loop !48

bb.s:                                             ; preds = %.preheader
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.fa = load i64, ptr %4, align 1
  store i64 %i.fa, ptr %i.ez, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ej, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @_Z11SecHideDataPvmbb(ptr noundef nonnull %i.fb, i64 noundef 16, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.fc = load i32, ptr %i.dz, align 8, !tbaa !31 ; 2 uses
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.fd
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ff, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.fg = add i32 %i.fc, 1
  %i.fh = and i32 %i.fg, 3
  store i32 %i.fh, ptr %i.dz, align 8, !tbaa !31
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.c, i64 noundef 1032)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %bb.u

bb.u:                                             ; preds = %.split51.us, %bb.t
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 944
  call void @_ZN8Rijndael4InitEbPKhjS1_(ptr noundef nonnull align 4 dereferenceable(264) %i.fi, i1 noundef zeroext %1, ptr noundef nonnull %i.a, i32 noundef 128, ptr noundef nonnull %i.b)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.a, i64 noundef 16)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.b, i64 noundef 16)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare noundef zeroext i1 @_ZN11SecPasswordeqERS_(ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(25)) local_unnamed_addr #3

declare void @_Z11SecHideDataPvmbb(ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef ptr @_Z9WideToRawPKwmPhm(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z9sha1_initP12sha1_context(ptr noundef) local_unnamed_addr #3

declare void @_Z18sha1_process_rar29P12sha1_contextPKhm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z12sha1_processP12sha1_contextPKhm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z9sha1_doneP12sha1_contextPj(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9cleandataPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN8Rijndael4InitEbPKhjS1_(ptr noundef nonnull align 4 dereferenceable(264), i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z6pbkdf2PKhmS0_mPhS1_S1_j(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #2 {
.preheader:
  %i.a = alloca [68 x i8], align 16               ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 15 uses
  %i.c = alloca [32 x i8], align 16               ; 14 uses
  %8 = alloca %struct.sha256_context, align 8     ; 5 uses
  %9 = alloca %struct.sha256_context, align 8     ; 5 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i8, align 1                       ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.g = tail call i64 @llvm.umin.i64(i64 %3, i64 64)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %2, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.h, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.i = add i64 %3, 4
  call fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.i, ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.j = add i32 %7, -1                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i8 0, ptr %i.d, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i8 0, ptr %i.e, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %._crit_edge
  %.02529.1 = phi i32 [ %i.s, %.lr.ph.1 ], [ 0, %._crit_edge ]
  call fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef %i.f, ptr noundef nonnull %8, ptr noundef nonnull %i.d, ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.m = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %i.n = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %i.o = xor <16 x i8> %i.n, %i.m
  store <16 x i8> %i.o, ptr %i.c, align 16, !tbaa !12
  %i.p = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %i.q = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.r = xor <16 x i8> %i.q, %i.p
  store <16 x i8> %i.r, ptr %i.l, align 16, !tbaa !12
  %i.s = add nuw i32 %.02529.1, 1                 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.s, 16
  br i1 %exitcond.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !52

._crit_edge.1:                                    ; preds = %.lr.ph.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %5, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2, %._crit_edge.1
  %.02529.2 = phi i32 [ %i.z, %.lr.ph.2 ], [ 0, %._crit_edge.1 ]
  call fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef %i.f, ptr noundef nonnull %8, ptr noundef nonnull %i.d, ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.t = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %i.u = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %i.v = xor <16 x i8> %i.u, %i.t
  store <16 x i8> %i.v, ptr %i.c, align 16, !tbaa !12
  %i.w = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %i.x = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.y = xor <16 x i8> %i.x, %i.w
  store <16 x i8> %i.y, ptr %i.l, align 16, !tbaa !12
  %i.z = add nuw i32 %.02529.2, 1                 ; 2 uses
  %exitcond.not.2 = icmp eq i32 %i.z, 16
  br i1 %exitcond.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !52

._crit_edge.2:                                    ; preds = %.lr.ph.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.a, i64 noundef 68)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.c, i64 noundef 32)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.b, i64 noundef 32)
  call void @_Z9cleandataPvm(ptr noundef nonnull %i.f, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02529 = phi i32 [ %i.ag, %.lr.ph ], [ 0, %.preheader ]
  call fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef %i.f, ptr noundef nonnull %8, ptr noundef nonnull %i.d, ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.aa = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %i.ab = load <16 x i8>, ptr %i.c, align 16, !tbaa !12
  %i.ac = xor <16 x i8> %i.ab, %i.aa
  store <16 x i8> %i.ac, ptr %i.c, align 16, !tbaa !12
  %i.ad = load <16 x i8>, ptr %i.k, align 16, !tbaa !12
  %i.ae = load <16 x i8>, ptr %i.l, align 16, !tbaa !12
  %i.af = xor <16 x i8> %i.ae, %i.ad
  store <16 x i8> %i.af, ptr %i.l, align 16, !tbaa !12
  %i.ag = add nuw i32 %.02529, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11hmac_sha256PKhmS0_mPhP14sha256_contextPbS3_S4_(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr nofree noundef captures(address_is_null) %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(none) %8) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %9 = alloca %struct.sha256_context, align 8     ; 5 uses
  %i.b = alloca [64 x i8], align 16               ; 38 uses
  %10 = alloca %struct.sha256_context, align 8    ; 8 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  %11 = alloca %struct.sha256_context, align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.d = icmp ugt i64 %1, 64
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @_Z11sha256_initP14sha256_context(ptr noundef nonnull %9)
  call void @_Z14sha256_processP14sha256_contextPKvm(ptr noundef nonnull %9, ptr noundef %0, i64 noundef %1)
  call void @_Z11sha256_doneP14sha256_contextPh(ptr noundef nonnull %9, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.043 = phi i64 [ 32, %bb.b ], [ %1, %bb.a ]    ; 24 uses
  %.042 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]  ; 32 uses
  %.042.sroa.phi140 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.042.sroa.phi137 = getelementptr inbounds nuw i8, ptr %.042, i64 96
  %.042.sroa.phi134 = getelementptr inbounds nuw i8, ptr %.042, i64 80
  %.042.sroa.phi131 = getelementptr inbounds nuw i8, ptr %.042, i64 64
  %.042.sroa.phi128 = getelementptr inbounds nuw i8, ptr %.042, i64 48
  %.042.sroa.phi125 = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %.042.sroa.phi122 = getelementptr inbounds nuw i8, ptr %.042, i64 16
  %.042.sroa.phi119 = getelementptr inbounds nuw i8, ptr %.042, i64 8
  %.042.sroa.phi116 = getelementptr inbounds nuw i8, ptr %.042, i64 96
  %.042.sroa.phi113 = getelementptr inbounds nuw i8, ptr %.042, i64 80
  %.042.sroa.phi110 = getelementptr inbounds nuw i8, ptr %.042, i64 64
  %.042.sroa.phi107 = getelementptr inbounds nuw i8, ptr %.042, i64 48
  %.042.sroa.phi104 = getelementptr inbounds nuw i8, ptr %.042, i64 32
  %.042.sroa.phi = getelementptr inbounds nuw i8, ptr %.042, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %6, align 1, !tbaa !35, !range !29, !noundef !30
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %.thread68, label %bb.e

.thread68:                                        ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull align 8 dereferenceable(104) %5, i64 104, i1 false), !tbaa.struct !57
  br label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not61 = icmp eq i64 %.043, 0
  br i1 %.not61, label %.lr.ph54.preheader, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp samesign ult i64 %.043, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check70 = icmp samesign ult i64 %.043, 16
  br i1 %min.iters.check70, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.g = and i64 %.043, 12
  %n.vec = and i64 %.043, 112                     ; 9 uses
  %wide.load = load <8 x i8>, ptr %.042, align 1, !tbaa !12
  %wide.load71 = load <8 x i8>, ptr %.042.sroa.phi119, align 1, !tbaa !12
  %i.h = xor <8 x i8> %wide.load, splat (i8 54)
  %i.i = xor <8 x i8> %wide.load71, splat (i8 54)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <8 x i8> %i.h, ptr %i.b, align 16, !tbaa !12
  store <8 x i8> %i.i, ptr %i.j, align 8, !tbaa !12
  %i.k = icmp eq i64 %n.vec, 16
  br i1 %i.k, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.042, i64 24
  %wide.load.1 = load <8 x i8>, ptr %.042.sroa.phi, align 1, !tbaa !12
  %wide.load71.1 = load <8 x i8>, ptr %i.l, align 1, !tbaa !12
  %i.m = xor <8 x i8> %wide.load.1, splat (i8 54)
  %i.n = xor <8 x i8> %wide.load71.1, splat (i8 54)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <8 x i8> %i.m, ptr %i.o, align 16, !tbaa !12
  store <8 x i8> %i.n, ptr %i.p, align 8, !tbaa !12
  %i.q = icmp eq i64 %n.vec, 32
  br i1 %i.q, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.r = getelementptr inbounds nuw i8, ptr %.042, i64 40
  %wide.load.2 = load <8 x i8>, ptr %.042.sroa.phi104, align 1, !tbaa !12
  %wide.load71.2 = load <8 x i8>, ptr %i.r, align 1, !tbaa !12
  %i.s = xor <8 x i8> %wide.load.2, splat (i8 54)
  %i.t = xor <8 x i8> %wide.load71.2, splat (i8 54)
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <8 x i8> %i.s, ptr %i.u, align 16, !tbaa !12
  store <8 x i8> %i.t, ptr %i.v, align 8, !tbaa !12
  %i.w = icmp eq i64 %n.vec, 48
  br i1 %i.w, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.x = getelementptr inbounds nuw i8, ptr %.042, i64 56
  %wide.load.3 = load <8 x i8>, ptr %.042.sroa.phi107, align 1, !tbaa !12
  %wide.load71.3 = load <8 x i8>, ptr %i.x, align 1, !tbaa !12
  %i.y = xor <8 x i8> %wide.load.3, splat (i8 54)
  %i.z = xor <8 x i8> %wide.load71.3, splat (i8 54)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 56
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIwSaIwEEaSERKS1_:bb.a
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.c = load ptr, ptr %1, align 8, !tbaa !70     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !71
  %i.i = load ptr, ptr %0, align 8, !tbaa !70     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i, !prof !72

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #21 ; 4 uses
  %i.p = icmp samesign ugt i64 %i.f, 4
  br i1 %i.p, label %bb.e, label %bb.f, !prof !73

bb.e:                                             ; preds = %_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.o, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIwSaIwEE11_M_allocateEm.exit.i
  %i.q = icmp eq i64 %i.f, 4
  br i1 %i.q, label %bb.g, label %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %i.c, align 4, !tbaa !41
  store i32 %i.r, ptr %i.o, align 4, !tbaa !41
  br label %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit

_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.s = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.s) #22
  br label %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit

_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit: ; preds = %_ZNSt6vectorIwSaIwEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKwS1_EEEEPwmT_S9_.exit, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !71
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.i:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !69   ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = icmp sgt i64 %i.f, 4
  br i1 %i.y, label %bb.k, label %bb.l, !prof !73

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.z = icmp eq i64 %i.f, 4
  br i1 %i.z, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !41
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !41
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.ab = icmp sgt i64 %i.x, 4
  br i1 %i.ab, label %bb.o, label %bb.p, !prof !73

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.x, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !70
  %.pre25 = load ptr, ptr %i.u, align 8, !tbaa !69 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !70
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !69
  %.pre28 = ptrtoint ptr %.pre25 to i64
  %.pre29 = ptrtoint ptr %.pre26 to i64
  %.pre31 = sub i64 %.pre28, %.pre29
  %.pre33 = ptrtoint ptr %.pre27 to i64
  br label %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit

bb.p:                                             ; preds = %bb.n
  %i.ac = icmp eq i64 %i.x, 4
  br i1 %i.ac, label %bb.q, label %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = load i32, ptr %i.c, align 4, !tbaa !41
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !41
  br label %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit

_ZSt4copyIPwS0_ET0_T_S2_S1_.exit:                 ; preds = %bb.o, %bb.p, %bb.q
  %.pre-phi34 = phi i64 [ %.pre33, %bb.o ], [ %i.d, %bb.p ], [ %i.d, %bb.q ]
  %.pre-phi32 = phi i64 [ %.pre31, %bb.o ], [ %i.x, %bb.p ], [ 4, %bb.q ]
  %i.ae = phi ptr [ %.pre25, %bb.o ], [ %i.v, %bb.p ], [ %i.v, %bb.q ] ; 2 uses
  %i.af = phi ptr [ %.pre, %bb.o ], [ %i.c, %bb.p ], [ %i.c, %bb.q ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.pre-phi32 ; 3 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %.pre-phi34, %i.ah              ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 4
  br i1 %i.aj, label %bb.r, label %bb.s, !prof !73

bb.r:                                             ; preds = %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ag, i64 %i.ai, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.s:                                             ; preds = %_ZSt4copyIPwS0_ET0_T_S2_S1_.exit
  %i.ak = icmp eq i64 %i.ai, 4
  br i1 %i.ak, label %bb.t, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

bb.t:                                             ; preds = %bb.s
  %i.al = load i32, ptr %i.ag, align 4, !tbaa !41
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !41
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIwSaIwEE13_M_deallocateEPwm.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !69
  br label %bb.u

bb.u:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKwSt6vectorIwSaIwEEEENS1_IPwS6_EEET0_T_SB_SA_.exit, %bb.a
  ret ptr %0
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

declare void @_Z11sha256_initP14sha256_context(ptr noundef) local_unnamed_addr #3

declare void @_Z14sha256_processP14sha256_contextPKvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z11sha256_doneP14sha256_contextPh(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11SecPasswordC1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11SecPasswordD1Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25)) unnamed_addr #15

declare void @_ZN7RarTime14SetCurrentTimeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef i64 @_ZN7RarTime6GetWinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{!2, !13}
!3 = distinct !{!3, !13}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"short", !8, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!"_ZTS12CRYPT_METHOD", !8, i64 0}
!18 = !{!"bool", !8, i64 0}
!19 = !{!"_ZTS8Rijndael", !18, i64 0, !9, i64 4, !8, i64 8, !8, i64 24}
!20 = !{!"_ZTS9CryptData", !8, i64 0, !9, i64 320, !8, i64 328, !9, i64 936, !17, i64 940, !19, i64 944, !8, i64 1208, !8, i64 2232, !8, i64 2488, !8, i64 2504, !8, i64 2508}
!21 = !{!20, !17, i64 940}
!22 = !{!"any pointer", !8, i64 0}
!23 = !{!"p1 wchar_t", !22, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseIwSaIwEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!"_ZTSNSt12_Vector_baseIwSaIwEE12_Vector_implE", !24, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseIwSaIwEE", !25, i64 0}
!27 = !{!"_ZTSSt6vectorIwSaIwEE", !26, i64 0}
!28 = !{!"_ZTS11SecPassword", !27, i64 0, !18, i64 24}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!20, !9, i64 320}
!32 = !{!28, !18, i64 24}
!33 = !{!"long", !8, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!18, !18, i64 0}
!36 = !{!"branch_weights", i32 4, i32 12}
!37 = !{!"llvm.loop.isvectorized", i32 1}
!38 = !{!"llvm.loop.unroll.runtime.disable"}
!39 = !{!20, !9, i64 936}
!40 = !{!"wchar_t", !8, i64 0}
!41 = !{!40, !40, i64 0}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = !{!"_ZTSN9CryptData13KDF3CacheItemE", !28, i64 0, !8, i64 32, !8, i64 40, !8, i64 56, !18, i64 72}
!50 = !{!49, !18, i64 72}
!51 = !{i64 0, i64 20, !12, i64 24, i64 8, !34, i64 32, i64 64, !12}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !13, !37, !38}
!54 = distinct !{!54, !13, !38, !37}
!55 = distinct !{!55, !13, !37, !38}
!56 = distinct !{!56, !13, !38, !37}
!57 = !{i64 0, i64 32, !12, i64 32, i64 8, !34, i64 40, i64 64, !12}
!58 = !{!"_ZTSN9CryptData13KDF5CacheItemE", !28, i64 0, !8, i64 32, !8, i64 48, !9, i64 80, !8, i64 84, !8, i64 116}
!59 = !{!58, !9, i64 80}
!60 = !{!"_ZTS9HASH_TYPE", !8, i64 0}
!61 = !{!"_ZTS9HashValue", !60, i64 0, !8, i64 4}
!62 = !{!61, !60, i64 0}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13, !37, !38}
!65 = distinct !{!65, !13, !37, !38}
!66 = distinct !{!66, !13, !38, !37}
!67 = !{!"_ZTS7RarTime", !33, i64 0}
!68 = !{!67, !33, i64 0}
!69 = !{!24, !23, i64 8}
!70 = !{!24, !23, i64 0}
!71 = !{!24, !23, i64 16}
!72 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!73 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_2
