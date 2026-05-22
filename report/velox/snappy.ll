inline.NumInlined: 441
inline.NumDeleted: 208
begin_hunk_0_@_ZN6snappy8internal16CompressFragmentEPKcmPcPti:bb.a
  br i1 %i.pa, label %_ZN6snappyL11EmitLiteralILb1EEEPcS1_PKci.exit, label %bb.am, !llvm.loop !38

bb.am:                                            ; preds = %bb.al
  %i.pb = lshr i64 %.11193237, 8
  %i.pc = trunc i64 %i.pb to i32
  br label %bb.c

.thread254:                                       ; preds = %bb.q, %bb.r, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit, %bb.a
  %.13 = phi ptr [ %0, %bb.a ], [ %.0118, %bb.r ], [ %i.oe, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0118, %bb.q ] ; 3 uses
  %.11 = phi ptr [ %2, %bb.a ], [ %.0117, %bb.r ], [ %.9, %_ZN6snappyL8EmitCopyILb0EEEPcS1_mm.exit ], [ %.0117, %bb.q ] ; 4 uses
  %i.pd = icmp ult ptr %.13, %i.c
  br i1 %i.pd, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %.thread254
  %i.pe = ptrtoint ptr %i.c to i64
  %i.pf = ptrtoint ptr %.13 to i64
  %i.pg = sub i64 %i.pe, %i.pf                    ; 2 uses
  %i.ph = trunc i64 %i.pg to i32                  ; 2 uses
  %i.pi = add nsw i32 %i.ph, -1                   ; 3 uses
  %i.pj = icmp slt i32 %i.ph, 61
  br i1 %i.pj, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %.tr.i175 = trunc i32 %i.pi to i8
  %i.pk = shl i8 %.tr.i175, 2
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

bb.ap:                                            ; preds = %bb.an
  %i.pl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.pi, i1 true)
  %i.pm = lshr i32 %i.pl, 3
  %i.pn = xor i32 %i.pm, 3                        ; 2 uses
  %.tr16.i = trunc nuw nsw i32 %i.pn to i8
  %i.po = shl nuw nsw i8 %.tr16.i, 2
  %i.pp = or disjoint i8 %i.po, -16
  %i.pq = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 2 uses
  store i32 %i.pi, ptr %i.pq, align 1
  %i.pr = zext nneg i32 %i.pn to i64
  %i.ps = getelementptr i8, ptr %i.pq, i64 %i.pr
  br label %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit

_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit:    ; preds = %bb.ao, %bb.ap
  %.sink.i172 = phi i8 [ %i.pk, %bb.ao ], [ %i.pp, %bb.ap ]
  %.pn.i173 = phi ptr [ %.11, %bb.ao ], [ %i.ps, %bb.ap ]
  store i8 %.sink.i172, ptr %.11, align 1, !tbaa !7
  %.0.i174 = getelementptr i8, ptr %.pn.i173, i64 1 ; 2 uses
  %sext260 = shl i64 %i.pg, 32
  %i.pt = ashr exact i64 %sext260, 32             ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i174, ptr readonly align 1 %.13, i64 %i.pt, i1 false)
  %i.pu = getelementptr inbounds i8, ptr %.0.i174, i64 %i.pt
  br label %bb.aq

bb.aq:                                            ; preds = %.thread254, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit
  %.0 = phi ptr [ %.11, %.thread254 ], [ %i.pu, %_ZN6snappyL11EmitLiteralILb0EEEPcS1_PKci.exit ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6snappy9MemCopy64EPcPKvm(ptr noundef writeonly captures(none) initializes((0, 32)) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = icmp ugt i64 %2, 32
  br i1 %i.a, label %bb.b, label %bb.c, !prof !22

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
define void @_ZN6snappy9MemCopy64ElPKvm(i64 noundef %0, ptr noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6snappy13ClearDeferredEPPKvPmPh(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2) local_unnamed_addr #7 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !39
  store i64 0, ptr %1, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6snappy12DeferMemCopyEPPKvPmS1_m(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #7 {
bb.a:
  store ptr %2, ptr %0, align 8, !tbaa !39
  store i64 %3, ptr %1, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46
  %i.k = zext i32 %i.j to i64
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef %i.k) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a) #23 ; 2 uses
  %i.t = load i64, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.u = trunc i64 %i.t to i32
  store i32 %i.u, ptr %i.i, align 8, !tbaa !46
  %i.v = icmp eq i64 %i.t, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.x = zext i1 %i.v to i8
  store i8 %i.x, ptr %i.w, align 4, !tbaa !49
  br i1 %i.v, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t ; 2 uses
  store ptr %i.y, ptr %i.e, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.z = phi ptr [ %i.y, %bb.c ], [ %i.f, %bb.a ]
  %.029 = phi ptr [ %i.s, %bb.c ], [ %i.d, %bb.a ] ; 5 uses
  %i.aa = load i8, ptr %.029, align 1, !tbaa !7   ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = and i32 %i.ab, 3
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = icmp ugt i8 %i.aa, -17
  %or.cond.i = and i1 %i.ae, %i.ad
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = lshr exact i32 %i.ab, 2
  %i.ag = add nsw i32 %i.af, -58
  br label %_ZN6snappy15CalculateNeededEh.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = shl nuw nsw i32 %i.ab, 3
  %i.ai = and i32 %i.ah, 24
  %i.aj = lshr i32 84083201, %i.ai
  %i.ak = and i32 %i.aj, 7
  br label %_ZN6snappy15CalculateNeededEh.exit

_ZN6snappy15CalculateNeededEh.exit:               ; preds = %bb.e, %bb.f
  %i.al = phi i32 [ %i.ag, %bb.e ], [ %i.ak, %bb.f ] ; 4 uses
  %i.am = ptrtoint ptr %i.z to i64
  %i.an = ptrtoint ptr %.029 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 3 uses
  %i.aq = icmp ugt i32 %i.al, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %_ZN6snappy15CalculateNeededEh.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 4 uses
  %i.as = and i64 %i.ao, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %.029, i64 %i.as, i1 false)
  %i.at = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !46
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !47
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.at, i64 noundef %i.aw) #23
  store i32 0, ptr %i.au, align 8, !tbaa !46
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.i
  %.03040 = phi i32 [ %i.ap, %bb.g ], [ %i.bl, %bb.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef nonnull %i.b) #23
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bg = sub i32 %i.al, %.03040
  %i.bh = trunc i64 %i.bf to i32
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.bg, i32 %i.bh) ; 2 uses
  %i.bi = zext i32 %.03040 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bi
  %i.bk = zext i32 %.sroa.speculated to i64       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.be, i64 %i.bk, i1 false)
  %i.bl = add i32 %.sroa.speculated, %.03040      ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %i.bk) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.bq = icmp ult i32 %i.bl, %i.al
  br i1 %i.bq, label %bb.h, label %bb.j, !llvm.loop !50

bb.j:                                             ; preds = %bb.i
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !40
  %i.br = zext i32 %i.al to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.br
  store ptr %i.bs, ptr %i.e, align 8, !tbaa !44
  br label %bb.n

