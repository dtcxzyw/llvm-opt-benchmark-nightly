Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/snappy/original/snappy?download=true
inline.NumInlined: 501
inline.NumDeleted: 214
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i:bb.a

.critedge2.loopexit.split.loop.exit.i329:         ; preds = %.lr.ph40.i326
  %i.mx = trunc nuw i64 %indvars.iv48.i327 to i32
  br label %_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306

_ZN6snappy8internalL20FindMatchLengthPlainEPKcS2_S2_.exit306: ; preds = %.critedge28.i330, %.critedge28.i303, %.critedge2.loopexit.split.loop.exit.i329, %.critedge.i316, %.critedge28.preheader.i321, %.critedge2.loopexit.split.loop.exit.i302, %.critedge.i289, %.critedge28.preheader.i294
  %.7187 = phi ptr [ %i.ks, %.critedge2.loopexit.split.loop.exit.i302 ], [ %i.ks, %.critedge28.preheader.i294 ], [ %i.ks, %.critedge.i289 ], [ %i.lz, %.critedge2.loopexit.split.loop.exit.i329 ], [ %i.lz, %.critedge28.preheader.i321 ], [ %i.lz, %.critedge.i316 ], [ %i.ks, %.critedge28.i303 ], [ %i.lz, %.critedge28.i330 ]
  %.7.in = phi i32 [ %i.lq, %.critedge2.loopexit.split.loop.exit.i302 ], [ %.026.lcssa.i295, %.critedge28.preheader.i294 ], [ %i.lk, %.critedge.i289 ], [ %i.mx, %.critedge2.loopexit.split.loop.exit.i329 ], [ %.026.lcssa.i322, %.critedge28.preheader.i321 ], [ %i.mr, %.critedge.i316 ], [ %i.lb, %.critedge28.i303 ], [ %i.mi, %.critedge28.i330 ]
  %.7 = add i32 %.7.in, 4
  br label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit

.thread351:                                       ; preds = %.loopexit.loopexit, %bb.c, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.b, %bb.a
  %.5206 = phi ptr [ %.0201577, %bb.c ], [ %2, %bb.a ], [ %.3204, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %2, %bb.b ], [ %.3204, %.loopexit.loopexit ] ; 4 uses
  %.8 = phi ptr [ %.0192578, %bb.c ], [ %0, %bb.a ], [ %i.gi, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %0, %bb.b ], [ %i.gi, %.loopexit.loopexit ] ; 3 uses
  %i.my = icmp ult ptr %.8, %i.c
  br i1 %i.my, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %.thread351
  %i.mz = ptrtoint ptr %i.c to i64
  %i.na = ptrtoint ptr %.8 to i64
  %i.nb = sub i64 %i.mz, %i.na                    ; 2 uses
  %i.nc = trunc i64 %i.nb to i32                  ; 2 uses
  %i.nd = add nsw i32 %i.nc, -1                   ; 3 uses
  %i.ne = icmp slt i32 %i.nc, 61
  br i1 %i.ne, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.tr.i337 = trunc i32 %i.nd to i8
  %i.nf = shl i8 %.tr.i337, 2
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ah:                                            ; preds = %bb.af
  %i.ng = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.nd, i1 true)
  %i.nh = lshr i32 %i.ng, 3
  %i.ni = xor i32 %i.nh, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.ni to i8
  %i.nj = shl nuw nsw i8 %.tr16.i, 2
  %i.nk = or disjoint i8 %i.nj, -16
  %i.nl = getelementptr inbounds nuw i8, ptr %.5206, i64 1 ; 2 uses
  store i32 %i.nd, ptr %i.nl, align 1
  %i.nm = zext nneg i32 %i.ni to i64
  %i.nn = getelementptr i8, ptr %i.nl, i64 %i.nm
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit:    ; preds = %bb.ag, %bb.ah
  %.sink.i334 = phi i8 [ %i.nf, %bb.ag ], [ %i.nk, %bb.ah ]
  %.pn.i335 = phi ptr [ %.5206, %bb.ag ], [ %i.nn, %bb.ah ]
  store i8 %.sink.i334, ptr %.5206, align 1, !tbaa !9
  %.0.i336 = getelementptr i8, ptr %.pn.i335, i64 1 ; 2 uses
  %sext355 = shl i64 %i.nb, 32
  %i.no = ashr exact i64 %sext355, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i336, ptr readonly align 1 %.8, i64 %i.no, i1 false)
  %i.np = getelementptr inbounds i8, ptr %.0.i336, i64 %i.no
  br label %bb.ai

bb.ai:                                            ; preds = %.thread351, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0200 = phi ptr [ %.5206, %.thread351 ], [ %i.np, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0200
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6snappy9MemCopy64EPcPKvm(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = icmp ugt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6snappy9MemCopy64ElPKvm(i64 noundef %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6snappy13ClearDeferredEPPKvPmPh(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) local_unnamed_addr #8 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !48
  store i64 0, ptr %1, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6snappy12DeferMemCopyEPPKvPmS1_m(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #8 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !48
  store i64 %3, ptr %1, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.j) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.n = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !56
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !55
  %i.t = icmp eq i64 %i.s, 0                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = zext i1 %i.t to i8
  store i8 %i.v, ptr %i.u, align 8, !tbaa !58
  br i1 %i.t, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.f, %bb.a ]
  %.033 = phi ptr [ %i.r, %bb.c ], [ %i.d, %bb.a ] ; 5 uses
  %i.y = load i8, ptr %.033, align 1, !tbaa !9    ; 2 uses
  %i.z = zext i8 %i.y to i32                      ; 3 uses
  %i.aa = and i32 %i.z, 3
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = icmp ugt i8 %i.y, -17
  %or.cond.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = lshr exact i32 %i.z, 2
  %i.ae = add nsw i32 %i.ad, -58
  br label %_ZN6snappy15CalculateNeededEh.exit

bb.f:                                             ; preds = %bb.d
  %i.af = shl nuw nsw i32 %i.z, 3
  %i.ag = and i32 %i.af, 24
  %i.ah = lshr i32 84083201, %i.ag
  %i.ai = and i32 %i.ah, 7
  br label %_ZN6snappy15CalculateNeededEh.exit

_ZN6snappy15CalculateNeededEh.exit:               ; preds = %bb.e, %bb.f
  %i.aj = phi i32 [ %i.ae, %bb.e ], [ %i.ai, %bb.f ]
  %i.ak = ptrtoint ptr %i.x to i64
  %i.al = ptrtoint ptr %.033 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 6 uses
  %i.an = zext i32 %i.aj to i64                   ; 4 uses
  %i.ao = icmp ult i64 %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6snappy15CalculateNeededEh.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 4 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr nonnull align 1 %.033, i64 %i.am, i1 false)
  %i.aq = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !55
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, i64 noundef %i.as) #24
  store i64 0, ptr %i.ar, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %.02939 = phi i64 [ %i.am, %bb.g ], [ %i.be, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.aw = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.b) #24
  %i.bb = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %.critedge37, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = sub nsw i64 %i.an, %.02939
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bc) ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.02939
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %i.ba, i64 %.sroa.speculated, i1 false)
  %i.be = add i64 %.sroa.speculated, %.02939      ; 2 uses
  %i.bf = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !56
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, i64 noundef %.sroa.speculated) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bj = icmp ult i64 %i.be, %i.an
  br i1 %i.bj, label %bb.h, label %bb.j, !llvm.loop !59

bb.j:                                             ; preds = %bb.i
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !49
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.an
  store ptr %i.bk, ptr %i.e, align 8, !tbaa !53
  br label %bb.n

bb.k:                                             ; preds = %_ZN6snappy15CalculateNeededEh.exit
  %i.bl = icmp ult i64 %i.am, 5
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %.033, i64 %i.am, i1 false)
  %i.bn = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !55
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, i64 noundef %i.bp) #24
  store i64 0, ptr %i.bo, align 8, !tbaa !55
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !49
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.am
  store ptr %i.bt, ptr %i.e, align 8, !tbaa !53
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %.033, ptr %i.c, align 8, !tbaa !49
  br label %bb.n

.critedge37:                                      ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.n

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.n

bb.n:                                             ; preds = %.critedge37, %bb.l, %bb.m, %bb.j, %.critedge
  %.5 = phi i1 [ false, %.critedge ], [ true, %bb.j ], [ true, %bb.m ], [ false, %.critedge37 ], [ true, %bb.l ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy21GetUncompressedLengthEPNS_6SourceEPj(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i8 0, ptr %i.c, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef %1)
  %i.e = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !55
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.f) #24, !inline_history !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 20 uses
  store i32 0, ptr %1, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.b = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a) #24
  %i.g = load i64, ptr %i.a, align 8, !tbaa !10
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.f, align 1, !tbaa !9     ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 1) #24
  %i.n = and i8 %i.i, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = load i32, ptr %1, align 4, !tbaa !21
  %i.q = or i32 %i.p, %i.o
  store i32 %i.q, ptr %1, align 4, !tbaa !21
  %i.r = icmp sgt i8 %i.i, -1
  br i1 %i.r, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.s = load ptr, ptr %0, align 8, !tbaa !54     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a) #24
  %i.x = load i64, ptr %i.a, align 8, !tbaa !10
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.w, align 1, !tbaa !9     ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 1) #24
  %i.ae = and i8 %i.z, 127
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 7
  %i.ah = load i32, ptr %1, align 4, !tbaa !21
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %1, align 4, !tbaa !21
  %i.aj = icmp sgt i8 %i.z, -1
  br i1 %i.aj, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ak = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.a) #24
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !10
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !9   ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !56
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef 1) #24
  %i.aw = and i8 %i.ar, 127
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 14
  %i.az = load i32, ptr %1, align 4, !tbaa !21
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %1, align 4, !tbaa !21
  %i.bb = icmp sgt i8 %i.ar, -1
  br i1 %i.bb, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bc = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !56
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.a) #24
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !10
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !9   ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef 1) #24
  %i.bo = and i8 %i.bj, 127
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 21
  %i.br = load i32, ptr %1, align 4, !tbaa !21
  %i.bs = or i32 %i.br, %i.bq
  store i32 %i.bs, ptr %1, align 4, !tbaa !21
  %i.bt = icmp sgt i8 %i.bj, -1
  br i1 %i.bt, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bu = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a) #24
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !10
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %bb.j
end_hunk_0
begin_hunk_1_@_ZN6snappy8CompressEPNS_6SourceEPNS_4SinkENS_18CompressionOptionsE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.p, ptr %i.n, align 1, !tbaa !9
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp ult i32 %i.g, 2097152
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = trunc i64 %i.f to i8
  %i.t = or i8 %i.s, -128
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.t, ptr %i.a, align 1, !tbaa !9
  %i.v = lshr i64 %i.f, 7
  %i.w = trunc i64 %i.v to i8
  %i.x = or i8 %i.w, -128
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.x, ptr %i.u, align 1, !tbaa !9
  %i.z = lshr i64 %i.f, 14
  %i.aa = trunc i64 %i.z to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !9
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = icmp ult i32 %i.g, 268435456
  %i.ad = trunc i64 %i.f to i8
  %i.ae = or i8 %i.ad, -128
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.ae, ptr %i.a, align 1, !tbaa !9
  %i.ag = lshr i64 %i.f, 7
  %i.ah = trunc i64 %i.ag to i8
  %i.ai = or i8 %i.ah, -128
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.ai, ptr %i.af, align 1, !tbaa !9
  %i.ak = lshr i64 %i.f, 14
  %i.al = trunc i64 %i.ak to i8
  %i.am = or i8 %i.al, -128
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  store i8 %i.am, ptr %i.aj, align 1, !tbaa !9
  %i.ao = lshr i64 %i.f, 21
  %i.ap = trunc i64 %i.ao to i8                   ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !9
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

bb.i:                                             ; preds = %bb.g
  %i.ar = or i8 %i.ap, -128
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.ar, ptr %i.an, align 1, !tbaa !9
  %i.at = lshr i32 %i.g, 28
  %i.au = trunc nuw nsw i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 %i.au, ptr %i.as, align 1, !tbaa !9
  br label %_ZN6snappy6Varint8Encode32EPcj.exit

_ZN6snappy6Varint8Encode32EPcj.exit:              ; preds = %bb.b, %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.q, %bb.d ], [ %i.ab, %bb.f ], [ %i.aq, %bb.h ], [ %i.av, %bb.i ]
  %i.aw = ptrtoint ptr %.0.i to i64
  %i.ax = ptrtoint ptr %i.a to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = load ptr, ptr %1, align 8, !tbaa !56
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef %i.ay) #24
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.f, i64 65536) ; 3 uses
  %i.bc = trunc nuw nsw i64 %.sroa.speculated.i to i32 ; 2 uses
  %i.bd = icmp ugt i64 %i.f, 32768
  br i1 %i.bd, label %_ZN6snappy8internal13WorkingMemoryC2Em.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6snappy6Varint8Encode32EPcj.exit
  %i.be = icmp samesign ult i64 %i.f, 256
  br i1 %i.be, label %_ZN6snappy8internal13WorkingMemoryC2Em.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = add nsw i32 %i.bc, -1
  %i.bg = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bf, i1 true)
  %i.bh = xor i32 %i.bg, 31
  %i.bi = shl i32 4, %i.bh
  %i.bj = zext i32 %i.bi to i64
  br label %_ZN6snappy8internal13WorkingMemoryC2Em.exit

