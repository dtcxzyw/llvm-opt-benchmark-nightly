Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/rct?download=true
inline.NumInlined: 279
inline.NumDeleted: 53
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3jxl6N_SSE29InvRCTRowILi6EEEvPKiS3_S3_PiS4_S4_m:bb.a
vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 3 uses
  %i.v = add i64 %.0.lcssa, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.w = add nuw i64 %.0.lcssa, %index            ; 6 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.w
  %wide.load89 = load <4 x i32>, ptr %i.y, align 4, !tbaa !24 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.w
  %wide.load90 = load <4 x i32>, ptr %i.z, align 4, !tbaa !24 ; 2 uses
  %i.aa = ashr <4 x i32> %wide.load90, splat (i32 1)
  %i.ab = sub <4 x i32> %wide.load, %i.aa         ; 2 uses
  %i.ac = add <4 x i32> %i.ab, %wide.load90
  %i.ad = ashr <4 x i32> %wide.load89, splat (i32 1)
  %i.ae = sub <4 x i32> %i.ab, %i.ad              ; 2 uses
  %i.af = add <4 x i32> %i.ae, %wide.load89
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.w
  store <4 x i32> %i.af, ptr %i.ag, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.w
  store <4 x i32> %i.ac, ptr %i.ah, align 4, !tbaa !24
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.w
  store <4 x i32> %i.ae, ptr %i.ai, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !254

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph67.preheader91

.lr.ph67.preheader91:                             ; preds = %vector.memcheck, %.lr.ph67.preheader, %middle.block
  %.166.ph = phi i64 [ %.0.lcssa, %vector.memcheck ], [ %.0.lcssa, %.lr.ph67.preheader ], [ %i.v, %middle.block ]
  br label %.lr.ph67

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.065 = phi i64 [ %i.ak, %.lr.ph ], [ 0, %bb.a ] ; 7 uses
  %i.ak = add nuw i64 %.065, 4                    ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.065
  %i.am = load <4 x i32>, ptr %i.al, align 16, !tbaa !57, !alias.scope !269
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.065
  %i.ao = load <4 x i32>, ptr %i.an, align 16, !tbaa !57, !alias.scope !270 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.065
  %i.aq = load <4 x i32>, ptr %i.ap, align 16, !tbaa !57, !alias.scope !271 ; 2 uses
  %i.ar = ashr <4 x i32> %i.aq, splat (i32 1)
  %i.as = sub <4 x i32> %i.am, %i.ar              ; 2 uses
  %i.at = add <4 x i32> %i.as, %i.aq
  %i.au = ashr <4 x i32> %i.ao, splat (i32 1)
  %i.av = sub <4 x i32> %i.as, %i.au              ; 2 uses
  %i.aw = add <4 x i32> %i.av, %i.ao
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.065
  store <4 x i32> %i.aw, ptr %i.ax, align 16, !tbaa !57, !alias.scope !272
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.065
  store <4 x i32> %i.at, ptr %i.ay, align 16, !tbaa !57, !alias.scope !273
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.065
  store <4 x i32> %i.av, ptr %i.az, align 16, !tbaa !57, !alias.scope !274
  %i.ba = or disjoint i64 %i.ak, 3
  %i.bb = icmp ult i64 %i.ba, %6
  br i1 %i.bb, label %.lr.ph, label %.preheader, !llvm.loop !267

.lr.ph67:                                         ; preds = %.lr.ph67.preheader91, %.lr.ph67
  %.166 = phi i64 [ %i.br, %.lr.ph67 ], [ %.166.ph, %.lr.ph67.preheader91 ] ; 7 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.166
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.166
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !24 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.166
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24 ; 2 uses
  %i.bi = ashr i32 %i.bh, 1
  %i.bj = sub i32 %i.bd, %i.bi                    ; 2 uses
  %i.bk = add i32 %i.bj, %i.bh
  %i.bl = ashr i32 %i.bf, 1
  %i.bm = sub i32 %i.bj, %i.bl                    ; 2 uses
  %i.bn = add i32 %i.bm, %i.bf
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.166
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !24
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.166
  store i32 %i.bk, ptr %i.bp, align 4, !tbaa !24
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.166
  store i32 %i.bm, ptr %i.bq, align 4, !tbaa !24
  %i.br = add nuw i64 %.166, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph67, !llvm.loop !268

