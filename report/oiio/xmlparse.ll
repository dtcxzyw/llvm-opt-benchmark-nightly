Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/xmlparse?download=true
inline.NumInlined: 238
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@XML_DefaultCurrent:bb.a
bb.g:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.n to i64
  %i.ar = ptrtoint ptr %i.l to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32
  tail call void %i.g(ptr noundef %i.ap, ptr noundef %i.l, i32 noundef %i.at) #22, !inline_history !8
  br label %reportDefault.exit

reportDefault.exit:                               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ax, ptr %i.a, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 132
  %i.bb = load i8, ptr %i.ba, align 4
  %.not.i13 = icmp eq i8 %i.bb, 0
  br i1 %.not.i13, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.bg = load ptr, ptr %i.bc, align 8
  store ptr %i.bg, ptr %i.b, align 8
  %i.bh = load ptr, ptr %i.bd, align 8
  %i.bi = load ptr, ptr %i.be, align 8
  %i.bj = call i32 %i.bh(ptr noundef nonnull %i.av, ptr noundef nonnull %i.a, ptr noundef %i.az, ptr noundef nonnull %i.b, ptr noundef %i.bi) #22, !inline_history !8
  %i.bk = load ptr, ptr %i.a, align 8
  store ptr %i.bk, ptr %i.ay, align 8
  %i.bl = load ptr, ptr %i.f, align 8
  %i.bm = load ptr, ptr %i.bf, align 8
  %i.bn = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bo = load ptr, ptr %i.b, align 8
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  call void %i.bl(ptr noundef %i.bm, ptr noundef %i.bn, i32 noundef %i.bs) #22, !inline_history !8
  %i.bt = load ptr, ptr %i.a, align 8
  store ptr %i.bt, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.bu = icmp ugt i32 %i.bj, 1
  br i1 %i.bu, label %bb.j, label %reportDefault.exit16

