inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@evictionPoolPopulate:bb.a
  %i.ez = load i32, ptr %i.ey, align 1, !tbaa !9
  %i.fa = zext i32 %i.ez to i64
  br label %sdslen.exit

bb.ay:                                            ; preds = %bb.at
  %i.fb = getelementptr inbounds i8, ptr %i.au, i64 -17
  %i.fc = load i64, ptr %i.fb, align 1, !tbaa !63
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay
  %.0.i86 = phi i64 [ %i.fc, %bb.ay ], [ %i.er, %bb.au ], [ %i.eu, %bb.av ], [ %i.ex, %bb.aw ], [ %i.fa, %bb.ax ] ; 2 uses
  %i.fd = trunc i64 %.0.i86 to i32
  %i.fe = icmp sgt i32 %i.fd, 255
  br i1 %i.fe, label %bb.az, label %sdslen.exit.thread

bb.az:                                            ; preds = %sdslen.exit
  %i.ff = call ptr @sdsdup(ptr noundef nonnull %i.au) #12
  %i.fg = sext i32 %.1 to i64
  br label %bb.bf

sdslen.exit.thread:                               ; preds = %bb.at, %sdslen.exit
  %.0.i8689 = phi i64 [ %.0.i86, %sdslen.exit ], [ 0, %bb.at ] ; 5 uses
  %i.fh = sext i32 %.1 to i64                     ; 2 uses
  %i.fi = getelementptr inbounds [32 x i8], ptr %2, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !47
  %i.fl = shl i64 %.0.i8689, 32                   ; 2 uses
  %sext = add i64 %i.fl, 4294967296
  %i.fm = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr nonnull align 1 %i.au, i64 %i.fm, i1 false)
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !47 ; 5 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -1     ; 2 uses
  %.val.i87 = load i8, ptr %i.fo, align 1, !tbaa !60
  %i.fp = and i8 %.val.i87, 7
  switch i8 %i.fp, label %sdssetlen.exit [
    i8 0, label %bb.ba
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.bd
    i8 4, label %bb.be
  ]

bb.ba:                                            ; preds = %sdslen.exit.thread
  %.tr.i = trunc i64 %.0.i8689 to i8
  %i.fq = shl i8 %.tr.i, 3
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !60
  br label %sdssetlen.exit

bb.bb:                                            ; preds = %sdslen.exit.thread
  %i.fr = trunc i64 %.0.i8689 to i8
  %i.fs = getelementptr inbounds i8, ptr %i.fn, i64 -3
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !60
  br label %sdssetlen.exit

bb.bc:                                            ; preds = %sdslen.exit.thread
  %i.ft = trunc i64 %.0.i8689 to i16
  %i.fu = getelementptr inbounds i8, ptr %i.fn, i64 -5
  store i16 %i.ft, ptr %i.fu, align 1, !tbaa !61
  br label %sdssetlen.exit

bb.bd:                                            ; preds = %sdslen.exit.thread
  %i.fv = trunc i64 %.0.i8689 to i32
  %i.fw = getelementptr inbounds i8, ptr %i.fn, i64 -9
  store i32 %i.fv, ptr %i.fw, align 1, !tbaa !9
  br label %sdssetlen.exit

bb.be:                                            ; preds = %sdslen.exit.thread
  %i.fx = ashr exact i64 %i.fl, 32
  %i.fy = getelementptr inbounds i8, ptr %i.fn, i64 -17
  store i64 %i.fx, ptr %i.fy, align 1, !tbaa !63
  br label %sdssetlen.exit

sdssetlen.exit:                                   ; preds = %sdslen.exit.thread, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be
  %i.fz = load ptr, ptr %i.fj, align 8, !tbaa !47
  br label %bb.bf

bb.bf:                                            ; preds = %sdssetlen.exit, %bb.az
  %.sink109 = phi ptr [ %i.fz, %sdssetlen.exit ], [ %i.ff, %bb.az ]
  %.pre-phi = phi i64 [ %i.fh, %sdssetlen.exit ], [ %i.fg, %bb.az ] ; 2 uses
  %i.ga = getelementptr inbounds [32 x i8], ptr %2, i64 %.pre-phi
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store ptr %.sink109, ptr %i.gb, align 8, !tbaa !58
  %i.gc = getelementptr inbounds [32 x i8], ptr %2, i64 %.pre-phi ; 3 uses
  store i64 %.075, ptr %i.gc, align 8, !tbaa !59
  %i.gd = load i32, ptr %i.n, align 8, !tbaa !64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  store i32 %i.gd, ptr %i.ge, align 8, !tbaa !49
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 28
  store i32 %i.d, ptr %i.gf, align 4, !tbaa !67
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge, %bb.bf
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit90, label %bb.c, !llvm.loop !68

