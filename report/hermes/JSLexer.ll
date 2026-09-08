Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/JSLexer?download=true
inline.NumInlined: 2539
inline.NumDeleted: 512
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN6hermes6parser7JSLexer17advanceInJSXChildEv:bb.a
  %i.cr = load i32, ptr %i.n, align 8, !tbaa !136
  %i.cs = add i32 %i.cr, 1
  store i32 %i.cs, ptr %i.n, align 8, !tbaa !136
  %i.ct = load i32, ptr %i.p, align 8, !tbaa !136 ; 2 uses
  %i.cu = load i32, ptr %i.u, align 4, !tbaa !141
  %.not.i17 = icmp ult i32 %i.ct, %i.cu
  br i1 %.not.i17, label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19, label %bb.aa, !prof !142

bb.aa:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull %i.v, i64 noundef 0, i64 noundef 1) #18
  %.pre.i18 = load i32, ptr %i.p, align 8, !tbaa !136
  br label %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19

_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit, %bb.aa
  %i.cv = phi i32 [ %.pre.i18, %bb.aa ], [ %i.ct, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit ]
  %i.cw = load ptr, ptr %i.o, align 8, !tbaa !135
  %i.cx = zext i32 %i.cv to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i8 %i.x, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.p, align 8, !tbaa !136
  %i.da = add i32 %i.cz, 1
  store i32 %i.da, ptr %i.p, align 8, !tbaa !136
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  store ptr %i.dc, ptr %i.d, align 8, !tbaa !55
  br label %bb.ab

bb.ab:                                            ; preds = %.thread, %_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc.exit19, %bb.h
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !55
  br label %bb.g

bb.ac:                                            ; preds = %.thread26, %bb.b, %bb.c, %bb.e
  %i.dd = phi ptr [ %.pre28, %.thread26 ], [ %i.h, %bb.b ], [ %i.i, %bb.c ], [ %i.e, %bb.e ]
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.de, align 8, !tbaa !24
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.0.0.copyload.i.i, ptr %i.df, align 8, !tbaa !24
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !24
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !67, !range !65, !noundef !57
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ad, label %_ZN6hermes6parser7JSLexer11finishTokenEPKc.exit, !prof !68

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6hermes6parser7JSLexer17storeCurrentTokenEv(ptr noundef nonnull align 8 dereferenceable(1160) %0)
  br label %_ZN6hermes6parser7JSLexer11finishTokenEPKc.exit

_ZN6hermes6parser7JSLexer11finishTokenEPKc.exit:  ; preds = %bb.ac, %bb.ad
  ret ptr %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes6parser7JSLexer22appendUnicodeToStorageEjRN4llvh15SmallVectorImplIcEE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.c, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.d = add i32 %0, 983040
  %i.e = lshr i32 %i.d, 10
  %i.f = and i32 %i.e, 1023
  %i.g = or disjoint i32 %i.f, 55296
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.g) #18
  %i.h = and i32 %0, 1023
  %i.i = or disjoint i32 %i.h, 56320
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.i, %bb.b ], [ %0, %bb.a ]
  call void @_ZN6hermes10encodeUTF8ERPcj(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.sink) #18
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !141
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !136  ; 2 uses
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = sub nsw i64 %i.p, %i.s
  %i.u = icmp ugt i64 %i.m, %i.t
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = add i64 %i.m, %i.s
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.w, i64 noundef %i.v, i64 noundef 1) #18
  %.pre7.pre.i = load i32, ptr %i.q, align 8, !tbaa !136
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, %i.j
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !tbaa !135
  %i.y = zext i32 %.pre7.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 1 %i.a, i64 %i.m, i1 false)
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !136
  br label %_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit

_ZN4llvh15SmallVectorImplIcE6appendIPcvEEvT_S4_.exit: ; preds = %bb.e, %bb.f
  %i.aa = phi i32 [ %.pre7.i, %bb.e ], [ %.pre.i, %bb.f ]
  %i.ab = trunc i64 %i.m to i32
  %i.ac = add i32 %i.aa, %i.ab
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i64 0, 8589934592) i64 @_ZN6hermes6parser7JSLexer25consumeHTMLEntityOptionalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.llvh::StringRef", align 8   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 20 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 17 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !72
  %i.f = icmp eq i8 %i.e, 35
  br i1 %i.f, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %.ptr120 = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  %i.g = load i8, ptr %.ptr120, align 1, !tbaa !72
  %i.h = icmp eq i8 %i.g, 120
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  store ptr %.ptr120, ptr %i.b, align 8, !tbaa !55
  %.03188 = load i8, ptr %.ptr120, align 1, !tbaa !72 ; 2 uses
  %i.i = icmp eq i8 %.03188, 59
  br i1 %i.i, label %.thread60, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %.ptr124 = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 2 uses
  store ptr %.ptr124, ptr %i.b, align 8, !tbaa !55
  %.03393 = load i8, ptr %.ptr124, align 1, !tbaa !72 ; 2 uses
  %i.j = icmp eq i8 %.03393, 59
  br i1 %i.j, label %.thread60, label %.lr.ph98

bb.d:                                             ; preds = %bb.h
  %.033.in95.add = add nuw nsw i64 %.033.in95.idx, 1 ; 4 uses
  %.ptr123 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.033.in95.add ; 2 uses
  store ptr %.ptr123, ptr %i.b, align 8, !tbaa !55
  %.033 = load i8, ptr %.ptr123, align 1, !tbaa !72 ; 2 uses
  %i.k = icmp eq i8 %.033, 59
  br i1 %i.k, label %._crit_edge99, label %.lr.ph98, !llvm.loop !287

._crit_edge99:                                    ; preds = %bb.d
  %.not42 = icmp eq i64 %.033.in95.add, 3
  br i1 %.not42, label %.thread60, label %.critedge

.critedge:                                        ; preds = %._crit_edge99
  %.ptr122 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.033.in95.add
  %i.l = getelementptr inbounds nuw i8, ptr %.ptr122, i64 1
  store ptr %i.l, ptr %i.b, align 8, !tbaa !55
  br label %bb.ah

.lr.ph98:                                         ; preds = %bb.c, %bb.d
  %.03396 = phi i8 [ %.033, %bb.d ], [ %.03393, %bb.c ] ; 3 uses
  %.033.in95.idx = phi i64 [ %.033.in95.add, %bb.d ], [ 3, %bb.c ]
  %.05794 = phi i32 [ %i.t, %bb.d ], [ 0, %bb.c ]
  %i.m = sext i8 %.03396 to i32
  %isdigittmp43 = add nsw i32 %i.m, -48
  %isdigit44 = icmp ult i32 %isdigittmp43, 10
  br i1 %isdigit44, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph98
  %i.n = add nsw i8 %.03396, -48
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph98
  %i.o = or i8 %.03396, 32                        ; 2 uses
  %i.p = add i8 %i.o, -97
  %or.cond = icmp ult i8 %i.p, 6
  br i1 %or.cond, label %bb.g, label %.thread60

bb.g:                                             ; preds = %bb.f
  %i.q = add nsw i8 %i.o, -87
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.134 = phi i8 [ %i.n, %bb.e ], [ %i.q, %bb.g ]
  %i.r = shl i32 %.05794, 4
  %i.s = sext i8 %.134 to i32
  %i.t = add nsw i32 %i.r, %i.s                   ; 3 uses
  %i.u = icmp ugt i32 %i.t, 1114111
  br i1 %i.u, label %.thread60, label %bb.d

bb.i:                                             ; preds = %bb.j
  %.031.in90.add = add nuw nsw i64 %.031.in90.idx, 1 ; 3 uses
  %.ptr119 = getelementptr inbounds nuw i8, ptr %i.c, i64 %.031.in90.add ; 2 uses
  store ptr %.ptr119, ptr %i.b, align 8, !tbaa !55
  %.031 = load i8, ptr %.ptr119, align 1, !tbaa !72 ; 2 uses
  %i.v = icmp eq i8 %.031, 59
  br i1 %i.v, label %.critedge46, label %.lr.ph, !llvm.loop !288