_ZN6snappy8internal13WorkingMemoryC2Em.exit:      ; preds = %_ZN6snappy6Varint8Encode32EPcj.exit, %bb.j, %bb.k
  %.0.i.i = phi i64 [ %i.bj, %bb.k ], [ 65536, %_ZN6snappy6Varint8Encode32EPcj.exit ], [ 512, %bb.j ] ; 2 uses
  %i.bk = udiv i32 %i.bc, 6
  %.zext.i = zext nneg i32 %i.bk to i64
  %factor.i = shl nuw nsw i64 %.sroa.speculated.i, 1
  %i.bl = add nuw nsw i64 %factor.i, 32
  %i.bm = add nuw nsw i64 %i.bl, %.zext.i
  %i.bn = add nuw nsw i64 %i.bm, %.0.i.i
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #21 ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.0.i.i ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.speculated.i
  %.not81 = icmp eq i64 %i.f, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6snappy8internal13WorkingMemoryC2Em.exit, %bb.r
  %.05883 = phi i64 [ %i.do, %bb.r ], [ %i.ay, %_ZN6snappy8internal13WorkingMemoryC2Em.exit ]
  %.07982 = phi i64 [ %i.dp, %bb.r ], [ %i.f, %_ZN6snappy8internal13WorkingMemoryC2Em.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.br = load ptr, ptr %0, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b) #24 ; 2 uses
  %.sroa.speculated73 = call i64 @llvm.umin.i64(i64 %.07982, i64 65536) ; 9 uses
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !10  ; 4 uses
  %.not62 = icmp ult i64 %i.bv, %.sroa.speculated73
  br i1 %.not62, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %i.bu, i64 %i.bv, i1 false)
  %i.bw = load ptr, ptr %0, align 8, !tbaa !56
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.bv) #24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.m
  %.05680 = phi i64 [ %i.bv, %bb.l ], [ %i.cg, %bb.m ] ; 3 uses
  %i.bz = load ptr, ptr %0, align 8, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef ptr %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.b) #24
  %i.cd = sub nuw nsw i64 %.sroa.speculated73, %.05680
  %i.ce = load i64, ptr %i.b, align 8, !tbaa !10
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.cd, i64 %i.ce) ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.05680
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr align 1 %i.cc, i64 %.sroa.speculated, i1 false)
  %i.cg = add nuw nsw i64 %.sroa.speculated, %.05680 ; 2 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.sroa.speculated) #24
  %i.ck = icmp samesign ult i64 %i.cg, %.sroa.speculated73
  br i1 %i.ck, label %bb.m, label %.loopexit, !llvm.loop !61

.loopexit:                                        ; preds = %bb.m, %.lr.ph
  %.057 = phi ptr [ %i.bu, %.lr.ph ], [ %i.bp, %bb.m ] ; 2 uses
  %.055 = phi i64 [ %.sroa.speculated73, %.lr.ph ], [ 0, %bb.m ]
  store i64 %.sroa.speculated73, ptr %i.b, align 8, !tbaa !10
  %i.cl = trunc nuw nsw i64 %.sroa.speculated73 to i32
  %i.cm = icmp ugt i64 %.07982, 32768
  br i1 %i.cm, label %_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %i.cn = icmp samesign ult i64 %.07982, 256
  br i1 %i.cn, label %_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = add nsw i32 %i.cl, -1
  %i.cp = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.co, i1 true)
  %i.cq = xor i32 %i.cp, 31
  %i.cr = shl nuw nsw i32 2, %i.cq
  br label %_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit

_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit: ; preds = %.loopexit, %bb.n, %bb.o
  %.0.i.i64 = phi i32 [ %i.cr, %bb.o ], [ 32768, %.loopexit ], [ 256, %bb.n ] ; 3 uses
  %i.cs = shl nuw nsw i32 %.0.i.i64, 1
  %i.ct = zext nneg i32 %i.cs to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.bo, i8 0, i64 %i.ct, i1 false)
  %i.cu = add nuw nsw i64 %.sroa.speculated73, 32
  %.lhs.trunc = trunc nuw nsw i64 %.sroa.speculated73 to i32
  %i.cv = udiv i32 %.lhs.trunc, 6
  %.zext = zext nneg i32 %i.cv to i64
  %i.cw = add nuw nsw i64 %i.cu, %.zext
  %i.cx = load ptr, ptr %1, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cw, ptr noundef nonnull %i.bq) #24 ; 4 uses
  switch i32 %2, label %bb.r [
    i32 1, label %bb.p
    i32 2, label %bb.q
  ]

bb.p:                                             ; preds = %_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit
  %i.db = load i64, ptr %i.b, align 8, !tbaa !10
  %i.dc = call noundef ptr @_ZN6snappy8internal16CompressFragmentEPKcmPcPti(ptr noundef %.057, i64 noundef %i.db, ptr noundef %i.da, ptr noundef nonnull %i.bo, i32 noundef %.0.i.i64)
  br label %bb.r

bb.q:                                             ; preds = %_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit
  %i.dd = load i64, ptr %i.b, align 8, !tbaa !10
  %i.de = lshr exact i32 %.0.i.i64, 1             ; 2 uses
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.df
  %i.dh = call noundef ptr @_ZN6snappy8internal26CompressFragmentDoubleHashEPKcmPcPtiS4_i(ptr noundef %.057, i64 noundef %i.dd, ptr noundef %i.da, ptr noundef nonnull %i.bo, i32 noundef %i.de, ptr noundef nonnull %i.dg, i32 poison)
  br label %bb.r

bb.r:                                             ; preds = %_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit, %bb.q, %bb.p
  %.0 = phi ptr [ %i.dc, %bb.p ], [ %i.dh, %bb.q ], [ null, %_ZNK6snappy8internal13WorkingMemory12GetHashTableEmPi.exit ]
  %i.di = ptrtoint ptr %.0 to i64
  %i.dj = ptrtoint ptr %i.da to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !56
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  call void %i.dn(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.da, i64 noundef %i.dk) #24
  %i.do = add i64 %i.dk, %.05883                  ; 2 uses
  %i.dp = sub i64 %.07982, %.sroa.speculated73    ; 2 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !56
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %.055) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.r, %_ZN6snappy8internal13WorkingMemoryC2Em.exit
  %.058.lcssa = phi i64 [ %i.ay, %_ZN6snappy8internal13WorkingMemoryC2Em.exit ], [ %i.do, %bb.r ]
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i64 %.058.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy20RawUncompressToIOVecEPKcmPK5iovecm(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.snappy::SnappyIOVecWriter", align 8 ; 9 uses
  %6 = alloca %"class.snappy::ByteArraySource", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %6, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3
  store ptr %i.d, ptr %5, align 8, !tbaa !67
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %i.e, align 8, !tbaa !70
  %.not.i.i = icmp eq i64 %3, 0
  br i1 %.not.i.i, label %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !73
  br label %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit.i

_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit.i: ; preds = %bb.b, %bb.a
  %.sink.i.i = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  %i.i = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %.sink.i.i, ptr %i.j, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.i, ptr %i.k, align 8, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !76
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store i64 -1, ptr %i.m, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %6, ptr %4, align 8, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 0, ptr %i.o, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i8 0, ptr %i.p, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.q = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %4, ptr noundef nonnull %i.a)
  br i1 %i.q, label %bb.c, label %_ZN6snappy20RawUncompressToIOVecEPNS_6SourceEPK5iovecm.exit

bb.c:                                             ; preds = %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit.i
  %i.r = load ptr, ptr %6, align 8, !tbaa !56
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %6) #24, !inline_history !78 ; 0 uses
  %i.v = load i32, ptr %i.a, align 4, !tbaa !21
  %i.w = zext i32 %i.v to i64
  store i64 %i.w, ptr %i.m, align 8, !tbaa !77
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %4, ptr noundef nonnull %5)
  %i.x = load i8, ptr %i.p, align 8, !tbaa !58, !range !79, !noundef !80
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %_ZN6snappy20RawUncompressToIOVecEPNS_6SourceEPK5iovecm.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.l, align 8, !tbaa !76
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !77
  %i.ab = icmp eq i64 %i.z, %i.aa
  br label %_ZN6snappy20RawUncompressToIOVecEPNS_6SourceEPK5iovecm.exit

_ZN6snappy20RawUncompressToIOVecEPNS_6SourceEPK5iovecm.exit: ; preds = %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit.i, %bb.c, %bb.d
  %.0.i.i = phi i1 [ false, %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit.i ], [ false, %bb.c ], [ %i.ab, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ac = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !55
  %i.ae = load ptr, ptr %i.ac, align 8, !tbaa !56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %i.ad) #24, !inline_history !81
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret i1 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy20RawUncompressToIOVecEPNS_6SourceEPK5iovecm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.snappy::SnappyIOVecWriter", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2
  store ptr %i.b, ptr %4, align 8, !tbaa !67
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !70
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !73
  br label %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit

_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit:   ; preds = %bb.a, %bb.b
  %.sink.i = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  %i.g = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %.sink.i, ptr %i.h, align 8, !tbaa !74
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.g, ptr %i.i, align 8, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !76
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  store i64 -1, ptr %i.k, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 0, ptr %i.m, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  store i8 0, ptr %i.n, align 8, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.o = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef nonnull %i.a)
  br i1 %i.o, label %bb.c, label %_ZN6snappyL18InternalUncompressINS_17SnappyIOVecWriterEEEbPNS_6SourceEPT_.exit

bb.c:                                             ; preds = %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit
  %i.p = load ptr, ptr %0, align 8, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0) #24, !inline_history !82 ; 0 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !21
  %i.u = zext i32 %i.t to i64
  store i64 %i.u, ptr %i.k, align 8, !tbaa !77
  call void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef nonnull %4)
  %i.v = load i8, ptr %i.n, align 8, !tbaa !58, !range !79, !noundef !80
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZN6snappyL18InternalUncompressINS_17SnappyIOVecWriterEEEbPNS_6SourceEPT_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.j, align 8, !tbaa !76
  %i.y = load i64, ptr %i.k, align 8, !tbaa !77
  %i.z = icmp eq i64 %i.x, %i.y
  br label %_ZN6snappyL18InternalUncompressINS_17SnappyIOVecWriterEEEbPNS_6SourceEPT_.exit

_ZN6snappyL18InternalUncompressINS_17SnappyIOVecWriterEEEbPNS_6SourceEPT_.exit: ; preds = %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit, %bb.c, %bb.d
  %.0.i = phi i1 [ false, %_ZN6snappy17SnappyIOVecWriterC2EPK5iovecm.exit ], [ false, %bb.c ], [ %i.z, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.aa = load ptr, ptr %3, align 8, !tbaa !54    ; 2 uses
  %i.ab = load i64, ptr %i.m, align 8, !tbaa !55
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !56
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %i.ab) #24, !inline_history !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.0.i
}

; Function Attrs: nounwind
declare void @_ZN6snappy15ByteArraySourceD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6snappy13RawUncompressEPKcmPc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.snappy::SnappyArrayWriter", align 8 ; 7 uses
  %5 = alloca %"class.snappy::ByteArraySource", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6snappy15ByteArraySourceE, i64 16), ptr %5, align 8, !tbaa !56
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store ptr %2, ptr %4, align 8, !tbaa !84
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %2, ptr %i.d, align 8, !tbaa !86
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %2, ptr %i.e, align 8, !tbaa !87
end_hunk_1
begin_hunk_2_@_ZN6snappy17SnappyIOVecReader4SkipEm:bb.a
  %i.aa = phi ptr [ %i.i, %bb.c ], [ %i.n, %bb.b ], [ %i.t, %.loopexit.i.loopexit ]
  %i.ab = icmp uge i64 %i.k, %i.z
  %i.ac = icmp ne i64 %i.k, 0
  %i.ad = and i1 %i.ac, %i.ab
  br i1 %i.ad, label %.peel.begin, label %._crit_edge, !llvm.loop !146

._crit_edge:                                      ; preds = %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit, %.._crit_edge_crit_edge
  %i.ae = phi ptr [ %.pre27, %.._crit_edge_crit_edge ], [ %i.y, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.af = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %i.l, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %.0.lcssa = phi i64 [ %1, %.._crit_edge_crit_edge ], [ %i.k, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ] ; 3 uses
  %.lcssa8 = phi i64 [ %i.b, %.._crit_edge_crit_edge ], [ %i.z, %_ZN6snappy17SnappyIOVecReader7AdvanceEv.exit ]
  %i.ag = sub i64 %.lcssa8, %.0.lcssa
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = sub i64 %i.af, %.0.lcssa
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.lcssa
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !107
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !148
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.m, label %bb.c, label %.thread148, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 4)
  %i.s = sub i64 0, %.sroa.speculated.i124
  %i.t = getelementptr inbounds i8, ptr %i.o, i64 %i.s
  store ptr %i.t, ptr %i.l, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.n, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.u = load i8, ptr %.091, align 1, !tbaa !9
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit

_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit: ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, %bb.d
  %.0135 = phi i32 [ %i.v, %bb.d ], [ %.0135.be, %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge ] ; 2 uses
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 9 uses
  %i.ad = and i32 %.0135, 255                     ; 4 uses
  %i.ae = and i32 %.0135, 3                       ; 3 uses
  switch i32 %i.ae, label %bb.u [
    i32 0, label %bb.e
    i32 3, label %bb.t
  ], !prof !149

