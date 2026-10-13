Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipIn?download=true
inline.NumInlined: 215
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE:bb.a
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !76
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !76
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.cy = load i16, ptr %i.cx, align 8, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i16 %i.cy, ptr %i.cz, align 8, !tbaa !75
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.db = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN8NArchive4NZip11CExtraBlockaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.da, ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %bb.r unwind label %bb.h       ; 0 uses

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.c, align 8, !tbaa !77
  br label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39: ; preds = %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit, %bb.f, %bb.r
  %spec.select = phi i32 [ 1, %bb.f ], [ 1, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit ], [ 0, %bb.r ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.bi, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !33 ; 2 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %_ZN7CBufferIhED2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #18, !inline_history !41
  br label %_ZN7CBufferIhED2Ev.exit.i

_ZN7CBufferIhED2Ev.exit.i:                        ; preds = %bb.s, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.bf, align 8, !tbaa !28
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i unwind label %bb.t, !inline_history !86

bb.t:                                             ; preds = %_ZN7CBufferIhED2Ev.exit.i
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #22, !inline_history !86
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i:        ; preds = %_ZN7CBufferIhED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bf) #19, !inline_history !86
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.bc, align 8, !tbaa !28
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bc)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i unwind label %bb.u, !inline_history !86

bb.u:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #22, !inline_history !86
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i:      ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bc) #19, !inline_history !86
  %i.dj = load ptr, ptr %i.q, align 8, !tbaa !54  ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %_ZN8NArchive4NZip5CItemD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.dj) #18
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit

_ZN8NArchive4NZip5CItemD2Ev.exit:                 ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.z

bb.w:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.br, %bb.h ], [ %i.bt, %bb.j ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %2) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.w ], [ %i.bq, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.p, %bb.c ]
  %.222 = extractvalue { ptr, i32 } %.pn.pn.pn, 0
  %i.dl = call ptr @__cxa_begin_catch(ptr %.222) #19 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.z

bb.z:                                             ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit, %bb.a, %bb.y
  %.3 = phi i32 [ %i.o, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit ], [ 0, %bb.a ], [ %spec.select, %_ZN8NArchive4NZip5CItemD2Ev.exit ], [ 1, %bb.y ]
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN8NArchive4NZip11CExtraBlockaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !63
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e)
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph.i.i, label %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEaSERKS3_.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = tail call noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j) ; 0 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEaSERKS3_.exit, label %bb.b, !llvm.loop !2

_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEaSERKS3_.exit: ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(179) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.a, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7CBufferIhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #18, !inline_history !41
  br label %_ZN7CBufferIhED2Ev.exit

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.e, align 8, !tbaa !28
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit unwind label %bb.c, !inline_history !86

bb.c:                                             ; preds = %_ZN7CBufferIhED2Ev.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22, !inline_history !86
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit:          ; preds = %_ZN7CBufferIhED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #19, !inline_history !86
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.h, align 8, !tbaa !28
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i unwind label %bb.d, !inline_history !86

bb.d:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22, !inline_history !86
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i:        ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #19, !inline_history !86
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN8NArchive4NZip10CLocalItemD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #18
  br label %_ZN8NArchive4NZip10CLocalItemD2Ev.exit

_ZN8NArchive4NZip10CLocalItemD2Ev.exit:           ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(186) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 15 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !87
  %i.e = and i16 %i.d, 8
  %.not88 = icmp eq i16 %i.e, 0
  br i1 %.not88, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.f = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef nonnull %i.b) ; 2 uses
  %.not96 = icmp eq i32 %i.f, 0
  br i1 %.not96, label %.lr.ph101.preheader, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65.sink.split

.lr.ph101.preheader:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101.preheader, %._crit_edge
  %.04898 = phi i32 [ %7, %._crit_edge ], [ 0, %.lr.ph101.preheader ] ; 2 uses
  %.05197 = phi i32 [ %.0.lcssa, %._crit_edge ], [ 0, %.lr.ph101.preheader ] ; 2 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !11   ; 2 uses
  %i.l = add i32 %i.k, %.05197                    ; 4 uses
  %i.m = icmp ult i32 %i.l, 16
  br i1 %i.m, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65.sink.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph101
  %2 = add i32 %i.l, -16
  %i.n = load i32, ptr @_ZN8NArchive4NZip10NSignature15kDataDescriptorE, align 4, !tbaa !11
  %3 = zext i32 %2 to i64                         ; 5 uses
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %i.o = add nsw i32 %.05197, -15
  %5 = add i32 %i.o, %i.k
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %indvars114 = trunc i64 %indvars.iv to i32      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.q = load i32, ptr %i.p, align 1, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i32, ptr %i.r, align 1, !tbaa !11   ; 2 uses
  %i.t = icmp eq i32 %i.q, %i.n
  %i.u = add i32 %.04898, %indvars114
  %i.v = icmp eq i32 %i.s, %i.u
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.x = load i32, ptr %i.w, align 1, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.x, ptr %i.y, align 4, !tbaa !83
  %i.z = zext i32 %i.s to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !84
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !11
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !85
  %reass.sub = sub i32 %indvars114, %i.l
  %i.af = add i32 %reass.sub, 16
  %i.ag = sext i32 %i.af to i64
  %i.ah = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, i64 noundef %i.ag, i32 noundef 1, ptr noundef nonnull %i.ai), !inline_history !117
  %.not.i = icmp eq i32 %i.am, 0
  br i1 %.not.i, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 7, ptr %i.an, align 4, !tbaa !51
  call void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %5, %lftr.wideiv
  br i1 %exitcond.not, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit, label %bb.c, !llvm.loop !116