._crit_edge:                                      ; preds = %.lr.ph67, %middle.block, %.preheader
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl6InvRCTERNS_5ImageEmmPNS_10ThreadPoolE(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #14
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = and i64 %i.b, 103425
  %i.d = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.c, i1 true)
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL26InvRCTHighwayDispatchTableE, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 %i.f(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #14
  ret i32 %i.g
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define internal i32 @_ZN3hwy13FunctionCacheIN3jxl6StatusEJRNS1_5ImageEmmPNS1_10ThreadPoolEEE13ChooseAndCallIXadsoKPFS2_S4_mmS6_EL_ZNS1_L26InvRCTHighwayDispatchTableEEEEEES2_S4_mmS6_(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #6 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3hwy15GetChosenTargetEv() #14 ; 2 uses
  %i.b = tail call noundef i64 @_ZN3hwy16SupportedTargetsEv() #14
  %i.c = shl i64 %i.b, 1
  %i.d = and i64 %i.c, 65534
  %i.e = or disjoint i64 %i.d, 65536
  store atomic i64 %i.e, ptr %i.a seq_cst, align 8
  %i.f = load atomic i64, ptr %i.a seq_cst, align 8
  %i.g = and i64 %i.f, 103425
  %i.h = tail call noundef range(i64 0, 17) i64 @llvm.cttz.i64(i64 range(i64 0, 103426) %i.g, i1 true)
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @_ZN3jxlL26InvRCTHighwayDispatchTableE, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = tail call i32 %i.j(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #14
  ret i32 %i.k
}

declare noundef i64 @_ZN3hwy16SupportedTargetsEv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE46InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #10 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE46InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47, !nonnull !48, !align !49
  %i.e = tail call fastcc i32 @"_ZZN3jxl6N_SSE46InvRCTERNS_5ImageEmmPNS_10ThreadPoolEENK3$_0clEjm"(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %1) #16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 1, ptr %i.a seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i32 @"_ZZN3jxl6N_SSE46InvRCTERNS_5ImageEmmPNS_10ThreadPoolEENK3$_0clEjm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !51, !nonnull !48, !align !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !52, !nonnull !48, !align !49
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.g = getelementptr [88 x i8], ptr %i.f, i64 %i.e ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37
  %i.l = mul i64 %i.k, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = getelementptr i8, ptr %i.g, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr i8, ptr %i.g, i64 104
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37
  %i.r = mul i64 %i.q, %i.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.t = getelementptr i8, ptr %i.g, i64 216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = getelementptr i8, ptr %i.g, i64 192
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37
  %i.x = mul i64 %i.w, %i.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53, !nonnull !48, !align !54
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !24 ; 5 uses
  %i.ac = srem i32 %i.ab, 3
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [88 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = mul i64 %i.ai, %i.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %2 = add nsw i32 %i.ab, 1
  %.neg.a = sdiv i32 %i.ab, 3
  %3 = add nsw i32 %2, %.neg.a
  %4 = srem i32 %3, 3
  %i.al = sext i32 %4 to i64
  %i.am = getelementptr [88 x i8], ptr %i.g, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.ar = mul i64 %i.aq, %i.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.as, i64 64) ]
  %5 = add nsw i32 %i.ab, 2
  %.neg = sdiv i32 %i.ab, -3
  %6 = add i32 %5, %.neg
  %7 = srem i32 %6, 3
  %i.at = sext i32 %7 to i64
  %i.au = getelementptr [88 x i8], ptr %i.g, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.az = mul i64 %i.ay, %i.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !55, !nonnull !48, !align !54
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr @__const._ZN3jxl6N_SSE46InvRCTERNS_5ImageEmmPNS_10ThreadPoolE.inv_rct_row, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !56, !nonnull !48, !align !49
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  tail call void %i.bg(ptr noundef %i.m, ptr noundef %i.s, ptr noundef %i.y, ptr noundef %i.ak, ptr noundef %i.as, ptr noundef %i.ba, i64 noundef %i.bj) #14
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #10 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_AVX26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !61, !nonnull !48, !align !49
  %i.e = tail call fastcc i32 @"_ZZN3jxl6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEENK3$_0clEjm"(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %1) #16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store atomic i32 1, ptr %i.a seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc noundef i32 @"_ZZN3jxl6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolEENK3$_0clEjm"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !63, !nonnull !48, !align !49
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64, !nonnull !48, !align !49
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.g = getelementptr [88 x i8], ptr %i.f, i64 %i.e ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37
  %i.l = mul i64 %i.k, %i.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.m, i64 64) ]
  %i.n = getelementptr i8, ptr %i.g, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = getelementptr i8, ptr %i.g, i64 104
  %i.q = load i64, ptr %i.p, align 8, !tbaa !37
  %i.r = mul i64 %i.q, %i.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.s, i64 64) ]
  %i.t = getelementptr i8, ptr %i.g, i64 216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = getelementptr i8, ptr %i.g, i64 192
  %i.w = load i64, ptr %i.v, align 8, !tbaa !37
  %i.x = mul i64 %i.w, %i.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.y, i64 64) ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !65, !nonnull !48, !align !54
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !24 ; 5 uses
  %i.ac = srem i32 %i.ab, 3
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr [88 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.aj = mul i64 %i.ai, %i.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aj ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ak, i64 64) ]
  %2 = add nsw i32 %i.ab, 1
  %.neg.a = sdiv i32 %i.ab, 3
  %3 = add nsw i32 %2, %.neg.a
  %4 = srem i32 %3, 3
  %i.al = sext i32 %4 to i64
  %i.am = getelementptr [88 x i8], ptr %i.g, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !37
  %i.ar = mul i64 %i.aq, %i.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.as, i64 64) ]
  %5 = add nsw i32 %i.ab, 2
  %.neg = sdiv i32 %i.ab, -3
  %6 = add i32 %5, %.neg
  %7 = srem i32 %6, 3
  %i.at = sext i32 %7 to i64
  %i.au = getelementptr [88 x i8], ptr %i.g, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.az = mul i64 %i.ay, %i.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !66, !nonnull !48, !align !54
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr @__const._ZN3jxl6N_AVX26InvRCTERNS_5ImageEmmPNS_10ThreadPoolE.inv_rct_row, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !67, !nonnull !48, !align !49
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !10
  tail call void %i.bg(ptr noundef %i.m, ptr noundef %i.s, ptr noundef %i.y, ptr noundef %i.ak, ptr noundef %i.as, ptr noundef %i.ba, i64 noundef %i.bj) #14
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @"_ZN3jxl10ThreadPool3RunIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_EES8_jjSE_RKT0_SG_"(ptr nofree readonly captures(address_is_null) %.0.val, ptr %.8.val, i32 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %"class.jxl::ThreadPool::RunCallState.23", align 8 ; 6 uses
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %1, ptr %3, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %2, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !41
  %.not = icmp eq ptr %.0.val, null
  br i1 %.not, label %.preheader.preheader, label %bb.d

.preheader.preheader:                             ; preds = %bb.b
  %wide.trip.count = zext i32 %0 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit"
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit" ] ; 7 uses
  %i.d = load atomic i32, ptr %i.c seq_cst, align 8
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit"

bb.c:                                             ; preds = %.preheader
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !70, !nonnull !48, !align !49 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72, !nonnull !48, !align !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73, !nonnull !48, !align !49
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.k = getelementptr [88 x i8], ptr %i.j, i64 %i.i ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %i.p = mul i64 %i.o, %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %i.r = getelementptr i8, ptr %i.k, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = getelementptr i8, ptr %i.k, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = mul i64 %i.u, %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = getelementptr i8, ptr %i.k, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr i8, ptr %i.k, i64 192
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ab = mul i64 %i.aa, %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !74, !nonnull !48, !align !54
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !24 ; 5 uses
  %i.ag = srem i32 %i.af, 3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr [88 x i8], ptr %i.k, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.am = load i64, ptr %i.al, align 8, !tbaa !37
  %i.an = mul i64 %i.am, %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ao, i64 64) ]
  %i.ap = add nsw i32 %i.af, 1
  %i.aq = sdiv i32 %i.af, 3
  %i.ar = add nsw i32 %i.ap, %i.aq
  %i.as = srem i32 %i.ar, 3
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [88 x i8], ptr %i.k, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !37
  %i.az = mul i64 %i.ay, %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.az ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ba, i64 64) ]
  %i.bb = add nsw i32 %i.af, 2
  %.neg.i.i = sdiv i32 %i.af, -3
  %i.bc = add i32 %i.bb, %.neg.i.i
  %i.bd = srem i32 %i.bc, 3
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr [88 x i8], ptr %i.k, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !37
  %i.bk = mul i64 %i.bj, %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bl, i64 64) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !75, !nonnull !48, !align !54
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !24
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr @__const._ZN3jxl6N_SSE26InvRCTERNS_5ImageEmmPNS_10ThreadPoolE.inv_rct_row, i64 %i.bp
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !76, !nonnull !48, !align !49
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !10
  tail call void %i.br(ptr noundef %i.q, ptr noundef %i.w, ptr noundef %i.ac, ptr noundef %i.ao, ptr noundef %i.ba, ptr noundef %i.bl, i64 noundef %i.bu) #14, !inline_history !275
  br label %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit"