bb.e:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.af = lshr exact i32 %i.ad, 2
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = zext nneg i32 %i.ag to i64              ; 4 uses
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter13TryFastAppendEPKcmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.ac, i64 noundef %i.al, i64 noundef %i.ah, ptr noundef nonnull %i.a)
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ah ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = zext i8 %i.ao to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge: ; preds = %bb.f, %bb.s, %bb.y, %bb.v
  %.0135.be = phi i32 [ %i.el, %bb.y ], [ %i.dd, %bb.s ], [ %i.dy, %bb.v ], [ %i.ap, %bb.f ]
  %.1.be = phi ptr [ %.13, %bb.y ], [ %.8, %bb.s ], [ %i.dx, %bb.v ], [ %i.an, %bb.f ]
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit, !llvm.loop !150

bb.g:                                             ; preds = %bb.e
  %i.aq = icmp samesign ugt i32 %i.ad, 236
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i64 %i.ah, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ac, align 1
  %i.as = shl nsw i64 %i.ar, 3
  %i.at = and i64 %i.as, 4294967288
  %i.au = shl nuw i64 4294967295, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %.0.copyload.i, %i.aw
  %i.ay = add i32 %i.ax, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ar ; 2 uses
  %.pre170 = ptrtoint ptr %i.ba to i64
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre-phi = phi i64 [ %.pre170, %bb.h ], [ %i.ak, %bb.g ]
  %.092 = phi i64 [ %i.az, %bb.h ], [ %i.ah, %bb.g ] ; 3 uses
  %.6 = phi ptr [ %i.ba, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %.pre-phi                ; 2 uses
  %i.be = icmp ult i64 %i.bd, %.092
  br i1 %i.be, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i, %bb.o
  %.0163 = phi i64 [ %i.cl, %bb.o ], [ %i.bd, %bb.i ] ; 4 uses
  %.7162 = phi ptr [ %i.ck, %bb.o ], [ %.6, %bb.i ]
  %.193161 = phi i64 [ %i.cm, %bb.o ], [ %.092, %bb.i ]
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !76
  %i.bg = add i64 %i.bf, %.0163
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !77
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %.thread148, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %.not15.i.i = icmp eq i64 %.0163, 0
  br i1 %.not15.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.z, align 8, !tbaa !75
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bj = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bw, %bb.n ] ; 2 uses
  %.0917.i.i = phi ptr [ %.7162, %.lr.ph.i.i ], [ %i.bz, %bb.n ] ; 2 uses
  %storemerge16.i.i = phi i64 [ %.0163, %.lr.ph.i.i ], [ %i.ca, %bb.n ] ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %._crit_edge21.i.i

._crit_edge21.i.i:                                ; preds = %bb.k
  %.pre22.i.i = load ptr, ptr %i.aa, align 8, !tbaa !74
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !70  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !67
  %.not11.i.i = icmp ult ptr %i.bm, %i.bn
  br i1 %.not11.i.i, label %bb.m, label %.thread148

bb.m:                                             ; preds = %bb.l
  store ptr %i.bm, ptr %i.y, align 8, !tbaa !70
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !71 ; 2 uses
  store ptr %i.bo, ptr %i.aa, align 8, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !73 ; 2 uses
  store i64 %i.bq, ptr %i.z, align 8, !tbaa !75
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge21.i.i
  %i.br = phi ptr [ %i.bo, %bb.m ], [ %.pre22.i.i, %._crit_edge21.i.i ]
  %i.bs = phi i64 [ %i.bq, %bb.m ], [ %i.bj, %._crit_edge21.i.i ]
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %storemerge16.i.i) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %.0917.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.speculated.i.i
  store ptr %i.bu, ptr %i.aa, align 8, !tbaa !74
  %i.bv = load i64, ptr %i.z, align 8, !tbaa !75
  %i.bw = sub i64 %i.bv, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.bw, ptr %i.z, align 8, !tbaa !75
  %i.bx = load i64, ptr %i.w, align 8, !tbaa !76
  %i.by = add i64 %i.bx, %.sroa.speculated.i.i
  store i64 %i.by, ptr %i.w, align 8, !tbaa !76
  %i.bz = getelementptr inbounds nuw i8, ptr %.0917.i.i, i64 %.sroa.speculated.i.i
  %i.ca = sub i64 %storemerge16.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.k, !llvm.loop !151

.loopexit:                                        ; preds = %bb.n, %bb.j
  %i.cb = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.cc = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef %i.cc) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cg = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = call noundef ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.cg, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !10  ; 6 uses
  store i64 %i.cl, ptr %i.ab, align 8, !tbaa !55
  %.not119 = icmp eq i64 %i.cl, 0
  br i1 %.not119, label %.thread, label %bb.o

.thread:                                          ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread148

bb.o:                                             ; preds = %.loopexit
  %i.cm = sub i64 %.193161, %.0163                ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl ; 2 uses
  store ptr %i.cn, ptr %i.e, align 8, !tbaa !53
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.cl, i64 4)
  %i.co = sub i64 0, %.sroa.speculated.i126
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  store ptr %i.cp, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.cq = icmp ult i64 %i.cl, %i.cm
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.o, %bb.i
  %.193.lcssa = phi i64 [ %.092, %bb.i ], [ %i.cm, %bb.o ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.i ], [ %i.ck, %bb.o ] ; 2 uses
  %i.cr = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.cr, label %bb.p, label %.thread148

bb.p:                                             ; preds = %._crit_edge
  %i.cs = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !147
  %.not118 = icmp ult ptr %i.cs, %i.ct
  br i1 %.not118, label %bb.s, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  store ptr %i.cs, ptr %i.c, align 8, !tbaa !49
  %i.cu = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.cu, label %bb.r, label %.thread148, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.cz, i64 4)
  %i.da = sub i64 0, %.sroa.speculated.i127
  %i.db = getelementptr inbounds i8, ptr %i.cw, i64 %i.da
  store ptr %i.db, ptr %i.l, align 8, !tbaa !147
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.cv, %bb.r ], [ %i.cs, %bb.p ] ; 2 uses
  %i.dc = load i8, ptr %.8, align 1, !tbaa !9
  %i.dd = zext i8 %i.dc to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

bb.t:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %.0.copyload.i128 = load i32, ptr %i.ac, align 1
  %i.de = zext i32 %.0.copyload.i128 to i64
  %i.df = lshr i32 %i.ad, 2
  %i.dg = add nuw nsw i32 %i.df, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.de, i64 noundef %i.dh, ptr noundef nonnull %i.a)
  br i1 %i.di, label %bb.w, label %.thread148

bb.u:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.dj = zext nneg i32 %i.ad to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !23 ; 2 uses
  %i.dm = sext i16 %i.dl to i64
  %.0.copyload.i129 = load i32, ptr %i.ac, align 1 ; 2 uses
  %i.dn = shl nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.do = shl nsw i32 -1, %i.dn
  %i.dp = xor i32 %i.do, -1
  %i.dq = and i32 %.0.copyload.i129, %i.dp
  %i.dr = and i16 %i.dl, 255
  %i.ds = zext nneg i16 %i.dr to i64              ; 2 uses
  %i.dt = sub nsw i64 %i.ds, %i.dm
  %.tr = trunc nsw i64 %i.dt to i32
  %.narrow = add nsw i32 %i.dq, %.tr
  %i.du = zext i32 %.narrow to i64
  %i.dv = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.du, i64 noundef %i.ds, ptr noundef nonnull %i.a)
  br i1 %i.dv, label %bb.v, label %.thread148

bb.v:                                             ; preds = %bb.u
  %i.dw = zext nneg i32 %i.ae to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dw ; 3 uses
  %i.dy = lshr i32 %.0.copyload.i129, %i.dn
  %i.dz = load ptr, ptr %i.l, align 8, !tbaa !147
  %.not152 = icmp ult ptr %i.dx, %i.dz
  br i1 %.not152, label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, label %.thread183, !prof !153

bb.w:                                             ; preds = %bb.t
  %i.ea = getelementptr inbounds nuw i8, ptr %.1, i64 5 ; 3 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !147
  %i.eb = icmp ult ptr %i.ea, %.pre
  br i1 %i.eb, label %bb.y, label %.thread183, !prof !154

.thread183:                                       ; preds = %bb.v, %bb.w
  %.12186 = phi ptr [ %i.ea, %bb.w ], [ %i.dx, %bb.v ]
  store ptr %.12186, ptr %i.c, align 8, !tbaa !49
  %i.ec = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.ec, label %bb.x, label %.thread148, !prof !22

bb.x:                                             ; preds = %.thread183
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.ef = ptrtoint ptr %i.ee to i64
  %i.eg = ptrtoint ptr %i.ed to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %.sroa.speculated.i130 = call i64 @llvm.smin.i64(i64 %i.eh, i64 4)
  %i.ei = sub i64 0, %.sroa.speculated.i130
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %i.ei
  store ptr %i.ej, ptr %i.l, align 8, !tbaa !147
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.13 = phi ptr [ %i.ed, %bb.x ], [ %i.ea, %bb.w ] ; 2 uses
  %i.ek = load i8, ptr %.13, align 1, !tbaa !9
  %i.el = zext i8 %i.ek to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

.thread148:                                       ; preds = %bb.t, %._crit_edge, %bb.q, %bb.u, %.thread183, %.lr.ph, %bb.l, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = add nsw i64 %4, -64                      ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 130
  %i.h = icmp slt i64 %2, %i.c
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %.thread154

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %1, i64 -129
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %0, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1, %bb.b
  %.0115 = phi ptr [ %i.j, %bb.b ], [ %i.ez, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 13 uses
  %.0108 = phi i64 [ %2, %bb.b ], [ %.4112140.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 7 uses
  %.0101 = phi ptr [ %i.b, %bb.b ], [ %.4105141.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 8 uses
  %.097 = phi i64 [ 0, %bb.b ], [ %.4142.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 7 uses
  %.0 = phi i64 [ %i.l, %bb.b ], [ %i.eu, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0115, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.m, i32 0, i32 3, i32 1)
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %.0
  %i.o = load i16, ptr %i.n, align 2, !tbaa !23   ; 2 uses
  %i.p = sext i16 %i.o to i64                     ; 3 uses
  %i.q = lshr i64 %.0, 2                          ; 2 uses
  %i.r = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0) #23, !srcloc !155 ; 2 uses
  %i.s = extractvalue { i64, i8 } %i.r, 0         ; 4 uses
  %i.t = extractvalue { i64, i8 } %i.r, 1         ; 2 uses
  %i.u = icmp ult i8 %i.t, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.0115, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load volatile i8, ptr %i.w, align 1, !tbaa !9
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0115, i64 %i.s
  %i.aa = load volatile i8, ptr %i.z, align 1, !tbaa !9
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  %i.ac = trunc nuw i8 %i.t to i1                 ; 2 uses
  %i.ad = select i1 %i.ac, i64 %i.y, i64 %i.ab    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0115, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %.0115, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.q
  %i.ai = select i1 %i.ac, ptr %i.ah, ptr %i.af   ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab) #24, !srcloc !156
  %.0.copyload.i = load i32, ptr %.0115, align 1
  %i.aj = and i64 %i.p, 255                       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !10
  %i.ak = shl i64 %i.s, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %.0.copyload.i58 = load i16, ptr %i.al, align 2
  %i.am = zext i16 %.0.copyload.i58 to i32
  %i.an = and i32 %.0.copyload.i, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ao = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ap = sub nsw i64 %i.p, %i.ao                 ; 4 uses
  %i.aq = icmp sgt i64 %i.p, %i.ao
  br i1 %i.aq, label %bb.d, label %bb.k, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.ar = and i16 %i.o, 128
  %.not50 = icmp eq i16 %i.ar, 0
  br i1 %.not50, label %bb.e, label %.thread, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.as = add i64 %.097, %.0108                   ; 5 uses
  %i.at = sub i64 %i.as, %i.aj
  %i.au = add i64 %i.at, %i.ap
  %i.av = getelementptr inbounds i8, ptr %3, i64 %.0108 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull readonly align 1 dereferenceable(32) %.0101, i64 32, i1 false)
  %i.aw = icmp samesign ugt i64 %.097, 32
  br i1 %i.aw, label %bb.f, label %_ZN6snappy9MemCopy64EPcPKvm.exit, !prof !25

bb.f:                                             ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l:bb.a
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !9
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gm, i64 14
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !9
  %i.id = getelementptr inbounds nuw i8, ptr %i.gf, i64 14
  store i8 %i.ic, ptr %i.id, align 1, !tbaa !9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gm, i64 15
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !9
  %i.ig = getelementptr inbounds nuw i8, ptr %i.gf, i64 15
  store i8 %i.if, ptr %i.ig, align 1, !tbaa !9
  %i.ih = load atomic i8, ptr @_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes acquire, align 8
  %i.ii = icmp eq i8 %i.ih, 0
  br i1 %i.ii, label %bb.ab, label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.loopexit.1, !prof !157

bb.ab:                                            ; preds = %.preheader.1
  %i.ij = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes) #24
  %.not.i.1 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.1, label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.loopexit.1, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 1518298100812353792, ptr @_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes, align 8
  store i64 2169637811237687832, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes, i64 8), align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes) #24
  br label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.loopexit.1