bb.k:                                             ; preds = %_ZN6snappy15CalculateNeededEh.exit
  %i.bt = icmp ult i32 %i.ap, 5
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.bv = and i64 %i.ao, 7                        ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %.029, i64 %i.bv, i1 false)
  %i.bw = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !46
  %i.bz = zext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i64 noundef %i.bz) #23
  store i32 0, ptr %i.bx, align 8, !tbaa !46
  store ptr %i.bu, ptr %i.c, align 8, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bv
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !44
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  store ptr %.029, ptr %i.c, align 8, !tbaa !40
  br label %bb.n

.critedge:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.l, %bb.m, %bb.j, %.critedge
  %.5 = phi i1 [ false, %.critedge ], [ true, %bb.j ], [ false, %.thread ], [ true, %bb.l ], [ true, %bb.m ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN6snappy21GetUncompressedLengthEPNS_6SourceEPj(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.snappy::SnappyDecompressor", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  store ptr %0, ptr %2, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 0, ptr %i.c, align 4, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %2, ptr noundef %1)
  %i.e = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.f = load i32, ptr %i.b, align 8, !tbaa !46
  %i.g = zext i32 %i.f to i64
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef %i.g) #23, !inline_history !51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6snappy18SnappyDecompressor22ReadUncompressedLengthEPj(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 20 uses
  store i32 0, ptr %1, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.a) #23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !8
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.f, align 1, !tbaa !7     ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 1) #23
  %i.n = and i8 %i.i, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = load i32, ptr %1, align 4, !tbaa !3
  %i.q = or i32 %i.p, %i.o
  store i32 %i.q, ptr %1, align 4, !tbaa !3
  %i.r = icmp sgt i8 %i.i, -1
  br i1 %i.r, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.s = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.a) #23
  %i.x = load i64, ptr %i.a, align 8, !tbaa !8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i8, ptr %i.w, align 1, !tbaa !7     ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 1) #23
  %i.ae = and i8 %i.z, 127
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 7
  %i.ah = load i32, ptr %1, align 4, !tbaa !3
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %1, align 4, !tbaa !3
  %i.aj = icmp sgt i8 %i.z, -1
  br i1 %i.aj, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.ak = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.a) #23
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !8
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load i8, ptr %i.ao, align 1, !tbaa !7   ; 2 uses
  %i.as = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i64 noundef 1) #23
  %i.aw = and i8 %i.ar, 127
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 14
  %i.az = load i32, ptr %1, align 4, !tbaa !3
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %1, align 4, !tbaa !3
  %i.bb = icmp sgt i8 %i.ar, -1
  br i1 %i.bb, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = call noundef ptr %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef nonnull %i.a) #23
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !8
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !7   ; 2 uses
  %i.bk = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef 1) #23
  %i.bo = and i8 %i.bj, 127
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 21
  %i.br = load i32, ptr %1, align 4, !tbaa !3
  %i.bs = or i32 %i.br, %i.bq
  store i32 %i.bs, ptr %1, align 4, !tbaa !3
  %i.bt = icmp sgt i8 %i.bj, -1
  br i1 %i.bt, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bu = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = call noundef ptr %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull %i.a) #23
  %i.bz = load i64, ptr %i.a, align 8, !tbaa !8
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !7   ; 3 uses
  %i.cc = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, i64 noundef 1) #23
  %i.cg = and i8 %i.cb, 112
  %.not.4 = icmp eq i8 %i.cg, 0
  br i1 %.not.4, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ch = zext i8 %i.cb to i32
  %i.ci = shl i32 %i.ch, 28
  %i.cj = load i32, ptr %1, align 4, !tbaa !3
  %i.ck = or i32 %i.cj, %i.ci
  store i32 %i.ck, ptr %1, align 4, !tbaa !3
  %i.cl = icmp sgt i8 %i.cb, -1
  br i1 %i.cl, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.c, %bb.e, %bb.g, %bb.i, %bb.j, %bb.l
  %.3 = phi i1 [ true, %bb.l ], [ false, %bb.a ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i64 @_ZN6snappy8CompressEPNS_6SourceEPNS_4SinkE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [5 x i8], align 1                 ; 20 uses
  %2 = alloca %"class.snappy::internal::WorkingMemory", align 8 ; 7 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %0) #23 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  %i.h = icmp ult i32 %i.g, 128
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = trunc i64 %i.f to i8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
end_hunk_0
begin_hunk_1_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyIOVecWriterEEEvPT_:bb.a
  %.7163 = phi ptr [ %i.cl, %bb.o ], [ %.6, %bb.i ]
  %.1100162 = phi i64 [ %i.co, %bb.o ], [ %.099, %bb.i ]
  %.0101161 = phi i64 [ %i.cm, %bb.o ], [ %i.bd, %bb.i ] ; 4 uses
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !67
  %i.bg = add i64 %i.bf, %.0101161
  %i.bh = load i64, ptr %i.x, align 8, !tbaa !68
  %i.bi = icmp ugt i64 %i.bg, %i.bh
  br i1 %i.bi, label %.thread149, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %.not15.i.i = icmp eq i64 %.0101161, 0
  br i1 %.not15.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %.pre.i.i = load i64, ptr %i.z, align 8, !tbaa !66
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %.lr.ph.i.i
  %i.bj = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bw, %bb.n ] ; 2 uses
  %.0917.i.i = phi ptr [ %.7163, %.lr.ph.i.i ], [ %i.bz, %bb.n ] ; 2 uses
  %storemerge16.i.i = phi i64 [ %.0101161, %.lr.ph.i.i ], [ %i.ca, %bb.n ] ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.l, label %._crit_edge21.i.i

._crit_edge21.i.i:                                ; preds = %bb.k
  %.pre22.i.i = load ptr, ptr %i.aa, align 8, !tbaa !65
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.y, align 8, !tbaa !61  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 3 uses
  %i.bn = load ptr, ptr %1, align 8, !tbaa !58
  %.not11.i.i = icmp ult ptr %i.bm, %i.bn
  br i1 %.not11.i.i, label %bb.m, label %.thread149

bb.m:                                             ; preds = %bb.l
  store ptr %i.bm, ptr %i.y, align 8, !tbaa !61
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !62 ; 2 uses
  store ptr %i.bo, ptr %i.aa, align 8, !tbaa !65
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !64 ; 2 uses
  store i64 %i.bq, ptr %i.z, align 8, !tbaa !66
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge21.i.i
  %i.br = phi ptr [ %i.bo, %bb.m ], [ %.pre22.i.i, %._crit_edge21.i.i ]
  %i.bs = phi i64 [ %i.bq, %bb.m ], [ %i.bj, %._crit_edge21.i.i ]
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %i.bs, i64 %storemerge16.i.i) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %.0917.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %i.bt = load ptr, ptr %i.aa, align 8, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.speculated.i.i
  store ptr %i.bu, ptr %i.aa, align 8, !tbaa !65
  %i.bv = load i64, ptr %i.z, align 8, !tbaa !66
  %i.bw = sub i64 %i.bv, %.sroa.speculated.i.i    ; 2 uses
  store i64 %i.bw, ptr %i.z, align 8, !tbaa !66
  %i.bx = load i64, ptr %i.w, align 8, !tbaa !67
  %i.by = add i64 %i.bx, %.sroa.speculated.i.i
  store i64 %i.by, ptr %i.w, align 8, !tbaa !67
  %i.bz = getelementptr inbounds nuw i8, ptr %.0917.i.i, i64 %.sroa.speculated.i.i
  %i.ca = sub i64 %storemerge16.i.i, %.sroa.speculated.i.i ; 2 uses
  %.not.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.k, !llvm.loop !144

