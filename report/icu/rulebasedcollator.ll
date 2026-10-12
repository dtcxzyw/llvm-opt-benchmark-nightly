Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rulebasedcollator?download=true
inline.NumInlined: 395
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7817RuleBasedCollator7compareERKNS_13UnicodeStringES3_iR10UErrorCode:bb.a
bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.y, %bb.g ], [ %i.w, %bb.f ], [ null, %bb.d ]
  %i.z = and i16 %i.n, 17
  %.not.i24 = icmp eq i16 %i.z, 0
  br i1 %.not.i24, label %bb.h, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit27

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.aa = and i16 %i.n, 2
  %.not2.i26 = icmp eq i16 %i.aa, 0
  br i1 %.not2.i26, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit27

bb.j:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit27

_ZNK6icu_7813UnicodeString9getBufferEv.exit27:    ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.i, %bb.j
  %.0.i25 = phi ptr [ %i.ad, %bb.j ], [ %i.ab, %bb.i ], [ null, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ]
  %i.ae = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator9doCompareEPKDsiS2_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %.0.i, i32 noundef %spec.select, ptr noundef %.0.i25, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZNK6icu_7813UnicodeString9getBufferEv.exit27, %bb.c
  %.020 = phi i32 [ %i.ae, %_ZNK6icu_7813UnicodeString9getBufferEv.exit27 ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.020
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817RuleBasedCollator7compareEPKDsiS2_iR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !33
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = icmp ne i32 %2, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null
  %i.f = icmp ne i32 %4, 0
  %or.cond3 = and i1 %i.e, %i.f
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4, !tbaa !33
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.g = icmp sgt i32 %2, -1
  br i1 %i.g, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = icmp slt i32 %4, 0
  br i1 %i.h, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @u_strlen_78(ptr noundef %3)
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.j = icmp sgt i32 %4, -1
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.k = tail call i32 @u_strlen_78(ptr noundef %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f, %bb.g
  %.021 = phi i32 [ %2, %bb.g ], [ %2, %bb.f ], [ %i.k, %bb.i ], [ %2, %bb.h ]
  %.020 = phi i32 [ %i.i, %bb.g ], [ %4, %bb.f ], [ %4, %bb.i ], [ %4, %bb.h ]
  %i.l = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator9doCompareEPKDsiS2_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %.021, ptr noundef %3, i32 noundef %.020, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j, %bb.d
  %.0 = phi i32 [ %i.l, %bb.j ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817RuleBasedCollator11compareUTF8ERKNS_11StringPieceES3_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !33
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !188    ; 3 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !188    ; 2 uses
  %i.e = icmp ne ptr %i.c, null
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  %or.cond = select i1 %i.e, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %i.d, null
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !189  ; 2 uses
  br i1 %i.h, label %bb.d, label %.split

.split:                                           ; preds = %bb.c
  %i.k = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator9doCompareEPKhiS2_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.c, i32 noundef %i.g, ptr noundef nonnull %i.d, i32 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %.not18 = icmp eq i32 %i.j, 0
  br i1 %.not18, label %.split14, label %bb.e

.split14:                                         ; preds = %bb.d
  %i.l = tail call noundef i32 @_ZNK6icu_7817RuleBasedCollator9doCompareEPKhiS2_iR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.c, i32 noundef %i.g, ptr noundef null, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.b, %bb.d
  store i32 1, ptr %3, align 4, !tbaa !33
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split14, %.split, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ %i.k, %.split ], [ %i.l, %.split14 ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK6icu_7817RuleBasedCollator9doCompareEPKhiS2_iR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  %6 = alloca %"class.icu_78::UTF8CollationIterator", align 8 ; 21 uses
  %7 = alloca %"class.icu_78::UTF8CollationIterator", align 8 ; 21 uses
  %8 = alloca %"class.icu_78::FCDUTF8CollationIterator", align 8 ; 26 uses
  %9 = alloca %"class.icu_78::FCDUTF8CollationIterator", align 8 ; 26 uses
  %10 = alloca %"class.icu_78::(anonymous namespace)::UTF8NFDIterator", align 8 ; 12 uses
  %11 = alloca %"class.icu_78::(anonymous namespace)::UTF8NFDIterator", align 8 ; 12 uses
  %12 = alloca %"class.icu_78::(anonymous namespace)::FCDUTF8NFDIterator", align 8 ; 31 uses
  %13 = alloca %"class.icu_78::(anonymous namespace)::FCDUTF8NFDIterator", align 8 ; 31 uses
  %i.b = icmp eq ptr %1, %3
  %i.c = icmp eq i32 %2, %4
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.bv, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.d = icmp slt i32 %2, 0
  br i1 %i.d, label %.preheader, label %.preheader250

.preheader250:                                    ; preds = %bb.b
  %i.e = icmp eq i32 %2, 0
  br i1 %i.e, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader250
  %sext = sext i32 %4 to i64
  %i.f = icmp eq i32 %4, 0
  br i1 %i.f, label %.critedge242, label %.lr.ph306

.preheader:                                       ; preds = %bb.b
  %i.g = load i8, ptr %1, align 1, !tbaa !63      ; 2 uses
  %i.h = load i8, ptr %3, align 1, !tbaa !63
  %.not211255 = icmp eq i8 %i.g, %i.h
  br i1 %.not211255, label %.lr.ph256, label %.critedge.thread

.critedge.thread:                                 ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !92
  %i.m = trunc i32 %i.l to i8
  %i.n = lshr i8 %i.m, 1
  %i.o = and i8 %i.n, 1
  br label %.critedge2

.lr.ph256:                                        ; preds = %.preheader, %bb.c
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %bb.c ], [ 0, %.preheader ]
  %i.p = phi i8 [ %i.t, %bb.c ], [ %i.g, %.preheader ]
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph256
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 4 uses
  %i.r = trunc nsw i64 %indvars.iv.next267 to i32 ; 3 uses
  store i32 %i.r, ptr %i.a, align 4, !tbaa !76
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next267
  %i.t = load i8, ptr %i.s, align 1, !tbaa !63    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next267
  %i.v = load i8, ptr %i.u, align 1, !tbaa !63
  %.not211 = icmp eq i8 %i.t, %i.v
  br i1 %.not211, label %.lr.ph256, label %bb.e, !llvm.loop !190

._crit_edge:                                      ; preds = %bb.d, %.preheader250
  %i.w = icmp eq i32 %2, %4
  br i1 %i.w, label %.loopexit, label %.critedge242

.lr.ph:                                           ; preds = %bb.d
  %i.x = icmp eq i64 %indvars.iv.next, %sext
  br i1 %i.x, label %.critedge242, label %.lr.ph306, !llvm.loop !191

.lr.ph306:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv305 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.pr272304 = phi i32 [ %i.ac, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv305
  %i.z = load i8, ptr %i.y, align 1, !tbaa !63
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv305
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !63
  %.not = icmp eq i8 %i.z, %i.ab
  br i1 %.not, label %bb.d, label %.critedge242

bb.d:                                             ; preds = %.lr.ph306
  %indvars.iv.next = add nuw nsw i64 %indvars.iv305, 1 ; 3 uses
  %i.ac = trunc nsw i64 %indvars.iv.next to i32   ; 4 uses
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !76
  %i.ad = icmp eq i32 %2, %i.ac
  br i1 %i.ad, label %._crit_edge, label %.lr.ph, !llvm.loop !191

.critedge242:                                     ; preds = %.lr.ph306, %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %.promoted257 = phi i32 [ %2, %._crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.ac, %.lr.ph ], [ %.pr272304, %.lr.ph306 ] ; 2 uses
  %14 = phi i32 [ %2, %._crit_edge ], [ %4, %.lr.ph.preheader ], [ %4, %.lr.ph ], [ %.pr272304, %.lr.ph306 ] ; 2 uses
  %i.ae = icmp sgt i32 %14, 0
  br i1 %i.ae, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.c, %.critedge242
  %15 = phi i32 [ %14, %.critedge242 ], [ %i.r, %bb.c ] ; 4 uses
  %.promoted257298 = phi i32 [ %.promoted257, %.critedge242 ], [ %i.r, %bb.c ] ; 5 uses
  %.not212 = icmp eq i32 %15, %2
  br i1 %.not212, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = zext nneg i32 %15 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !63
  %i.ai = icmp slt i8 %i.ah, -64
  br i1 %i.ai, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not213 = icmp eq i32 %15, %4
  br i1 %.not213, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = zext nneg i32 %15 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !63
  %i.am = icmp slt i8 %i.al, -64
  br i1 %i.am, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h, %bb.f
  %smin = tail call i32 @llvm.smin.i32(i32 %.promoted257298, i32 1)
  %i.an = add i32 %smin, -1                       ; 2 uses
  %i.ao = icmp sgt i32 %.promoted257298, 1
  br i1 %i.ao, label %.lr.ph312, label %.critedge.loopexit

.lr.ph312:                                        ; preds = %bb.i
  %i.ap = zext nneg i32 %.promoted257298 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.aq = icmp sgt i32 %i.av, 1
  br i1 %i.aq, label %bb.k, label %.critedge.loopexit, !llvm.loop !192

bb.k:                                             ; preds = %.lr.ph312, %bb.j
  %indvars.iv268310 = phi i64 [ %i.ap, %.lr.ph312 ], [ %indvars.iv.next269, %bb.j ]
  %indvars.iv.next269 = add nsw i64 %indvars.iv268310, -1 ; 3 uses
  %i.ar = and i64 %indvars.iv.next269, 4294967295
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !63
  %i.au = icmp slt i8 %i.at, -64
  %i.av = trunc i64 %indvars.iv.next269 to i32    ; 2 uses
  br i1 %i.au, label %bb.j, label %.critedge.loopexit, !llvm.loop !192

.critedge.loopexit:                               ; preds = %bb.j, %bb.k, %bb.i
  %.lcssa260 = phi i32 [ %i.an, %bb.i ], [ %i.an, %bb.j ], [ %i.av, %bb.k ] ; 2 uses
  store i32 %.lcssa260, ptr %i.a, align 4, !tbaa !76
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.h, %bb.g, %.critedge242
  %i.aw = phi i32 [ %.lcssa260, %.critedge.loopexit ], [ %.promoted257298, %bb.h ], [ %.promoted257298, %bb.g ], [ %.promoted257, %.critedge242 ] ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !92
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = lshr i8 %i.bb, 1
  %i.bd = and i8 %i.bc, 1                         ; 8 uses
  %i.be = icmp sgt i32 %i.aw, 0
  br i1 %i.be, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.critedge
  %.not214 = icmp eq i32 %i.aw, %2
  br i1 %.not214, label %.critedge244, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add nuw nsw i32 %i.aw, 1                ; 5 uses
  %i.bg = zext nneg i32 %i.aw to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !63  ; 6 uses
  %i.bj = zext i8 %i.bi to i32                    ; 4 uses
  %i.bk = icmp sgt i8 %i.bi, -1
  br i1 %i.bk, label %bb.ab, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not215 = icmp eq i32 %i.bf, %2
  br i1 %.not215, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = icmp samesign ugt i8 %i.bi, -33
  br i1 %i.bl, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp samesign ult i8 %i.bi, -16
  br i1 %i.bm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = and i32 %i.bj, 15                       ; 2 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !63
  %i.br = zext i8 %i.bq to i32
  %i.bs = zext nneg i32 %i.bf to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !63  ; 2 uses
  %i.bv = lshr i8 %i.bu, 5
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 1, %i.bw
  %i.by = and i32 %i.bx, %i.br
  %.not218 = icmp eq i32 %i.by, 0
  br i1 %.not218, label %bb.ab, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = and i8 %i.bu, 63
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.ca = add nsw i32 %i.bj, -240                 ; 2 uses
  %i.cb = icmp samesign ult i8 %i.bi, -11
  br i1 %i.cb, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cc = zext nneg i32 %i.bf to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !63
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = lshr i32 %i.cf, 4
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !63
  %i.ck = sext i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 1, %i.ca
  %i.cm = and i32 %i.cl, %i.ck
  %.not216 = icmp eq i32 %i.cm, 0
  br i1 %.not216, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = add nuw nsw i32 %i.aw, 2                ; 3 uses
  %.not217 = icmp eq i32 %i.cn, %2
  br i1 %.not217, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.co = shl nuw nsw i32 %i.ca, 6
  %i.cp = and i32 %i.cf, 63
  %i.cq = or disjoint i32 %i.cp, %i.co
  %i.cr = zext nneg i32 %i.cn to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !63
  %i.cu = xor i8 %i.ct, -128                      ; 2 uses
  %i.cv = icmp ult i8 %i.cu, 64
  br i1 %i.cv, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.r, %bb.v
  %.0169 = phi i32 [ %i.bf, %bb.r ], [ %i.cn, %bb.v ]
  %.0165 = phi i32 [ %i.bn, %bb.r ], [ %i.cq, %bb.v ]
  %.0164 = phi i8 [ %i.bz, %bb.r ], [ %i.cu, %bb.v ]
  %i.cw = shl nuw nsw i32 %.0165, 6
  %i.cx = zext nneg i8 %.0164 to i32
  %i.cy = or disjoint i32 %i.cw, %i.cx
  %i.cz = add nuw nsw i32 %.0169, 1               ; 2 uses
  %.not219 = icmp eq i32 %i.cz, %2
  br i1 %.not219, label %bb.ab, label %bb.z

bb.x:                                             ; preds = %bb.o
  %i.da = icmp samesign ugt i8 %i.bi, -63
  br i1 %i.da, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.db = and i32 %i.bj, 31
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.1170 = phi i32 [ %i.cz, %bb.w ], [ %i.bf, %bb.y ]
  %.1166 = phi i32 [ %i.cy, %bb.w ], [ %i.db, %bb.y ]
  %i.dc = zext nneg i32 %.1170 to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !63
  %i.df = xor i8 %i.de, -128                      ; 2 uses
  %i.dg = icmp ult i8 %i.df, 64
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dh = zext nneg i8 %i.df to i32
  %i.di = shl nuw nsw i32 %.1166, 6
  %i.dj = or disjoint i32 %i.di, %i.dh
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.q, %bb.n, %bb.m
  %.3168 = phi i32 [ %i.bj, %bb.m ], [ %i.dj, %bb.aa ], [ 65533, %bb.z ], [ 65533, %bb.x ], [ 65533, %bb.w ], [ 65533, %bb.v ], [ 65533, %bb.u ], [ 65533, %bb.t ], [ 65533, %bb.s ], [ 65533, %bb.q ], [ 65533, %bb.n ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !55
  %i.dm = tail call noundef signext i8 @_ZNK6icu_7813CollationData16isUnsafeBackwardEia(ptr noundef nonnull align 8 dereferenceable(140) %i.dl, i32 noundef %.3168, i8 noundef signext %i.bd)
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %.critedge244, label %.critedge246

.critedge244:                                     ; preds = %bb.l, %bb.ab
  %.not221 = icmp eq i32 %i.aw, %4
  br i1 %.not221, label %.critedge2, label %bb.ac

bb.ac:                                            ; preds = %.critedge244
  %i.do = add nuw nsw i32 %i.aw, 1                ; 5 uses
  %i.dp = zext nneg i32 %i.aw to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !63  ; 6 uses
  %i.ds = zext i8 %i.dr to i32                    ; 4 uses
  %i.dt = icmp sgt i8 %i.dr, -1
  br i1 %i.dt, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not222 = icmp eq i32 %i.do, %4
  br i1 %.not222, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.du = icmp samesign ugt i8 %i.dr, -33
  br i1 %i.du, label %bb.af, label %bb.an

bb.af:                                            ; preds = %bb.ae
  %i.dv = icmp samesign ult i8 %i.dr, -16
  br i1 %i.dv, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dw = and i32 %i.ds, 15                       ; 2 uses
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @.str.2, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !63
  %i.ea = zext i8 %i.dz to i32
  %i.eb = zext nneg i32 %i.do to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !63  ; 2 uses
  %i.ee = lshr i8 %i.ed, 5
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 1, %i.ef
  %i.eh = and i32 %i.eg, %i.ea
  %.not225 = icmp eq i32 %i.eh, 0
  br i1 %.not225, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ei = and i8 %i.ed, 63
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.ej = add nsw i32 %i.ds, -240                 ; 2 uses
  %i.ek = icmp samesign ult i8 %i.dr, -11
  br i1 %i.ek, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.el = zext nneg i32 %i.do to i64
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !63
  %i.eo = zext i8 %i.en to i32                    ; 2 uses
  %i.ep = lshr i32 %i.eo, 4
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !tbaa !63
  %i.et = sext i8 %i.es to i32
  %i.eu = shl nuw nsw i32 1, %i.ej
  %i.ev = and i32 %i.eu, %i.et
  %.not223 = icmp eq i32 %i.ev, 0
  br i1 %.not223, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
end_hunk_0
