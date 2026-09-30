Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationdatawriter?download=true
inline.NumInlined: 49
inline.NumDeleted: 25
begin_hunk_0_@_ZN6icu_7819CollationDataWriter9writeBaseERKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode:bb.a
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode(i8 noundef signext 1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(140) %0, ptr noundef nonnull align 8 dereferenceable(852) %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7819CollationDataWriter5writeEaPKhRKNS_13CollationDataERKNS_17CollationSettingsEPKviPiPhiR10UErrorCode(i8 noundef signext %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(852) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, ptr nofree noundef captures(none) %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %10 = alloca %"class.icu_78::UnicodeSet", align 8 ; 12 uses
  %11 = alloca %"class.icu_78::UVector32", align 8 ; 10 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %i.d = load i32, ptr %9, align 4, !tbaa !9
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.by

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i32 %8, 0
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ne i32 %8, 0
  %i.h = icmp eq ptr %7, null
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %9, align 4, !tbaa !9
  br label %bb.by

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %10)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46
  %.not242 = icmp eq ptr %i.l, null
  %. = select i1 %.not242, i32 0, i32 131072
  %.not243 = icmp eq i8 %0, 0                     ; 5 uses
  br i1 %.not243, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSetaSERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %10, ptr noundef nonnull align 8 dereferenceable(200) %i.n)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = load i32, ptr %i.p, align 8, !tbaa !48
  br label %bb.p

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.i:                                             ; preds = %bb.e
  %i.s = icmp eq ptr %i.j, null
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !50
  %i.v = icmp eq i32 %i.u, 0
  %.272 = select i1 %i.v, i32 2, i32 8
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !51
  %.not244 = icmp eq i32 %i.x, 0
  %spec.store.select = select i1 %.not244, i32 13, i32 15
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %10, ptr noundef nonnull align 8 dereferenceable(200) %i.z)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47
  %i.ad = invoke noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %i.aa, ptr noundef nonnull align 8 dereferenceable(200) %i.ac)
          to label %bb.m unwind label %bb.h       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.ae = invoke noundef signext i8 @_ZNK6icu_7810UnicodeSet7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(200) %10)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  %.not245 = icmp eq i8 %i.ae, 0
  %spec.select = select i1 %.not245, i32 16, i32 %spec.store.select
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  %.not246 = icmp eq ptr %i.af, %i.ah
  br i1 %.not246, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !48
  br label %bb.p