.loopexit:                                        ; preds = %bb.n, %bb.j
  %i.cb = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cc = load i32, ptr %i.ab, align 8, !tbaa !46
  %i.cd = zext i32 %i.cc to i64
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !47
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i64 noundef %i.cd) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.ch = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !8   ; 6 uses
  %i.cn = trunc i64 %i.cm to i32
  store i32 %i.cn, ptr %i.ab, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.cm, 0
  br i1 %.not119, label %.thread, label %bb.o

.thread:                                          ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread149

bb.o:                                             ; preds = %.loopexit
  %i.co = sub i64 %.1100162, %.0101161            ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cm ; 2 uses
  store ptr %i.cp, ptr %i.e, align 8, !tbaa !44
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.cm, i64 4)
  %i.cq = sub i64 0, %.sroa.speculated.i127
  %i.cr = getelementptr inbounds i8, ptr %i.cp, i64 %i.cq
  store ptr %i.cr, ptr %i.l, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.cs = icmp ult i64 %i.cm, %i.co
  br i1 %i.cs, label %.lr.ph, label %._crit_edge, !llvm.loop !145

._crit_edge:                                      ; preds = %bb.o, %bb.i
  %.1100.lcssa = phi i64 [ %.099, %bb.i ], [ %i.co, %bb.o ] ; 2 uses
  %.7.lcssa = phi ptr [ %.6, %bb.i ], [ %i.cl, %bb.o ] ; 2 uses
  %i.ct = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.7.lcssa, i64 noundef %.1100.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.ct, label %bb.p, label %.thread149

bb.p:                                             ; preds = %._crit_edge
  %i.cu = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
  %i.cv = load ptr, ptr %i.l, align 8, !tbaa !140
  %.not118 = icmp ult ptr %i.cu, %i.cv
  br i1 %.not118, label %bb.s, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  store ptr %i.cu, ptr %i.c, align 8, !tbaa !40
  %i.cw = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.cw, label %bb.r, label %.thread149, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.cy = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da
  %.sroa.speculated.i128 = call i64 @llvm.smin.i64(i64 %i.db, i64 4)
  %i.dc = sub i64 0, %.sroa.speculated.i128
  %i.dd = getelementptr inbounds i8, ptr %i.cy, i64 %i.dc
  store ptr %i.dd, ptr %i.l, align 8, !tbaa !140
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.cx, %bb.r ], [ %i.cu, %bb.p ] ; 2 uses
  %i.de = load i8, ptr %.8, align 1, !tbaa !7
  %i.df = zext i8 %i.de to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

bb.t:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %.0.copyload.i129 = load i32, ptr %i.ac, align 1
  %i.dg = zext i32 %.0.copyload.i129 to i64
  %i.dh = lshr i32 %i.ad, 2
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dg, i64 noundef %i.dj, ptr noundef nonnull %i.a)
  br i1 %i.dk, label %bb.w, label %.thread149

bb.u:                                             ; preds = %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit
  %i.dl = zext nneg i32 %i.ad to i64
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !20 ; 2 uses
  %i.do = sext i16 %i.dn to i64
  %.0.copyload.i130 = load i32, ptr %i.ac, align 1 ; 2 uses
  %i.dp = shl nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.dq = shl nsw i32 -1, %i.dp
  %i.dr = xor i32 %i.dq, -1
  %i.ds = and i32 %.0.copyload.i130, %i.dr
  %i.dt = and i16 %i.dn, 255
  %i.du = zext nneg i16 %i.dt to i64              ; 2 uses
  %i.dv = sub nsw i64 %i.du, %i.do
  %.tr = trunc nsw i64 %i.dv to i32
  %.narrow = add nsw i32 %i.ds, %.tr
  %i.dw = zext i32 %.narrow to i64
  %i.dx = call noundef zeroext i1 @_ZN6snappy17SnappyIOVecWriter14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dw, i64 noundef %i.du, ptr noundef nonnull %i.a)
  br i1 %i.dx, label %bb.v, label %.thread149

bb.v:                                             ; preds = %bb.u
  %i.dy = zext nneg i32 %i.ae to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.dy ; 3 uses
  %i.ea = lshr i32 %.0.copyload.i130, %i.dp
  %i.eb = load ptr, ptr %i.l, align 8, !tbaa !140
  %.not153 = icmp ult ptr %i.dz, %i.eb
  br i1 %.not153, label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge, label %.thread186, !prof !146

bb.w:                                             ; preds = %bb.t
  %i.ec = getelementptr inbounds nuw i8, ptr %.1, i64 5 ; 3 uses
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !140
  %i.ed = icmp ult ptr %i.ec, %.pre
  br i1 %i.ed, label %bb.y, label %.thread186, !prof !147

.thread186:                                       ; preds = %bb.v, %bb.w
  %.12189 = phi ptr [ %i.ec, %bb.w ], [ %i.dz, %bb.v ]
  store ptr %.12189, ptr %i.c, align 8, !tbaa !40
  %i.ee = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.ee, label %bb.x, label %.thread149, !prof !19

bb.x:                                             ; preds = %.thread186
  %i.ef = load ptr, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.eg = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = ptrtoint ptr %i.ef to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %.sroa.speculated.i131 = call i64 @llvm.smin.i64(i64 %i.ej, i64 4)
  %i.ek = sub i64 0, %.sroa.speculated.i131
  %i.el = getelementptr inbounds i8, ptr %i.eg, i64 %i.ek
  store ptr %i.el, ptr %i.l, align 8, !tbaa !140
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.13 = phi ptr [ %i.ef, %bb.x ], [ %i.ec, %bb.w ] ; 2 uses
  %i.em = load i8, ptr %.13, align 1, !tbaa !7
  %i.en = zext i8 %i.em to i32
  br label %_ZN6snappy17SnappyIOVecWriter6AppendEPKcmPPc.exit.backedge

