inline.NumInlined: 691
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler21EscapeAnalysisReducer11ReplaceNodeEPNS1_4NodeES4_:bb.a
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load i8, ptr %i.g, align 8, !range !7, !noundef !8
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %1, ptr noundef %1, ptr noundef null, ptr noundef null) #13, !inline_history !9
  br label %bb.n

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.o, align 8 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %4, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload.i.i34 = load i64, ptr %i.p, align 8 ; 4 uses
  %i.q = icmp eq i64 %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i.i34
  br i1 %i.q, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %_ZNK2v88internal8compiler4Type2IsES2_.exit

_ZNK2v88internal8compiler4Type2IsES2_.exit:       ; preds = %bb.e
  %i.r = call noundef zeroext i1 @_ZNK2v88internal8compiler4Type6SlowIsES2_(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 %.sroa.0.0.copyload.i.i34) #13
  br i1 %i.r, label %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread, label %bb.f

_ZNK2v88internal8compiler4Type2IsES2_.exit.thread: ; preds = %bb.e, %_ZNK2v88internal8compiler4Type2IsES2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #13, !inline_history !9
  br label %bb.m

bb.f:                                             ; preds = %_ZNK2v88internal8compiler4Type2IsES2_.exit
  %i.x = load ptr, ptr %1, align 8                ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g, !prof !6

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.x) #13
  %i.ae = load ptr, ptr %1, align 8
  %i.af = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.ae) #13
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 251658240
  %.not.i.i.i = icmp eq i32 %i.ai, 251658240
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = add i64 %i.aj, 32
  %i.al = inttoptr i64 %i.ak to ptr               ; 4 uses
  br i1 %.not.i.i.i, label %bb.i, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 16
  %i.ap = inttoptr i64 %i.ao to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.h, %bb.i
  %.sink.i.i.i = phi ptr [ %i.ap, %bb.i ], [ %i.al, %bb.h ]
  %i.aq = zext i1 %i.ad to i32
  %i.ar = zext i1 %i.af to i32
  %i.as = add i32 %i.ac, %i.aq
  %i.at = add i32 %i.as, %i.ar
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = load ptr, ptr %1, align 8               ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.k, label %bb.j, !prof !6

bb.j:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #14
  unreachable

