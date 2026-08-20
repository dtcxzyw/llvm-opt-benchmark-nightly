inline.NumInlined: 649
inline.NumDeleted: 132
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 120
begin_hunk_0_@_ZN6icu_7817DateFormatSymbols11assignArrayERPNS_13UnicodeStringERiPKS1_i:bb.a
  store i16 2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 264
  store i16 2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 328
  store i16 2, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 384
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 392
  store i16 2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  store i16 2, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 512 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.k
  br i1 %i.aj, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit, label %.new

_ZN6icu_78L21newUnicodeStringArrayEm.exit:        ; preds = %.new, %.prol.loopexit
  store ptr %i.j, ptr %0, align 8
  %i.ak = icmp sgt i32 %3, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %_ZN6icu_78L21newUnicodeStringArrayEm.exit
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.al = load ptr, ptr %0, align 8
  %i.am = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %indvars.iv
  %i.ao = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.am, ptr noundef nonnull align 8 dereferenceable(64) %i.an) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %0, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.sink.split, %_ZN6icu_78L21newUnicodeStringArrayEm.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbols17createZoneStringsEPKPKNS_13UnicodeStringE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(872) initializes((536, 544)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.d) #15 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 7 uses
  store ptr %i.e, ptr %i.f, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.critedge, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 8
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph28, label %.critedge

.lr.ph28:                                         ; preds = %.preheader24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 3 uses
  %.pre = load i32, ptr %i.i, align 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph28, %._crit_edge
  %i.j = phi i32 [ %.pre, %.lr.ph28 ], [ %i.bn, %._crit_edge ] ; 2 uses
  %indvars.iv32 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next33, %._crit_edge ] ; 6 uses
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.j, i32 1) ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 5 uses
  %i.m = icmp slt i32 %i.j, 0
  %i.n = shl nsw i64 %i.l, 6
  %i.o = or disjoint i64 %i.n, 8
  %i.p = select i1 %i.m, i64 -1, i64 %i.o
  %i.q = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.p) #13 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.l, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 5 uses
  %i.t = getelementptr inbounds [64 x i8], ptr %i.s, i64 %i.l
  %i.u = add nsw i64 %i.l, 288230376151711743
  %i.v = and i64 %i.u, 288230376151711743
  %xtraiter = and i64 %i.l, 7
  %i.w = and i32 %i.k, 7
  %lcmp.mod.not = icmp eq i32 %i.w, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %i.x = phi ptr [ %i.z, %.prol.preheader ], [ %i.s, %bb.c ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 2, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 64 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !74

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.unr = phi ptr [ %i.s, %bb.c ], [ %i.z, %.prol.preheader ]
  %i.aa = icmp samesign ult i64 %i.v, 7
  br i1 %i.aa, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ab = phi ptr [ %i.ar, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i16 2, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i16 2, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  store i16 2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 192
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  store i16 2, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 256
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 264
  store i16 2, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 320
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 328
  store i16 2, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 384
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 392
  store i16 2, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 448
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 456
  store i16 2, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 512 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.t
  br i1 %i.as, label %_ZN6icu_78L21newUnicodeStringArrayEm.exit, label %.new

_ZN6icu_78L21newUnicodeStringArrayEm.exit:        ; preds = %.prol.loopexit, %.new, %bb.b
  %i.at = phi ptr [ null, %bb.b ], [ %i.s, %.new ], [ %i.s, %.prol.loopexit ]
  %i.au = load ptr, ptr %i.f, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv32
  store ptr %i.at, ptr %i.av, align 8
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv32
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.preheader22, label %.preheader23

.preheader23:                                     ; preds = %_ZN6icu_78L21newUnicodeStringArrayEm.exit
  %i.ba = load i32, ptr %i.i, align 4             ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader23
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv32
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.bd = load ptr, ptr %i.f, align 8
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv32
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bc, align 8
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %i.bi) #13 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.i, align 4             ; 2 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.d, label %._crit_edge, !llvm.loop !75

._crit_edge:                                      ; preds = %bb.d, %.preheader23
  %i.bn = phi i32 [ %i.ba, %.preheader23 ], [ %i.bk, %bb.d ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.bo = load i32, ptr %i.a, align 8
  %i.bp = sext i32 %i.bo to i64
  %i.bq = icmp slt i64 %indvars.iv.next33, %i.bp
  br i1 %i.bq, label %bb.b, label %.critedge, !llvm.loop !76

bb.e:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %i.f, align 8
  tail call void @uprv_free_78(ptr noundef %i.br) #13
  store ptr null, ptr %i.f, align 8
  br label %.critedge

.preheader22:                                     ; preds = %_ZN6icu_78L21newUnicodeStringArrayEm.exit, %bb.g
  %indvars.iv36 = phi i64 [ -1, %bb.g ], [ %indvars.iv32, %_ZN6icu_78L21newUnicodeStringArrayEm.exit ] ; 2 uses
  %i.bs = load ptr, ptr %i.f, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv36
  %i.bu = load ptr, ptr %i.bt, align 8            ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.preheader22
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8            ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.f
  %.idx = shl nsw i64 %i.bx, 6
  %i.bz = getelementptr inbounds i8, ptr %i.bu, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.ca = phi ptr [ %i.cb, %.preheader ], [ %i.bz, %.preheader.preheader ]
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.cb) #13
  %i.cc = icmp eq ptr %i.cb, %i.bu
  br i1 %i.cc, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.f
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.bw) #13
  br label %bb.g