_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.loopexit.1: ; preds = %bb.ac, %bb.ab, %.preheader.1
  %i.ik = getelementptr inbounds nuw i8, ptr @_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes, i64 %i.gg
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !9
  %i.im = zext i8 %i.il to i64
  %i.in = sub nsw i64 0, %i.im
  br label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.1

_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.1: ; preds = %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.loopexit.1, %.preheader168.1
  %.sink241 = phi i64 [ %i.in, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.loopexit.1 ], [ %i.gi, %.preheader168.1 ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.io, i64 %.sink241
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.io, ptr noundef nonnull align 1 dereferenceable(16) %i.ip, i64 16, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gf, i64 32 ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %.sink241
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iq, ptr noundef nonnull align 1 dereferenceable(16) %i.ir, i64 16, i1 false)
  %i.is = getelementptr inbounds nuw i8, ptr %i.gf, i64 48 ; 2 uses
  %i.it = getelementptr inbounds i8, ptr %i.is, i64 %.sink241
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.is, ptr noundef nonnull align 1 dereferenceable(16) %i.it, i64 16, i1 false)
  %i.iu = add i64 %i.fa, %i.fx
  br label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1

_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1: ; preds = %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.1, %bb.v, %bb.u, %bb.s, %bb.r
  %.4142.1 = phi i64 [ 0, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.1 ], [ %i.fa, %bb.v ], [ %i.fa, %bb.u ], [ %i.fa, %bb.r ], [ %i.fa, %bb.s ] ; 3 uses
  %.4105141.1 = phi ptr [ %i.b, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.1 ], [ %i.ai, %bb.v ], [ %i.ai, %bb.u ], [ %i.fn, %bb.r ], [ %i.fn, %bb.s ] ; 2 uses
  %.4112140.1 = phi i64 [ %i.iu, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread133.1 ], [ %i.fi, %bb.v ], [ %i.fi, %bb.u ], [ %i.fi, %bb.r ], [ %i.fi, %bb.s ] ; 3 uses
  %i.iv = icmp ult ptr %i.ez, %i.i
  %i.iw = add i64 %.4142.1, %.4112140.1
  %i.ix = icmp slt i64 %i.iw, %i.c
  %or.cond167 = select i1 %i.iv, i1 %i.ix, i1 false
  br i1 %or.cond167, label %bb.c, label %.thread, !llvm.loop !158

.thread.thread:                                   ; preds = %bb.aa, %_ZN6snappy9MemCopy64EPcPKvm.exit.1, %bb.h, %_ZN6snappy9MemCopy64EPcPKvm.exit
  %.1116188.lcssa202 = phi ptr [ %.0115, %bb.h ], [ %.0115, %_ZN6snappy9MemCopy64EPcPKvm.exit ], [ %i.ai, %_ZN6snappy9MemCopy64EPcPKvm.exit.1 ], [ %i.ai, %bb.aa ]
  %.lcssa = phi i64 [ %i.as, %bb.h ], [ %i.as, %_ZN6snappy9MemCopy64EPcPKvm.exit ], [ %i.fx, %_ZN6snappy9MemCopy64EPcPKvm.exit.1 ], [ %i.fx, %bb.aa ]
  %i.iy = getelementptr inbounds i8, ptr %.1116188.lcssa202, i64 -1
  br label %.thread154