"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit": ; preds = %.preheader, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.sink.split, label %.preheader, !llvm.loop !276

bb.d:                                             ; preds = %bb.b
  %i.bv = call noundef i32 %.0.val(ptr noundef %.8.val, ptr noundef nonnull %3, ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm", ptr noundef nonnull @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm", i32 noundef 0, i32 noundef %0) #14
  %.not25 = icmp eq i32 %i.bv, 0
  br i1 %.not25, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm.exit", %bb.d
  %i.bw = load atomic i32, ptr %i.c seq_cst, align 8
  %.not5 = icmp ne i32 %i.bw, 0
  %i.bx = zext i1 %.not5 to i32
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d
  %.sroa.03.0.shrunk = phi i32 [ 1, %bb.d ], [ %i.bx, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.sroa.03.1 = phi i32 [ %.sroa.03.0.shrunk, %bb.e ], [ 0, %bb.a ]
  ret i32 %.sroa.03.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 -1, 1) i32 @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallInitFuncEPvm"(ptr nofree readnone captures(none) %0, i64 %1) #10 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZN3jxl10ThreadPool12RunCallStateIZNS_9RunOnPoolIZNS_6N_SSE26InvRCTERNS_5ImageEmmPS0_E3$_0EENS_6StatusES6_jjRKNS_16ThreadPoolNoInitERKT_PKcEUlmE_S7_E12CallDataFuncEPvjm"(ptr nofree noundef captures(none) %0, i32 noundef %1, i64 %2) #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load atomic i32, ptr %i.a seq_cst, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70, !nonnull !48, !align !49 ; 5 uses
  %i.e = zext i32 %1 to i64                       ; 6 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !72, !nonnull !48, !align !49
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73, !nonnull !48, !align !49
  %i.i = load i64, ptr %i.h, align 8, !tbaa !10
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.k = getelementptr [88 x i8], ptr %i.j, i64 %i.i ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !37
  %i.p = mul i64 %i.o, %i.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.q, i64 64) ]
  %i.r = getelementptr i8, ptr %i.k, i64 128
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = getelementptr i8, ptr %i.k, i64 104
  %i.u = load i64, ptr %i.t, align 8, !tbaa !37
  %i.v = mul i64 %i.u, %i.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.w, i64 64) ]
  %i.x = getelementptr i8, ptr %i.k, i64 216
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.z = getelementptr i8, ptr %i.k, i64 192
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37
  %i.ab = mul i64 %i.aa, %i.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16
end_hunk_0