.loopexit90:                                      ; preds = %bb.bg, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.g, %bb.b ], [ %i.g, %bb.bg ]
  ret i32 %.0
}

declare i32 @kvstoreGetFairRandomDictIndex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @randomEvictionShouldSkipDictIndex(i32 noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @clusterCanAccessKeysInSlot(i32 noundef %0) #12
  %.not = icmp eq i32 %i.a, 0
  %i.b = zext i1 %.not to i32
  ret i32 %i.b
}

declare i32 @kvstoreDictGetSomeKeys(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @kvobjGetKey(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local range(i64 0, 256) i64 @LFUDecrAndReturn(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = lshr i64 %i.a, 40
  %i.c = and i64 %i.b, 255                        ; 2 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.a, 48                        ; 2 uses
  %i.f = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.g = sdiv i64 %i.f, 60
  %i.h = and i64 %i.g, 65535                      ; 2 uses
  %.not.i = icmp samesign ult i64 %i.h, %i.e
  %i.i = sub nsw i64 %i.h, %i.e                   ; 2 uses
  %i.j = add nsw i64 %i.i, 65535
  %.0.i = select i1 %.not.i, i64 %i.j, i64 %i.i   ; 2 uses
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7784), align 8, !tbaa !56
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = udiv i64 %.0.i, %i.l
  %.not9 = icmp ult i64 %.0.i, %i.l
  %i.n = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %i.m)
  %cond.fr = freeze i1 %.not9
  br i1 %cond.fr, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.o = phi i64 [ %i.c, %.thread ], [ %i.n, %bb.b ]
  ret i64 %i.o
}

declare i64 @kvobjGetExpire(ptr noundef) local_unnamed_addr #1

declare void @_serverPanic(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

declare void @sdsfree(ptr noundef) local_unnamed_addr #1

declare ptr @sdsdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local range(i64 0, 65536) i64 @LFUGetTimeInMinutes() local_unnamed_addr #6 {
bb.a:
  %i.a = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.b = sdiv i64 %i.a, 60
  %i.c = and i64 %i.b, 65535
  ret i64 %i.c
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define dso_local i64 @LFUTimeElapsed(i64 noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8040) seq_cst, align 8, !tbaa !57
  %i.b = sdiv i64 %i.a, 60
  %i.c = and i64 %i.b, 65535                      ; 2 uses
  %.not = icmp ult i64 %i.c, %0
  %i.d = sub i64 %i.c, %0                         ; 2 uses
  %i.e = add i64 %i.d, 65535
  %.0 = select i1 %.not, i64 %i.e, i64 %i.d
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @LFULogIncr(i8 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i8 %0, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %0 to i32
  %i.c = tail call i32 @rand() #12
  %i.d = sitofp i32 %i.c to double
  %1 = fdiv double %i.d, f0x41DFFFFFFFC00000
  %i.e = add nsw i32 %i.b, -5
  %i.f = sitofp i32 %i.e to double
  %i.g = icmp ult i8 %0, 5
  %.08 = select i1 %i.g, double 0.000000e+00, double %i.f
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7780), align 4, !tbaa !70
  %i.i = sitofp i32 %i.h to double
  %i.j = tail call double @llvm.fmuladd.f64(double %.08, double %i.i, double 1.000000e+00)
  %2 = fdiv double 1.000000e+00, %i.j
  %i.k = fcmp olt double %1, %2
  %i.l = zext i1 %i.k to i8
  %.09 = add nuw i8 %0, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %.09, %bb.b ], [ -1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nounwind uwtable
define dso_local i64 @freeMemoryGetNotCountedMemory() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7400), align 8, !tbaa !71 ; 2 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8, !tbaa !72 ; 3 uses
  %i.c = icmp sgt i64 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sdiv i64 %i.b, 16384
  %i.e = shl nsw i64 %i.d, 6
  %i.f = add i64 %i.b, 64
  %i.g = add i64 %i.f, %i.e
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  %i.h = tail call i64 @asmGetMigrateOutputBufferSize() #12
  %i.i = add i64 %i.h, %.1                        ; 2 uses
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !73
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6752), align 8, !tbaa !74 ; 5 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %.val.i = load i8, ptr %i.l, align 1, !tbaa !60 ; 2 uses
  %i.m = and i8 %.val.i, 7
  switch i8 %i.m, label %sdsAllocSize.exit [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = lshr i8 %.val.i, 3
  %narrow.i = add nuw nsw i8 %i.n, 2
  %i.o = zext nneg i8 %narrow.i to i64
  br label %sdsAllocSize.exit

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 -2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !60
  %i.r = zext i8 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 4
  br label %sdsAllocSize.exit

bb.g:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %i.k, i64 -3
  %i.u = load i16, ptr %i.t, align 1, !tbaa !61
  %i.v = zext i16 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 6
  br label %sdsAllocSize.exit

bb.h:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.k, i64 -5
  %i.y = load i32, ptr %i.x, align 1, !tbaa !9
  %i.z = zext i32 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 10
  br label %sdsAllocSize.exit

bb.i:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds i8, ptr %i.k, i64 -9
  %i.ac = load i64, ptr %i.ab, align 1, !tbaa !63
  %i.ad = add i64 %i.ac, 18
  br label %sdsAllocSize.exit

sdsAllocSize.exit:                                ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ad, %bb.i ], [ %i.o, %bb.e ], [ %i.s, %bb.f ], [ %i.w, %bb.g ], [ %i.aa, %bb.h ], [ 0, %bb.d ]
  %i.ae = add i64 %.0.i, %i.i
  br label %bb.j