.thread:                                          ; preds = %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1, %bb.d, %bb.l, %bb.t, %bb.w
  %.1116184 = phi ptr [ %i.ai, %bb.w ], [ %.0115, %bb.l ], [ %.0115, %bb.d ], [ %i.ai, %bb.t ], [ %i.ez, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ]
  %.1109181 = phi i64 [ %.4112140, %bb.w ], [ %.0108, %bb.l ], [ %.0108, %bb.d ], [ %.4112140, %bb.t ], [ %.4112140.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 3 uses
  %.1102178 = phi ptr [ %.4105141, %bb.w ], [ %.0101, %bb.l ], [ %.0101, %bb.d ], [ %.4105141, %bb.t ], [ %.4105141.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 2 uses
  %.198175 = phi i64 [ %.4142, %bb.w ], [ %.097, %bb.l ], [ %.097, %bb.d ], [ %.4142, %bb.t ], [ %.4142.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 3 uses
  %i.iz = getelementptr inbounds i8, ptr %.1116184, i64 -1 ; 2 uses
  %.not51 = icmp eq i64 %.198175, 0
  br i1 %.not51, label %.thread154, label %bb.ad

bb.ad:                                            ; preds = %.thread
  %i.ja = getelementptr inbounds i8, ptr %3, i64 %.1109181 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ja, ptr noundef nonnull readonly align 1 dereferenceable(32) %.1102178, i64 32, i1 false)
  %i.jb = icmp samesign ugt i64 %.198175, 32
  br i1 %i.jb, label %bb.ae, label %_ZN6snappy9MemCopy64EPcPKvm.exit61, !prof !25

bb.ae:                                            ; preds = %bb.ad
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  %i.jd = getelementptr inbounds nuw i8, ptr %.1102178, i64 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.jc, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.jd, i64 32, i1 false)
  br label %_ZN6snappy9MemCopy64EPcPKvm.exit61

_ZN6snappy9MemCopy64EPcPKvm.exit61:               ; preds = %bb.ad, %bb.ae
  %i.je = add i64 %.198175, %.1109181
  br label %.thread154

.thread154:                                       ; preds = %.thread.thread, %bb.a, %_ZN6snappy9MemCopy64EPcPKvm.exit61, %.thread
  %.4119160 = phi ptr [ %i.iz, %.thread ], [ %i.iz, %_ZN6snappy9MemCopy64EPcPKvm.exit61 ], [ %0, %bb.a ], [ %i.iy, %.thread.thread ]
  %.7 = phi i64 [ %.1109181, %.thread ], [ %i.je, %_ZN6snappy9MemCopy64EPcPKvm.exit61 ], [ %2, %bb.a ], [ %.lcssa, %.thread.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.4119160, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.7, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter13TryFastAppendEPKcmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  %i.e = sub i64 %i.b, %i.d
  %i.f = icmp ult i64 %3, 17
  %i.g = icmp ugt i64 %2, 20
  %or.cond = and i1 %i.g, %i.f
  %i.h = icmp ugt i64 %i.e, 15
  %or.cond3 = select i1 %or.cond, i1 %i.h, i1 false
  br i1 %or.cond3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !75
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %3
  store ptr %i.o, ptr %i.l, align 8, !tbaa !74
  %i.p = load i64, ptr %i.i, align 8, !tbaa !75
  %i.q = sub i64 %i.p, %3
  store i64 %i.q, ptr %i.i, align 8, !tbaa !75
  %i.r = load i64, ptr %i.c, align 8, !tbaa !76
  %i.s = add i64 %i.r, %3
  store i64 %i.s, ptr %i.c, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ true, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  %i.c = add i64 %i.b, %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not15.i = icmp eq i64 %2, 0
  br i1 %.not15.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre.i = load i64, ptr %i.h, align 8, !tbaa !75
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph.i
  %i.j = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.w, %bb.f ] ; 2 uses
  %.0917.i = phi ptr [ %1, %.lr.ph.i ], [ %i.z, %bb.f ] ; 2 uses
  %storemerge16.i = phi i64 [ %2, %.lr.ph.i ], [ %i.aa, %bb.f ] ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.c
  %.pre22.i = load ptr, ptr %i.i, align 8, !tbaa !74
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !67
  %.not11.i = icmp ult ptr %i.m, %i.n
  br i1 %.not11.i, label %bb.e, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.e:                                             ; preds = %bb.d
  store ptr %i.m, ptr %i.g, align 8, !tbaa !70
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !71   ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !73   ; 2 uses
  store i64 %i.q, ptr %i.h, align 8, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge21.i
  %i.r = phi ptr [ %i.o, %bb.e ], [ %.pre22.i, %._crit_edge21.i ]
  %i.s = phi i64 [ %i.q, %bb.e ], [ %i.j, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !74
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.speculated.i
  store ptr %i.u, ptr %i.i, align 8, !tbaa !74
  %i.v = load i64, ptr %i.h, align 8, !tbaa !75
  %i.w = sub i64 %i.v, %.sroa.speculated.i        ; 2 uses
  store i64 %i.w, ptr %i.h, align 8, !tbaa !75
  %i.x = load i64, ptr %i.a, align 8, !tbaa !76
  %i.y = add i64 %i.x, %.sroa.speculated.i
  store i64 %i.y, ptr %i.a, align 8, !tbaa !76
  %i.z = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.aa = sub i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.c, !llvm.loop !151

_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.d, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.d ], [ true, %bb.f ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = add i64 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not = icmp ult i64 %i.a, %i.c
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77
  %i.f = sub i64 %i.e, %i.c
  %i.g = icmp ugt i64 %2, %i.f
  br i1 %i.g, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !73
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !75   ; 3 uses
  %i.n = sub i64 %i.k, %i.m
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.03286 = phi i64 [ %i.s, %bb.d ], [ %i.n, %.lr.ph.preheader ] ; 3 uses
  %.03385 = phi ptr [ %i.q, %bb.d ], [ %i.i, %.lr.ph.preheader ] ; 3 uses
  %.04484 = phi i64 [ %i.p, %bb.d ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.not51 = icmp ult i64 %.03286, %.04484
  br i1 %.not51, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = sub nuw i64 %.03286, %.04484
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.p = sub nuw i64 %.04484, %.03286             ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %.03385, i64 -16 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.03385, i64 -8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %.not50 = icmp eq i64 %i.p, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph, !llvm.loop !159

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.03381 = phi ptr [ %.03385, %bb.c ], [ %i.q, %bb.d ]
  %.1 = phi i64 [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %.not52103 = icmp eq i64 %2, 0
  br i1 %.not52103, label %.thread, label %.lr.ph88.lr.ph

.lr.ph88.lr.ph:                                   ; preds = %.loopexit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  br label %.lr.ph88.split

.lr.ph88.split:                                   ; preds = %.outer, %.lr.ph88.lr.ph
  %.pre.i131 = phi i64 [ %i.m, %.lr.ph88.lr.ph ], [ %.pre.i132, %.outer ]
  %.promoted102 = phi i64 [ %i.m, %.lr.ph88.lr.ph ], [ %.promoted102125, %.outer ] ; 2 uses
  %.2.ph107 = phi i64 [ %.1, %.lr.ph88.lr.ph ], [ %.5, %.outer ] ; 7 uses
  %.134.ph105 = phi ptr [ %.03381, %.lr.ph88.lr.ph ], [ %.336, %.outer ] ; 7 uses
  %.0.ph104 = phi i64 [ %2, %.lr.ph88.lr.ph ], [ %.267, %.outer ] ; 4 uses
  %.promoted = load ptr, ptr %i.h, align 8, !tbaa !70 ; 2 uses
  %.not53100 = icmp eq ptr %.134.ph105, %.promoted
  br i1 %.not53100, label %.lr.ph101, label %.split.us

.split.us:                                        ; preds = %bb.v, %.lr.ph88.split
  %.pre.i = phi i64 [ %.pre.i131, %.lr.ph88.split ], [ %i.ek, %bb.v ] ; 2 uses
  %.promoted102123 = phi i64 [ %.promoted102, %.lr.ph88.split ], [ %i.ek, %bb.v ]
  %i.u = getelementptr inbounds nuw i8, ptr %.134.ph105, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !73   ; 2 uses
  %i.w = sub i64 %i.v, %.2.ph107                  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.0.ph104, i64 %i.w) ; 2 uses
  %.not15.i = icmp eq i64 %i.v, %.2.ph107
  br i1 %.not15.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.us
  %i.x = load ptr, ptr %.134.ph105, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.2.ph107
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %.pre.i128 = phi i64 [ %.pre.i, %.lr.ph.i ], [ %i.al, %bb.h ] ; 2 uses
  %.0917.i = phi ptr [ %i.y, %.lr.ph.i ], [ %i.ao, %bb.h ] ; 2 uses
  %storemerge16.i = phi i64 [ %.sroa.speculated, %.lr.ph.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.z = icmp eq i64 %.pre.i128, 0
  br i1 %i.z, label %bb.f, label %._crit_edge21.i

._crit_edge21.i:                                  ; preds = %bb.e
  %.pre22.i = load ptr, ptr %i.t, align 8, !tbaa !74
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !70  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !67
  %.not11.i = icmp ult ptr %i.ab, %i.ac
  br i1 %.not11.i, label %bb.g, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit

bb.g:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !70
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !71 ; 2 uses
  store ptr %i.ad, ptr %i.t, align 8, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !73 ; 2 uses
  store i64 %i.af, ptr %i.l, align 8, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge21.i
  %i.ag = phi ptr [ %i.ad, %bb.g ], [ %.pre22.i, %._crit_edge21.i ]
  %i.ah = phi i64 [ %i.af, %bb.g ], [ %.pre.i128, %._crit_edge21.i ]
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %storemerge16.i) ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.0917.i, i64 %.sroa.speculated.i, i1 false)
  %i.ai = load ptr, ptr %i.t, align 8, !tbaa !74
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.speculated.i
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !74
  %i.ak = load i64, ptr %i.l, align 8, !tbaa !75
  %i.al = sub i64 %i.ak, %.sroa.speculated.i      ; 4 uses
  store i64 %i.al, ptr %i.l, align 8, !tbaa !75
  %i.am = load i64, ptr %i.b, align 8, !tbaa !76
  %i.an = add i64 %i.am, %.sroa.speculated.i
  store i64 %i.an, ptr %i.b, align 8, !tbaa !76
  %i.ao = getelementptr inbounds nuw i8, ptr %.0917.i, i64 %.sroa.speculated.i
  %i.ap = sub i64 %storemerge16.i, %.sroa.speculated.i ; 2 uses
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit, label %bb.e, !llvm.loop !151

_ZN6snappy17SnappyIOVecWriter13AppendNoCheckEPKcm.exit: ; preds = %bb.f, %bb.h, %.split.us
  %.pre.i129 = phi i64 [ %.pre.i, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.promoted102122 = phi i64 [ %.promoted102123, %.split.us ], [ 0, %bb.f ], [ %i.al, %bb.h ]
  %.not55.not = icmp ugt i64 %.0.ph104, %i.w      ; 2 uses
  %spec.select.idx = select i1 %.not55.not, i64 16, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %.134.ph105, i64 %spec.select.idx
  %spec.select56 = select i1 %.not55.not, i64 0, i64 %.2.ph107
  br label %.outer

.lr.ph101:                                        ; preds = %.lr.ph88.split, %bb.v
  %i.aq = phi i64 [ %i.ek, %bb.v ], [ %.promoted102, %.lr.ph88.split ] ; 7 uses
  %i.ar = phi ptr [ %i.at, %bb.v ], [ %.promoted, %.lr.ph88.split ] ; 2 uses
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.i, label %.split94.us

bb.i:                                             ; preds = %.lr.ph101
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 5 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !67
  %.not54 = icmp ult ptr %i.at, %i.au
  br i1 %.not54, label %bb.v, label %.thread

.split94.us:                                      ; preds = %.lr.ph101
  %spec.select57 = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 %.0.ph104) ; 15 uses
  %i.av = load ptr, ptr %.134.ph105, align 8, !tbaa !71 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.2.ph107 ; 20 uses
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !74  ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select57 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aq ; 2 uses
  %i.ba = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 8
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split94.us
  %.not.i58 = icmp slt i64 %i.aq, 11
  br i1 %.not.i58, label %iter.check, label %.lr.ph.i59, !prof !25

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %spec.select57, 4
  %i.be = add nsw i64 %i.bc, -1
  %diff.check = icmp ult i64 %i.be, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check174 = icmp ult i64 %spec.select57, 16
  br i1 %min.iters.check174, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %spec.select57, 12
  %n.vec = and i64 %spec.select57, -16            ; 5 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 %n.vec
  %i.bh = getelementptr i8, ptr %i.ax, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.aw, i64 %index
  %next.gep175 = getelementptr i8, ptr %i.ax, i64 %index
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !9
  store <16 x i8> %wide.load, ptr %next.gep175, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select57, %n.vec
  br i1 %cmp.n, label %.thread71, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !161

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec177 = and i64 %spec.select57, -4          ; 4 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 %n.vec177
  %i.bk = getelementptr i8, ptr %i.ax, i64 %n.vec177
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index178 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 3 uses
  %next.gep179 = getelementptr i8, ptr %i.aw, i64 %index178
  %next.gep180 = getelementptr i8, ptr %i.ax, i64 %index178
  %wide.load181 = load <4 x i8>, ptr %next.gep179, align 1, !tbaa !9
  store <4 x i8> %wide.load181, ptr %next.gep180, align 1, !tbaa !9
  %index.next182 = add nuw i64 %index178, 4       ; 2 uses
  %i.bl = icmp eq i64 %index.next182, %n.vec177
  br i1 %i.bl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !162

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n183 = icmp eq i64 %spec.select57, %n.vec177
  br i1 %cmp.n183, label %.thread71, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.ph = phi ptr [ %i.aw, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ]
  %.057.i.i.ph = phi ptr [ %i.ax, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i59:                                       ; preds = %bb.j, %.lr.ph.i59
  %.086.i = phi i64 [ %i.bn, %.lr.ph.i59 ], [ %i.bc, %bb.j ] ; 3 uses
  %.05685.i = phi ptr [ %i.bm, %.lr.ph.i59 ], [ %i.ax, %bb.j ] ; 2 uses
  %.val.i = load i64, ptr %i.aw, align 1
  store i64 %.val.i, ptr %.05685.i, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.05685.i, i64 %.086.i ; 3 uses
  %i.bn = shl nuw nsw i64 %.086.i, 1
  %i.bo = icmp ult i64 %.086.i, 4
  br i1 %i.bo, label %.lr.ph.i59, label %._crit_edge.i, !llvm.loop !163

._crit_edge.i:                                    ; preds = %.lr.ph.i59
  %.not67.i = icmp ult ptr %i.bm, %i.ay
  br i1 %.not67.i, label %bb.k, label %.thread71, !prof !25

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.bp, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.br, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1
  %i.bq = load i8, ptr %.08.i.i, align 1, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 1 ; 2 uses
  store i8 %i.bq, ptr %.057.i.i, align 1, !tbaa !9
  %exitcond.not.i.i = icmp eq ptr %i.br, %i.ay
  br i1 %exitcond.not.i.i, label %.thread71, label %.lr.ph.i.i, !llvm.loop !164

bb.k:                                             ; preds = %._crit_edge.i, %.split94.us
  %.157.i = phi ptr [ %i.bm, %._crit_edge.i ], [ %i.ax, %.split94.us ] ; 16 uses
  %.157.i222 = ptrtoaddr ptr %.157.i to i64       ; 4 uses
  %i.bs = add nsw i64 %i.aq, -15
  %.not68.i = icmp sgt i64 %spec.select57, %i.bs
  br i1 %.not68.i, label %bb.r, label %bb.l, !prof !25

bb.l:                                             ; preds = %bb.k
  %.val4.i.i = load i64, ptr %i.aw, align 1
  store i64 %.val4.i.i, ptr %.157.i, align 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.157.i, i64 8
  %.val.i.i = load i64, ptr %i.bt, align 1
  store i64 %.val.i.i, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.157.i, i64 16 ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.ay
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.val4.i71.i = load i64, ptr %i.bx, align 1
  store i64 %.val4.i71.i, ptr %i.bv, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %.157.i, i64 24
  %.val.i72.i = load i64, ptr %i.by, align 1
  store i64 %.val.i72.i, ptr %i.bz, align 1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ca = getelementptr inbounds nuw i8, ptr %.157.i, i64 32 ; 2 uses
  %i.cb = icmp ult ptr %i.ca, %i.ay
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %.val4.i73.i = load i64, ptr %i.cc, align 1
  store i64 %.val4.i73.i, ptr %i.ca, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %.157.i, i64 40
  %.val.i74.i = load i64, ptr %i.cd, align 1
  store i64 %.val.i74.i, ptr %i.ce, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cf = getelementptr inbounds nuw i8, ptr %.157.i, i64 48 ; 2 uses
  %i.cg = icmp ult ptr %i.cf, %i.ay
  br i1 %i.cg, label %bb.q, label %.thread71

bb.q:                                             ; preds = %bb.p
  %i.ch = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.val4.i75.i = load i64, ptr %i.ch, align 1
  store i64 %.val4.i75.i, ptr %i.cf, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.cj = getelementptr inbounds nuw i8, ptr %.157.i, i64 56
  %.val.i76.i = load i64, ptr %i.ci, align 1
  store i64 %.val.i76.i, ptr %i.cj, align 1
  br label %.thread71

bb.r:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds i8, ptr %i.az, i64 -16 ; 2 uses
  %i.cl = icmp ult ptr %.157.i, %i.ck
  br i1 %i.cl, label %.lr.ph90.i.preheader, label %._crit_edge91.i

.lr.ph90.i.preheader:                             ; preds = %bb.r
  %i.cm = add i64 %i.aq, %i.ba
  %i.cn = add i64 %i.cm, -16
  %i.co = add i64 %.157.i222, 16
  %i.cp = tail call i64 @llvm.umax.i64(i64 %i.cn, i64 %i.co)
  %i.cq = xor i64 %.157.i222, -1
  %i.cr = add i64 %i.cp, %i.cq                    ; 3 uses
  %i.cs = lshr i64 %i.cr, 4
  %min.iters.check227 = icmp ult i64 %i.cr, 144
  br i1 %min.iters.check227, label %.lr.ph90.i.preheader244, label %vector.memcheck221
end_hunk_3
begin_hunk_4_@_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_:bb.a
  store <16 x i8> %wide.load126, ptr %next.gep125, align 1, !tbaa !9
  %index.next127 = add nuw i64 %index123, 16      ; 2 uses
  %i.bx = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.bx, label %middle.block128, label %vector.body122, !llvm.loop !186

middle.block128:                                  ; preds = %vector.body122
  %cmp.n129 = icmp eq i64 %i.bs, %n.vec121
  br i1 %cmp.n129, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block128
  %min.epilog.iters.check = icmp eq i64 %i.bu, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i79.preheader, label %vec.epilog.ph, !prof !161

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec121, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %i.bs, -4                   ; 4 uses
  %i.by = getelementptr i8, ptr %.155, i64 %n.vec132
  %i.bz = getelementptr i8, ptr %.3, i64 %n.vec132
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index133 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next137, %vec.epilog.vector.body ] ; 3 uses
  %next.gep134 = getelementptr i8, ptr %.155, i64 %index133
  %next.gep135 = getelementptr i8, ptr %.3, i64 %index133
  %wide.load136 = load <4 x i8>, ptr %next.gep134, align 1, !tbaa !9
  store <4 x i8> %wide.load136, ptr %next.gep135, align 1, !tbaa !9
  %index.next137 = add nuw i64 %index133, 4       ; 2 uses
  %i.ca = icmp eq i64 %index.next137, %n.vec132
  br i1 %i.ca, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !187

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n138 = icmp eq i64 %i.bs, %n.vec132
  br i1 %cmp.n138, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i80.ph = phi ptr [ %.155, %iter.check ], [ %i.bv, %vec.epilog.iter.check ], [ %i.by, %vec.epilog.middle.block ]
  %.057.i81.ph = phi ptr [ %.3, %iter.check ], [ %i.bw, %vec.epilog.iter.check ], [ %i.bz, %vec.epilog.middle.block ]
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %.08.i80 = phi ptr [ %i.cb, %.lr.ph.i79 ], [ %.08.i80.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %.057.i81 = phi ptr [ %i.cd, %.lr.ph.i79 ], [ %.057.i81.ph, %.lr.ph.i79.preheader ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i80, i64 1
  %i.cc = load i8, ptr %.08.i80, align 1, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %.057.i81, i64 1 ; 2 uses
  store i8 %i.cc, ptr %.057.i81, align 1, !tbaa !9
  %exitcond.not.i82 = icmp eq ptr %i.cd, %2
  br i1 %exitcond.not.i82, label %_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit, label %.lr.ph.i79, !llvm.loop !188

_ZN6snappy12_GLOBAL__N_119IncrementalCopySlowEPKcPcS3_.exit: ; preds = %.lr.ph.i79, %.lr.ph.i, %middle.block128, %vec.epilog.middle.block, %middle.block155, %vec.epilog.middle.block172, %bb.n, %bb.c, %bb.j, %bb.i, %._crit_edge91, %._crit_edge
  ret ptr %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_28SnappyDecompressionValidatorEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !100  ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %.thread192, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i124
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0144 = phi i64 [ %i.m, %bb.d ], [ %.0144.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.loopexit.backedge ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.x = add i64 %.0144, -1
  %i.y = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %.1, ptr noundef %i.w, i64 noundef %i.x, i64 noundef 1, i64 noundef 9223372036854775744) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = add i64 %i.aa, 1                        ; 9 uses
  %i.ac = load ptr, ptr %i.k, align 8, !tbaa !147 ; 2 uses
  %.not116 = icmp ult ptr %i.z, %i.ac
  br i1 %.not116, label %bb.g, label %bb.e, !prof !22

bb.e:                                             ; preds = %.loopexit
  store ptr %i.z, ptr %i.b, align 8, !tbaa !49
  %i.ad = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.ad, label %bb.f, label %.thread192, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.ai, i64 4)
  %i.aj = sub i64 0, %.sroa.speculated.i125
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %i.aj ; 2 uses
  store ptr %i.ak, ptr %i.k, align 8, !tbaa !147
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  %i.al = phi ptr [ %i.ak, %bb.f ], [ %i.ac, %.loopexit ] ; 3 uses
  %.2 = phi ptr [ %i.ae, %bb.f ], [ %i.z, %.loopexit ] ; 3 uses
  %i.am = load i8, ptr %.2, align 1, !tbaa !9     ; 3 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 6 uses
  %i.ap = and i32 %i.an, 3                        ; 3 uses
  switch i32 %i.ap, label %bb.p [
    i32 0, label %bb.h
    i32 3, label %bb.o
  ], !prof !149

bb.h:                                             ; preds = %bb.g
  %i.aq = lshr exact i32 %i.an, 2
  %i.ar = add nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = icmp ugt i8 %i.am, -20
  br i1 %i.av, label %bb.i, label %bb.j, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.aw = add nsw i64 %i.as, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ao, align 1
  %i.ax = shl nsw i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 4294967288
  %i.az = shl nuw i64 4294967295, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = xor i32 %i.ba, -1
  %i.bc = and i32 %.0.copyload.i, %i.bb
  %i.bd = add i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.092 = phi i64 [ %i.be, %bb.i ], [ %i.as, %bb.h ] ; 3 uses
  %.6 = phi ptr [ %i.bf, %bb.i ], [ %i.ao, %bb.h ] ; 2 uses
  %i.bg = ptrtoint ptr %.6 to i64
  %i.bh = sub i64 %i.au, %i.bg                    ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %.092
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.0213 = phi i64 [ %i.bv, %bb.l ], [ %i.bh, %bb.j ] ; 2 uses
  %.193211 = phi i64 [ %i.bw, %bb.l ], [ %.092, %bb.j ]
  %.2146210 = phi i64 [ %i.bj, %bb.l ], [ %i.ab, %bb.j ]
  %i.bj = add i64 %.0213, %.2146210               ; 5 uses
  %i.bk = load i64, ptr %1, align 8, !tbaa !98
  %.not199 = icmp ugt i64 %i.bj, %i.bk
  br i1 %.not199, label %.thread192, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.bl = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !55
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, i64 noundef %i.bm) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.bq = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !56
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = call noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef nonnull %i.a) #24 ; 2 uses
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !10  ; 6 uses
  store i64 %i.bv, ptr %i.v, align 8, !tbaa !55
  %.not119 = icmp eq i64 %i.bv, 0
  br i1 %.not119, label %.thread172, label %bb.l

.thread172:                                       ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.thread192

bb.l:                                             ; preds = %bb.k
  %i.bw = sub i64 %.193211, %.0213                ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv ; 3 uses
  store ptr %i.bx, ptr %i.d, align 8, !tbaa !53
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.bv, i64 4)
  %i.by = sub i64 0, %.sroa.speculated.i126       ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  store ptr %i.bz, ptr %i.k, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ca = icmp ult i64 %i.bv, %i.bw
  br i1 %i.ca, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !189

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.cb = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.j
  %i.cc = phi ptr [ %i.al, %bb.j ], [ %i.cb, %._crit_edge.loopexit ]
  %.2146.lcssa = phi i64 [ %i.ab, %bb.j ], [ %i.bj, %._crit_edge.loopexit ]
  %.193.lcssa = phi i64 [ %.092, %bb.j ], [ %i.bw, %._crit_edge.loopexit ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.j ], [ %i.bu, %._crit_edge.loopexit ]
  %i.cd = add i64 %.193.lcssa, %.2146.lcssa       ; 5 uses
  %i.ce = load i64, ptr %1, align 8, !tbaa !98
  %.not198 = icmp ugt i64 %i.cd, %i.ce
  br i1 %.not198, label %.thread192, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %.not118 = icmp ult ptr %i.cf, %i.cc
  br i1 %.not118, label %.loopexit.backedge, label %bb.n, !prof !22

