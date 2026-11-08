Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/stringtriebuilder?download=true
inline.NumInlined: 63
inline.NumDeleted: 20
begin_hunk_0_@_ZN6icu_7817StringTrieBuilder8makeNodeEiiiR10UErrorCode:bb.a
  br i1 %i.cu, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = load i32, ptr %4, align 4, !tbaa !17
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr %.072, align 8, !tbaa !10
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  tail call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %.072) #16, !inline_history !21
  br label %_ZN6icu_7817StringTrieBuilder21IntermediateValueNodeC2EiPNS0_4NodeE.exit

bb.y:                                             ; preds = %bb.w
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.dc = invoke ptr @uhash_find_78(ptr noundef %i.db, ptr noundef nonnull %.072)
          to label %.noexc unwind label %bb.ab    ; 2 uses

.noexc:                                           ; preds = %bb.y
  %.not18.i83 = icmp eq ptr %i.dc, null
  br i1 %.not18.i83, label %bb.z, label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85

bb.z:                                             ; preds = %.noexc
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !15
  %i.de = invoke i32 @uhash_puti_78(ptr noundef %i.dd, ptr noundef nonnull %.072, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc84 unwind label %bb.ab  ; 0 uses

.noexc84:                                         ; preds = %bb.z
  %i.df = load i32, ptr %4, align 4, !tbaa !17
  %i.dg = icmp slt i32 %i.df, 1
  br i1 %i.dg, label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85.thread93, label %bb.aa

bb.aa:                                            ; preds = %.noexc84
  %i.dh = load ptr, ptr %.072, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %.072) #16, !inline_history !21
  br label %_ZN6icu_7817StringTrieBuilder21IntermediateValueNodeC2EiPNS0_4NodeE.exit

_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85: ; preds = %.noexc
  %i.dk = load ptr, ptr %.072, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %.072) #16, !inline_history !21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !22 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %_ZN6icu_7817StringTrieBuilder21IntermediateValueNodeC2EiPNS0_4NodeE.exit, label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85.thread93

_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85.thread93: ; preds = %.noexc84, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85
  %.1.i8295 = phi ptr [ %i.do, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85 ], [ %.072, %.noexc84 ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i8295, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !19
  %i.ds = mul i32 %i.dr, 37
  %i.dt = add i32 %i.ds, -1232566318
  br label %_ZN6icu_7817StringTrieBuilder21IntermediateValueNodeC2EiPNS0_4NodeE.exit

_ZN6icu_7817StringTrieBuilder21IntermediateValueNodeC2EiPNS0_4NodeE.exit: ; preds = %bb.x, %bb.aa, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85.thread93
  %.1.i8292 = phi ptr [ %.1.i8295, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85.thread93 ], [ null, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85 ], [ null, %bb.aa ], [ null, %bb.x ]
  %i.du = phi i32 [ %i.dt, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85.thread93 ], [ -1232566318, %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit85 ], [ -1232566318, %bb.aa ], [ -1232566318, %bb.x ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.dw, align 4, !tbaa !23
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7817StringTrieBuilder21IntermediateValueNodeE, i64 16), ptr %i.ct, align 8, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %.1.i8292, ptr %i.dz, align 8, !tbaa !32
  store i8 1, ptr %i.dx, align 8, !tbaa !25
  store i32 %.074, ptr %i.dy, align 4, !tbaa !26
  %i.ea = add i32 %i.du, %.074
  store i32 %i.ea, ptr %i.dv, align 8, !tbaa !19
  br label %.thread

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.eb = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.ct) #16
  resume { ptr, i32 } %i.eb

.thread:                                          ; preds = %bb.p, %_ZN6icu_7817StringTrieBuilder21IntermediateValueNodeC2EiPNS0_4NodeE.exit, %bb.v, %bb.u, %bb.s
  %.173 = phi ptr [ %.072, %bb.u ], [ %.072, %bb.s ], [ null, %bb.v ], [ %i.ct, %_ZN6icu_7817StringTrieBuilder21IntermediateValueNodeC2EiPNS0_4NodeE.exit ], [ null, %bb.p ] ; 10 uses
  %i.ec = load i32, ptr %4, align 4, !tbaa !17
  %i.ed = icmp slt i32 %i.ec, 1
  %i.ee = icmp eq ptr %.173, null                 ; 2 uses
  br i1 %i.ed, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.thread
  br i1 %i.ee, label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit88, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = load ptr, ptr %.173, align 8, !tbaa !10
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %.173) #16, !inline_history !21
  br label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit88

bb.ae:                                            ; preds = %.thread
  br i1 %i.ee, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 7, ptr %4, align 4, !tbaa !17
  br label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit88

