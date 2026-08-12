inline.NumInlined: 194
inline.NumDeleted: 68
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6icu_7822Normalizer2DataBuilder19setRoundTripMappingEiRKNS_13UnicodeStringE:bb.a
  br label %_ZN6icu_7822Normalizer2DataBuilder19checkNormForMappingEPNS_4NormEi.exit

_ZN6icu_7822Normalizer2DataBuilder19checkNormForMappingEPNS_4NormEi.exit: ; preds = %bb.m, %bb.u
  %i.bu = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #18 ; 4 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN6icu_7822Normalizer2DataBuilder19checkNormForMappingEPNS_4NormEi.exit
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v, %_ZN6icu_7822Normalizer2DataBuilder19checkNormForMappingEPNS_4NormEi.exit
  store ptr %i.bu, ptr %i.ax, align 8, !tbaa !47
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 2, ptr %i.bw, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i32 -1, ptr %i.bx, align 8, !tbaa !53
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bz = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.by, i32 noundef %1) ; 0 uses
  ret void

bb.x:                                             ; preds = %bb.v
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bu) #18
  resume { ptr, i32 } %i.ca
}

declare i32 @u_countChar32_78(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6icu_7822Normalizer2DataBuilder13removeMappingEi(ptr noundef nonnull align 8 dereferenceable(868) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_785Norms10createNormEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %1) ; 8 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN6icu_7822Normalizer2DataBuilder19checkNormForMappingEPNS_4NormEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i32, ptr %i.b, align 8, !tbaa !40
  %.not11.i = icmp eq i32 %i.c, 0
  br i1 %.not11.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  switch i32 %i.e, label %bb.f [
    i32 0, label %._crit_edge.i
    i32 2, label %bb.d
  ]

._crit_edge.i:                                    ; preds = %bb.c
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !9
  %.phi.trans.insert12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.pre13.i = load i32, ptr %.phi.trans.insert12.i, align 4, !tbaa !46
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = load i32, ptr %i.h, align 8, !tbaa !9
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.k = phi i32 [ %.pre13.i, %._crit_edge.i ], [ %i.g, %bb.d ]
  %i.l = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.g, %bb.d ]
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !38
  %i.n = sext i32 %1 to i64
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.m, ptr noundef nonnull @.str.1, i32 noundef %i.l, i64 noundef %i.n, i32 noundef %i.k) #19 ; 0 uses
  tail call void @exit(i32 noundef 3) #20
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(64) %i.p) #18, !inline_history !52
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr null, ptr %i.a, align 8, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.v = load i32, ptr %i.u, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.v, ptr %i.w, align 4, !tbaa !46
  br label %_ZN6icu_7822Normalizer2DataBuilder19checkNormForMappingEPNS_4NormEi.exit