bb.n:                                             ; preds = %bb.m
  store ptr %i.cf, ptr %i.b, align 8, !tbaa !49
  %i.cg = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.cg, label %.loopexit.sink.split, label %.thread192, !prof !22

bb.o:                                             ; preds = %bb.g
  %.0.copyload.i128 = load i32, ptr %i.ao, align 1
  %i.ch = zext i32 %.0.copyload.i128 to i64
  %i.ci = add nsw i64 %i.ch, -1
  %.not.i = icmp ugt i64 %i.ab, %i.ci
  br i1 %.not.i, label %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, label %.thread192

_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit: ; preds = %bb.o
  %i.cj = getelementptr inbounds nuw i8, ptr %.2, i64 5
  %i.ck = lshr i32 %i.an, 2
  %i.cl = add nuw nsw i32 %i.ck, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = add i64 %i.ab, %i.cm                    ; 3 uses
  %i.co = load i64, ptr %1, align 8, !tbaa !98
  %.not197 = icmp ugt i64 %i.cn, %i.co
  br i1 %.not197, label %.thread192, label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.cp = zext i8 %i.am to i64
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !23 ; 2 uses
  %i.cs = sext i16 %i.cr to i64
  %.0.copyload.i129 = load i32, ptr %i.ao, align 1
  %i.ct = shl nuw nsw i32 %i.ap, 3
  %i.cu = shl nsw i32 -1, %i.ct
  %i.cv = xor i32 %i.cu, -1
  %i.cw = and i32 %.0.copyload.i129, %i.cv
  %i.cx = and i16 %i.cr, 255
  %i.cy = zext nneg i16 %i.cx to i64              ; 2 uses
  %i.cz = sub nsw i64 %i.cy, %i.cs
  %.tr = trunc nsw i64 %i.cz to i32
  %.narrow = add nsw i32 %i.cw, %.tr
  %i.da = zext i32 %.narrow to i64
  %i.db = add nsw i64 %i.da, -1
  %.not.i130 = icmp ugt i64 %i.ab, %i.db
  br i1 %.not.i130, label %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132, label %.thread192

_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132: ; preds = %bb.p
  %i.dc = add i64 %i.ab, %i.cy                    ; 4 uses
  %i.dd = load i64, ptr %1, align 8, !tbaa !98
  %.not200 = icmp ugt i64 %i.dc, %i.dd
  br i1 %.not200, label %.thread192, label %bb.q

bb.q:                                             ; preds = %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132
  %i.de = zext nneg i32 %i.ap to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.de ; 3 uses
  %.not201 = icmp ult ptr %i.df, %i.al
  br i1 %.not201, label %.loopexit.backedge, label %bb.r

bb.r:                                             ; preds = %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.q
  %.4 = phi i64 [ %i.dc, %bb.q ], [ %i.cn, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.12 = phi ptr [ %i.df, %bb.q ], [ %i.cj, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ] ; 3 uses
  %.not117 = icmp ult ptr %.12, %i.al
  br i1 %.not117, label %.loopexit.backedge, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  store ptr %.12, ptr %i.b, align 8, !tbaa !49
  %i.dg = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dg, label %.loopexit.sink.split, label %.thread192, !prof !22

.loopexit.sink.split:                             ; preds = %bb.s, %bb.n
  %.5148.ph = phi i64 [ %i.cd, %bb.n ], [ %.4, %bb.s ]
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %.sroa.speculated.i133 = call i64 @llvm.smin.i64(i64 %i.dl, i64 4)
  %i.dm = sub i64 0, %.sroa.speculated.i133
  %i.dn = getelementptr inbounds i8, ptr %i.di, i64 %i.dm
  store ptr %i.dn, ptr %i.k, align 8, !tbaa !147
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.loopexit.sink.split, %bb.r, %bb.m, %bb.q
  %.0144.be = phi i64 [ %i.cd, %bb.m ], [ %i.dc, %bb.q ], [ %.4, %bb.r ], [ %.5148.ph, %.loopexit.sink.split ]
  %.1.be = phi ptr [ %i.cf, %bb.m ], [ %i.df, %bb.q ], [ %.12, %bb.r ], [ %i.dh, %.loopexit.sink.split ]
  br label %.loopexit

.thread192:                                       ; preds = %bb.n, %._crit_edge, %bb.p, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132, %bb.o, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit, %bb.s, %bb.e, %.lr.ph, %.thread172, %bb.b
  %.6149 = phi i64 [ %i.m, %bb.b ], [ %i.bj, %.thread172 ], [ %i.bj, %.lr.ph ], [ %i.cd, %bb.n ], [ %i.cd, %._crit_edge ], [ %i.dc, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit132 ], [ %i.cn, %_ZN6snappy28SnappyDecompressionValidator14AppendFromSelfEmmPm.exit ], [ %.4, %bb.s ], [ %i.ab, %bb.o ], [ %i.ab, %bb.e ], [ %i.ab, %bb.p ]
  store i64 %.6149, ptr %i.l, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZN6snappy20DecompressBranchlessImEESt4pairIPKhlES3_S3_lT_l(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = add nsw i64 %4, -64                      ; 2 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = icmp sgt i64 %i.e, 130
  %i.g = icmp slt i64 %2, %i.b
  %or.cond = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %.thread144

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %1, i64 -129
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %0, align 1, !tbaa !9
  %i.k = zext i8 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.m, %bb.b
  %.0111 = phi ptr [ %i.i, %bb.b ], [ %i.bv, %bb.m ] ; 9 uses
  %.0104 = phi i64 [ %2, %bb.b ], [ %.4108132.1, %bb.m ] ; 4 uses
  %.093 = phi i64 [ 0, %bb.b ], [ %.4133.1, %bb.m ] ; 4 uses
  %.0 = phi i64 [ %i.k, %bb.b ], [ %i.bq, %bb.m ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0111, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.l, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %.0
  %i.n = load i16, ptr %i.m, align 2, !tbaa !23   ; 2 uses
  %i.o = sext i16 %i.n to i64                     ; 3 uses
  %i.p = lshr i64 %.0, 2                          ; 2 uses
  %i.q = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.0) #23, !srcloc !155 ; 2 uses
  %i.r = extractvalue { i64, i8 } %i.q, 0         ; 4 uses
  %i.s = extractvalue { i64, i8 } %i.q, 1         ; 2 uses
  %i.t = icmp ult i8 %i.s, 2
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %.0111, i64 %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load volatile i8, ptr %i.v, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %.0111, i64 %i.r
  %i.z = load volatile i8, ptr %i.y, align 1, !tbaa !9
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = trunc nuw i8 %i.s to i1                 ; 2 uses
  %i.ac = select i1 %i.ab, i64 %i.x, i64 %i.aa    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0111, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.r
  %i.af = getelementptr inbounds nuw i8, ptr %.0111, i64 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.p
  %i.ah = select i1 %i.ab, ptr %i.ag, ptr %i.ae   ; 8 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.aa) #24, !srcloc !156
  %.0.copyload.i = load i32, ptr %.0111, align 1
  %i.ai = and i64 %i.o, 255                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !10
  %i.aj = shl i64 %i.r, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %.0.copyload.i58 = load i16, ptr %i.ak, align 2
  %i.al = zext i16 %.0.copyload.i58 to i32
  %i.am = and i32 %.0.copyload.i, %i.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.an = zext nneg i32 %i.am to i64              ; 2 uses
  %i.ao = sub nsw i64 %i.o, %i.an                 ; 3 uses
  %i.ap = icmp sgt i64 %i.o, %i.an
  br i1 %i.ap, label %bb.d, label %bb.f, !prof !25

bb.d:                                             ; preds = %bb.c
  %i.aq = and i16 %i.n, 128
  %.not50 = icmp eq i16 %i.aq, 0
  br i1 %.not50, label %bb.e, label %.thread134.loopexit, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.ar = add i64 %.093, %.0104                   ; 3 uses
  %i.as = sub i64 %i.ar, %i.ai
  %i.at = add i64 %i.as, %i.ao
  %i.au = icmp slt i64 %i.at, 0
  %.not = icmp eq i64 %i.ai, %i.ao
  %or.cond156 = select i1 %i.au, i1 true, i1 %.not, !prof !190
  br i1 %or.cond156, label %.thread134.thread, label %.thread126, !prof !190

.thread126:                                       ; preds = %bb.e
  %i.av = add i64 %i.ai, %i.ar
end_hunk_4
begin_hunk_5_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.h, i64 4)
  %i.i = sub i64 0, %.sroa.speculated.i
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !147
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %.not = icmp ult ptr %i.c, %i.j
  br i1 %.not, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.n, label %bb.c, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  %.sroa.speculated.i127 = tail call i64 @llvm.smin.i64(i64 %i.s, i64 4)
  %i.t = sub i64 0, %.sroa.speculated.i127
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.u, ptr %i.k, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.o, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.v = load i8, ptr %.091, align 1, !tbaa !9
  %i.w = zext i8 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125: ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge, %bb.d
  %.0156 = phi i32 [ %i.w, %bb.d ], [ %.0156.be, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge ]
  %.0146 = phi ptr [ %i.m, %bb.d ], [ %.0146.be, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge ] ; 2 uses
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge ] ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !84    ; 4 uses
  %.not115 = icmp eq ptr %i.aa, null
  br i1 %.not115, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.ag = ptrtoint ptr %.0146 to i64
  %i.ah = sub i64 %i.ag, %i.ad
  %i.ai = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.af, i64 noundef %i.ah, ptr noundef nonnull %i.aa, i64 noundef %i.ae) ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 3 uses
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = getelementptr inbounds i8, ptr %i.aa, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !147
  %.not116 = icmp ult ptr %i.aj, %i.am
  br i1 %.not116, label %bb.h, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !49
  %i.an = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.an, label %bb.g, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar
  %.sroa.speculated.i128 = call i64 @llvm.smin.i64(i64 %i.as, i64 4)
  %i.at = sub i64 0, %.sroa.speculated.i128
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %i.at
  store ptr %i.au, ptr %i.k, align 8, !tbaa !147
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.2 = phi ptr [ %i.ao, %bb.g ], [ %i.aj, %bb.e ] ; 2 uses
  %i.av = load i8, ptr %.2, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i32
  br label %bb.i