.thread149:                                       ; preds = %bb.q, %._crit_edge, %bb.t, %bb.u, %.thread186, %.lr.ph, %bb.l, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = add nsw i64 %4, -64                      ; 2 uses
  %i.d = ptrtoint ptr %1 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp sgt i64 %i.f, 130
  %i.h = icmp slt i64 %2, %i.c
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %.thread155

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds i8, ptr %1, i64 -129
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %0, align 1, !tbaa !7
  %i.l = zext i8 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1, %bb.b
  %.0116 = phi ptr [ %i.j, %bb.b ], [ %i.ez, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 13 uses
  %.0109 = phi i64 [ %2, %bb.b ], [ %.4113141.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 7 uses
  %.0102 = phi ptr [ %i.b, %bb.b ], [ %.4106142.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 8 uses
  %.098 = phi i64 [ 0, %bb.b ], [ %.4143.1, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 7 uses
  %.095 = phi i64 [ %i.l, %bb.b ], [ %i.eu, %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.1 ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0116, i64 128
  tail call void @llvm.prefetch.p0(ptr nonnull %i.m, i32 0, i32 3, i32 1)
  %i.n = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %.095
  %i.o = load i16, ptr %i.n, align 2, !tbaa !20   ; 2 uses
  %i.p = sext i16 %i.o to i64                     ; 2 uses
  %i.q = lshr i64 %.095, 2                        ; 2 uses
  %i.r = tail call { i64, i8 } asm "and $$3, ${0:k}\0A\09", "=r,={@ccz},0,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.095) #22, !srcloc !148 ; 2 uses
  %i.s = extractvalue { i64, i8 } %i.r, 0         ; 4 uses
  %i.t = extractvalue { i64, i8 } %i.r, 1         ; 2 uses
  %i.u = icmp ult i8 %i.t, 2
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load volatile i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %.0116, i64 %i.s
  %i.aa = load volatile i8, ptr %i.z, align 1, !tbaa !7
  %i.ab = zext i8 %i.aa to i64                    ; 2 uses
  %i.ac = trunc nuw i8 %i.t to i1                 ; 2 uses
  %i.ad = select i1 %i.ac, i64 %i.y, i64 %i.ab    ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0116, i64 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.s
  %i.ag = getelementptr inbounds nuw i8, ptr %.0116, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.q
  %i.ai = select i1 %i.ac, ptr %i.ah, ptr %i.af   ; 12 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab) #23, !srcloc !149
  %.0.copyload.i = load i32, ptr %.0116, align 1
  %i.aj = and i64 %i.p, 255                       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 281470698455040, ptr %i.a, align 8, !tbaa !8
  %i.ak = shl i64 %i.s, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %.0.copyload.i58 = load i16, ptr %i.al, align 2
  %i.am = zext i16 %.0.copyload.i58 to i32
  %i.an = and i32 %.0.copyload.i, %i.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = sub nsw i64 %i.p, %i.ao                 ; 5 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %bb.d, label %bb.k, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.ar = and i16 %i.o, 128
  %.not50 = icmp eq i16 %i.ar, 0
  br i1 %.not50, label %bb.e, label %.thread, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.as = add i64 %.098, %.0109                   ; 5 uses
  %i.at = sub i64 %i.as, %i.aj
  %i.au = add i64 %i.at, %i.ap
  %i.av = getelementptr inbounds i8, ptr %3, i64 %.0109 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.av, ptr noundef nonnull readonly align 1 dereferenceable(32) %.0102, i64 32, i1 false)
  %i.aw = icmp samesign ugt i64 %.098, 32
  br i1 %i.aw, label %bb.f, label %_ZN6snappy9MemCopy64EPcPKvm.exit, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0102, i64 32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ax, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ay, i64 32, i1 false)
  br label %_ZN6snappy9MemCopy64EPcPKvm.exit

_ZN6snappy9MemCopy64EPcPKvm.exit:                 ; preds = %bb.e, %bb.f
  %i.az = icmp slt i64 %i.au, 0
  br i1 %i.az, label %.thread.thread, label %bb.g, !prof !22

bb.g:                                             ; preds = %_ZN6snappy9MemCopy64EPcPKvm.exit
  %i.ba = getelementptr inbounds i8, ptr %3, i64 %i.as ; 22 uses
  %i.bb = sub nsw i64 %i.aj, %i.ap                ; 4 uses
  %i.bc = icmp ult i64 %i.bb, 16
  br i1 %i.bc, label %bb.h, label %.preheader169, !prof !19

.preheader169:                                    ; preds = %bb.g
  %i.bd = sub nsw i64 0, %i.bb                    ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ba, ptr noundef nonnull align 1 dereferenceable(16) %i.be, i64 16, i1 false)
  br label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread134

bb.h:                                             ; preds = %bb.g
  %i.bf = icmp eq i64 %i.aj, %i.ap
  br i1 %i.bf, label %.thread.thread, label %.preheader, !prof !22

.preheader:                                       ; preds = %bb.h
  %i.bg = sub nsw i64 0, %i.bb
  %i.bh = getelementptr inbounds i8, ptr %i.ba, i64 %i.bg ; 16 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !7
  store i8 %i.bi, ptr %i.ba, align 1, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 3
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %i.ba, i64 3
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !7
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 5
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bh, i64 6
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ba, i64 7
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !7
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !7
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bh, i64 11
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !7
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !7
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !7
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bh, i64 13
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ba, i64 13
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !7
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !7
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !7
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 15
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !7
  %i.db = getelementptr inbounds nuw i8, ptr %i.ba, i64 15
  store i8 %i.da, ptr %i.db, align 1, !tbaa !7
  %i.dc = load atomic i8, ptr @_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes acquire, align 8
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.i, label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread134.loopexit, !prof !150

bb.i:                                             ; preds = %.preheader
  %i.de = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes) #23
  %.not.i = icmp eq i32 %i.de, 0
  br i1 %.not.i, label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread134.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 1518298100812353792, ptr @_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes, align 8
  store i64 2169637811237687832, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes, i64 8), align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes) #23
  br label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread134.loopexit

_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread134.loopexit: ; preds = %bb.j, %bb.i, %.preheader
  %i.df = getelementptr inbounds nuw i8, ptr @_ZZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcmE13pattern_sizes, i64 %i.bb
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !7
  %i.dh = zext i8 %i.dg to i64
  %i.di = sub nsw i64 0, %i.dh
  br label %_ZN6snappy12_GLOBAL__N_131Copy64BytesWithPatternExtensionEPcm.exit.thread134

end_hunk_1
begin_hunk_2_@_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_17SnappyArrayWriterEEEvPT_:bb.a
._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.y, align 8, !tbaa !78
  %.pre242 = ptrtoint ptr %.pre to i64
  %.pre244 = ptrtoint ptr %i.ci to i64
  %.pre246 = sub i64 %.pre242, %.pre244
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.pre-phi247 = phi i64 [ %.pre246, %._crit_edge.loopexit ], [ %i.bk, %bb.m ]
  %.2149.lcssa = phi ptr [ %i.ci, %._crit_edge.loopexit ], [ %.1148.ph, %bb.m ] ; 3 uses
  %.1100.lcssa = phi i64 [ %i.cw, %._crit_edge.loopexit ], [ %.099, %bb.m ] ; 4 uses
  %.7.lcssa = phi ptr [ %i.ct, %._crit_edge.loopexit ], [ %.6, %bb.m ] ; 2 uses
  %.not215 = icmp ult i64 %.pre-phi247, %.1100.lcssa
  br i1 %.not215, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2149.lcssa, ptr align 1 %.7.lcssa, i64 %.1100.lcssa, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %.2149.lcssa, i64 %.1100.lcssa ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
  %i.dd = load ptr, ptr %i.k, align 8, !tbaa !140
  %.not118 = icmp ult ptr %i.dc, %i.dd
  br i1 %.not118, label %bb.s, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !40
  %i.de = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.de, label %bb.r, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  %.sroa.speculated.i133 = call i64 @llvm.smin.i64(i64 %i.dj, i64 4)
  %i.dk = sub i64 0, %.sroa.speculated.i133
  %i.dl = getelementptr inbounds i8, ptr %i.dg, i64 %i.dk
  store ptr %i.dl, ptr %i.k, align 8, !tbaa !140
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.df, %bb.r ], [ %i.dc, %bb.p ] ; 2 uses
  %i.dm = load i8, ptr %.8, align 1, !tbaa !7
  %i.dn = zext i8 %i.dm to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.backedge