bb.p:                                             ; preds = %bb.j, %bb.o, %bb.n, %bb.g
  %.1225 = phi i32 [ 20, %bb.g ], [ %.272, %bb.j ], [ %spec.select, %bb.n ], [ 17, %bb.o ] ; 4 uses
  %.not250 = phi i1 [ false, %bb.g ], [ true, %bb.j ], [ false, %bb.n ], [ false, %bb.o ] ; 3 uses
  %.0221 = phi i32 [ %i.q, %bb.g ], [ 0, %bb.j ], [ 0, %bb.n ], [ %i.aj, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  invoke void @_ZN6icu_789UVector32C1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.an = load i32, ptr %i.am, align 8, !tbaa !50 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aq = invoke noundef signext i8 @_ZN6icu_7817CollationSettings25reorderTableHasSplitBytesEPKh(ptr noundef nonnull %i.ap)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  %.not248 = icmp eq i8 %i.aq, 0
  br i1 %.not248, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_ZNK6icu_7813CollationData17makeReorderRangesEPKiiRNS_9UVector32ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef %i.al, i32 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %.preheader unwind label %bb.v

.preheader:                                       ; preds = %bb.t
  %i.ar = icmp sgt i32 %i.an, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.an to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %i.as = load i32, ptr %9, align 4, !tbaa !9
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.y, label %bb.bu

bb.u:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.v:                                             ; preds = %bb.t, %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.w ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !36
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN6icu_789UVector3215insertElementAtEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %11, i32 noundef %i.ax, i32 noundef %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

bb.x:                                             ; preds = %.lr.ph
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.y:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !57
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.s, %bb.q
  %.0206 = phi ptr [ %i.bb, %bb.y ], [ %i.al, %bb.s ], [ %i.al, %bb.q ]
  %.0205 = phi i32 [ %i.bd, %bb.y ], [ %i.an, %bb.s ], [ %i.an, %bb.q ] ; 2 uses
  br i1 %.not243, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.be = load i32, ptr %1, align 1
  br i1 %.not250, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !58
  %.not251 = icmp eq i32 %i.bg, 0
  br i1 %.not251, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bh = add nsw i32 %.0205, %.1225
  %13 = shl i32 %i.bh, 2
  %14 = and i32 %13, 4
  %spec.select273 = or disjoint i32 %14, 24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.1200 = phi i32 [ %spec.select273, %bb.ac ], [ 24, %bb.ab ], [ 24, %bb.aa ] ; 7 uses
  %.not253 = icmp sgt i32 %.1200, %8
  br i1 %.not253, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bi = trunc nuw nsw i32 %.1200 to i16
  store i16 %i.bi, ptr %7, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 -38, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 39, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) @_ZN6icu_78L8dataInfoE, i64 16, i1 false)
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.be, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bk = add nsw i32 %.1200, -24
  %i.bl = zext nneg i32 %i.bk to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bj, i8 0, i64 %i.bl, i1 false)
  %i.bm = zext nneg i32 %.1200 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 %i.bm
  %i.bo = sub nsw i32 %8, %.1200
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.z
  %.1236 = phi ptr [ %7, %bb.z ], [ %i.bn, %bb.ae ], [ null, %bb.ad ] ; 12 uses
  %.1234 = phi i32 [ %8, %bb.z ], [ %i.bo, %bb.ae ], [ 0, %bb.ad ] ; 5 uses
  %.2201 = phi i32 [ 0, %bb.z ], [ %.1200, %bb.ae ], [ %.1200, %bb.ad ]
  store i32 %.1225, ptr %6, align 4, !tbaa !36
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !59
  %i.br = or i32 %i.bq, %.
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !60
  %i.bu = or i32 %i.br, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !36
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.bw, align 4, !tbaa !36
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !36
  %i.by = shl nuw nsw i32 %.1225, 2               ; 2 uses
  br i1 %.not250, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !61 ; 2 uses
  br i1 %.not243, label %bb.ah, label %._crit_edge305

bb.ah:                                            ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !61
  %.not255 = icmp eq ptr %i.ca, %i.cc
  br i1 %.not255, label %bb.ai, label %._crit_edge305

._crit_edge305:                                   ; preds = %bb.ag, %bb.ah
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !62
  %i.cf = ptrtoint ptr %i.ca to i64
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg
  %i.ci = lshr exact i64 %i.ch, 2
  %i.cj = trunc i64 %i.ci to i32
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah, %._crit_edge305
  %.sink = phi i32 [ %i.cj, %._crit_edge305 ], [ -1, %bb.ah ], [ -1, %bb.af ]
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sink, ptr %i.ck, align 4, !tbaa !36
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  store i32 %i.by, ptr %i.cl, align 4, !tbaa !36
  %i.cm = add i32 %.0205, %.1225
  %i.cn = shl i32 %i.cm, 2                        ; 3 uses
  %i.co = getelementptr i8, ptr %6, i64 24        ; 3 uses
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !36
  %i.cp = load ptr, ptr %i.ao, align 8, !tbaa !53
  %.not256 = icmp eq ptr %i.cp, null
  %i.cq = add nsw i32 %i.cn, 256
  %spec.select274 = select i1 %.not256, i32 %i.cn, i32 %i.cq ; 8 uses
  %i.cr = getelementptr i8, ptr %6, i64 28        ; 2 uses
  store i32 %spec.select274, ptr %i.cr, align 4, !tbaa !36
  br i1 %.not250, label %.thread299, label %.invoke

.invoke:                                          ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !9
  %i.cs = icmp slt i32 %spec.select274, %.1234    ; 2 uses
  %i.ct = load ptr, ptr %2, align 8, !tbaa !63
  %i.cu = sext i32 %spec.select274 to i64
  %i.cv = getelementptr inbounds i8, ptr %.1236, i64 %i.cu
  %i.cw = sub nsw i32 %.1234, %spec.select274
  %i.cx = select i1 %i.cs, ptr %i.cv, ptr null
  %i.cy = select i1 %i.cs, i32 %i.cw, i32 0
  %i.cz = invoke i32 @utrie2_serialize_78(ptr noundef %i.ct, ptr noundef %i.cx, i32 noundef %i.cy, ptr noundef nonnull %i.b)
          to label %bb.ak unwind label %bb.aj

