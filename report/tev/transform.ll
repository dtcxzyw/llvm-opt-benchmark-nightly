Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/transform?download=true
inline.NumInlined: 226
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3jxl9Transform11VisitFieldsEPNS_7VisitorE:bb.a
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = sdiv exact i64 %i.cd, 24
  %i.cf = trunc i64 %i.ce to i32
  store i32 %i.cf, ptr %i.a, align 4, !tbaa !78
  %i.cg = load ptr, ptr %1, align 8, !tbaa !11, !noalias !79
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !79
  %i.cj = call i32 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 152471339008, i64 5665061863717, i32 noundef 0, ptr noundef nonnull %i.a) #12, !inline_history !58 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %.sink.split

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %1, align 8, !tbaa !11
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef zeroext i1 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !78
  %i.cq = zext i32 %i.cp to i64
  call void @_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.cq) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !78
  %.not69.not = icmp eq i32 %i.cr, 0
  br i1 %.not69.not, label %.sink.split, label %.lr.ph

bb.s:                                             ; preds = %.lr.ph
  %i.cs = add nuw nsw i64 %.070, 1                ; 2 uses
  %i.ct = load i32, ptr %i.a, align 4, !tbaa !78
  %i.cu = zext i32 %i.ct to i64
  %.not = icmp samesign ult i64 %i.cs, %i.cu
  br i1 %.not, label %.lr.ph, label %.sink.split, !llvm.loop !71

.lr.ph:                                           ; preds = %bb.r, %bb.s
  %.070 = phi i64 [ %i.cs, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  %i.cv = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %.070
  %i.cx = load ptr, ptr %1, align 8, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 88
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call i32 %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.cw) #12 ; 2 uses
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.s, label %.sink.split

.sink.split:                                      ; preds = %bb.s, %.lr.ph, %bb.r, %bb.o
  %.sroa.057.2.ph = phi i32 [ 0, %bb.r ], [ %i.cj, %bb.o ], [ %i.da, %.lr.ph ], [ 0, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %bb.n, %bb.m, %bb.g, %bb.b, %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.d, %bb.a
  %.sroa.057.2 = phi i32 [ %i.f, %bb.a ], [ 1, %bb.b ], [ 1, %bb.g ], [ 1, %bb.m ], [ 0, %bb.n ], [ %i.bm, %bb.l ], [ %i.bg, %bb.k ], [ %i.ba, %bb.j ], [ %i.au, %bb.i ], [ %i.af, %bb.f ], [ %i.s, %bb.d ], [ %.sroa.057.2.ph, %.sink.split ]
  ret i32 %.sroa.057.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ult i64 %i.g, %1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ugt i64 %i.g, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not6.i.i = icmp eq ptr %i.k, %i.b
  br i1 %.not6.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.l, %.lr.ph.i.i ], [ %i.b, %bb.d ]
  %i.l = getelementptr inbounds i8, ptr %.07.i.i, i64 -24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !11
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.l) #12, !inline_history !80
  %.not.i.i = icmp eq ptr %i.k, %i.l
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit: ; preds = %.lr.ph.i.i, %bb.d
  store ptr %i.k, ptr %i.a, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE17__destruct_at_endB8nn180100EPS2_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZNK3jxl9Transform7InverseERNS_5ImageERKNS_8weighted6HeaderEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  switch i32 %i.b, label %bb.e [
    i32 0, label %bb.b
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !25
  %i.h = zext i32 %i.g to i64
  %i.i = tail call i32 @_ZN3jxl6InvRCTERNS_5ImageEmmPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.e, i64 noundef %i.h, ptr noundef %3) #12
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = tail call i32 @_ZN3jxl10InvSqueezeERNS_5ImageERKNSt3__16vectorINS_13SqueezeParamsENS2_9allocatorIS4_EEEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef %3) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = tail call i32 @_ZN3jxl10InvPaletteERNS_5ImageEjjjNS_9PredictorERKNS_8weighted6HeaderEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.m, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %3) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.sroa.08.0 = phi i32 [ %i.t, %bb.d ], [ %i.i, %bb.b ], [ %i.k, %bb.c ], [ 1, %bb.a ]
  ret i32 %.sroa.08.0
}

declare i32 @_ZN3jxl6InvRCTERNS_5ImageEmmPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96), i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_ZN3jxl10InvSqueezeERNS_5ImageERKNSt3__16vectorINS_13SqueezeParamsENS2_9allocatorIS4_EEEEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

