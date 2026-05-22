inline.NumInlined: 71
inline.NumDeleted: 8
begin_hunk_0_@unzGetCurrentFileInfo:bb.a
  %i.g = load <2 x i64>, ptr %i.e, align 16
  store <2 x i64> %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load <2 x i64>, ptr %i.h, align 16
  store <2 x i64> %i.j, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load <2 x i64>, ptr %i.k, align 16
  store <2 x i64> %i.m, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load <2 x i64>, ptr %i.n, align 16
  store <2 x i64> %i.p, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load <2 x i64>, ptr %i.q, align 16
  store <2 x i64> %i.s, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load <2 x i64>, ptr %i.v, align 16
  store <2 x i64> %i.x, ptr %i.w, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 -103, 1) i32 @unzGoToFirstFile(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.j, ptr %i.k, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -103, 1) i32 @unzGoToNextFile(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not19 = icmp ne i64 %i.e, 65535
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %.pre20 = add i64 %.pre, 1                      ; 2 uses
  %i.f = icmp eq i64 %.pre20, %i.e
  %or.cond = select i1 %.not19, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.i = load i64, ptr %i.h, align 8
  %i.j = add i64 %i.i, 46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = load i64, ptr %i.k, align 8
  %i.m = add i64 %i.j, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.p, %i.r
  store i64 %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.pre20, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.u, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = zext i1 %i.w to i64
  store i64 %i.x, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a, %._crit_edge
  %.0 = phi i32 [ -102, %bb.a ], [ -100, %bb.b ], [ %i.v, %._crit_edge ], [ -100, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -103, 1) i32 @unzLocateFile(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.unz_file_info64_s, align 8  ; 4 uses
  %i.a = alloca [257 x i8], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %i.d = icmp ugt i64 %i.c, 255
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.j, label %unzGoToFirstFile.exit

unzGoToFirstFile.exit:                            ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.i = load <2 x i64>, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(136) %i.j, i64 136, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.m = load i64, ptr %i.l, align 8
  store i64 %i.m, ptr %i.h, align 8
  store i64 0, ptr %i.g, align 8
  %i.n = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  %i.p = zext i1 %i.o to i64
  store i64 %i.p, ptr %i.e, align 8
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %unzGoToFirstFile.exit
  %i.q = icmp ult i32 %2, 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %unzGoToNextFile.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.v = call fastcc range(i32 -103, 1) i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.e, label %unzGoToNextFile.exit.thread43

bb.e:                                             ; preds = %bb.d
  br i1 %i.q, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  %i.x = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.a, ptr noundef nonnull readonly dereferenceable(1) %1) #13
  br label %unzStringFileNameCompare.exit

.preheader.i:                                     ; preds = %bb.e, %bb.h
  %.024.i.i = phi ptr [ %i.ai, %bb.h ], [ %i.a, %bb.e ] ; 2 uses
  %.023.i.i = phi ptr [ %i.ah, %bb.h ], [ %1, %bb.e ] ; 2 uses
  %i.y = load i8, ptr %.024.i.i, align 1          ; 3 uses
  %i.z = load i8, ptr %.023.i.i, align 1          ; 3 uses
  %i.aa = add i8 %i.y, -97
  %or.cond.i.i = icmp ult i8 %i.aa, 26
  %i.ab = add nsw i8 %i.y, -32
  %spec.select.i.i = select i1 %or.cond.i.i, i8 %i.ab, i8 %i.y ; 2 uses
  %i.ac = add i8 %i.z, -97
  %or.cond5.i.i = icmp ult i8 %i.ac, 26
  %i.ad = add nsw i8 %i.z, -32
  %.021.i.i = select i1 %or.cond5.i.i, i8 %i.ad, i8 %i.z ; 2 uses
  %i.ae = icmp eq i8 %spec.select.i.i, 0
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i
  %i.af = icmp ne i8 %.021.i.i, 0
  %i.ag = sext i1 %i.af to i32
  br label %unzStringFileNameCompare.exit

bb.h:                                             ; preds = %.preheader.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 1
  %.not37 = icmp eq i8 %spec.select.i.i, %.021.i.i
  br i1 %.not37, label %.preheader.i, label %unzStringFileNameCompare.exit.thread

unzStringFileNameCompare.exit:                    ; preds = %bb.f, %bb.g
  %.0.i31 = phi i32 [ %i.x, %bb.f ], [ %i.ag, %bb.g ]
  %i.aj = icmp eq i32 %.0.i31, 0
  br i1 %i.aj, label %unzGoToNextFile.exit.thread, label %unzStringFileNameCompare.exit.thread

unzGoToNextFile.exit.thread:                      ; preds = %unzStringFileNameCompare.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.j

unzStringFileNameCompare.exit.thread:             ; preds = %bb.h, %unzStringFileNameCompare.exit
  %i.ak = load i64, ptr %i.e, align 8
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %unzGoToNextFile.exit.thread43, label %bb.i

bb.i:                                             ; preds = %unzStringFileNameCompare.exit.thread
  %i.al = load i64, ptr %i.r, align 8             ; 2 uses
  %.not19.i = icmp ne i64 %i.al, 65535
  %.pre.i = load i64, ptr %i.g, align 8
  %.pre20.i = add i64 %.pre.i, 1                  ; 2 uses
  %i.am = icmp eq i64 %.pre20.i, %i.al
  %or.cond.i = select i1 %.not19.i, i1 %i.am, i1 false
  br i1 %or.cond.i, label %unzGoToNextFile.exit.thread43, label %unzGoToNextFile.exit

unzGoToNextFile.exit.thread43:                    ; preds = %bb.d, %bb.i, %unzStringFileNameCompare.exit.thread
  %.227.ph = phi i32 [ -100, %unzStringFileNameCompare.exit.thread ], [ -100, %bb.i ], [ %i.v, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %._crit_edge

unzGoToNextFile.exit:                             ; preds = %bb.i
  %i.an = load i64, ptr %i.s, align 8
  %i.ao = add i64 %i.an, 46
  %i.ap = load i64, ptr %i.t, align 8
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = load i64, ptr %i.u, align 8
  %i.as = add i64 %i.aq, %i.ar
  %i.at = load i64, ptr %i.h, align 8
  %i.au = add i64 %i.as, %i.at
  store i64 %i.au, ptr %i.h, align 8
  store i64 %.pre20.i, ptr %i.g, align 8
  %i.av = call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  %i.ax = zext i1 %i.aw to i64
  store i64 %i.ax, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.ay = icmp eq i32 %i.av, 0
  br i1 %i.ay, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %unzGoToNextFile.exit, %unzGoToNextFile.exit.thread43, %unzGoToFirstFile.exit
  %.025.lcssa = phi i32 [ %i.n, %unzGoToFirstFile.exit ], [ %.227.ph, %unzGoToNextFile.exit.thread43 ], [ %i.av, %unzGoToNextFile.exit ]
  store <2 x i64> %i.i, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.j, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.k, align 8
  br label %bb.j

bb.j:                                             ; preds = %unzGoToNextFile.exit.thread, %bb.c, %bb.b, %bb.a, %._crit_edge
  %.2 = phi i32 [ -102, %bb.b ], [ -102, %bb.a ], [ 0, %unzGoToNextFile.exit.thread ], [ %.025.lcssa, %._crit_edge ], [ -100, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret i32 %.2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -102, 1) i32 @unzGetFilePos64(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8
  store i64 %i.f, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -102, %bb.a ], [ 0, %bb.c ], [ -100, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -102, 1) i32 @unzGetFilePos(ptr noundef readonly captures(address_is_null) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %unzGetFilePos64.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load i64, ptr %i.b, align 8
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %unzGetFilePos64.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load <2 x i64>, ptr %i.d, align 8
  %i.f = shufflevector <2 x i64> %i.e, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.f, ptr %1, align 8
  br label %unzGetFilePos64.exit.thread

unzGetFilePos64.exit.thread:                      ; preds = %bb.b, %bb.a, %bb.c
  %.0.i7 = phi i32 [ 0, %bb.c ], [ -100, %bb.b ], [ -102, %bb.a ]
  ret i32 %.0.i7
}

; Function Attrs: nounwind uwtable
define range(i32 -103, 1) i32 @unzGoToFilePos64(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i1 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ -102, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -103, 1) i32 @unzGoToFilePos(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %unzGoToFilePos64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load <2 x i64>, ptr %1, align 8
  %i.e = shufflevector <2 x i64> %i.d, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = tail call fastcc i32 @unz64local_GetCurrentFileInfoInternal(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i1 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.j, ptr %i.k, align 8
  br label %unzGoToFilePos64.exit

unzGoToFilePos64.exit:                            ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -102, %bb.a ], [ %i.h, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @unzOpenCurrentFile3(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, ptr noundef writeonly captures(address_is_null) %2, i32 noundef %3, ptr noundef readnone captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = alloca [2 x i8], align 2                 ; 5 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [4 x i8], align 1                 ; 4 uses
  %i.g = alloca [2 x i8], align 2                 ; 5 uses
  %i.h = alloca [2 x i8], align 2                 ; 5 uses
  %i.i = alloca [2 x i8], align 1                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 5 uses
  %.not = icmp ne ptr %4, null
  %i.k = icmp eq ptr %0, null
  %or.cond85 = or i1 %i.k, %.not
  br i1 %or.cond85, label %unz64local_CheckCurrentFileCoherencyHeader.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.m = load i64, ptr %i.l, align 8
  %.not77 = icmp eq i64 %i.m, 0
  br i1 %.not77, label %unz64local_CheckCurrentFileCoherencyHeader.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  %.not78 = icmp eq ptr %i.o, null
  br i1 %.not78, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @free(ptr noundef %i.p) #14
  store ptr null, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.r = load i64, ptr %i.q, align 8
  %i.s = icmp eq i64 %i.r, 8
  br i1 %i.s, label %bb.e, label %unzCloseCurrentFile.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = tail call i32 @inflateEnd(ptr noundef nonnull %i.t) #14 ; 0 uses
  br label %unzCloseCurrentFile.exit

unzCloseCurrentFile.exit:                         ; preds = %bb.d, %bb.e
  tail call void @free(ptr noundef nonnull %i.o) #14
  store ptr null, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %unzCloseCurrentFile.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 12 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, %i.y
  %i.ac = tail call i64 @call_zseek64(ptr noundef nonnull %0, ptr noundef %i.w, i64 noundef %i.ab, i32 noundef 0) #14
  %.not.i86 = icmp eq i64 %i.ac, 0
  br i1 %.not.i86, label %bb.g, label %unz64local_CheckCurrentFileCoherencyHeader.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.v, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 20 uses
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call i64 %i.af(ptr noundef %i.ah, ptr noundef %i.ad, ptr noundef nonnull %i.j, i64 noundef 4) #14, !inline_history !9
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = icmp eq i64 %i.aj, 4
  br i1 %i.ak, label %unz64local_getLong.exit.i, label %unz64local_getLong.exit.thread.i

unz64local_getLong.exit.thread.i:                 ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = load ptr, ptr %i.ag, align 8
  %i.ao = call i32 %i.am(ptr noundef %i.an, ptr noundef %i.ad) #14, !inline_history !9
  %.not.i.not.i = icmp eq i32 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #14
  %i.ap = select i1 %.not.i.not.i, i32 -103, i32 -1
  br label %bb.h

end_hunk_0