bb.k:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 20
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.ax) #13
  %i.be = load ptr, ptr %1, align 8
  %i.bf = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.be) #13
  %i.bg = load ptr, ptr %1, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = load i32, ptr %i.ag, align 4
  %i.bk = and i32 %i.bj, 251658240
  %.not.i.i.i35 = icmp eq i32 %i.bk, 251658240
  br i1 %.not.i.i.i35, label %bb.l, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.al, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = add i64 %i.bm, 16
  %i.bo = inttoptr i64 %i.bn to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.k, %bb.l
  %.sink.i.i.i36 = phi ptr [ %i.bo, %bb.l ], [ %i.al, %bb.k ]
  %i.bp = zext i1 %i.bd to i32
  %i.bq = zext i1 %i.bf to i32
  %i.br = add i32 %i.bc, %i.bp
  %i.bs = add i32 %i.br, %i.bq
  %i.bt = add i32 %i.bs, %i.bi
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i36, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  call void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 0) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ca, ptr noundef nonnull %2) #13
  %i.cb = load ptr, ptr %i.bx, align 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.cc, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.cd, ptr noundef %i.aw) #13
  %i.ce = load ptr, ptr %i.bx, align 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.cg, ptr noundef %i.bw) #13
  %.sroa.01.0.copyload = load i64, ptr %4, align 8
  %i.ch = load ptr, ptr %i.bx, align 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call i64 @_ZN2v88internal8compiler4Type9IntersectES2_S2_PNS0_4ZoneE(i64 %.sroa.0.0.copyload.i.i34, i64 %.sroa.01.0.copyload, ptr noundef %i.cj) #13
  store i64 %i.ck, ptr %i.p, align 8
  %i.cl = load ptr, ptr %i.bx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TypeGuardENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 %.sroa.0.0.copyload.i.i34) #13
  call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.co) #13
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef %i.bw) #13, !inline_history !10
  br label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit, %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread
  %.sroa.033.0 = phi ptr [ %2, %_ZNK2v88internal8compiler4Type2IsES2_.exit.thread ], [ null, %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
  %.sroa.033.1 = phi ptr [ %2, %bb.d ], [ %.sroa.033.0, %bb.m ]
  ret ptr %.sroa.033.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetVirtualObjectEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler4Node11AppendInputEPNS0_4ZoneEPS2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @_ZN2v88internal8compiler4Type9IntersectES2_S2_PNS0_4ZoneE(i64, i64, ptr noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9TypeGuardENS1_4TypeE(ptr noundef nonnull align 8 dereferenceable(16), i64) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer12ObjectIdNodeEPKNS1_13VirtualObjectE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = zext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %.not = icmp ugt i64 %i.l, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i32 %i.b, 1
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.q, %i.j
  %i.s = ashr exact i64 %i.r, 3
  %.not.i.i = icmp ult i64 %i.s, %i.n
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.n)
  %.pre.i = load ptr, ptr %i.g, align 8
  %.pre = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.t = phi ptr [ %i.f, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.u = phi ptr [ %i.h, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.n ; 2 uses
  %i.w = icmp ult ptr %i.t, %i.v
  br i1 %i.w, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i
  %2 = ptrtoaddr ptr %i.t to i64                  ; 2 uses
  %3 = ptrtoaddr ptr %i.u to i64
  %i.x = shl nuw nsw i64 %i.n, 3
  %i.y = add nuw i64 %i.x, %3
  %i.z = add i64 %2, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.z)
  %i.aa = xor i64 %2, -1
  %i.ab = add i64 %umax.i, %i.aa
  %i.ac = and i64 %i.ab, -8
  %i.ad = add i64 %i.ac, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 0, i64 %i.ad, i1 false)
  %.pre10.pre = load ptr, ptr %i.g, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %.pre10 = phi ptr [ %i.u, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE14EnsureCapacityEm.exit.i ], [ %.pre10.pre, %.lr.ph.preheader.i ]
  store ptr %i.v, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEm.exit, %bb.a
  %i.ae = phi ptr [ %.pre10, %_ZN2v88internal10ZoneVectorIPNS0_8compiler4NodeEE6resizeEm.exit ], [ %i.h, %bb.a ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.c
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not9 = icmp eq ptr %i.ag, null
  br i1 %.not9, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8ObjectIdEj(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i32 noundef %i.b) #13
  %i.an = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.aj, ptr noundef %i.am, i32 noundef 0, ptr noundef null, i1 noundef zeroext false) #13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 51580731393, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.g, align 8
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.c
  store ptr %i.an, ptr %i.aq, align 8
  %.pre11 = load ptr, ptr %i.g, align 8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %.pre11, i64 %i.c
  %.pre12 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ar = phi ptr [ %.pre12, %bb.e ], [ %i.ag, %bb.d ]
  ret ptr %i.ar
}

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder8ObjectIdEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer6ReduceEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.v8::internal::compiler::EscapeAnalysisResult", align 8 ; 4 uses
  %3 = alloca %"class.v8::internal::compiler::EscapeAnalysisResult", align 8 ; 4 uses
  store ptr %1, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8
  store ptr %.sroa.0.0.copyload.i, ptr %2, align 8
  %i.c = call noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetReplacementOfEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @_ZN2v88internal8compiler21EscapeAnalysisReducer11ReplaceNodeEPNS1_4NodeES4_(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1, ptr noundef nonnull %i.c)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8                ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i16, ptr %i.f, align 8
  switch i16 %i.g, label %bb.m [
    i16 266, label %bb.d
    i16 59, label %bb.d
    i16 41, label %bb.g
    i16 316, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %.sroa.0.0.copyload.i11 = load ptr, ptr %i.b, align 8
  store ptr %.sroa.0.0.copyload.i11, ptr %3, align 8
  %i.h = call noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetVirtualObjectEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #13 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #13, !inline_history !9
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #14
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.e) #13
  %i.w = load ptr, ptr %1, align 8
  %i.x = call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.w) #13
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = and i32 %i.z, 251658240
  %.not.i.i.i = icmp eq i32 %i.aa, 251658240
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = add i64 %i.ab, 32
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  br i1 %.not.i.i.i, label %bb.j, label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = add i64 %i.af, 16
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit: ; preds = %bb.i, %bb.j
  %.sink.i.i.i = phi ptr [ %i.ah, %bb.j ], [ %i.ad, %bb.i ]
  %i.ai = zext i1 %i.v to i32
  %i.aj = zext i1 %i.x to i32
  %i.ak = add i32 %i.u, %i.ai
  %i.al = add i32 %i.ak, %i.aj
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i16, ptr %i.aq, align 8
  %i.as = icmp eq i16 %i.ar, 40
  br i1 %i.as, label %bb.k, label %bb.o

bb.k:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ao, ptr noundef null, ptr noundef null) #13, !inline_history !9
  %i.ay = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #13, !inline_history !9
  br label %bb.o

bb.l:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.bd = call { ptr, i8 } @_ZNSt8_Rb_treeIPN2v88internal8compiler4NodeES4_St9_IdentityIS4_ESt4lessIS4_ENS1_13ZoneAllocatorIS4_EEE16_M_insert_uniqueIRKS4_EESt4pairISt17_Rb_tree_iteratorIS4_EbEOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @_ZN2v88internal8compiler21EscapeAnalysisReducer22ReduceFrameStateInputsEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit, %bb.k, %bb.d, %bb.e, %bb.f, %bb.b, %bb.l
  %.sroa.07.1 = phi ptr [ null, %_ZN2v88internal8compiler14NodeProperties14GetEffectInputEPNS1_4NodeEi.exit ], [ %i.d, %bb.b ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.k ], [ null, %bb.n ], [ null, %bb.m ]
  ret ptr %.sroa.07.1
}

declare noundef ptr @_ZN2v88internal8compiler20EscapeAnalysisResult16GetReplacementOfEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler21EscapeAnalysisReducer22ReduceFrameStateInputsEPNS1_4NodeE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::compiler::Deduplicator", align 8 ; 8 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, 32
  %i.c = inttoptr i64 %i.b to ptr                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.b

end_hunk_0