bb.g:                                             ; preds = %.preheader22, %.loopexit
  %i.cd = icmp sgt i64 %indvars.iv36, 0
  br i1 %i.cd, label %.preheader22, label %bb.e, !llvm.loop !77

.critedge:                                        ; preds = %._crit_edge, %.preheader24, %bb.a, %bb.e
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #1

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6icu_786LocaleaSERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(872) ptr @_ZN6icu_7817DateFormatSymbolsaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7817DateFormatSymbols7disposeEv(ptr noundef nonnull align 8 dereferenceable(872) %0)
  tail call void @_ZN6icu_7817DateFormatSymbols8copyDataERKS0_(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef nonnull align 8 dereferenceable(872) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7817DateFormatSymbols7disposeEv(ptr noundef nonnull align 8 dereferenceable(872) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit171, label %.preheader170.preheader

.preheader170.preheader:                          ; preds = %bb.b
  %.idx = shl nsw i64 %i.e, 6
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  br label %.preheader170

.preheader170:                                    ; preds = %.preheader170.preheader, %.preheader170
  %i.h = phi ptr [ %i.i, %.preheader170 ], [ %i.g, %.preheader170.preheader ]
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.i) #13
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.loopexit171, label %.preheader170

.loopexit171:                                     ; preds = %.preheader170, %bb.b
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.d) #13
  br label %bb.c

bb.c:                                             ; preds = %.loopexit171, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.loopexit169, label %.preheader168.preheader

.preheader168.preheader:                          ; preds = %bb.d
  %.idx70 = shl nsw i64 %i.o, 6
  %i.q = getelementptr inbounds i8, ptr %i.l, i64 %.idx70
  br label %.preheader168

.preheader168:                                    ; preds = %.preheader168.preheader, %.preheader168
  %i.r = phi ptr [ %i.s, %.preheader168 ], [ %i.q, %.preheader168.preheader ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.s) #13
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %.loopexit169, label %.preheader168

.loopexit169:                                     ; preds = %.preheader168, %bb.d
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.n) #13
  br label %bb.e

bb.e:                                             ; preds = %.loopexit169, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.loopexit167, label %.preheader166.preheader

.preheader166.preheader:                          ; preds = %bb.f
  %.idx71 = shl nsw i64 %i.y, 6
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 %.idx71
  br label %.preheader166

.preheader166:                                    ; preds = %.preheader166.preheader, %.preheader166
  %i.ab = phi ptr [ %i.ac, %.preheader166 ], [ %i.aa, %.preheader166.preheader ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ac) #13
  %i.ad = icmp eq ptr %i.ac, %i.v
  br i1 %i.ad, label %.loopexit167, label %.preheader166

.loopexit167:                                     ; preds = %.preheader166, %bb.f
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.x) #13
  br label %bb.g

bb.g:                                             ; preds = %.loopexit167, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load ptr, ptr %i.ae, align 8            ; 4 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.loopexit165, label %.preheader164.preheader

.preheader164.preheader:                          ; preds = %bb.h
  %.idx72 = shl nsw i64 %i.ai, 6
  %i.ak = getelementptr inbounds i8, ptr %i.af, i64 %.idx72
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.preheader, %.preheader164
  %i.al = phi ptr [ %i.am, %.preheader164 ], [ %i.ak, %.preheader164.preheader ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.am) #13
  %i.an = icmp eq ptr %i.am, %i.af
  br i1 %i.an, label %.loopexit165, label %.preheader164

.loopexit165:                                     ; preds = %.preheader164, %bb.h
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ah) #13
  br label %bb.i

bb.i:                                             ; preds = %.loopexit165, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.loopexit163, label %.preheader162.preheader

.preheader162.preheader:                          ; preds = %bb.j
  %.idx73 = shl nsw i64 %i.as, 6
  %i.au = getelementptr inbounds i8, ptr %i.ap, i64 %.idx73
  br label %.preheader162

.preheader162:                                    ; preds = %.preheader162.preheader, %.preheader162
  %i.av = phi ptr [ %i.aw, %.preheader162 ], [ %i.au, %.preheader162.preheader ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -64 ; 3 uses
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.aw) #13
  %i.ax = icmp eq ptr %i.aw, %i.ap
  br i1 %i.ax, label %.loopexit163, label %.preheader162

.loopexit163:                                     ; preds = %.preheader162, %bb.j
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.ar) #13
  br label %bb.k

bb.k:                                             ; preds = %.loopexit163, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.az = load ptr, ptr %i.ay, align 8            ; 4 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8            ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.loopexit161, label %.preheader160.preheader

.preheader160.preheader:                          ; preds = %bb.l
  %.idx74 = shl nsw i64 %i.bc, 6
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %.idx74
  br label %.preheader160

.preheader160:                                    ; preds = %.preheader160.preheader, %.preheader160
  %i.bf = phi ptr [ %i.bg, %.preheader160 ], [ %i.be, %.preheader160.preheader ]
  %i.bg = getelementptr inbounds i8, ptr %i.bf, i64 -64 ; 3 uses
end_hunk_0