bb.i:                                             ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125, %bb.h
  %.2158.ph = phi i32 [ %i.aw, %bb.h ], [ %.0156, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125 ] ; 2 uses
  %.1147.ph = phi ptr [ %i.al, %bb.h ], [ %.0146, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125 ] ; 23 uses
  %.5.ph = phi ptr [ %.2, %bb.h ], [ %.1, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125 ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.ay = and i32 %.2158.ph, 255                  ; 5 uses
  %i.az = and i32 %.2158.ph, 3                    ; 3 uses
  switch i32 %i.az, label %bb.y [
    i32 0, label %bb.j
    i32 3, label %bb.t
  ], !prof !149

bb.j:                                             ; preds = %bb.i
  %i.ba = lshr exact i32 %i.ay, 2
  %i.bb = add nuw nsw i32 %i.ba, 1
  %i.bc = zext nneg i32 %i.bb to i64              ; 4 uses
  %i.bd = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.be = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bf = ptrtoint ptr %i.ax to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  %i.bh = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %.1147.ph to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = icmp samesign ult i32 %i.ay, 64
  %i.bm = icmp ugt i64 %i.bg, 20
  %or.cond.i129 = and i1 %i.bl, %i.bm
  %i.bn = icmp ugt i64 %i.bk, 15
  %or.cond3.i = select i1 %or.cond.i129, i1 %i.bn, i1 false
  br i1 %or.cond3.i, label %bb.k, label %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.1147.ph, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ax, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.bc
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bc ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9
  %i.br = zext i8 %i.bq to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge: ; preds = %bb.k, %bb.s, %bb.af, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit
  %.0156.be = phi i32 [ %i.gb, %bb.af ], [ %i.fp, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.br, %bb.k ], [ %i.dl, %bb.s ]
  %.0146.be = phi ptr [ %.4, %bb.af ], [ %i.ev, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.bo, %bb.k ], [ %i.cz, %bb.s ]
  %.1.be = phi ptr [ %.13, %bb.af ], [ %i.fo, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.bp, %bb.k ], [ %.8, %bb.s ]
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125, !llvm.loop !192

_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.j
  %i.bs = icmp samesign ugt i32 %i.ay, 236
  br i1 %i.bs, label %bb.l, label %bb.m, !prof !25

bb.l:                                             ; preds = %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %i.bt = add nsw i64 %i.bc, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ax, align 1
  %i.bu = shl nsw i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 4294967288
  %i.bw = shl nuw i64 4294967295, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  %i.by = xor i32 %i.bx, -1
  %i.bz = and i32 %.0.copyload.i, %i.by
  %i.ca = add i32 %i.bz, 1
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bt ; 2 uses
  %.pre238 = ptrtoint ptr %i.cc to i64
  %.pre239 = sub i64 %i.be, %.pre238
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit
  %.pre-phi240 = phi i64 [ %.pre239, %bb.l ], [ %i.bg, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.092 = phi i64 [ %i.cb, %bb.l ], [ %i.bc, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.cc, %bb.l ], [ %i.ax, %_ZN6snappy17SnappyArrayWriter13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.cd = icmp ult i64 %.pre-phi240, %.092
  br i1 %i.cd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %bb.o
  %.0227 = phi i64 [ %i.ct, %bb.o ], [ %.pre-phi240, %bb.m ] ; 4 uses
  %.7226 = phi ptr [ %i.cs, %bb.o ], [ %.6, %bb.m ]
  %.193225 = phi i64 [ %i.cu, %bb.o ], [ %.092, %bb.m ]
  %.2148224 = phi ptr [ %i.ci, %bb.o ], [ %.1147.ph, %bb.m ] ; 4 uses
  %i.ce = load ptr, ptr %i.y, align 8, !tbaa !87
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %.2148224 to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %.not215 = icmp ult i64 %i.ch, %.0227
  br i1 %.not215, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2148224, ptr align 1 %.7226, i64 %.0227, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.2148224, i64 %.0227 ; 4 uses
  %i.cj = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.ck = load i64, ptr %i.z, align 8, !tbaa !55
  %i.cl = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i64 noundef %i.ck) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.co = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !56
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %i.a) #24 ; 3 uses
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !10  ; 6 uses
  store i64 %i.ct, ptr %i.z, align 8, !tbaa !55
  %.not119 = icmp eq i64 %i.ct, 0
  br i1 %.not119, label %.thread183, label %bb.o

.thread183:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209

bb.o:                                             ; preds = %bb.n
  %i.cu = sub i64 %.193225, %.0227                ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct ; 2 uses
  store ptr %i.cv, ptr %i.d, align 8, !tbaa !53
  %.sroa.speculated.i130 = call i64 @llvm.smin.i64(i64 %i.ct, i64 4)
  %i.cw = sub i64 0, %.sroa.speculated.i130
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 %i.cw
  store ptr %i.cx, ptr %i.k, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.cy = icmp ult i64 %i.ct, %i.cu
  br i1 %i.cy, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !193

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !87
  %.pre241 = ptrtoint ptr %.pre to i64
  %.pre243 = ptrtoint ptr %i.ci to i64
  %.pre245 = sub i64 %.pre241, %.pre243
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.pre-phi246 = phi i64 [ %.pre245, %._crit_edge.loopexit ], [ %i.bk, %bb.m ]
  %.2148.lcssa = phi ptr [ %i.ci, %._crit_edge.loopexit ], [ %.1147.ph, %bb.m ] ; 3 uses
  %.193.lcssa = phi i64 [ %i.cu, %._crit_edge.loopexit ], [ %.092, %bb.m ] ; 4 uses
  %.7.lcssa = phi ptr [ %i.cs, %._crit_edge.loopexit ], [ %.6, %bb.m ] ; 2 uses
  %.not214 = icmp ult i64 %.pre-phi246, %.193.lcssa
  br i1 %.not214, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2148.lcssa, ptr align 1 %.7.lcssa, i64 %.193.lcssa, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.2148.lcssa, i64 %.193.lcssa ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.db = load ptr, ptr %i.k, align 8, !tbaa !147
  %.not118 = icmp ult ptr %i.da, %i.db
  br i1 %.not118, label %bb.s, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  store ptr %i.da, ptr %i.b, align 8, !tbaa !49
  %i.dc = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dc, label %bb.r, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !22

bb.r:                                             ; preds = %bb.q
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  %.sroa.speculated.i132 = call i64 @llvm.smin.i64(i64 %i.dh, i64 4)
  %i.di = sub i64 0, %.sroa.speculated.i132
  %i.dj = getelementptr inbounds i8, ptr %i.de, i64 %i.di
  store ptr %i.dj, ptr %i.k, align 8, !tbaa !147
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.dd, %bb.r ], [ %i.da, %bb.p ] ; 2 uses
  %i.dk = load i8, ptr %.8, align 1, !tbaa !9
  %i.dl = zext i8 %i.dk to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

bb.t:                                             ; preds = %bb.i
  %.0.copyload.i133 = load i32, ptr %i.ax, align 1 ; 3 uses
  %i.dm = zext i32 %.0.copyload.i133 to i64       ; 3 uses
  %i.dn = lshr i32 %i.ay, 2                       ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 2 uses
  %i.dp = zext nneg i32 %i.dn to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1 ; 4 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !84
  %i.dt = ptrtoint ptr %.1147.ph to i64
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = icmp ult i64 %i.dv, %i.dm
  br i1 %i.dw, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.u, !prof !25

bb.u:                                             ; preds = %bb.t
  %i.dx = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.dy = icmp uge ptr %.1147.ph, %i.dx
  %i.dz = icmp ule i32 %.0.copyload.i133, %i.dn
  %i.ea = or i1 %i.dz, %i.dy
  br i1 %i.ea, label %bb.v, label %bb.x, !prof !25

bb.v:                                             ; preds = %bb.u
  %i.eb = load ptr, ptr %i.y, align 8, !tbaa !87  ; 2 uses
  %i.ec = icmp ugt ptr %i.dr, %i.eb
  %i.ed = icmp eq i32 %.0.copyload.i133, 0
  %or.cond.i124 = or i1 %i.ed, %i.ec
  br i1 %or.cond.i124, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ee = sub nsw i64 0, %i.dm
  %i.ef = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.ee
  %i.eg = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ef, ptr noundef %.1147.ph, ptr noundef nonnull %i.dr, ptr noundef %i.eb) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

bb.x:                                             ; preds = %bb.u
  %i.eh = sub nsw i64 0, %i.dm
  %i.ei = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.eh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1147.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.ei, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

bb.y:                                             ; preds = %bb.i
  %i.ej = zext nneg i32 %i.ay to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !23 ; 2 uses
  %i.em = sext i16 %i.el to i64
  %.0.copyload.i134 = load i32, ptr %i.ax, align 1 ; 2 uses
  %i.en = shl nuw nsw i32 %i.az, 3                ; 2 uses
  %i.eo = shl nsw i32 -1, %i.en
  %i.ep = xor i32 %i.eo, -1
  %i.eq = and i32 %.0.copyload.i134, %i.ep
  %i.er = and i16 %i.el, 255
  %i.es = zext nneg i16 %i.er to i64              ; 3 uses
  %i.et = sub nsw i64 %i.es, %i.em
  %.tr = trunc nsw i64 %i.et to i32
  %.narrow = add nsw i32 %i.eq, %.tr              ; 2 uses
  %i.eu = zext i32 %.narrow to i64                ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.1147.ph, i64 %i.es ; 4 uses
  %i.ew = load ptr, ptr %1, align 8, !tbaa !84
  %i.ex = ptrtoint ptr %.1147.ph to i64
  %i.ey = ptrtoint ptr %i.ew to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = icmp ult i64 %i.ez, %i.eu
  br i1 %i.fa, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.z, !prof !25

bb.z:                                             ; preds = %bb.y
  %i.fb = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.fc = icmp uge ptr %.1147.ph, %i.fb
  %i.fd = icmp samesign ult i64 %i.eu, %i.es
  %i.fe = or i1 %i.fd, %i.fc
  br i1 %i.fe, label %bb.aa, label %bb.ac, !prof !25

bb.aa:                                            ; preds = %bb.z
  %i.ff = load ptr, ptr %i.y, align 8, !tbaa !87  ; 2 uses
  %i.fg = icmp ugt ptr %i.ev, %i.ff
  %i.fh = icmp eq i32 %.narrow, 0
  %or.cond.i = or i1 %i.fh, %i.fg
  br i1 %or.cond.i, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = sub nsw i64 0, %i.eu
  %i.fj = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.fi
  %i.fk = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.fj, ptr noundef %.1147.ph, ptr noundef %i.ev, ptr noundef %i.ff) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

bb.ac:                                            ; preds = %bb.z
  %i.fl = sub nsw i64 0, %i.eu
  %i.fm = getelementptr inbounds i8, ptr %.1147.ph, i64 %i.fl
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1147.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.fm, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit: ; preds = %bb.ab, %bb.ac
  %i.fn = zext nneg i32 %i.az to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.fn ; 3 uses
  %i.fp = lshr i32 %.0.copyload.i134, %i.en
  %i.fq = load ptr, ptr %i.k, align 8, !tbaa !147
  %.not216 = icmp ult ptr %i.fo, %i.fq
  br i1 %.not216, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194: ; preds = %bb.w, %bb.x, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit
  %.4 = phi ptr [ %i.ev, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.dr, %bb.w ], [ %i.dr, %bb.x ] ; 2 uses
  %.12 = phi ptr [ %i.fo, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.do, %bb.w ], [ %i.do, %bb.x ] ; 3 uses
  %i.fr = load ptr, ptr %i.k, align 8, !tbaa !147
  %.not117 = icmp ult ptr %.12, %i.fr
  br i1 %.not117, label %bb.af, label %bb.ad, !prof !22

bb.ad:                                            ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194
  store ptr %.12, ptr %i.b, align 8, !tbaa !49
  %i.fs = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.fs, label %bb.ae, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209, !prof !22