bb.ag:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !15
  %i.ek = tail call ptr @uhash_find_78(ptr noundef %i.ej, ptr noundef nonnull %.173) ; 2 uses
  %.not18.i87 = icmp eq ptr %i.ek, null
  br i1 %.not18.i87, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.el = load ptr, ptr %.173, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %.173) #16, !inline_history !21
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !22
  br label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit88

bb.ai:                                            ; preds = %bb.ag
  %i.eq = load ptr, ptr %i.ei, align 8, !tbaa !15
  %i.er = tail call i32 @uhash_puti_78(ptr noundef %i.eq, ptr noundef nonnull %.173, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  %i.es = load i32, ptr %4, align 4, !tbaa !17
  %i.et = icmp slt i32 %i.es, 1
  br i1 %i.et, label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit88, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eu = load ptr, ptr %.173, align 8, !tbaa !10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(16) %.173) #16, !inline_history !21
  br label %_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit88

_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode.exit88: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.n, %bb.d ], [ null, %bb.ac ], [ null, %bb.af ], [ null, %bb.ad ], [ %i.ep, %bb.ah ], [ null, %bb.aj ], [ %.173, %bb.ai ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7817StringTrieBuilder18writeBranchSubNodeEiiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [14 x i16], align 16              ; 4 uses
  %i.b = alloca [14 x i32], align 16              ; 4 uses
  %i.c = alloca [5 x i32], align 16               ; 7 uses
  %i.d = alloca [4 x i8], align 1                 ; 5 uses
  %i.e = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.j = icmp sgt i32 %4, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %.06479 = phi i32 [ %i.o, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.06877 = phi i32 [ %i.w, %.lr.ph ], [ %4, %bb.a ] ; 2 uses
  %i.k = sdiv i32 %.06877, 2                      ; 3 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.06479, i32 noundef %3, i32 noundef %i.k) ; 4 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i16 %i.r(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.o, i32 noundef %3)
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv
  store i16 %i.s, ptr %i.t, align 2, !tbaa !34
  %i.u = tail call noundef i32 @_ZN6icu_7817StringTrieBuilder18writeBranchSubNodeEiiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.06479, i32 noundef %i.o, i32 noundef %3, i32 noundef %i.k)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store i32 %i.u, ptr %i.v, align 4, !tbaa !35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = sub nsw i32 %.06877, %i.k                ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.ab = icmp sgt i32 %i.w, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ac = trunc nuw i64 %indvars.iv.next to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.068.lcssa = phi i32 [ %4, %bb.a ], [ %i.w, %._crit_edge.loopexit ] ; 3 uses
  %.066.lcssa = phi i32 [ 0, %bb.a ], [ %i.ac, %._crit_edge.loopexit ] ; 2 uses
  %.064.lcssa = phi i32 [ %1, %bb.a ], [ %i.o, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  %i.ad = add nsw i32 %3, 1                       ; 3 uses
  %i.ae = add i32 %.068.lcssa, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %._crit_edge
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.d ], [ 1, %._crit_edge ] ; 2 uses
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.d ], [ 0, %._crit_edge ] ; 3 uses
  %.165 = phi i32 [ %i.ao, %bb.d ], [ %.064.lcssa, %._crit_edge ] ; 5 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv97
  store i32 %.165, ptr %i.af, align 4, !tbaa !35
  %i.ag = add nsw i32 %.165, 1
  %i.ah = load ptr, ptr %0, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef zeroext i16 %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.165, i32 noundef %3)
  %i.al = load ptr, ptr %0, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ag, i32 noundef %3, i16 noundef zeroext %i.ak) ; 5 uses
  %i.ap = add nsw i32 %i.ao, -1
  %i.aq = icmp eq i32 %.165, %i.ap
  br i1 %i.aq, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %0, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef i32 %i.at(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.165)
  %i.av = icmp eq i32 %i.ad, %i.au
  %i.aw = zext i1 %i.av to i8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = phi i8 [ 0, %bb.b ], [ %i.aw, %bb.c ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv97
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !22
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  br i1 %exitcond.not, label %bb.e, label %bb.b, !llvm.loop !56

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %wide.trip.count
  store i32 %i.ao, ptr %i.az, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %bb.h ], [ %indvars.iv100, %bb.e ] ; 3 uses
  %indvars.iv.next103 = add nsw i64 %indvars.iv102, -1 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next103
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !22
  %.not = icmp eq i8 %i.bb, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next103
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !35
  %i.be = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv102
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !35
  %i.bg = tail call noundef i32 @_ZN6icu_7817StringTrieBuilder9writeNodeEiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bd, i32 noundef %i.bf, i32 noundef %i.ad)
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv.next103
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %5 = icmp sgt i64 %indvars.iv102, 1
  br i1 %5, label %bb.f, label %bb.i, !llvm.loop !57

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call noundef i32 @_ZN6icu_7817StringTrieBuilder9writeNodeEiii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ao, i32 noundef %2, i32 noundef %i.ad) ; 0 uses
  %i.bj = load ptr, ptr %0, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef zeroext i16 %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.ao, i32 noundef %3)
  %i.bn = zext i16 %i.bm to i32
  %i.bo = load ptr, ptr %0, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = tail call noundef i32 %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.bn) ; 2 uses
  %i.bs = icmp sgt i32 %.068.lcssa, 1
  br i1 %i.bs, label %.lr.ph84.preheader, label %.preheader