.critedge46:                                      ; preds = %bb.i
  %.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.031.in90.add
  %i.w = getelementptr inbounds nuw i8, ptr %.ptr, i64 1
  store ptr %i.w, ptr %i.b, align 8, !tbaa !55
  br label %bb.ah

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.03191 = phi i8 [ %.031, %bb.i ], [ %.03188, %.preheader ]
  %.031.in90.idx = phi i64 [ %.031.in90.add, %bb.i ], [ 2, %.preheader ]
  %.05689 = phi i32 [ %i.z, %bb.i ], [ 0, %.preheader ]
  %i.x = sext i8 %.03191 to i32
  %isdigittmp40 = add nsw i32 %i.x, -48           ; 2 uses
  %isdigit41 = icmp ult i32 %isdigittmp40, 10
  br i1 %isdigit41, label %bb.j, label %.thread60

bb.j:                                             ; preds = %.lr.ph
  %i.y = mul i32 %.05689, 10
  %i.z = add nuw nsw i32 %isdigittmp40, %i.y      ; 3 uses
  %i.aa = icmp ugt i32 %i.z, 1114111
  br i1 %i.aa, label %.thread60, label %bb.i

bb.k:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !55
  %i.ab = load i8, ptr %i.d, align 1, !tbaa !72   ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 59
  br i1 %i.ac, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.p, %bb.k
  %.086.lcssa = phi i64 [ 0, %bb.k ], [ 1, %bb.p ], [ 2, %bb.r ], [ 3, %bb.t ], [ 4, %bb.v ], [ 5, %bb.x ], [ 6, %bb.z ], [ 7, %bb.ab ], [ 8, %bb.ad ] ; 2 uses
  %.lcssa104 = phi ptr [ %i.d, %bb.k ], [ %i.az, %bb.p ], [ %i.bf, %bb.r ], [ %i.bl, %bb.t ], [ %i.br, %bb.v ], [ %i.bx, %bb.x ], [ %i.cd, %bb.z ], [ %i.cj, %bb.ab ], [ %i.cp, %bb.ad ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !289, !nonnull !57, !align !58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.af = sub nsw i64 0, %.086.lcssa
  %i.ag = getelementptr inbounds i8, ptr %.lcssa104, i64 %i.af
  store ptr %i.ag, ptr %1, align 8, !tbaa !186
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %.086.lcssa, ptr %i.ah, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ai = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E15LookupBucketForIS2_EEbRKT_RPKS7_(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !189
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !190
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !191
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %i.an
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit: ; preds = %bb.m, %bb.n
  %.pn5.i = phi ptr [ %i.aj, %bb.m ], [ %i.ao, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.ap = load ptr, ptr %i.ad, align 8, !tbaa !289, !nonnull !57, !align !58 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !190
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !191
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.at
  %i.av = icmp eq ptr %.pn5.i, %i.au
  br i1 %i.av, label %.thread60, label %bb.ag

bb.o:                                             ; preds = %bb.k
  %i.aw = sext i8 %i.ab to i32                    ; 2 uses
  %i.ax = or i32 %i.aw, 32
  %i.ay = add nsw i32 %i.ax, -97
  %or.cond47 = icmp ult i32 %i.ay, 26
  %isdigittmp = add nsw i32 %i.aw, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %or.cond48 = select i1 %or.cond47, i1 true, i1 %isdigit
  br i1 %or.cond48, label %bb.p, label %.thread60

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 3 uses
  store ptr %i.az, ptr %i.b, align 8, !tbaa !55
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !72  ; 2 uses
  %i.bb = icmp eq i8 %i.ba, 59
  br i1 %i.bb, label %bb.l, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = sext i8 %i.ba to i32                    ; 2 uses
  %i.bd = or i32 %i.bc, 32
  %i.be = add nsw i32 %i.bd, -97
  %or.cond47.1 = icmp ult i32 %i.be, 26
  %isdigittmp.1 = add nsw i32 %i.bc, -48
  %isdigit.1 = icmp ult i32 %isdigittmp.1, 10
  %or.cond48.1 = select i1 %or.cond47.1, i1 true, i1 %isdigit.1
  br i1 %or.cond48.1, label %bb.r, label %.thread60

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 3 ; 3 uses
  store ptr %i.bf, ptr %i.b, align 8, !tbaa !55
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !72  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 59
  br i1 %i.bh, label %bb.l, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bi = sext i8 %i.bg to i32                    ; 2 uses
  %i.bj = or i32 %i.bi, 32
  %i.bk = add nsw i32 %i.bj, -97
  %or.cond47.2 = icmp ult i32 %i.bk, 26
  %isdigittmp.2 = add nsw i32 %i.bi, -48
  %isdigit.2 = icmp ult i32 %isdigittmp.2, 10
  %or.cond48.2 = select i1 %or.cond47.2, i1 true, i1 %isdigit.2
  br i1 %or.cond48.2, label %bb.t, label %.thread60

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 3 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !55
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !72  ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 59
  br i1 %i.bn, label %bb.l, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = sext i8 %i.bm to i32                    ; 2 uses
  %i.bp = or i32 %i.bo, 32
  %i.bq = add nsw i32 %i.bp, -97
  %or.cond47.3 = icmp ult i32 %i.bq, 26
  %isdigittmp.3 = add nsw i32 %i.bo, -48
  %isdigit.3 = icmp ult i32 %isdigittmp.3, 10
  %or.cond48.3 = select i1 %or.cond47.3, i1 true, i1 %isdigit.3
  br i1 %or.cond48.3, label %bb.v, label %.thread60

bb.v:                                             ; preds = %bb.u
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 5 ; 3 uses
  store ptr %i.br, ptr %i.b, align 8, !tbaa !55
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !72  ; 2 uses
  %i.bt = icmp eq i8 %i.bs, 59
  br i1 %i.bt, label %bb.l, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = sext i8 %i.bs to i32                    ; 2 uses
  %i.bv = or i32 %i.bu, 32
  %i.bw = add nsw i32 %i.bv, -97
  %or.cond47.4 = icmp ult i32 %i.bw, 26
  %isdigittmp.4 = add nsw i32 %i.bu, -48
  %isdigit.4 = icmp ult i32 %isdigittmp.4, 10
  %or.cond48.4 = select i1 %or.cond47.4, i1 true, i1 %isdigit.4
  br i1 %or.cond48.4, label %bb.x, label %.thread60

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 6 ; 3 uses
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !55
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !72  ; 2 uses
  %i.bz = icmp eq i8 %i.by, 59
  br i1 %i.bz, label %bb.l, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = sext i8 %i.by to i32                    ; 2 uses
  %i.cb = or i32 %i.ca, 32
  %i.cc = add nsw i32 %i.cb, -97
  %or.cond47.5 = icmp ult i32 %i.cc, 26
  %isdigittmp.5 = add nsw i32 %i.ca, -48
  %isdigit.5 = icmp ult i32 %isdigittmp.5, 10
  %or.cond48.5 = select i1 %or.cond47.5, i1 true, i1 %isdigit.5
  br i1 %or.cond48.5, label %bb.z, label %.thread60

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 7 ; 3 uses
  store ptr %i.cd, ptr %i.b, align 8, !tbaa !55
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !72  ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 59
  br i1 %i.cf, label %bb.l, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = sext i8 %i.ce to i32                    ; 2 uses
  %i.ch = or i32 %i.cg, 32
  %i.ci = add nsw i32 %i.ch, -97
  %or.cond47.6 = icmp ult i32 %i.ci, 26
  %isdigittmp.6 = add nsw i32 %i.cg, -48
  %isdigit.6 = icmp ult i32 %isdigittmp.6, 10
  %or.cond48.6 = select i1 %or.cond47.6, i1 true, i1 %isdigit.6
  br i1 %or.cond48.6, label %bb.ab, label %.thread60

bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.cj, ptr %i.b, align 8, !tbaa !55
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !72  ; 2 uses
  %i.cl = icmp eq i8 %i.ck, 59
  br i1 %i.cl, label %bb.l, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = sext i8 %i.ck to i32                    ; 2 uses
  %i.cn = or i32 %i.cm, 32
  %i.co = add nsw i32 %i.cn, -97
  %or.cond47.7 = icmp ult i32 %i.co, 26
  %isdigittmp.7 = add nsw i32 %i.cm, -48
  %isdigit.7 = icmp ult i32 %isdigittmp.7, 10
  %or.cond48.7 = select i1 %or.cond47.7, i1 true, i1 %isdigit.7
  br i1 %or.cond48.7, label %bb.ad, label %.thread60

bb.ad:                                            ; preds = %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 9 ; 3 uses
  store ptr %i.cp, ptr %i.b, align 8, !tbaa !55
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !72  ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 59
  br i1 %i.cr, label %bb.l, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = sext i8 %i.cq to i32                    ; 2 uses
  %i.ct = or i32 %i.cs, 32
  %i.cu = add nsw i32 %i.ct, -97
  %or.cond47.8 = icmp ult i32 %i.cu, 26
  %isdigittmp.8 = add nsw i32 %i.cs, -48
  %isdigit.8 = icmp ult i32 %isdigittmp.8, 10
  %or.cond48.8 = select i1 %or.cond47.8, i1 true, i1 %isdigit.8
  br i1 %or.cond48.8, label %bb.af, label %.thread60

bb.af:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store ptr %i.cv, ptr %i.b, align 8, !tbaa !55
  br label %.thread60

bb.ag:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !55
  %i.cy = getelementptr inbounds nuw i8, ptr %.pn5.i, i64 16
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !12
  br label %bb.ah

.thread60:                                        ; preds = %.lr.ph, %bb.j, %bb.h, %bb.f, %bb.c, %.preheader, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.af, %_ZNK4llvh12DenseMapBaseINS_8DenseMapINS_9StringRefEjNS_12DenseMapInfoIS2_EENS_6detail12DenseMapPairIS2_jEEEES2_jS4_S7_E4findERKS2_.exit, %._crit_edge99
  store ptr %i.c, ptr %i.b, align 8, !tbaa !55
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.critedge46, %.critedge, %.thread60
  %.sroa.054.5 = phi i32 [ undef, %.thread60 ], [ %i.t, %.critedge ], [ %i.z, %.critedge46 ], [ %i.cz, %bb.ag ]
  %.sroa.455.4 = phi i64 [ 0, %.thread60 ], [ 4294967296, %.critedge ], [ 4294967296, %.critedge46 ], [ 4294967296, %bb.ag ]
  %.sroa.054.0.insert.ext = zext i32 %.sroa.054.5 to i64
  %.sroa.054.0.insert.insert = or disjoint i64 %.sroa.455.4, %.sroa.054.0.insert.ext
  ret i64 %.sroa.054.0.insert.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh23SmallVectorTemplateBaseIcLb1EE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !136  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !141
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !142

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 1) #18
  %.pre = load i32, ptr %i.a, align 8, !tbaa !136
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !135
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %1, align 1
  store i8 %i.j, ptr %i.i, align 1
  %i.k = load i32, ptr %i.a, align 8, !tbaa !136
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.a, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes6parser7JSLexer24isCurrentTokenADirectiveEv(ptr noundef nonnull align 8 dereferenceable(1160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8, !tbaa !23
  %.not = icmp ne i32 %i.c, 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i8, ptr %i.d, align 8, !range !65
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %.not, i1 true, i1 %i.f
  br i1 %or.cond, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.backedge, %bb.b
  %.021.ph = phi ptr [ %i.h, %bb.b ], [ %.021.ph.be, %thread-pre-split.backedge ] ; 2 uses
  %.pr = load i8, ptr %.021.ph, align 1, !tbaa !72
  br label %.loopexit

.loopexit:                                        ; preds = %.critedge, %thread-pre-split
  %i.l = phi i8 [ %.pr, %thread-pre-split ], [ %i.x, %.critedge ] ; 2 uses
  %.021 = phi ptr [ %.021.ph, %thread-pre-split ], [ %i.w, %.critedge ] ; 13 uses
  switch i8 %i.l, label %bb.o [
    i8 0, label %bb.c
    i8 59, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit
    i8 125, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit
    i8 13, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit
    i8 10, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit
    i8 -30, label %bb.d
    i8 11, label %bb.f
    i8 12, label %bb.f
    i8 9, label %.critedge.preheader
    i8 32, label %.critedge.preheader
    i8 -62, label %bb.g
    i8 -17, label %bb.i
    i8 47, label %bb.l
  ]

.critedge.preheader:                              ; preds = %.loopexit, %.loopexit
  br label %.critedge

bb.c:                                             ; preds = %.loopexit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = icmp eq ptr %.021, %i.n
  br label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit

bb.d:                                             ; preds = %.loopexit
  %i.p = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !72
  %i.r = icmp eq i8 %i.q, -128
  br i1 %i.r, label %bb.e, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.021, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !72
  %i.u = and i8 %i.t, -2
  %spec.select.i = icmp eq i8 %i.u, -88
  br label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit

bb.f:                                             ; preds = %.loopexit, %.loopexit
  %i.v = getelementptr inbounds nuw i8, ptr %.021, i64 1
  br label %thread-pre-split.backedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.122 = phi ptr [ %.021, %.critedge.preheader ], [ %i.w, %.critedge.backedge ]
  %i.w = getelementptr inbounds nuw i8, ptr %.122, i64 1 ; 3 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !72    ; 2 uses
  switch i8 %i.x, label %.loopexit [
    i8 9, label %.critedge.backedge
    i8 32, label %.critedge.backedge
  ], !llvm.loop !290

.critedge.backedge:                               ; preds = %.critedge, %.critedge
  br label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !72
  %i.aa = icmp eq i8 %i.z, -96
  br i1 %i.aa, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.021, i64 2
  br label %thread-pre-split.backedge

bb.i:                                             ; preds = %.loopexit
  %i.ac = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !72
  %i.ae = icmp eq i8 %i.ad, -69
  br i1 %i.ae, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.021, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !72
  %i.ah = icmp eq i8 %i.ag, -65
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.021, i64 3
  br label %thread-pre-split.backedge

bb.l:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %.021, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !72
  switch i8 %i.ak, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit [
    i8 47, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit.loopexit104
    i8 42, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !63
  %i.an = load ptr, ptr %0, align 8, !tbaa !56, !nonnull !57, !align !58 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 336 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8
  store i32 0, ptr %i.ao, align 8, !tbaa !60
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 340
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !61
  %i.aq = call noundef ptr @_ZN6hermes6parser7JSLexer16skipBlockCommentEPKc(ptr noundef nonnull align 8 dereferenceable(1160) %0, ptr noundef nonnull %.021) ; 3 uses
  %.sroa.4.8.extract.trunc = trunc i64 %i.ap to i40
  store i40 %.sroa.4.8.extract.trunc, ptr %i.ao, align 8
  %i.ar = load i8, ptr %i.k, align 1, !tbaa !70, !range !65, !noundef !57
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.n, label %thread-pre-split.backedge

bb.n:                                             ; preds = %bb.m
  %i.at = ptrtoint ptr %i.al to i64
  %i.au = ptrtoint ptr %i.am to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.j, align 8, !tbaa !71
  %.not.i.i.i.i = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i.i.i, label %thread-pre-split.backedge, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6hermes6parser13StoredCommentESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %bb.n
  store ptr %i.ax, ptr %i.j, align 8, !tbaa !62
  br label %thread-pre-split.backedge

bb.o:                                             ; preds = %.loopexit
  %i.az = icmp slt i8 %i.l, 0
  br i1 %i.az, label %.thread, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit

.thread:                                          ; preds = %bb.i, %bb.j, %bb.g, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.021, ptr %i.a, align 8, !tbaa !24
  %i.ba = call noundef i32 @_ZN6hermes19_decodeUTF8SlowPathILb0EZNKS_6parser7JSLexer9_peekUTF8EPKcEUlRKN4llvh5TwineEE_EEjRS4_T0_(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bc = call noundef zeroext i1 @_ZN6hermes18isUnicodeOnlySpaceEj(i32 noundef %i.ba) #18
  br i1 %i.bc, label %thread-pre-split.backedge, label %_ZN6hermes6parser12_GLOBAL__N_133matchUnicodeLineTerminatorOffset1EPKc.exit

end_hunk_0