_ZN6icu_7822Normalizer2DataBuilder19checkNormForMappingEPNS_4NormEi.exit: ; preds = %bb.a, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 1, ptr %i.x, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.z = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %i.y, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7822Normalizer2DataBuilder27mappingHasCompBoundaryAfterERKNS_23BuilderReorderingBufferENS_4Norm11MappingTypeE(ptr noundef nonnull align 8 dereferenceable(868) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(133) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !54   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56   ; 10 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.b, -1                     ; 3 uses
  %i.g = icmp eq i32 %2, 3
  %i.h = icmp slt i32 %i.d, %i.f
  %or.cond102 = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond102, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = zext nneg i32 %i.f to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !57
  %i.l = and i32 %i.k, 254
  %.not114 = icmp eq i32 %i.l, 0
  br i1 %.not114, label %bb.e, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = zext nneg i32 %i.d to i64
  %i.n = getelementptr [4 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = ashr i32 %i.o, 8                         ; 7 uses
  %i.q = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.p, -4470
  %i.s = icmp ult i32 %i.r, -21
  %i.t = add nsw i32 %i.p, -4547
  %i.u = icmp ult i32 %i.t, -27
  %or.cond.i = and i1 %i.s, %i.u
  br i1 %or.cond.i, label %_ZNK6icu_785Norms12combinesBackEi.exit, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread

_ZNK6icu_785Norms12combinesBackEi.exit:           ; preds = %bb.f
  %i.v = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785Norms10getNormRefEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %i.p)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 43
  %i.x = load i8, ptr %i.w, align 1, !tbaa !58
  %.not115 = icmp eq i8 %i.x, 0
  br i1 %.not115, label %bb.g, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread

bb.g:                                             ; preds = %_ZNK6icu_785Norms12combinesBackEi.exit, %bb.e
  %i.y = add nsw i32 %i.p, -4371
  %i.z = icmp ult i32 %i.y, -19
  br i1 %i.z, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.p, -4449
  %i.ab = icmp ult i32 %i.aa, 21
  %i.ac = icmp ne i32 %i.d, 0
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.n, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !57
  %i.af = ashr i32 %i.ae, 8
  %i.ag = add nsw i32 %i.af, -4371
  %i.ah = icmp ult i32 %i.ag, -19
  br i1 %i.ah, label %.lr.ph.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %i.ai = icmp ne i32 %i.d, %i.f
  br label %_ZNK6icu_785Norms12combinesBackEi.exit.thread

bb.k:                                             ; preds = %bb.h
  br i1 %i.q, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.k
  %i.aj = zext nneg i32 %i.d to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6icu_786Hangul6isJamoEi.exit.thread
  %indvars.iv = phi i64 [ %i.aj, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6icu_786Hangul6isJamoEi.exit.thread ] ; 4 uses
  %.082123 = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.ao, %_ZN6icu_786Hangul6isJamoEi.exit.thread ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !57 ; 2 uses
  %i.am = and i32 %i.al, 255
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %.critedge.loopexit.split.loop.exit154

bb.l:                                             ; preds = %.lr.ph
  %i.ao = ashr exact i32 %i.al, 8                 ; 6 uses
  %i.ap = add nsw i32 %i.ao, -4352
  %or.cond.i103 = icmp ult i32 %i.ap, 195
  br i1 %or.cond.i103, label %bb.m, label %_ZN6icu_786Hangul6isJamoEi.exit.thread

bb.m:                                             ; preds = %bb.l
  %3 = icmp samesign ugt i32 %i.ao, 4370
  %i.aq = add nsw i32 %i.ao, -4470
  %or.cond3.i = icmp ult i32 %i.aq, -21
  %or.cond9.i.not139 = select i1 %3, i1 %or.cond3.i, i1 false
  %i.ar = icmp samesign ult i32 %i.ao, 4520
  %or.cond119 = select i1 %or.cond9.i.not139, i1 %i.ar, i1 false
  br i1 %or.cond119, label %_ZN6icu_786Hangul6isJamoEi.exit.thread, label %.critedge.loopexit.split.loop.exit

_ZN6icu_786Hangul6isJamoEi.exit.thread:           ; preds = %bb.m, %bb.l
  %i.as = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.as, label %.lr.ph, label %.critedge, !llvm.loop !59

.critedge.loopexit.split.loop.exit:               ; preds = %bb.m
  %i.at = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge.loopexit.split.loop.exit154:            ; preds = %.lr.ph
  %i.au = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN6icu_786Hangul6isJamoEi.exit.thread, %.critedge.loopexit.split.loop.exit, %.critedge.loopexit.split.loop.exit154, %bb.k
  %.083.lcssa = phi i32 [ 0, %bb.k ], [ %i.au, %.critedge.loopexit.split.loop.exit154 ], [ %i.at, %.critedge.loopexit.split.loop.exit ], [ 0, %_ZN6icu_786Hangul6isJamoEi.exit.thread ] ; 3 uses
  %.082.lcssa = phi i32 [ %i.p, %bb.k ], [ %.082123, %.critedge.loopexit.split.loop.exit154 ], [ %.082123, %.critedge.loopexit.split.loop.exit ], [ %i.ao, %_ZN6icu_786Hangul6isJamoEi.exit.thread ]
  %i.av = tail call noundef ptr @_ZNK6icu_785Norms7getNormEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %.082.lcssa) ; 3 uses
  %i.aw = icmp eq i32 %.083.lcssa, %i.d
  br i1 %i.aw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.critedge
  %i.ax = icmp eq ptr %i.av, null
  br i1 %i.ax, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !61
  %.not116 = icmp eq ptr %i.az, null
  br i1 %.not116, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge
  %i.ba = add nuw nsw i32 %.083.lcssa, 1          ; 2 uses
  %i.bb = load i32, ptr %i.a, align 4, !tbaa !54
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph134.preheader, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread

.lr.ph134.preheader:                              ; preds = %bb.p
  %i.bd = sext i32 %i.ba to i64
  %i.be = zext nneg i32 %i.d to i64               ; 2 uses
  br label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %bb.ac
  %indvars.iv141 = phi i64 [ %i.bd, %.lr.ph134.preheader ], [ %indvars.iv.next142, %bb.ac ] ; 5 uses
  %.074133 = phi i8 [ 0, %.lr.ph134.preheader ], [ %.175, %bb.ac ] ; 5 uses
  %.078132 = phi ptr [ %i.av, %.lr.ph134.preheader ], [ %.179, %bb.ac ] ; 4 uses
  %.184131 = phi i32 [ %.083.lcssa, %.lr.ph134.preheader ], [ %i.cj, %bb.ac ]
  %i.bf = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv141 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !57 ; 3 uses
  %i.bh = trunc i32 %i.bg to i8                   ; 3 uses
  %.not97 = icmp slt i32 %.184131, %i.d
  br i1 %.not97, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph134
  %i.bi = and i32 %i.bg, 255
  %i.bj = tail call noundef signext i8 @_ZNK6icu_785Norms21combinesWithCCBetweenERKNS_4NormEhi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(64) %.078132, i8 noundef zeroext %.074133, i32 noundef %i.bi)
  %.not98 = icmp eq i8 %i.bj, 0
  br i1 %.not98, label %.thread, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread

.thread:                                          ; preds = %bb.q
  %i.bk = load i32, ptr %i.bf, align 4, !tbaa !57
  %i.bl = ashr i32 %i.bk, 8
  br label %bb.s

bb.r:                                             ; preds = %.lr.ph134
  %i.bm = ashr i32 %i.bg, 8                       ; 2 uses
  %.not99 = icmp eq ptr %.078132, null
  br i1 %.not99, label %bb.y, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.bn = phi i32 [ %i.bl, %.thread ], [ %i.bm, %bb.r ] ; 5 uses
  %i.bo = icmp ult i8 %.074133, %i.bh
  %i.bp = icmp eq i8 %.074133, 0
  %or.cond4 = or i1 %i.bp, %i.bo
  br i1 %or.cond4, label %bb.t, label %bb.y

bb.t:                                             ; preds = %bb.s
  %i.bq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785Norms10getNormRefEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %i.bn)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 43
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !58
  %.not100 = icmp eq i8 %i.bs, 0
  br i1 %.not100, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = tail call noundef i32 @_ZNK6icu_784Norm7combineEi(ptr noundef nonnull align 8 dereferenceable(64) %.078132, i32 noundef %i.bn) ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bv = tail call noundef ptr @_ZNK6icu_785Norms7getNormEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %i.bt) ; 4 uses
  %.not101 = icmp slt i64 %indvars.iv141, %i.be
  br i1 %.not101, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !61
  %.not117 = icmp eq ptr %i.by, null
  br i1 %.not117, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.ac