bb.aj:                                            ; preds = %.invoke
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.bv

bb.ak:                                            ; preds = %.invoke
  %i.db = load i32, ptr %i.b, align 4, !tbaa !9   ; 3 uses
  %i.dc = icmp slt i32 %i.db, 1
  %i.dd = icmp eq i32 %i.db, 15
  %or.cond4.not = or i1 %i.dc, %i.dd
  br i1 %or.cond4.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %i.db, ptr %9, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.bu

bb.am:                                            ; preds = %bb.ak
  %i.de = add nsw i32 %i.cz, %spec.select274      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.de, ptr %i.df, align 4, !tbaa !36
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 3 uses
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !36
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !58
  %i.dj = shl i32 %i.di, 3
  %i.dk = add nsw i32 %i.dj, %i.de                ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !36
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 3 uses
  store i32 %i.dk, ptr %i.dm, align 4, !tbaa !36
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !64
  %i.dp = shl nsw i32 %i.do, 2
  %i.dq = add nsw i32 %i.dp, %i.dk                ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 3 uses
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !36
  %i.ds = shl nsw i32 %5, 2
  %i.dt = add nsw i32 %i.dq, %i.ds                ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 3 uses
  store i32 %i.dt, ptr %i.du, align 4, !tbaa !36
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !51
  %i.dx = shl nsw i32 %i.dw, 1
  %i.dy = add nsw i32 %i.dx, %i.dt                ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 %i.dy, ptr %i.dz, align 4, !tbaa !36
  %i.ea = invoke noundef signext i8 @_ZNK6icu_7810UnicodeSet7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(200) %10)
          to label %bb.an unwind label %bb.aq

.thread299:                                       ; preds = %bb.ai
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 36
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ee = insertelement <4 x i32> poison, i32 %spec.select274, i64 0
  %i.ef = shufflevector <4 x i32> %i.ee, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.ef, ptr %i.eb, align 4, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  store i32 %spec.select274, ptr %i.eg, align 4, !tbaa !36
  %i.eh = shl nsw i32 %5, 2
  %i.ei = add nsw i32 %spec.select274, %i.eh      ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 %i.ei, ptr %i.ej, align 4, !tbaa !36
  %i.ek = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !36
  br label %bb.ax

bb.an:                                            ; preds = %bb.am
  %.not260 = icmp eq i8 %i.ea, 0
  br i1 %.not260, label %bb.ao, label %bb.ax

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 0, ptr %i.c, align 4, !tbaa !9
  %i.el = icmp slt i32 %i.dy, %.1234
  br i1 %i.el, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.em = sext i32 %i.dy to i64
  %i.en = getelementptr inbounds i8, ptr %.1236, i64 %i.em
  %i.eo = sub nsw i32 %.1234, %i.dy
  %i.ep = lshr i32 %i.eo, 1
  %i.eq = invoke noundef i32 @_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %10, ptr noundef %i.en, i32 noundef %i.ep, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.au unwind label %bb.ar

bb.aq:                                            ; preds = %bb.am
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.ar:                                            ; preds = %bb.ap
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.as:                                            ; preds = %bb.ao
  %i.et = invoke noundef i32 @_ZNK6icu_7810UnicodeSet9serializeEPtiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %10, ptr noundef null, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.au unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.au:                                            ; preds = %bb.as, %bb.ap
  %.0 = phi i32 [ %i.eq, %bb.ap ], [ %i.et, %bb.as ]
  %i.ev = load i32, ptr %i.c, align 4, !tbaa !9   ; 3 uses
  %i.ew = icmp slt i32 %i.ev, 1
  %i.ex = icmp eq i32 %i.ev, 15
  %or.cond6.not = or i1 %i.ew, %i.ex
  br i1 %or.cond6.not, label %.thread301, label %bb.av

.thread301:                                       ; preds = %bb.au
  %i.ey = shl nsw i32 %.0, 1
  %i.ez = add nsw i32 %i.ey, %i.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.ax

bb.av:                                            ; preds = %bb.au
  store i32 %i.ev, ptr %9, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.bu

bb.aw:                                            ; preds = %bb.at, %bb.ar
end_hunk_0