bb.t:                                             ; preds = %bb.i
  %.0.copyload.i134 = load i32, ptr %i.ax, align 1 ; 3 uses
  %i.do = zext i32 %.0.copyload.i134 to i64       ; 3 uses
  %i.dp = lshr i32 %i.ay, 2                       ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 2 uses
  %i.dr = zext nneg i32 %i.dp to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.1148.ph, i64 %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 1 ; 4 uses
  %i.du = load ptr, ptr %1, align 8, !tbaa !75
  %i.dv = ptrtoint ptr %.1148.ph to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = icmp ult i64 %i.dx, %i.do
  br i1 %i.dy, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.t
  %i.dz = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.ea = icmp uge ptr %.1148.ph, %i.dz
  %i.eb = icmp ule i32 %.0.copyload.i134, %i.dp
  %i.ec = or i1 %i.eb, %i.ea
  br i1 %i.ec, label %bb.v, label %bb.x, !prof !22

bb.v:                                             ; preds = %bb.u
  %i.ed = load ptr, ptr %i.y, align 8, !tbaa !78  ; 2 uses
  %i.ee = icmp ugt ptr %i.dt, %i.ed
  %i.ef = icmp eq i32 %.0.copyload.i134, 0
  %or.cond.i125 = or i1 %i.ef, %i.ee
  br i1 %or.cond.i125, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = sub nsw i64 0, %i.do
  %i.eh = getelementptr inbounds i8, ptr %.1148.ph, i64 %i.eg
  %i.ei = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.eh, ptr noundef %.1148.ph, ptr noundef nonnull %i.dt, ptr noundef %i.ed) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread195

bb.x:                                             ; preds = %bb.u
  %i.ej = sub nsw i64 0, %i.do
  %i.ek = getelementptr inbounds i8, ptr %.1148.ph, i64 %i.ej
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1148.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.ek, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread195

bb.y:                                             ; preds = %bb.i
  %i.el = zext nneg i32 %i.ay to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.el
  %i.en = load i16, ptr %i.em, align 2, !tbaa !20 ; 2 uses
  %i.eo = sext i16 %i.en to i64
  %.0.copyload.i135 = load i32, ptr %i.ax, align 1 ; 2 uses
  %i.ep = shl nuw nsw i32 %i.az, 3                ; 2 uses
  %i.eq = shl nsw i32 -1, %i.ep
  %i.er = xor i32 %i.eq, -1
  %i.es = and i32 %.0.copyload.i135, %i.er
  %i.et = and i16 %i.en, 255
  %i.eu = zext nneg i16 %i.et to i64              ; 3 uses
  %i.ev = sub nsw i64 %i.eu, %i.eo
  %.tr = trunc nsw i64 %i.ev to i32
  %.narrow = add nsw i32 %i.es, %.tr              ; 2 uses
  %i.ew = zext i32 %.narrow to i64                ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.1148.ph, i64 %i.eu ; 4 uses
  %i.ey = load ptr, ptr %1, align 8, !tbaa !75
  %i.ez = ptrtoint ptr %.1148.ph to i64
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = icmp ult i64 %i.fb, %i.ew
  br i1 %i.fc, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210, label %bb.z, !prof !22

bb.z:                                             ; preds = %bb.y
  %i.fd = load ptr, ptr %i.x, align 8, !tbaa !79
  %i.fe = icmp uge ptr %.1148.ph, %i.fd
  %i.ff = icmp samesign ult i64 %i.ew, %i.eu
  %i.fg = or i1 %i.ff, %i.fe
  br i1 %i.fg, label %bb.aa, label %bb.ac, !prof !22

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %i.y, align 8, !tbaa !78  ; 2 uses
  %i.fi = icmp ugt ptr %i.ex, %i.fh
  %i.fj = icmp eq i32 %.narrow, 0
  %or.cond.i = or i1 %i.fj, %i.fi
  br i1 %or.cond.i, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fk = sub nsw i64 0, %i.ew
  %i.fl = getelementptr inbounds i8, ptr %.1148.ph, i64 %i.fk
  %i.fm = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.fl, ptr noundef %.1148.ph, ptr noundef %i.ex, ptr noundef %i.fh) ; 0 uses
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

bb.ac:                                            ; preds = %bb.z
  %i.fn = sub nsw i64 0, %i.ew
  %i.fo = getelementptr inbounds i8, ptr %.1148.ph, i64 %i.fn
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %.1148.ph, ptr noundef nonnull align 1 dereferenceable(64) %i.fo, i64 64, i1 false)
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit: ; preds = %bb.ab, %bb.ac
  %i.fp = zext nneg i32 %i.az to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.fp ; 3 uses
  %i.fr = lshr i32 %.0.copyload.i135, %i.ep
  %i.fs = load ptr, ptr %i.k, align 8, !tbaa !140
  %.not217 = icmp ult ptr %i.fq, %i.fs
  br i1 %.not217, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.backedge, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread195

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread195: ; preds = %bb.w, %bb.x, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit
  %.4 = phi ptr [ %i.ex, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.dt, %bb.w ], [ %i.dt, %bb.x ] ; 2 uses
  %.12 = phi ptr [ %i.fq, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit ], [ %i.dq, %bb.w ], [ %i.dq, %bb.x ] ; 3 uses
  %i.ft = load ptr, ptr %i.k, align 8, !tbaa !140
  %.not117 = icmp ult ptr %.12, %i.ft
  br i1 %.not117, label %bb.af, label %bb.ad, !prof !19

bb.ad:                                            ; preds = %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread195
  store ptr %.12, ptr %i.b, align 8, !tbaa !40
  %i.fu = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fu, label %bb.ae, label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210, !prof !19

bb.ae:                                            ; preds = %bb.ad
  %i.fv = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.fw = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %.sroa.speculated.i136 = call i64 @llvm.smin.i64(i64 %i.fz, i64 4)
  %i.ga = sub i64 0, %.sroa.speculated.i136
  %i.gb = getelementptr inbounds i8, ptr %i.fw, i64 %i.ga
  store ptr %i.gb, ptr %i.k, align 8, !tbaa !140
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread195
  %.13 = phi ptr [ %i.fv, %bb.ae ], [ %.12, %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread195 ] ; 2 uses
  %i.gc = load i8, ptr %.13, align 1, !tbaa !7
  %i.gd = zext i8 %i.gc to i32
  br label %_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.backedge