bb.k:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = ptrtoint ptr %i.az to i64
  %i.by = ptrtoint ptr %i.ax to i64
  %i.bz = sub i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  tail call void %i.g(ptr noundef %i.bw, ptr noundef %i.ax, i32 noundef %i.ca) #22, !inline_history !8
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
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.d = load i8, ptr %i.c, align 4
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %1, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 568
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.022 = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.d ]
  %.0 = phi ptr [ %i.i, %bb.c ], [ %i.l, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.r = load ptr, ptr %i.m, align 8
  store ptr %i.r, ptr %i.b, align 8
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = call i32 %i.s(ptr noundef nonnull %1, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef nonnull %i.b, ptr noundef %i.t) #22
  %i.v = load ptr, ptr %i.a, align 8
  store ptr %i.v, ptr %.0, align 8
  %i.w = load ptr, ptr %i.p, align 8
  %i.x = load ptr, ptr %i.q, align 8
  %i.y = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = trunc i64 %i.ac to i32
  call void %i.w(ptr noundef %i.x, ptr noundef %i.y, i32 noundef %i.ad) #22
  %i.ae = load ptr, ptr %i.a, align 8
  store ptr %i.ae, ptr %.022, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.af = icmp ugt i32 %i.u, 1
  br i1 %i.af, label %bb.f, label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
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
define hidden noundef ptr @XML_ErrorString(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %switch.tableidx = add i32 %0, -1               ; 2 uses
  %i.a = icmp ult i32 %switch.tableidx, 43
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.XML_ErrorString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @XML_ExpatVersion() local_unnamed_addr #7 {
bb.a:
  ret ptr @.str.43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef { i64, i32 } @XML_ExpatVersionInfo() local_unnamed_addr #7 {
bb.a:
  ret { i64, i32 } { i64 25769803778, i32 3 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @XML_GetFeatureList() local_unnamed_addr #7 {
bb.a:
  ret ptr @XML_GetFeatureList.features
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext range(i8 0, 2) i8 @XML_SetBillionLaughsAttackProtectionMaximumAmplification(ptr nofree noundef captures(address_is_null) %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %2, label %bb.d

2:                                                ; preds = %bb.b
  %3 = fcmp uno float %1, 0.000000e+00
  %4 = fcmp olt float %1, 1.000000e+00
  %or.cond = or i1 %3, %4
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 968
  store float %1, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %2, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %2 ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden zeroext range(i8 0, 2) i8 @XML_SetBillionLaughsAttackProtectionActivationThreshold(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i64 %1, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden zeroext range(i8 0, 2) i8 @XML_SetReparseDeferralEnabled(ptr nofree noundef writeonly captures(address_is_null) %0, i8 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp ne ptr %0, null
  %or.cond = icmp ult i8 %1, 2
  %or.cond8 = and i1 %.not, %or.cond
  br i1 %or.cond8, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @testingAccountingGetCountBytesDirect(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.b = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @testingAccountingGetCountBytesIndirect(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.b = load i64, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @unsignedCharToPrintable(i8 noundef zeroext %0) local_unnamed_addr #7 {
switch.lookup:
  %switch.tableidx = xor i8 %0, -128
  %i.a = zext i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.unsignedCharToPrintable, i64 %i.a
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) #8

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) #10

declare ptr @XmlGetUtf8InternalEncodingNS() local_unnamed_addr #2

declare ptr @XmlGetUtf8InternalEncoding() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @prologInitProcessor(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call fastcc i32 @initializeEncoding(ptr noundef %0) ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr @prologProcessor, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call i32 %i.f(ptr noundef nonnull %i.e, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.a) #22, !inline_history !9
  %i.h = load ptr, ptr %i.d, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.k = load i8, ptr %i.j, align 4
  %.not.i = icmp eq i8 %i.k, 0
  %i.l = zext i1 %.not.i to i8
  %i.m = call fastcc i32 @doProlog(ptr noundef %0, ptr noundef %i.h, ptr noundef %1, ptr noundef %2, i32 noundef %i.g, ptr noundef %i.i, ptr noundef %3, i8 noundef zeroext %i.l, i8 noundef zeroext 1, i32 noundef 0), !inline_history !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.m, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.0
}

declare void @XmlPrologStateInit(ptr noundef) local_unnamed_addr #2

declare i32 @XmlInitEncoding(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 19) i32 @initializeEncoding(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.XML_Encoding, align 8       ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %.not = icmp eq i8 %i.d, 0
  %i.e = select i1 %.not, ptr @XmlInitEncoding, ptr @XmlInitEncodingNS
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.h = tail call i32 %i.e(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %i.b) #22, !callees !23
  %.not7 = icmp eq i32 %i.h, 0
  br i1 %.not7, label %bb.b, label %handleUnknownEncoding.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %handleUnknownEncoding.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %1, i8 -1, i64 1024, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 %i.j(ptr noundef %i.p, ptr noundef %i.k, ptr noundef nonnull %1) #22, !inline_history !2
  %.not26.i = icmp eq i32 %i.q, 0
  br i1 %.not26.i, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i32 @XmlSizeOfUnknownEncoding() #22
  %i.u = sext i32 %i.t to i64
  %i.v = call ptr %i.s(i64 noundef %i.u) #22, !inline_history !2 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 480
  store ptr %i.v, ptr %i.w, align 8
  %.not27.i = icmp eq ptr %i.v, null
  br i1 %.not27.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not28.i = icmp eq ptr %i.x, null
  br i1 %.not28.i, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.m, align 8
  call void %i.x(ptr noundef %i.y) #22, !inline_history !2
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.c, align 8
  %.not29.i = icmp eq i8 %i.z, 0
  %i.aa = select i1 %.not29.i, ptr @XmlInitUnknownEncoding, ptr @XmlInitUnknownEncodingNS
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = load ptr, ptr %i.m, align 8
end_hunk_0