_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit: ; preds = %bb.f
  %6 = trunc nuw i64 %4 to i32                    ; 2 uses
  %7 = add i32 %.04898, %6
  %8 = icmp ugt i32 %i.l, %6
  br i1 %8, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %4
  %i.ap = load <8 x i8>, ptr %i.ao, align 1, !tbaa !35
  store <8 x i8> %i.ap, ptr %i.a, align 16, !tbaa !35
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  %i.as = load <4 x i8>, ptr %i.ar, align 1, !tbaa !35
  store <4 x i8> %i.as, ptr %i.g, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 13
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  store i8 %i.av, ptr %i.h, align 4, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  store i8 %i.ay, ptr %i.i, align 1, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 15
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35
  store i8 %i.bb, ptr %i.j, align 2, !tbaa !35
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit
  %.0.lcssa = phi i32 [ 0, %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit ], [ 15, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %9 = zext nneg i32 %.0.lcssa to i64
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 %9
  %11 = sub nuw nsw i32 4096, %.0.lcssa
  %12 = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %10, i32 noundef %11, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i32 %12, 0
  br i1 %.not, label %.lr.ph101, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65.sink.split

bb.g:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !84
  %i.be = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef i32 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be, i64 noundef %i.bd, i32 noundef 1, ptr noundef nonnull %i.bf), !inline_history !117
  %.not.i64 = icmp eq i32 %i.bj, 0
  br i1 %.not.i64, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = tail call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 7, ptr %i.bk, align 4, !tbaa !51
  tail call void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65.sink.split: ; preds = %._crit_edge, %.lr.ph101, %bb.b, %bb.d
  %.357.ph = phi i32 [ 0, %bb.d ], [ %i.f, %bb.b ], [ %12, %._crit_edge ], [ 1, %.lr.ph101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65

_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65: ; preds = %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65.sink.split, %bb.g
  %.357 = phi i32 [ 0, %bb.g ], [ %.357.ph, %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit65.sink.split ]
  ret i32 %.357
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i8, ptr %i.c, align 8, !tbaa !77, !range !42, !noundef !43
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %1)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !87
  %i.j = and i16 %i.i, 8
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !79
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.p = load i32, ptr %i.o, align 4, !tbaa !76
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load i16, ptr %i.r, align 8, !tbaa !75
  %i.t = zext i16 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !84
  %i.w = add i64 %i.n, %i.l
  %i.x = add i64 %i.w, %i.q
  %i.y = add i64 %i.x, %i.t
  %i.z = add i64 %i.y, %i.v
  %i.aa = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = invoke noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef %i.z, i32 noundef 0, ptr noundef null)
          to label %_ZN8NArchive4NZip10CInArchive4SeekEy.exit unwind label %bb.h, !inline_history !80 ; 2 uses

_ZN8NArchive4NZip10CInArchive4SeekEy.exit:        ; preds = %bb.f
  %.not26.not = icmp eq i32 %i.ae, 0
  br i1 %.not26.not, label %bb.i, label %.thread

bb.g:                                             ; preds = %.invoke, %bb.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.i:                                             ; preds = %_ZN8NArchive4NZip10CInArchive4SeekEy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ah = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.i
  %.not.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i, label %.invoke

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i: ; preds = %.noexc
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !11
  %i.aj = icmp eq i32 %i.ai, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.aj, label %bb.j, label %.invoke

.invoke:                                          ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i, %.noexc
  %.sink = phi i32 [ 6, %.noexc ], [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i ]
  %i.ak = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 %.sink, ptr %i.ak, align 4, !tbaa !51
  invoke void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.cont unwind label %bb.g

.cont:                                            ; preds = %.invoke
  unreachable

bb.j:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %i.al = load i32, ptr %i.b, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.am = load i32, ptr @_ZN8NArchive4NZip10NSignature15kDataDescriptorE, align 4, !tbaa !11
  %.not27 = icmp eq i32 %i.al, %i.am
  br i1 %.not27, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.an = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev(ptr noundef nonnull align 8 dereferenceable(138) %0)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ao = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev(ptr noundef nonnull align 8 dereferenceable(138) %0)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.ap = zext i32 %i.ao to i64
  %i.aq = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev(ptr noundef nonnull align 8 dereferenceable(138) %0)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !83
  %.not28 = icmp eq i32 %i.an, %i.at
  br i1 %.not28, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.au = load i64, ptr %i.u, align 8, !tbaa !84
  %.not29 = icmp eq i64 %i.au, %i.ap
  br i1 %.not29, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !85
  %.not30 = icmp ne i64 %i.aw, %i.ar
  %spec.select36 = zext i1 %.not30 to i32
  br label %.thread

bb.q:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.h, %bb.g, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.af, %bb.g ], [ %i.ag, %bb.h ], [ %i.ay, %bb.r ], [ %i.ax, %bb.q ]
  %.121 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.az = call ptr @__cxa_begin_catch(ptr %.121) #19 ; 0 uses
  call void @__cxa_end_catch()
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.o, %bb.n, %bb.e, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit, %bb.c, %bb.j, %bb.a, %bb.s
  %.3 = phi i32 [ %i.f, %bb.c ], [ 0, %bb.a ], [ 1, %bb.j ], [ 0, %bb.e ], [ 1, %bb.s ], [ %i.ae, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit ], [ %spec.select36, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) initializes((177, 178)) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [42 x i8], align 16               ; 17 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 177
  store i8 1, ptr %i.d, align 1, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 42, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.f, align 4, !tbaa !51
  call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !11
  %i.h = icmp eq i32 %i.g, 42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.h, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.i = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !51
  call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.j = load i8, ptr %i.b, align 16, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 %i.j, ptr %i.k, align 8, !tbaa !118
end_hunk_0