_ZN6snappy17SnappyArrayWriter14AppendFromSelfEmmPPc.exit126.thread210: ; preds = %bb.q, %._crit_edge, %bb.aa, %bb.y, %bb.t, %bb.v, %bb.ad, %bb.f, %.lr.ph, %.thread184, %bb.b
  %.6152 = phi ptr [ %i.m, %bb.b ], [ %i.ci, %.thread184 ], [ %.2149225, %.lr.ph ], [ %.2149.lcssa, %._crit_edge ], [ %i.db, %bb.q ], [ %.1148.ph, %bb.y ], [ %.1148.ph, %bb.v ], [ %.1148.ph, %bb.t ], [ %.4, %bb.ad ], [ %i.al, %bb.f ], [ %.1148.ph, %bb.aa ]
  store ptr %.6152, ptr %i.l, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6snappy18SnappyDecompressor17DecompressAllTagsINS_21SnappyScatteredWriterINS_19SnappySinkAllocatorEEEEEvPT_(ptr noundef nonnull align 8 dereferenceable(42) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 32 prefalign(32) {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.i, i64 4)
  %i.j = sub i64 0, %.sroa.speculated.i
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !125  ; 2 uses
  store ptr %i.n, ptr %i.a, align 8, !tbaa !141
  %.not = icmp ult ptr %i.d, %i.k
  br i1 %.not, label %bb.d, label %bb.b, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.o, label %bb.c, label %.thread179, !prof !19

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = sub i64 %i.r, %i.s
  %.sroa.speculated.i125 = tail call i64 @llvm.smin.i64(i64 %i.t, i64 4)
  %i.u = sub i64 0, %.sroa.speculated.i125
  %i.v = getelementptr inbounds i8, ptr %i.q, i64 %i.u
  store ptr %i.v, ptr %i.l, align 8, !tbaa !140
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %i.p, %bb.c ], [ %i.d, %bb.a ]  ; 2 uses
  %i.w = load i8, ptr %.0, align 1, !tbaa !7
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.d
  %.0142 = phi i32 [ %i.x, %bb.d ], [ %.0142.be, %.loopexit.backedge ]
  %.1 = phi ptr [ %.0, %bb.d ], [ %.1.be, %.loopexit.backedge ] ; 2 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !124 ; 4 uses
  %.not115 = icmp eq ptr %i.ac, null
  br i1 %.not115, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !177
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !141
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.af
  %i.al = call { ptr, i64 } @_ZN6snappy20DecompressBranchlessIPcEESt4pairIPKhlES4_S4_lT_l(ptr noundef nonnull %.1, ptr noundef %i.ah, i64 noundef %i.ak, ptr noundef nonnull %i.ac, i64 noundef %i.ag) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 3 uses
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = getelementptr inbounds i8, ptr %i.ac, i64 %i.an
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !141
  %i.ap = load ptr, ptr %i.l, align 8, !tbaa !140
  %.not116 = icmp ult ptr %i.am, %i.ap
  br i1 %.not116, label %bb.h, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  store ptr %i.am, ptr %i.c, align 8, !tbaa !40
  %i.aq = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.aq, label %bb.g, label %.thread179.loopexit, !prof !19

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.as = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %.sroa.speculated.i126 = call i64 @llvm.smin.i64(i64 %i.av, i64 4)
  %i.aw = sub i64 0, %.sroa.speculated.i126
  %i.ax = getelementptr inbounds i8, ptr %i.as, i64 %i.aw
  store ptr %i.ax, ptr %i.l, align 8, !tbaa !140
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.2 = phi ptr [ %i.ar, %bb.g ], [ %i.am, %bb.e ] ; 2 uses
  %i.ay = load i8, ptr %.2, align 1, !tbaa !7
  %i.az = zext i8 %i.ay to i32
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.h
  %.2144.ph = phi i32 [ %i.az, %bb.h ], [ %.0142, %.loopexit ] ; 2 uses
  %.5.ph = phi ptr [ %.2, %bb.h ], [ %.1, %.loopexit ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.5.ph, i64 1 ; 9 uses
  %i.bb = and i32 %.2144.ph, 255                  ; 5 uses
  %i.bc = and i32 %.2144.ph, 3                    ; 3 uses
  switch i32 %i.bc, label %bb.u [
    i32 0, label %bb.j
    i32 3, label %bb.t
  ], !prof !142

bb.j:                                             ; preds = %bb.i
  %i.bd = lshr exact i32 %i.bb, 2
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = zext nneg i32 %i.be to i64              ; 4 uses
  %i.bg = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.bh = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ba to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !141 ; 4 uses
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !178
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = icmp samesign ult i32 %i.bb, 64
  %i.br = icmp ugt i64 %i.bj, 20
  %or.cond.i = and i1 %i.bq, %i.br
  %i.bs = icmp sgt i32 %i.bp, 15
  %or.cond3.i = select i1 %or.cond.i, i1 %i.bs, i1 false
  br i1 %or.cond3.i, label %bb.k, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit

bb.k:                                             ; preds = %bb.j
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ba, i64 16, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf
  store ptr %i.bt, ptr %i.a, align 8, !tbaa !141
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bf ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !7
  %i.bw = zext i8 %i.bv to i32
  br label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %bb.k, %bb.s, %bb.ac, %bb.z
  %.0142.be = phi i32 [ %i.gb, %bb.ac ], [ %i.dy, %bb.s ], [ %i.fo, %bb.z ], [ %i.bw, %bb.k ]
  %.1.be = phi ptr [ %.13, %bb.ac ], [ %.8, %bb.s ], [ %i.fn, %bb.z ], [ %i.bu, %bb.k ]
  br label %.loopexit, !llvm.loop !179

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit: ; preds = %bb.j
  %i.bx = icmp samesign ugt i32 %i.bb, 236
  br i1 %i.bx, label %bb.l, label %bb.m, !prof !22

bb.l:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
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
  %.pre200.a = ptrtoint ptr %i.ch to i64
  %.pre201 = sub i64 %i.bh, %.pre200.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit
  %.pre-phi202 = phi i64 [ %.pre201, %bb.l ], [ %i.bj, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %.099 = phi i64 [ %i.cg, %bb.l ], [ %i.bf, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 3 uses
  %.6 = phi ptr [ %i.ch, %bb.l ], [ %i.ba, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE13TryFastAppendEPKcmmPPc.exit ] ; 2 uses
  %i.ci = icmp ult i64 %.pre-phi202, %.099
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m, %bb.o
  %.7190 = phi ptr [ %i.db, %bb.o ], [ %.6, %bb.m ] ; 2 uses
  %.1100189 = phi i64 [ %i.de, %bb.o ], [ %.099, %bb.m ]
  %.0101188 = phi i64 [ %i.dc, %bb.o ], [ %.pre-phi202, %bb.m ] ; 5 uses
  %i.cj = load ptr, ptr %i.a, align 8, !tbaa !141 ; 4 uses
  %i.ck = load ptr, ptr %i.aa, align 8, !tbaa !178
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.not.i = icmp ugt i64 %.0101188, %i.cn
  br i1 %.not.i, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread: ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.7190, i64 %.0101188, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.0101188
  store ptr %i.co, ptr %i.a, align 8, !tbaa !141
  br label %bb.n

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit: ; preds = %.lr.ph
  store ptr %i.cj, ptr %i.m, align 8, !tbaa !125
  %i.cp = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7190, i64 noundef %.0101188)
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !125
  store ptr %i.cq, ptr %i.a, align 8, !tbaa !141
  br i1 %i.cp, label %bb.n, label %.thread179.loopexit

bb.n:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit
  %i.cr = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cs = load i32, ptr %i.ab, align 8, !tbaa !46
  %i.ct = zext i32 %i.cs to i64
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, i64 noundef %i.ct) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.cx = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !47
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull %i.b) #23 ; 3 uses
  %i.dc = load i64, ptr %i.b, align 8, !tbaa !8   ; 6 uses
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %i.ab, align 8, !tbaa !46
  %.not119 = icmp eq i64 %i.dc, 0
  br i1 %.not119, label %.thread164, label %bb.o