.lr.ph84.preheader:                               ; preds = %bb.i
  %i.bt = add nsw i32 %.068.lcssa, -2
  %i.bu = zext nneg i32 %i.bt to i64
  br label %.lr.ph84

.preheader:                                       ; preds = %bb.l, %bb.i
  %.061.lcssa = phi i32 [ %i.br, %bb.i ], [ %i.cu, %bb.l ]
  %i.bv = icmp sgt i32 %.066.lcssa, 0
  br i1 %i.bv, label %.lr.ph87.preheader, label %._crit_edge88

.lr.ph87.preheader:                               ; preds = %.preheader
  %i.bw = zext nneg i32 %.066.lcssa to i64
  br label %.lr.ph87

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %bb.l
  %indvars.iv105 = phi i64 [ %i.bu, %.lr.ph84.preheader ], [ %indvars.iv.next106, %bb.l ] ; 5 uses
  %.06182 = phi i32 [ %i.br, %.lr.ph84.preheader ], [ %i.cu, %bb.l ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv105
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !35 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv105
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !22  ; 2 uses
  %.not74 = icmp eq i8 %i.ca, 0
  br i1 %.not74, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph84
  %i.cb = load ptr, ptr %0, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = tail call noundef i32 %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.by)
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph84
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv105
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !35
  %i.ch = sub nsw i32 %.06182, %i.cg
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i32 [ %i.ce, %bb.j ], [ %i.ch, %bb.k ]
  %i.ci = load ptr, ptr %0, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = tail call noundef i32 %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.0, i8 noundef signext %i.ca) ; 0 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = tail call noundef zeroext i16 %i.co(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.by, i32 noundef %3)
  %i.cq = zext i16 %i.cp to i32
  %i.cr = load ptr, ptr %0, align 8, !tbaa !10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.cq) ; 2 uses
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, -1
  %i.cv = icmp sgt i64 %indvars.iv105, 0
  br i1 %i.cv, label %.lr.ph84, label %.preheader, !llvm.loop !58

.lr.ph87:                                         ; preds = %.lr.ph87.preheader, %.lr.ph87
  %indvars.iv108 = phi i64 [ %i.bw, %.lr.ph87.preheader ], [ %indvars.iv.next109, %.lr.ph87 ] ; 2 uses
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, -1 ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next109
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !35
  %i.cy = load ptr, ptr %0, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 152
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef i32 %i.da(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.cx) ; 0 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.next109
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !34
  %i.de = zext i16 %i.dd to i32
  %i.df = load ptr, ptr %0, align 8, !tbaa !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 120
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef i32 %i.dh(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %i.de)
  %i.dj = icmp samesign ugt i64 %indvars.iv108, 1
  br i1 %i.dj, label %.lr.ph87, label %._crit_edge88, !llvm.loop !59

._crit_edge88:                                    ; preds = %.lr.ph87, %.preheader
  %.1.lcssa = phi i32 [ %.061.lcssa, %.preheader ], [ %i.di, %.lr.ph87 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.1.lcssa
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7817StringTrieBuilder18registerFinalValueEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::StringTrieBuilder::FinalValueNode", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.c = add i32 %1, 41383797                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.c, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.e, align 4, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7817StringTrieBuilder14FinalValueNodeE, i64 16), ptr %3, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %1, ptr %i.f, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.i = invoke ptr @uhash_find_78(ptr noundef %i.h, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.j       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.l = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 24) #16 ; 9 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %2, align 4, !tbaa !17
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.c, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_7817StringTrieBuilder14FinalValueNodeE, i64 16), ptr %i.l, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %1, ptr %i.p, align 8, !tbaa !37
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.r = invoke i32 @uhash_puti_78(ptr noundef %i.q, ptr noundef nonnull %i.l, i32 noundef 1, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.j       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.s = load i32, ptr %2, align 4, !tbaa !17
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #16
  br label %bb.k

bb.j:                                             ; preds = %bb.b, %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  resume { ptr, i32 } %i.x

bb.k:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.d
  %.1 = phi ptr [ %i.k, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ %i.l, %bb.h ]
  call void @_ZN6icu_787UObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.2 = phi ptr [ %.1, %bb.k ], [ null, %bb.a ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7817StringTrieBuilder12registerNodeEPNS0_4NodeER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !17
  %i.b = icmp slt i32 %i.a, 1
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %1, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  br label %bb.j
end_hunk_0
