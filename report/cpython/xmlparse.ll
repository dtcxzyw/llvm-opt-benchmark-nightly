Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/xmlparse?download=true
inline.NumInlined: 273
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@PyExpat_XML_DefaultCurrent:bb.a
bb.g:                                             ; preds = %bb.d
  %i.ao = getelementptr i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !143
  %i.aq = ptrtoint ptr %i.n to i64
  %i.ar = ptrtoint ptr %i.l to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  tail call void %i.g(ptr noundef %i.ap, ptr noundef %i.l, i32 noundef %i.at) #22, !inline_history !213
  br label %reportDefault.exit

reportDefault.exit:                               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.au = getelementptr i8, ptr %0, i64 304
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !208 ; 3 uses
  %i.aw = getelementptr i8, ptr %0, i64 560       ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !206 ; 3 uses
  %i.ay = getelementptr i8, ptr %0, i64 568       ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !207 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ax, ptr %i.a, align 8, !tbaa !57
  %i.ba = getelementptr i8, ptr %i.av, i64 132
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !211
  %.not.i13 = icmp eq i8 %i.bb, 0
  br i1 %.not.i13, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr i8, ptr %0, i64 104       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.av, i64 112
  %i.be = getelementptr i8, ptr %0, i64 112
  %i.bf = getelementptr i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !65
  store ptr %i.bg, ptr %i.b, align 8, !tbaa !57
  %i.bh = load ptr, ptr %i.bd, align 8, !tbaa !212
  %i.bi = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bj = call i32 %i.bh(ptr noundef nonnull %i.av, ptr noundef nonnull %i.a, ptr noundef %i.az, ptr noundef nonnull %i.b, ptr noundef %i.bi) #22, !inline_history !213
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.bk, ptr %i.ay, align 8, !tbaa !57
  %i.bl = load ptr, ptr %i.f, align 8, !tbaa !186
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !143
  %i.bn = load ptr, ptr %i.bc, align 8, !tbaa !65 ; 2 uses
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bn, i32 noundef %i.bs) #22, !inline_history !213
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.bt, ptr %i.aw, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bu = icmp ugt i32 %i.bj, 1
  br i1 %i.bu, label %bb.j, label %reportDefault.exit16, !llvm.loop !6

bb.k:                                             ; preds = %bb.h
  %i.bv = getelementptr i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !143
  %i.bx = ptrtoint ptr %i.az to i64
  %i.by = ptrtoint ptr %i.ax to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  tail call void %i.g(ptr noundef %i.bw, ptr noundef %i.ax, i32 noundef %i.ca) #22, !inline_history !213
  br label %reportDefault.exit16