.thread164:                                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread179.loopexit

bb.o:                                             ; preds = %bb.n
  %i.de = sub i64 %.1100189, %.0101188            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dc ; 2 uses
  store ptr %i.df, ptr %i.e, align 8, !tbaa !44
  %.sroa.speculated.i127 = call i64 @llvm.smin.i64(i64 %i.dc, i64 4)
  %i.dg = sub i64 0, %.sroa.speculated.i127
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 %i.dg
  store ptr %i.dh, ptr %i.l, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.di = icmp ult i64 %i.dc, %i.de
  br i1 %i.di, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !180

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %.pre196 = load ptr, ptr %i.aa, align 8, !tbaa !178
  %.pre203 = ptrtoint ptr %.pre196 to i64
  %.pre205 = ptrtoint ptr %.pre to i64
  %.pre207 = sub i64 %.pre203, %.pre205
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %.pre-phi208 = phi i64 [ %.pre207, %._crit_edge.loopexit ], [ %i.bo, %bb.m ]
  %i.dj = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bk, %bb.m ] ; 3 uses
  %.1100.lcssa = phi i64 [ %i.de, %._crit_edge.loopexit ], [ %.099, %bb.m ] ; 5 uses
  %.7.lcssa = phi ptr [ %i.db, %._crit_edge.loopexit ], [ %.6, %bb.m ] ; 3 uses
  %.not.i128 = icmp ugt i64 %.1100.lcssa, %.pre-phi208
  br i1 %.not.i128, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread: ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dj, ptr align 1 %.7.lcssa, i64 %.1100.lcssa, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.1100.lcssa
  store ptr %i.dk, ptr %i.a, align 8, !tbaa !141
  br label %bb.p

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131: ; preds = %._crit_edge
  store ptr %i.dj, ptr %i.m, align 8, !tbaa !125
  %i.dl = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %.7.lcssa, i64 noundef %.1100.lcssa)
  %i.dm = load ptr, ptr %i.m, align 8, !tbaa !125
  store ptr %i.dm, ptr %i.a, align 8, !tbaa !141
  br i1 %i.dl, label %bb.p, label %.thread179.loopexit

bb.p:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131
  %i.dn = getelementptr inbounds nuw i8, ptr %.7.lcssa, i64 %.1100.lcssa ; 3 uses
  %i.do = load ptr, ptr %i.l, align 8, !tbaa !140
  %.not118 = icmp ult ptr %i.dn, %i.do
  br i1 %.not118, label %bb.s, label %bb.q, !prof !19

bb.q:                                             ; preds = %bb.p
  store ptr %i.dn, ptr %i.c, align 8, !tbaa !40
  %i.dp = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.dp, label %bb.r, label %.thread179.loopexit, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.dq = load ptr, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.dr = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = sub i64 %i.ds, %i.dt
  %.sroa.speculated.i132 = call i64 @llvm.smin.i64(i64 %i.du, i64 4)
  %i.dv = sub i64 0, %.sroa.speculated.i132
  %i.dw = getelementptr inbounds i8, ptr %i.dr, i64 %i.dv
  store ptr %i.dw, ptr %i.l, align 8, !tbaa !140
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.8 = phi ptr [ %i.dq, %bb.r ], [ %i.dn, %bb.p ] ; 2 uses
  %i.dx = load i8, ptr %.8, align 1, !tbaa !7
  %i.dy = zext i8 %i.dx to i32
  br label %.loopexit.backedge

bb.t:                                             ; preds = %bb.i
  %.0.copyload.i133 = load i32, ptr %i.ba, align 1
  %i.dz = zext i32 %.0.copyload.i133 to i64
  %i.ea = lshr i32 %i.bb, 2
  %i.eb = add nuw nsw i32 %i.ea, 1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.dz, i64 noundef %i.ec, ptr noundef nonnull %i.a)
  br i1 %i.ed, label %bb.aa, label %.thread179.loopexit

bb.u:                                             ; preds = %bb.i
  %i.ee = zext nneg i32 %i.bb to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr @_ZN6snappy12_GLOBAL__N_118kLengthMinusOffsetE, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !20 ; 2 uses
  %i.eh = sext i16 %i.eg to i64
  %.0.copyload.i134 = load i32, ptr %i.ba, align 1 ; 2 uses
  %i.ei = shl nuw nsw i32 %i.bc, 3                ; 2 uses
  %i.ej = shl nsw i32 -1, %i.ei
  %i.ek = xor i32 %i.ej, -1
  %i.el = and i32 %.0.copyload.i134, %i.ek
  %i.em = and i16 %i.eg, 255
  %i.en = zext nneg i16 %i.em to i64              ; 5 uses
  %i.eo = sub nsw i64 %i.en, %i.eh
  %.tr = trunc nsw i64 %i.eo to i32
  %.narrow = add nsw i32 %i.el, %.tr              ; 2 uses
  %i.ep = zext i32 %.narrow to i64                ; 5 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !141 ; 9 uses
  %i.er = load ptr, ptr %i.z, align 8, !tbaa !124
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = icmp ult i64 %i.eu, %i.ep               ; 2 uses
  %i.ew = load ptr, ptr %i.y, align 8
  %.not.i135 = icmp uge ptr %i.eq, %i.ew
  %or.cond.not.i = select i1 %i.ev, i1 true, i1 %.not.i135, !prof !173
  %i.ex = icmp samesign ult i64 %i.ep, %i.en
  %i.ey = or i1 %i.ex, %or.cond.not.i
  br i1 %i.ey, label %bb.v, label %bb.y, !prof !22

bb.v:                                             ; preds = %bb.u
  %i.ez = icmp eq i32 %.narrow, 0
  br i1 %i.ez, label %.thread179.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en ; 3 uses
  %i.fb = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fc = icmp ugt ptr %i.fa, %i.fb
  %i.fd = select i1 %i.ev, i1 true, i1 %i.fc, !prof !22
  br i1 %i.fd, label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, label %bb.x, !prof !22

bb.x:                                             ; preds = %bb.w
  %i.fe = sub nsw i64 0, %i.ep
  %i.ff = getelementptr inbounds i8, ptr %i.eq, i64 %i.fe
  %i.fg = call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.ff, ptr noundef %i.eq, ptr noundef %i.fa, ptr noundef %i.fb) ; 0 uses
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169

bb.y:                                             ; preds = %bb.u
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.en
  %i.fi = sub nsw i64 0, %i.ep
  %i.fj = getelementptr inbounds i8, ptr %i.eq, i64 %i.fi
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.eq, ptr noundef nonnull align 1 dereferenceable(64) %i.fj, i64 64, i1 false)
  br label %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169: ; preds = %bb.y, %bb.x
  %.sink.i.ph = phi ptr [ %i.fa, %bb.x ], [ %i.fh, %bb.y ]
  store ptr %.sink.i.ph, ptr %i.a, align 8, !tbaa !141
  br label %bb.z