bb.ae:                                            ; preds = %bb.ad
  %i.ft = load ptr, ptr %i.b, align 8, !tbaa !49  ; 2 uses
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !53  ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.sroa.speculated.i135 = call i64 @llvm.smin.i64(i64 %i.fx, i64 4)
  %i.fy = sub i64 0, %.sroa.speculated.i135
  %i.fz = getelementptr inbounds i8, ptr %i.fu, i64 %i.fy
  store ptr %i.fz, ptr %i.k, align 8, !tbaa !147
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194
  %.13 = phi ptr [ %i.ft, %bb.ae ], [ %.12, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread194 ] ; 2 uses
  %i.ga = load i8, ptr %.13, align 1, !tbaa !9
  %i.gb = zext i8 %i.ga to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.backedge

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit125.thread209: ; preds = %bb.q, %._crit_edge, %bb.aa, %bb.y, %bb.t, %bb.v, %bb.ad, %bb.f, %.lr.ph, %.thread183, %bb.b
  %.6151 = phi ptr [ %i.m, %bb.b ], [ %i.ci, %.thread183 ], [ %.2148224, %.lr.ph ], [ %.2148.lcssa, %._crit_edge ], [ %i.cz, %bb.q ], [ %.1147.ph, %bb.y ], [ %.1147.ph, %bb.v ], [ %.1147.ph, %bb.t ], [ %.4, %bb.ad ], [ %i.al, %bb.f ], [ %.1147.ph, %bb.aa ]
  store ptr %.6151, ptr %i.l, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(46) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  store ptr %i.n, ptr %i.a, align 8, !tbaa !148
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.o, label %bb.c, label %.thread178, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i124 = tail call i64 @llvm.smin.i64(i64 %i.t, i64 4)
  %i.u = sub i64 0, %.sroa.speculated.i124
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.l, align 8, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.091 = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ] ; 2 uses
  %i.w = load i8, ptr %.091, align 1, !tbaa !9
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.0141 = phi i32 [ %i.x, %bb.d ], [ %.0141.be, %.backedge ]
  %.1 = phi ptr [ %.091, %bb.d ], [ %.1.be, %.backedge ] ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !133 ; 4 uses
  %.not115 = icmp eq ptr %i.ac, null
  br i1 %.not115, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !194
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  %i.al = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.ah, i64 noundef %i.ak, ptr noundef nonnull %i.ac, i64 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 3 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !148
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !147
  %.not116 = icmp ult ptr %i.am, %i.ap
  br i1 %.not116, label %bb.i, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  store ptr %i.am, ptr %i.c, align 8, !tbaa !49
  %i.aq = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.aq, label %bb.h, label %.thread178, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %.sroa.speculated.i125 = call i64 @llvm.smin.i64(i64 %i.av, i64 4)
  %i.aw = sub i64 0, %.sroa.speculated.i125
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !147
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h
  %.2 = phi ptr [ %i.ar, %bb.h ], [ %i.am, %bb.f ] ; 2 uses
  %i.ay = load i8, ptr %.2, align 1, !tbaa !9
  %i.az = zext i8 %i.ay to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  %.2143.ph = phi i32 [ %i.az, %bb.i ], [ %.0141, %bb.e ] ; 2 uses
  %.5.ph = phi ptr [ %.2, %bb.i ], [ %.1, %bb.e ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.bb = and i32 %.2143.ph, 255                  ; 5 uses
  %i.bc = and i32 %.2143.ph, 3                    ; 3 uses
  switch i32 %i.bc, label %bb.v [
    i32 0, label %bb.k
    i32 3, label %bb.u
  ], !prof !149

bb.k:                                             ; preds = %bb.j
  %i.bd = lshr exact i32 %i.bb, 2
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64              ; 4 uses
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !148 ; 4 uses
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !195
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp samesign ult i32 %i.bb, 64
  %i.br = icmp ugt i64 %i.bj, 20
  %or.cond.i = and i1 %i.bq, %i.br
  %i.bs = icmp sgt i32 %i.bp, 15
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bs, i1 false
  br i1 %or.cond3.i, label %bb.l, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !148
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = zext i8 %i.bv to i32
  br label %.backedge

.backedge:                                        ; preds = %bb.l, %bb.t, %bb.ad, %bb.aa
  %.0141.be = phi i32 [ %i.fy, %bb.ad ], [ %i.dw, %bb.t ], [ %i.fl, %bb.aa ], [ %i.bw, %bb.l ]
  %.1.be = phi ptr [ %.13, %bb.ad ], [ %.8, %bb.t ], [ %i.fk, %bb.aa ], [ %i.bu, %bb.l ]
  br label %bb.e, !llvm.loop !196

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.k
  %i.bx = icmp samesign ugt i32 %i.bb, 236
  br i1 %i.bx, label %bb.m, label %bb.n, !prof !25

bb.m:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %i.by = add nsw i64 %i.bf, -60                  ; 2 uses
  %.0.copyload.i = load i32, ptr %i.ba, align 1
  %i.bz = shl nsw i64 %i.by, 3
  %i.ca = and i64 %i.bz, 4294967288
  %i.cb = shl nuw i64 4294967295, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = xor i32 %i.cc, -1
  %i.ce = and i32 %.0.copyload.i, %i.cd
  %i.cf = add i32 %i.ce, 1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.by ; 2 uses
  %.pre198 = ptrtoint ptr %i.ch to i64
  %.pre199 = sub i64 %i.bh, %.pre198
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %.pre-phi200 = phi i64 [ %.pre199, %bb.m ], [ %i.bj, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.092 = phi i64 [ %i.cg, %bb.m ], [ %i.bf, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.ch, %bb.m ], [ %i.ba, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.ci = icmp ult i64 %.pre-phi200, %.092
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.n, %bb.p
  %.0190 = phi i64 [ %i.db, %bb.p ], [ %.pre-phi200, %bb.n ] ; 5 uses
  %.7189 = phi ptr [ %i.da, %bb.p ], [ %.6, %bb.n ] ; 2 uses
  %.193188 = phi i64 [ %i.dc, %bb.p ], [ %.092, %bb.n ]
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !148 ; 4 uses
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !195
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.not.i = icmp ugt i64 %.0190, %i.cn
  br i1 %.not.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.7189, i64 %.0190, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0190
  store ptr %i.co, ptr %i.a, align 8, !tbaa !148
  br label %bb.o

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %.lr.ph
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !134
  %i.cp = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7189, i64 noundef %.0190)
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !134
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !148
  br i1 %i.cp, label %bb.o, label %.thread178

bb.o:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.cs = load i64, ptr %i.ab, align 8, !tbaa !55
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i64 noundef %i.cs) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.cw = load ptr, ptr %0, align 8, !tbaa !54    ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = call noundef ptr %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %i.b) #24 ; 3 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !10  ; 6 uses
  store i64 %i.db, ptr %i.ab, align 8, !tbaa !55
  %.not119 = icmp eq i64 %i.db, 0
  br i1 %.not119, label %.thread163, label %bb.p

.thread163:                                       ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread178

bb.p:                                             ; preds = %bb.o
  %i.dc = sub i64 %.193188, %.0190                ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db ; 2 uses
  store ptr %i.dd, ptr %i.e, align 8, !tbaa !53
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.db, i64 4)
  %i.de = sub i64 0, %.sroa.speculated.i126
  %i.df = getelementptr inbounds i8, ptr %i.dd, i64 %i.de
  store ptr %i.df, ptr %i.l, align 8, !tbaa !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.dg = icmp ult i64 %i.db, %i.dc
  br i1 %i.dg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !197

._crit_edge.loopexit:                             ; preds = %bb.p
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !148 ; 2 uses
  %.pre195 = load ptr, ptr %i.aa, align 8, !tbaa !195
  %.pre201 = ptrtoint ptr %.pre195 to i64
  %.pre203 = ptrtoint ptr %.pre to i64
  %.pre205 = sub i64 %.pre201, %.pre203
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.n
  %.pre-phi206 = phi i64 [ %.pre205, %._crit_edge.loopexit ], [ %i.bo, %bb.n ]
  %i.dh = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bk, %bb.n ] ; 3 uses
  %.193.lcssa = phi i64 [ %i.dc, %._crit_edge.loopexit ], [ %.092, %bb.n ] ; 5 uses
  %.7.lcssa = phi ptr [ %i.da, %._crit_edge.loopexit ], [ %.6, %bb.n ] ; 3 uses
  %.not.i127 = icmp ugt i64 %.193.lcssa, %.pre-phi206
  br i1 %.not.i127, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dh, ptr align 1 %.7.lcssa, i64 %.193.lcssa, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.193.lcssa
  store ptr %i.di, ptr %i.a, align 8, !tbaa !148
  br label %bb.q

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130: ; preds = %._crit_edge
  store ptr %i.dh, ptr %i.m, align 8, !tbaa !134
  %i.dj = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.193.lcssa)
  %i.dk = load ptr, ptr %i.m, align 8, !tbaa !134
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !148
  br i1 %i.dj, label %bb.q, label %.thread178

bb.q:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130
  %i.dl = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.193.lcssa ; 3 uses
  %i.dm = load ptr, ptr %i.l, align 8, !tbaa !147
  %.not118 = icmp ult ptr %i.dl, %i.dm
  br i1 %.not118, label %bb.t, label %bb.r, !prof !22

bb.r:                                             ; preds = %bb.q
  store ptr %i.dl, ptr %i.c, align 8, !tbaa !49
  %i.dn = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.dn, label %bb.s, label %.thread178, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.dp = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %.sroa.speculated.i131 = call i64 @llvm.smin.i64(i64 %i.ds, i64 4)
  %i.dt = sub i64 0, %.sroa.speculated.i131
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 %i.dt
  store ptr %i.du, ptr %i.l, align 8, !tbaa !147
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.8 = phi ptr [ %i.do, %bb.s ], [ %i.dl, %bb.q ] ; 2 uses
  %i.dv = load i8, ptr %.8, align 1, !tbaa !9
  %i.dw = zext i8 %i.dv to i32
  br label %.backedge

bb.u:                                             ; preds = %bb.j
  %.0.copyload.i132 = load i32, ptr %i.ba, align 1
  %i.dx = zext i32 %.0.copyload.i132 to i64
  %i.dy = lshr i32 %i.bb, 2
  %i.dz = add nuw nsw i32 %i.dy, 1
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dx, i64 noundef %i.ea, ptr noundef nonnull %i.a)
  br i1 %i.eb, label %bb.ab, label %.thread178

bb.v:                                             ; preds = %bb.j
  %i.ec = zext nneg i32 %i.bb to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !23 ; 2 uses
  %i.ef = sext i16 %i.ee to i64
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.eg = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.eh = shl nsw i32 -1, %i.eg
  %i.ei = xor i32 %i.eh, -1
  %i.ej = and i32 %.0.copyload.i133, %i.ei
  %i.ek = and i16 %i.ee, 255
  %i.el = zext nneg i16 %i.ek to i64              ; 5 uses
  %i.em = sub nsw i64 %i.el, %i.ef
  %.tr = trunc nsw i64 %i.em to i32
  %.narrow = add nsw i32 %i.ej, %.tr              ; 2 uses
  %i.en = zext i32 %.narrow to i64                ; 5 uses
  %i.eo = load ptr, ptr %i.a, align 8, !tbaa !148 ; 9 uses
  %i.ep = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = icmp ult i64 %i.es, %i.en               ; 2 uses
  %i.eu = load ptr, ptr %i.y, align 8
  %.not.i134 = icmp uge ptr %i.eo, %i.eu
  %or.cond.not.i = select i1 %i.et, i1 true, i1 %.not.i134, !prof !190
  %i.ev = icmp samesign ult i64 %i.en, %i.el
  %i.ew = or i1 %i.ev, %or.cond.not.i
  br i1 %i.ew, label %bb.w, label %bb.z, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.ex = icmp eq i32 %.narrow, 0
  br i1 %i.ex, label %.thread178, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.el ; 3 uses
  %i.ez = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fa = icmp ugt ptr %i.ey, %i.ez
  %or.cond35.i = select i1 %i.et, i1 true, i1 %i.fa, !prof !190
  br i1 %or.cond35.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.y, !prof !190

bb.y:                                             ; preds = %bb.x
  %i.fb = sub nsw i64 0, %i.en
  %i.fc = getelementptr inbounds i8, ptr %i.eo, i64 %i.fb
  %i.fd = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.fc, ptr noundef %i.eo, ptr noundef %i.ey, ptr noundef %i.ez) ; 0 uses
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

bb.z:                                             ; preds = %bb.v
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.el
  %i.ff = sub nsw i64 0, %i.en
  %i.fg = getelementptr inbounds i8, ptr %i.eo, i64 %i.ff
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eo, ptr noundef nonnull align 1 dereferenceable(64) %i.fg, i64 64, i1 false)
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168: ; preds = %bb.z, %bb.y
  %.sink.i.ph = phi ptr [ %i.ey, %bb.y ], [ %i.fe, %bb.z ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !148
  br label %bb.aa

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.x
  store ptr %i.eo, ptr %i.m, align 8, !tbaa !134
  %i.fh = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.en, i64 noundef %i.el)
  %i.fi = load ptr, ptr %i.m, align 8, !tbaa !134
  store ptr %i.fi, ptr %i.a, align 8, !tbaa !148
  br i1 %i.fh, label %bb.aa, label %.thread178

bb.aa:                                            ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread168
  %i.fj = zext nneg i32 %i.bc to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fj ; 3 uses
  %i.fl = lshr i32 %.0.copyload.i133, %i.eg
  %i.fm = load ptr, ptr %i.l, align 8, !tbaa !147
  %.not182 = icmp ult ptr %i.fk, %i.fm
  br i1 %.not182, label %.backedge, label %.thread, !prof !153

bb.ab:                                            ; preds = %bb.u
  %i.fn = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre197 = load ptr, ptr %i.l, align 8, !tbaa !147
  %i.fo = icmp ult ptr %i.fn, %.pre197
  br i1 %i.fo, label %bb.ad, label %.thread, !prof !154

.thread:                                          ; preds = %bb.aa, %bb.ab
  %.12226 = phi ptr [ %i.fn, %bb.ab ], [ %i.fk, %bb.aa ]
  store ptr %.12226, ptr %i.c, align 8, !tbaa !49
  %i.fp = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(46) %0)
  br i1 %i.fp, label %bb.ac, label %.thread178, !prof !22

bb.ac:                                            ; preds = %.thread
  %i.fq = load ptr, ptr %i.c, align 8, !tbaa !49  ; 2 uses
  %i.fr = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %.sroa.speculated.i136 = call i64 @llvm.smin.i64(i64 %i.fu, i64 4)
  %i.fv = sub i64 0, %.sroa.speculated.i136
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 %i.fv
  store ptr %i.fw, ptr %i.l, align 8, !tbaa !147
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.13 = phi ptr [ %i.fq, %bb.ac ], [ %i.fn, %bb.ab ] ; 2 uses
  %i.fx = load i8, ptr %.13, align 1, !tbaa !9
  %i.fy = zext i8 %i.fx to i32
  br label %.backedge

.thread178:                                       ; preds = %bb.u, %bb.r, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit130, %bb.w, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %.thread, %bb.g, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread163, %bb.b
  %i.fz = load ptr, ptr %i.a, align 8, !tbaa !148
  store ptr %i.fz, ptr %i.m, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !148    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp uge ptr %i.a, %i.i
end_hunk_6