declare i32 @_ZN3jxl10InvPaletteERNS_5ImageEjjjNS_9PredictorERKNS_8weighted6HeaderEPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl9Transform9MetaApplyERNS_5ImageE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !24
  switch i32 %i.b, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit [
    i32 0, label %bb.b
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !30   ; 4 uses
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = load ptr, ptr %1, align 8, !tbaa !38     ; 4 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 88                  ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.d, 2
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %.not.i = icmp ule i64 %i.l, %i.o
  %i.p = icmp ugt i32 %i.d, -3
  %or.cond.i = or i1 %i.p, %.not.i
  br i1 %or.cond.i, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46   ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.e
  %.not37.i = icmp ugt i64 %i.r, %i.o
  %or.cond43.i = or i1 %i.s, %.not37.i
  br i1 %or.cond43.i, label %.lr.ph.i, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %i.e ; 4 uses
  %2 = add nuw i32 %i.d, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.t, i64 76 ; 2 uses
  %i.w = zext i32 %2 to i64                       ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !51   ; 2 uses
  %i.z = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %i.w ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !51
  %.not39.i = icmp eq i64 %i.y, %i.ab
  br i1 %.not39.i, label %bb.i, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.e:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.h, i64 %i.w ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !51
  %.not39.i.1 = icmp eq i64 %i.y, %i.ae
  br i1 %.not39.i.1, label %bb.f, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.f:                                             ; preds = %bb.e
  %i.af = load i64, ptr %i.u, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52
  %.not40.i.1 = icmp eq i64 %i.af, %i.ah
  br i1 %.not40.i.1, label %bb.g, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.v, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 160
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !53
  %.not41.i.1 = icmp eq i32 %i.ai, %i.ak
  br i1 %.not41.i.1, label %bb.h, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.h:                                             ; preds = %bb.g
  %i.al = load i32, ptr %3, align 4, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 164
  %i.an = load i32, ptr %i.am, align 4, !tbaa !54
  %.not42.i.1 = icmp eq i32 %i.al, %i.an
  %spec.select = select i1 %.not42.i.1, i32 0, i32 1
  br label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = load i64, ptr %i.u, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !52
  %.not40.i = icmp eq i64 %i.ao, %i.aq
  br i1 %.not40.i, label %bb.j, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %i.v, align 8, !tbaa !53
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.at = load i32, ptr %i.as, align 8, !tbaa !53
  %.not41.i = icmp eq i32 %i.ar, %i.at
  br i1 %.not41.i, label %bb.k, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr %3, align 4, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.z, i64 76
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !54
  %.not42.i = icmp eq i32 %i.au, %i.aw
  br i1 %.not42.i, label %bb.e, label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.l:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = tail call i32 @_ZN3jxl11MetaSqueezeERNS_5ImageEPNSt3__16vectorINS_13SqueezeParamsENS2_9allocatorIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull %i.ax) #12
  br label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

bb.m:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !30 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !81
  %i.bd = add i32 %i.ba, -1
  %i.be = add i32 %i.bd, %i.bc
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23, !range !82, !noundef !83
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = tail call i32 @_ZN3jxl11MetaPaletteERNS_5ImageEjjjjb(ptr noundef nonnull align 8 dereferenceable(96) %1, i32 noundef %i.ba, i32 noundef %i.be, i32 noundef %i.bg, i32 noundef %i.bi, i1 noundef zeroext %i.bl) #12
  br label %_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit

_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj.exit:  ; preds = %bb.h, %bb.k, %bb.j, %bb.i, %.lr.ph.i, %bb.e, %bb.f, %bb.g, %bb.a, %bb.d, %bb.c, %bb.b, %bb.m, %bb.l
  %.sroa.04.0 = phi i32 [ 1, %bb.a ], [ %i.bm, %bb.m ], [ %i.ay, %bb.l ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.i ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %.lr.ph.i ], [ %spec.select, %bb.h ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ]
  ret i32 %.sroa.04.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden range(i32 0, 2) i32 @_ZN3jxl18CheckEqualChannelsERKNS_5ImageEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37
  %i.d = load ptr, ptr %0, align 8, !tbaa !38     ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 88                  ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.a
  br i1 %i.i, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %2 to i64                       ; 3 uses
  %.not = icmp ule i64 %i.h, %i.j
  %i.k = icmp ult i32 %2, %1
  %or.cond = or i1 %i.k, %.not
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load i64, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = icmp ule i64 %i.m, %i.a
  %.not37 = icmp ugt i64 %i.m, %i.j
  %or.cond43 = or i1 %i.n, %.not37
  br i1 %or.cond43, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %i.a ; 4 uses
  %i.p = add i32 %1, 1                            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 76
  %.not3848 = icmp ugt i32 %i.p, %2
  br i1 %.not3848, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.t = zext i32 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !51
  br label %bb.f

bb.e:                                             ; preds = %bb.i
  %i.w = add nuw nsw i64 %.03249, 1
  %exitcond.not = icmp eq i64 %.03249, %i.j
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !84

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.03249 = phi i64 [ %i.t, %.lr.ph ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %i.d, i64 %.03249 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load i64, ptr %i.y, align 8, !tbaa !51
  %.not39 = icmp eq i64 %i.v, %i.z
  br i1 %.not39, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !52
  %.not40 = icmp eq i64 %i.aa, %i.ac
  br i1 %.not40, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.r, align 8, !tbaa !53
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !53
  %.not41 = icmp eq i32 %i.ad, %i.af
  br i1 %.not41, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.s, align 4, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 76
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !54
  %.not42 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not42, label %bb.e, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.sroa.047.0 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.g ], [ 0, %bb.e ]
  ret i32 %.sroa.047.0
}

declare i32 @_ZN3jxl11MetaSqueezeERNS_5ImageEPNSt3__16vectorINS_13SqueezeParamsENS2_9allocatorIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #1

declare i32 @_ZN3jxl11MetaPaletteERNS_5ImageEjjjjb(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl9TransformD2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl9TransformE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.e) #12, !inline_history !85
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i, %bb.b
  %i.h = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #15
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEED2B8nn180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3jxl9TransformD0Ev(ptr noundef nonnull align 8 dereferenceable(66) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3jxl9TransformE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN3jxl9TransformD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not6.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.07.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i ], [ %i.d, %bb.b ]
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i.i.i, i64 -24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.e) #12, !inline_history !86
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %.pre1.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !28
  br label %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i

_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.i.i.i: ; preds = %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i, %bb.b
  %i.h = phi ptr [ %.pre1.i.i.i, %_ZNSt3__16vectorIN3jxl13SqueezeParamsENS_9allocatorIS2_EEE7__clearB8nn180100Ev.exit.loopexit.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.m) #15, !inline_history !87
  br label %_ZN3jxl9TransformD2Ev.exit
end_hunk_0