_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit: ; preds = %bb.w
  store ptr %i.eq, ptr %i.m, align 8, !tbaa !125
  %i.fk = call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.ep, i64 noundef %i.en)
  %i.fl = load ptr, ptr %i.m, align 8, !tbaa !125
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !141
  br i1 %i.fk, label %bb.z, label %.thread179.loopexit

bb.z:                                             ; preds = %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit.thread169
  %i.fm = zext nneg i32 %i.bc to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.fm ; 3 uses
  %i.fo = lshr i32 %.0.copyload.i134, %i.ei
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !140
  %.not183 = icmp ult ptr %i.fn, %i.fp
  br i1 %.not183, label %.loopexit.backedge, label %.thread, !prof !146

bb.aa:                                            ; preds = %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %.5.ph, i64 5 ; 3 uses
  %.pre198 = load ptr, ptr %i.l, align 8, !tbaa !140
  %i.fr = icmp ult ptr %i.fq, %.pre198
  br i1 %i.fr, label %bb.ac, label %.thread, !prof !147

.thread:                                          ; preds = %bb.z, %bb.aa
  %.12229 = phi ptr [ %i.fq, %bb.aa ], [ %i.fn, %bb.z ]
  store ptr %.12229, ptr %i.c, align 8, !tbaa !40
  %i.fs = call noundef zeroext i1 @_ZN6snappy18SnappyDecompressor9RefillTagEv(ptr noundef nonnull align 8 dereferenceable(42) %0)
  br i1 %i.fs, label %bb.ab, label %.thread179.loopexit, !prof !19

bb.ab:                                            ; preds = %.thread
  %i.ft = load ptr, ptr %i.c, align 8, !tbaa !40  ; 2 uses
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %.sroa.speculated.i137 = call i64 @llvm.smin.i64(i64 %i.fx, i64 4)
  %i.fy = sub i64 0, %.sroa.speculated.i137
  %i.fz = getelementptr inbounds i8, ptr %i.fu, i64 %i.fy
  store ptr %i.fz, ptr %i.l, align 8, !tbaa !140
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.13 = phi ptr [ %i.ft, %bb.ab ], [ %i.fq, %bb.aa ] ; 2 uses
  %i.ga = load i8, ptr %.13, align 1, !tbaa !7
  %i.gb = zext i8 %i.ga to i32
  br label %.loopexit.backedge

.thread179.loopexit:                              ; preds = %bb.q, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit131, %bb.t, %bb.f, %.thread, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc.exit, %bb.v, %_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE6AppendEPKcmPPc.exit, %.thread164
  %.pre199 = load ptr, ptr %i.a, align 8, !tbaa !141
  br label %.thread179

.thread179:                                       ; preds = %.thread179.loopexit, %bb.b
  %2 = phi ptr [ %.pre199, %.thread179.loopexit ], [ %i.n, %bb.b ]
  store ptr %2, ptr %i.m, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE14AppendFromSelfEmmPPc(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !141    ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = icmp ult i64 %i.f, %1                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp uge ptr %i.a, %i.i
  %or.cond.not = select i1 %i.g, i1 true, i1 %.not, !prof !173
  %i.j = icmp ult i64 %1, %2
  %i.k = or i1 %i.j, %or.cond.not
  br i1 %i.k, label %bb.b, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %1, 0
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 %2 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp ugt ptr %i.m, %i.o
  %i.q = select i1 %i.g, i1 true, i1 %i.p, !prof !22
  br i1 %i.q, label %bb.d, label %bb.e, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.a, ptr %i.r, align 8, !tbaa !125
  %i.s = tail call noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE18SlowAppendFromSelfEmm(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %1, i64 noundef %2)
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !125
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.u = sub i64 0, %1
  %i.v = getelementptr inbounds i8, ptr %i.a, i64 %i.u
  %i.w = tail call fastcc noundef ptr @_ZN6snappy12_GLOBAL__N_115IncrementalCopyEPKcPcS3_S3_(ptr noundef nonnull %i.v, ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.o) ; 0 uses
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.y = sub i64 0, %1
  %i.z = getelementptr inbounds i8, ptr %i.a, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, ptr noundef nonnull align 1 dereferenceable(64) %i.z, i64 64, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi ptr [ %i.x, %bb.f ], [ %i.m, %bb.e ], [ %i.t, %bb.d ]
  %.0.ph = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ %i.s, %bb.d ]
  store ptr %.sink, ptr %3, align 8, !tbaa !141
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ %.0.ph, %.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN6snappy21SnappyScatteredWriterINS_19SnappySinkAllocatorEE10SlowAppendEPKcm(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !125  ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not = icmp ugt i64 %2, %i.g
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.035 = phi i64 [ %i.g, %.lr.ph ], [ %.sroa.speculated20, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 4 uses
  %.01434 = phi i64 [ %2, %.lr.ph ], [ %i.x, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ]
  %.01533 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !125
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %.01533, i64 %.035, i1 false)
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.035 ; 2 uses
  store ptr %i.q, ptr %i.c, align 8, !tbaa !125
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !124
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = load i64, ptr %i.i, align 8, !tbaa !126
  %i.w = add i64 %i.u, %i.v                       ; 3 uses
  store i64 %i.w, ptr %i.i, align 8, !tbaa !126
  %i.x = sub nuw i64 %.01434, %.035               ; 4 uses
  %i.y = add i64 %i.w, %i.x
  %i.z = load i64, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %.01533, i64 %.035 ; 2 uses
  %i.ac = sub i64 %i.z, %i.w                      ; 2 uses
  %.sroa.speculated20 = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 65536) ; 4 uses
  %i.ad = trunc nuw nsw i64 %.sroa.speculated20 to i32
  %i.ae = tail call noundef ptr @_ZN6snappy19SnappySinkAllocator8AllocateEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.ad) ; 5 uses
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !124
  store ptr %i.ae, ptr %i.c, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.speculated20 ; 2 uses
  store ptr %i.af, ptr %i.a, align 8, !tbaa !178
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 63)
  %i.ag = sub nsw i64 0, %.sroa.speculated
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  store ptr %i.ah, ptr %i.k, align 8, !tbaa !177
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !181 ; 4 uses
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !134
  %.not.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !141
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ak, ptr %i.m, align 8, !tbaa !181
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.l, align 8, !tbaa !133 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.f, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #24
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #20 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store ptr %i.ae, ptr %i.ax, align 8, !tbaa !141
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.g, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #21
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.aw, ptr %i.l, align 8, !tbaa !133
  store ptr %i.az, ptr %i.m, align 8, !tbaa !181
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.n, align 8, !tbaa !134
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %bb.d, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %.not38 = icmp ugt i64 %i.x, %.sroa.speculated20
  br i1 %.not38, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !182

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !125
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.bb = phi ptr [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.015.lcssa = phi ptr [ %1, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ %2, %bb.a ], [ %i.x, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %.015.lcssa, i64 %.014.lcssa, i1 false)
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !125
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.014.lcssa
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !125
end_hunk_2