reportDefault.exit16:                             ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %reportDefault.exit, %reportDefault.exit16, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @reportDefault(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr i8, ptr %1, i64 132
  %i.d = load i8, ptr %i.c, align 4, !tbaa !211
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !208
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 560
  %i.i = getelementptr i8, ptr %0, i64 568
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 584
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !95   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.022 = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %.0 = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.d ]
  %i.m = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 112
  %i.o = getelementptr i8, ptr %0, i64 112
  %i.p = getelementptr i8, ptr %0, i64 176
  %i.q = getelementptr i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !65
  store ptr %i.r, ptr %i.b, align 8, !tbaa !57
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !212
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !66
  %i.u = call i32 %i.s(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef %i.t) #22
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.v, ptr %.0, align 8, !tbaa !57
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !186
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !143
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !65   ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  call void %i.w(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.ad) #22
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !57
  store ptr %i.ae, ptr %.022, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.af = icmp ugt i32 %i.u, 1
  br i1 %i.af, label %bb.f, label %.loopexit, !llvm.loop !6

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %0, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !186
  %i.ai = getelementptr i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !143
  %i.ak = ptrtoint ptr %3 to i64
  %i.al = ptrtoint ptr %2 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = trunc i64 %i.am to i32
  tail call void %i.ah(ptr noundef %i.aj, ptr noundef %2, i32 noundef %i.an) #22
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef ptr @PyExpat_XML_ErrorString(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 44
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PyExpat_XML_ErrorString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @PyExpat_XML_ExpatVersion() local_unnamed_addr #7 {
bb.a:
  ret ptr @.str.44
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef { i64, i32 } @PyExpat_XML_ExpatVersionInfo() local_unnamed_addr #7 {
bb.a:
  ret { i64, i32 } { i64 30064771074, i32 4 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @PyExpat_XML_GetFeatureList() local_unnamed_addr #7 {
bb.a:
  ret ptr @PyExpat_XML_GetFeatureList.features
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext range(i8 0, 2) i8 @PyExpat_XML_SetBillionLaughsAttackProtectionMaximumAmplification(ptr nofree noundef captures(address_is_null) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 944
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %2, label %bb.d

2:                                                ; preds = %bb.b
  %3 = fcmp uno float %1, 0.000000e+00
  %4 = fcmp olt float %1, 1.000000e+00
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %2
  %i.d = getelementptr i8, ptr %0, i64 1000
  store float %1, ptr %i.d, align 8, !tbaa !138
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %2, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %2 ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext range(i8 0, 2) i8 @PyExpat_XML_SetBillionLaughsAttackProtectionActivationThreshold(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 944
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 1008
  store i64 %1, ptr %i.d, align 8, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext range(i8 0, 2) i8 @PyExpat_XML_SetAllocTrackerMaximumAmplification(ptr nofree noundef captures(address_is_null) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 944
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %2, label %bb.d

2:                                                ; preds = %bb.b
  %3 = fcmp uno float %1, 0.000000e+00
  %4 = fcmp olt float %1, 1.000000e+00
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %2
  %i.d = getelementptr i8, ptr %0, i64 1040
  store float %1, ptr %i.d, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %2, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %2 ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext range(i8 0, 2) i8 @PyExpat_XML_SetAllocTrackerActivationThreshold(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 944
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 1048
  store i64 %1, ptr %i.d, align 8, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden zeroext range(i8 0, 2) i8 @PyExpat_XML_SetReparseDeferralEnabled(ptr nofree noundef writeonly captures(address_is_null) %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp ne ptr %0, null
  %or.cond = icmp ult i8 %1, 2
  %or.cond8 = and i1 %.not, %or.cond
  br i1 %or.cond8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 96
  store i8 %1, ptr %i.a, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @PyExpat_testingAccountingGetCountBytesDirect(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 976
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @PyExpat_testingAccountingGetCountBytesIndirect(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 984
  %i.b = load i64, ptr %i.a, align 8, !tbaa !214
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @PyExpat_unsignedCharToPrintable(i8 noundef zeroext %0) local_unnamed_addr #7 {
switch.lookup:
  %switch.tableidx = xor i8 %0, -128
  %i.a = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.PyExpat_unsignedCharToPrintable, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @expat_heap_stat(ptr noundef %0, i8 noundef signext range(i8 43, 46) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef range(i32 1354, 8457) %5) unnamed_addr #12 {
bb.a:
  %i.a = uitofp i64 %3 to float
  %i.b = getelementptr i8, ptr %0, i64 976
  %i.c = load i64, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = uitofp i64 %i.c to float
  %i.e = fdiv float %i.a, %i.d
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !200
  %i.g = zext nneg i8 %1 to i32
  %i.h = fpext float %i.e to double
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.f, ptr noundef nonnull @.str.313, ptr noundef %0, i64 noundef %i.c, i32 noundef %i.g, i64 noundef %2, i64 noundef %3, i64 noundef %4, double noundef %i.h, i32 noundef %5) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expat_malloc(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 1449, 8457) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, -9
  br i1 %i.a, label %expat_heap_increase_tolerable.exit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07.i = phi ptr [ %i.c, %.preheader ], [ %0, %bb.a ] ; 10 uses
  %i.b = getelementptr i8, ptr %.07.i, i64 944
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %getRootParserOf.exit, label %.preheader, !llvm.loop !0

getRootParserOf.exit:                             ; preds = %.preheader
  %i.d = add nuw i64 %1, 8                        ; 6 uses
  %i.e = getelementptr i8, ptr %.07.i, i64 1016   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = xor i64 %i.f, -1
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %expat_heap_increase_tolerable.exit, label %bb.b

bb.b:                                             ; preds = %getRootParserOf.exit
  %i.i = add i64 %i.f, %i.d                       ; 4 uses
  %i.j = getelementptr i8, ptr %.07.i, i64 1048
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51
  %.not.i29 = icmp ult i64 %i.i, %i.k
  br i1 %.not.i29, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = uitofp i64 %i.i to float
  %i.m = getelementptr i8, ptr %.07.i, i64 976
  %i.n = load i64, ptr %i.m, align 8, !tbaa !52
  %i.o = uitofp i64 %i.n to float
  %i.p = fdiv float %i.l, %i.o
  %i.q = getelementptr i8, ptr %.07.i, i64 1040
  %i.r = load float, ptr %i.q, align 8, !tbaa !53
  %i.s = fcmp ule float %i.p, %i.r
  br i1 %i.s, label %bb.e, label %.thread25.i

.thread25.i:                                      ; preds = %bb.c
  %i.t = getelementptr i8, ptr %.07.i, i64 1032
  %i.u = load i64, ptr %i.t, align 8, !tbaa !54
  %.not21.i = icmp eq i64 %i.u, 0
  br i1 %.not21.i, label %expat_heap_increase_tolerable.exit, label %bb.d

bb.d:                                             ; preds = %.thread25.i
  tail call fastcc void @expat_heap_stat(ptr noundef nonnull %.07.i, i8 noundef signext 43, i64 noundef %i.d, i64 noundef %i.i, i64 noundef %i.i, i32 noundef range(i32 1354, 8457) %2)
  br label %expat_heap_increase_tolerable.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !201
  %i.x = tail call ptr %i.w(i64 noundef %i.d) #22 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %expat_heap_increase_tolerable.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %1, ptr %i.x, align 8, !tbaa !55
  %i.z = load i64, ptr %i.e, align 8, !tbaa !50
  %i.aa = add i64 %i.z, %i.d                      ; 5 uses
  store i64 %i.aa, ptr %i.e, align 8, !tbaa !50
  %i.ab = getelementptr i8, ptr %.07.i, i64 1032
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !54
  %i.ad = icmp ugt i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr i8, ptr %.07.i, i64 1024  ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = icmp ugt i64 %i.aa, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 %i.aa, ptr %i.ae, align 8, !tbaa !58
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi i64 [ %i.aa, %bb.h ], [ %i.af, %bb.g ]
  tail call fastcc void @expat_heap_stat(ptr noundef nonnull %.07.i, i8 noundef signext 43, i64 noundef %i.d, i64 noundef %i.aa, i64 noundef %i.ah, i32 noundef %2)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.ai = getelementptr i8, ptr %i.x, i64 8
  br label %expat_heap_increase_tolerable.exit

expat_heap_increase_tolerable.exit:               ; preds = %bb.d, %.thread25.i, %getRootParserOf.exit, %bb.e, %bb.j, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %getRootParserOf.exit ], [ null, %bb.e ], [ %i.ai, %bb.j ], [ null, %.thread25.i ], [ null, %bb.d ]
  ret ptr %.2
end_hunk_0