bb.y:                                             ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  %i.bz = phi i32 [ %i.bn, %bb.s ], [ %i.bn, %bb.u ], [ %i.bn, %bb.t ], [ %i.bm, %bb.r ]
  %i.ca = icmp eq i8 %i.bh, 0
  br i1 %i.ca, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cb = tail call noundef ptr @_ZNK6icu_785Norms7getNormEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %i.bz) ; 4 uses
  %i.cc = icmp eq i64 %indvars.iv141, %i.be
  br i1 %i.cc, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cd = icmp eq ptr %i.cb, null
  br i1 %i.cd, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !61
  %.not118 = icmp eq ptr %i.cf, null
  br i1 %.not118, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.x, %bb.v, %bb.ab, %bb.z, %bb.y
  %.179 = phi ptr [ %i.bv, %bb.x ], [ %i.bv, %bb.v ], [ %i.cb, %bb.z ], [ %i.cb, %bb.ab ], [ %.078132, %bb.y ] ; 2 uses
  %.175 = phi i8 [ %.074133, %bb.x ], [ %.074133, %bb.v ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %i.bh, %bb.y ] ; 3 uses
  %indvars.iv.next142 = add nuw nsw i64 %indvars.iv141, 1 ; 2 uses
  %i.cg = load i32, ptr %i.a, align 4, !tbaa !54
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next142, %i.ch
  %i.cj = trunc nsw i64 %indvars.iv141 to i32
  br i1 %i.ci, label %.lr.ph134, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %bb.ac
  %i.ck = icmp eq i8 %.175, 0
  br i1 %i.ck, label %_ZNK6icu_785Norms12combinesBackEi.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge
  %i.cl = tail call noundef signext i8 @_ZNK6icu_785Norms21combinesWithCCBetweenERKNS_4NormEhi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(64) %.179, i8 noundef zeroext %.175, i32 noundef 256)
  %.not96 = icmp eq i8 %i.cl, 0
  br label %_ZNK6icu_785Norms12combinesBackEi.exit.thread

_ZNK6icu_785Norms12combinesBackEi.exit.thread:    ; preds = %bb.aa, %bb.ab, %bb.x, %bb.w, %bb.q, %bb.p, %bb.f, %bb.b, %bb.j, %_ZNK6icu_785Norms12combinesBackEi.exit, %._crit_edge, %bb.ad, %bb.n, %bb.o, %bb.d, %bb.a
  %.8.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZNK6icu_785Norms12combinesBackEi.exit ], [ %i.ai, %bb.j ], [ true, %bb.n ], [ true, %bb.o ], [ false, %bb.f ], [ false, %._crit_edge ], [ %.not96, %bb.ad ], [ false, %bb.p ], [ true, %bb.w ], [ true, %bb.x ], [ true, %bb.ab ], [ true, %bb.aa ], [ false, %bb.q ]
  %.8 = zext i1 %.8.shrunk to i8
  ret i8 %.8
}

declare noundef ptr @_ZNK6icu_785Norms7getNormEi(ptr noundef nonnull align 8 dereferenceable(424), i32 noundef) local_unnamed_addr #1

declare noundef signext i8 @_ZNK6icu_785Norms21combinesWithCCBetweenERKNS_4NormEhi(ptr noundef nonnull align 8 dereferenceable(424), ptr noundef nonnull align 8 dereferenceable(64), i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785Norms10getNormRefEi(ptr noundef nonnull align 8 dereferenceable(424), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6icu_784Norm7combineEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7822Normalizer2DataBuilder17mappingRecomposesERKNS_23BuilderReorderingBufferE(ptr noundef nonnull align 8 dereferenceable(868) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(133) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i32, ptr %i.a, align 4, !tbaa !56
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 124 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !54
  %.not4142 = icmp sgt i32 %i.e, 0
  br i1 %.not4142, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.preheader ] ; 3 uses
  %.02945 = phi ptr [ %.231, %bb.j ], [ null, %.preheader ] ; 3 uses
  %.03543 = phi i8 [ %i.i, %bb.j ], [ 0, %.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57   ; 2 uses
  %i.h = ashr i32 %i.g, 8                         ; 4 uses
  %i.i = trunc i32 %i.g to i8                     ; 3 uses
  %.not = icmp eq ptr %.02945, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = icmp ult i8 %.03543, %i.i
  %i.k = icmp eq i8 %.03543, 0
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_785Norms10getNormRefEi(ptr noundef nonnull align 8 dereferenceable(424) %0, i32 noundef %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 43
  %i.n = load i8, ptr %i.m, align 1, !tbaa !58
  %.not38 = icmp eq i8 %i.n, 0
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noundef i32 @_ZNK6icu_784Norm7combineEi(ptr noundef nonnull align 8 dereferenceable(64) %.02945, i32 noundef %i.h)
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %.lr.ph
end_hunk_0