bb.j:                                             ; preds = %sdsAllocSize.exit, %bb.c
  %.2 = phi i64 [ %i.ae, %sdsAllocSize.exit ], [ %i.i, %bb.c ]
  ret i64 %.2
}

declare i64 @asmGetMigrateOutputBufferSize() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getMaxmemoryState(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @zmalloc_used_memory() #12 ; 4 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %0, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7752), align 8, !tbaa !75 ; 2 uses
  %.not33 = icmp eq i64 %i.b, 0
  br i1 %.not33, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %3, align 4, !tbaa !76
  br label %bb.v

bb.f:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %i.a, %i.b
  %i.d = icmp ne ptr %3, null                     ; 2 uses
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.g, label %bb.v

bb.g:                                             ; preds = %bb.f
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7400), align 8, !tbaa !71 ; 2 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8, !tbaa !72 ; 3 uses
  %i.g = icmp sgt i64 %i.e, %i.f
  br i1 %i.g, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.h = sdiv i64 %i.f, 16384
  %i.i = shl nsw i64 %i.h, 6
  %i.j = add i64 %i.f, 64
  %i.k = add i64 %i.j, %i.i
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.k)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.i = phi i64 [ %spec.select.i, %bb.h ], [ 0, %bb.g ]
  %i.l = tail call i64 @asmGetMigrateOutputBufferSize() #12
  %i.m = add i64 %i.l, %.1.i                      ; 2 uses
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !73
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %freeMemoryGetNotCountedMemory.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6752), align 8, !tbaa !74 ; 5 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -1
  %.val.i.i = load i8, ptr %i.p, align 1, !tbaa !60 ; 2 uses
  %i.q = and i8 %.val.i.i, 7
  switch i8 %i.q, label %sdsAllocSize.exit.i [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j
  %i.r = lshr i8 %.val.i.i, 3
  %narrow.i.i = add nuw nsw i8 %i.r, 2
  %i.s = zext nneg i8 %narrow.i.i to i64
  br label %sdsAllocSize.exit.i

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 -2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !60
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 4
  br label %sdsAllocSize.exit.i

bb.m:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 -3
  %i.y = load i16, ptr %i.x, align 1, !tbaa !61
  %i.z = zext i16 %i.y to i64
  %i.aa = add nuw nsw i64 %i.z, 6
  br label %sdsAllocSize.exit.i

bb.n:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 -5
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !9
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nuw nsw i64 %i.ad, 10
  br label %sdsAllocSize.exit.i

bb.o:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds i8, ptr %i.o, i64 -9
  %i.ag = load i64, ptr %i.af, align 1, !tbaa !63
  %i.ah = add i64 %i.ag, 18
  br label %sdsAllocSize.exit.i

sdsAllocSize.exit.i:                              ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0.i.i = phi i64 [ %i.ah, %bb.o ], [ %i.s, %bb.k ], [ %i.w, %bb.l ], [ %i.aa, %bb.m ], [ %i.ae, %bb.n ], [ 0, %bb.j ]
  %i.ai = add i64 %.0.i.i, %i.m
  br label %freeMemoryGetNotCountedMemory.exit

end_hunk_0
