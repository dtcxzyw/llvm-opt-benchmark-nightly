inline.NumInlined: 13178
inline.NumDeleted: 2935
begin_hunk_0_@_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPc:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(24) %.06.i, ptr noundef %0) #27, !inline_history !357
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPS1_.exit, label %.lr.ph.i, !llvm.loop !358

_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPS1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  ret ptr %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %.not5 = icmp eq ptr %1, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.e, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.06, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(24) %.06, ptr noundef %0) #27
  %i.d = getelementptr inbounds nuw i8, ptr %.06, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !358

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11Relocatable7IterateEPNS0_7IsolateEPNS0_11RootVisitorE(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 59768
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPS1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.c = load ptr, ptr %.06.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %.06.i, ptr noundef %1) #27, !inline_history !357
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPS1_.exit, label %.lr.ph.i, !llvm.loop !358

_ZN2v88internal11Relocatable7IterateEPNS0_11RootVisitorEPS1_.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal7JSArray33ArrayJoinConcatToSequentialStringEPNS0_7IsolateEmlmm(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef returned %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::DisallowJavascriptExecution", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @_ZN2v88internal27DisallowJavascriptExecutionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef %0) #27
  %i.a = add i64 %4, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load atomic volatile i64, ptr %i.b acquire, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = and i16 %i.f, -113
  %or.cond = icmp eq i16 %i.g, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.i = add i64 %3, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4              ; 11 uses
  br i1 %or.cond, label %bb.b, label %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.c, label %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i

bb.c:                                             ; preds = %bb.b
  %i.n = load atomic volatile i64, ptr %i.j acquire, align 8
  %i.o = add i64 %i.n, 11
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i16, ptr %i.p monotonic, align 2
  %i.r = and i16 %i.q, -113
  %or.cond150.i = icmp eq i16 %i.r, 8
  br i1 %or.cond150.i, label %bb.d, label %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i

bb.d:                                             ; preds = %bb.c
  %i.s = load atomic volatile i64, ptr %i.j acquire, align 8
  %i.t = add i64 %i.s, 11
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i16, ptr %i.u monotonic, align 2
  %i.w = and i16 %i.v, -113
  %or.cond152.i = icmp eq i16 %i.w, 8
  br i1 %or.cond152.i, label %bb.e, label %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread.i, !prof !341

_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread.i: ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.412) #28
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.k, align 4
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.413) #28
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.aa = load i8, ptr %i.z, align 1
  br label %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i

_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i: ; preds = %bb.g, %bb.c, %bb.b
  %i.ab = phi i1 [ true, %bb.g ], [ false, %bb.c ], [ false, %bb.b ]
  %.087.i = phi i8 [ %i.aa, %bb.g ], [ undef, %bb.c ], [ undef, %bb.b ]
  %i.ac = icmp sgt i32 %i.l, 0
  %i.ad = zext nneg i32 %i.l to i64
  %i.ae = sext i32 %i.l to i64                    ; 2 uses
  %i.af = sub nsw i64 0, %i.ae
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge164.i, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i
  %.sroa.0111.0.i = phi i64 [ 0, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i ], [ %.sroa.0111.1.lcssa.i, %._crit_edge164.i ] ; 2 uses
  %.sroa.0112.0.i = phi i64 [ %1, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i ], [ %i.aj, %._crit_edge164.i ]
  %.088.i = phi i32 [ 0, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i ], [ %.189.lcssa.i, %._crit_edge164.i ] ; 2 uses
  %.0.i = phi ptr [ %i.h, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit108.thread.i ], [ %.1.lcssa.i, %._crit_edge164.i ] ; 2 uses
  %i.ag = add i64 %.sroa.0112.0.i, -1
  %i.ah = inttoptr i64 %i.ag to ptr               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = load atomic volatile i64, ptr %i.ai monotonic, align 8 ; 2 uses
  %i.ak = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 10624
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = icmp eq i64 %i.aj, %i.ao                ; 2 uses
  br i1 %i.ap, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = lshr i64 %i.ar, 32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.in66 = phi i64 [ %i.as, %bb.i ], [ %2, %bb.h ] ; 2 uses
  %i.at = trunc i64 %.in66 to i32                 ; 3 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.414) #28
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = lshr i64 %i.aw, 32
  %i.ay = trunc nuw i64 %i.ax to i32
  %.not153.i = icmp sgt i32 %i.at, %i.ay
  br i1 %.not153.i, label %bb.m, label %.preheader154.i, !prof !5

.preheader154.i:                                  ; preds = %bb.l
  %.not168.i = icmp eq i32 %i.at, 1
  br i1 %.not168.i, label %._crit_edge164.i, label %.lr.ph163.preheader.i

.lr.ph163.preheader.i:                            ; preds = %.preheader154.i
  %wide.trip.count.i = and i64 %.in66, 2147483647
  br label %.lr.ph163.i

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.415) #28
  unreachable

._crit_edge164.i:                                 ; preds = %bb.v, %.preheader154.i
  %.sroa.0111.1.lcssa.i = phi i64 [ %.sroa.0111.0.i, %.preheader154.i ], [ %i.ba, %bb.v ]
  %.189.lcssa.i = phi i32 [ %.088.i, %.preheader154.i ], [ %.694.i, %bb.v ]
  %.1.lcssa.i = phi ptr [ %.0.i, %.preheader154.i ], [ %.8.i, %bb.v ]
  br i1 %i.ap, label %_ZN2v88internal12_GLOBAL__N_120WriteChunkListToFlatIhEEvNS0_6TaggedINS0_10FixedArrayEEEiNS3_INS0_6StringEEEPT_i.exit, label %bb.h

.lr.ph163.i:                                      ; preds = %bb.v, %.lr.ph163.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph163.preheader.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %.1162.i = phi ptr [ %.0.i, %.lr.ph163.preheader.i ], [ %.8.i, %bb.v ] ; 4 uses
  %.189161.i = phi i32 [ %.088.i, %.lr.ph163.preheader.i ], [ %.694.i, %bb.v ] ; 2 uses
  %.sroa.0111.1159.i = phi i64 [ %.sroa.0111.0.i, %.lr.ph163.preheader.i ], [ %i.ba, %bb.v ]
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %indvars.iv.i
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 6 uses
  %i.bb = and i64 %i.ba, 1
  %i.bc = icmp eq i64 %i.bb, 0                    ; 2 uses
  br i1 %i.bc, label %bb.n, label %bb.o, !prof !5

bb.n:                                             ; preds = %.lr.ph163.i
  %i.bd = lshr i64 %i.ba, 32
  %i.be = trunc nuw i64 %i.bd to i32              ; 3 uses
  %i.bf = icmp sgt i32 %i.be, 0                   ; 2 uses
  %6 = sub nsw i32 0, %i.be
  %.297.i = select i1 %i.bf, i32 0, i32 %6
  %.290.i = select i1 %i.bf, i32 %i.be, i32 %.189161.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph163.i
  %.398.i = phi i32 [ %.297.i, %bb.n ], [ 0, %.lr.ph163.i ] ; 2 uses
  %.391.i = phi i32 [ %.290.i, %bb.n ], [ %.189161.i, %.lr.ph163.i ] ; 4 uses
  %i.bg = icmp ne i32 %.391.i, 0
  %or.cond.i = and i1 %i.ac, %i.bg
  br i1 %or.cond.i, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  br i1 %i.ab, label %bb.q, label %.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.bh = zext i32 %.391.i to i64                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.1162.i, i8 %.087.i, i64 %i.bh, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.1162.i, i64 %i.bh
  br label %.loopexit.i

.preheader.i:                                     ; preds = %bb.p, %.preheader.i
  %.2156.i = phi ptr [ %i.bj, %.preheader.i ], [ %.1162.i, %bb.p ] ; 2 uses
  %.0102155.i = phi i32 [ %i.bk, %.preheader.i ], [ 0, %bb.p ]
  call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %3, ptr noundef %.2156.i, i32 noundef 0, i32 noundef %i.l) #27
  %i.bj = getelementptr inbounds nuw i8, ptr %.2156.i, i64 %i.ad ; 2 uses
  %i.bk = add nuw i32 %.0102155.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bk, %.391.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !359

.loopexit.i:                                      ; preds = %.preheader.i, %bb.q, %bb.o
  %.492.i = phi i32 [ %.391.i, %bb.o ], [ 0, %bb.q ], [ 0, %.preheader.i ]
  %.4.i = phi ptr [ %.1162.i, %bb.o ], [ %i.bi, %bb.q ], [ %i.bj, %.preheader.i ] ; 4 uses
  %.not.i = icmp eq i32 %.398.i, 0
  br i1 %.not.i, label %bb.t, label %bb.r, !prof !28

bb.r:                                             ; preds = %.loopexit.i
  %i.bl = add i64 %.sroa.0111.1159.i, -1
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add nsw i32 %i.bo, %i.l                 ; 3 uses
  %i.bq = mul i32 %i.bp, %.398.i
  %i.br = zext i32 %i.bq to i64
  %i.bs = sub nsw i64 %i.br, %i.ae                ; 2 uses
  %i.bt = getelementptr inbounds i8, ptr %.4.i, i64 %i.bs ; 2 uses
  %i.bu = sext i32 %i.bp to i64                   ; 3 uses
  %i.bv = icmp sgt i64 %i.bs, %i.bu
  br i1 %i.bv, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.bw = sub nsw i64 0, %i.bu
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.bx = phi i64 [ %i.cd, %.lr.ph.i ], [ %i.bw, %.lr.ph.preheader.i ]
  %i.by = phi i64 [ %i.cc, %.lr.ph.i ], [ %i.bu, %.lr.ph.preheader.i ] ; 2 uses
  %.5158.i = phi ptr [ %i.ca, %.lr.ph.i ], [ %.4.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0103157.i = phi i32 [ %i.cb, %.lr.ph.i ], [ %i.bp, %.lr.ph.preheader.i ]
  %i.bz = getelementptr inbounds i8, ptr %.5158.i, i64 %i.bx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.5158.i, ptr align 1 %i.bz, i64 %i.by, i1 false)
  %i.ca = getelementptr inbounds i8, ptr %.5158.i, i64 %i.by ; 3 uses
  %i.cb = shl nsw i32 %.0103157.i, 1              ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = sub nsw i64 0, %i.cc                    ; 2 uses
  %i.ce = getelementptr inbounds i8, ptr %i.bt, i64 %i.cd
  %i.cf = icmp ult ptr %i.ca, %i.ce
  br i1 %i.cf, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !360

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.r
  %.5.lcssa.i = phi ptr [ %.4.i, %bb.r ], [ %i.ca, %.lr.ph.i ] ; 5 uses
  %i.cg = ptrtoint ptr %i.bt to i64
  %i.ch = ptrtoint ptr %.5.lcssa.i to i64
  %i.ci = sub i64 %i.cg, %i.ch                    ; 2 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.i
  %i.cl = and i64 %i.ci, 2147483647               ; 3 uses
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr inbounds i8, ptr %.5.lcssa.i, i64 %i.cm
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.af
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.5.lcssa.i, ptr align 1 %i.co, i64 %i.cl, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.5.lcssa.i, i64 %i.cl
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i, %.loopexit.i
  %.593.i = phi i32 [ %.492.i, %.loopexit.i ], [ 1, %bb.s ], [ 1, %._crit_edge.i ]
  %.7.i = phi ptr [ %.4.i, %.loopexit.i ], [ %i.cp, %bb.s ], [ %.5.lcssa.i, %._crit_edge.i ] ; 3 uses
  br i1 %i.bc, label %bb.v, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.cq = add nsw i64 %i.ba, -1
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.ct = load i32, ptr %i.cs, align 4            ; 2 uses
  call void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.ba, ptr noundef %.7.i, i32 noundef 0, i32 noundef %i.ct) #27
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %.7.i, i64 %i.cu
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.694.i = phi i32 [ 1, %bb.u ], [ %.593.i, %bb.t ] ; 2 uses
  %.8.i = phi ptr [ %i.cv, %bb.u ], [ %.7.i, %bb.t ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond172.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond172.not.i, label %._crit_edge164.i, label %.lr.ph163.i, !llvm.loop !361

_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread: ; preds = %bb.a
  %i.cw = icmp sgt i32 %i.l, 0
  %i.cx = zext nneg i32 %i.l to i64
  %i.cy = sext i32 %i.l to i64                    ; 2 uses
  %i.cz = sub nsw i64 0, %i.cy
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge139.i, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread
  %.sroa.0110.0.i = phi i64 [ 0, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread ], [ %.sroa.0110.1.lcssa.i, %._crit_edge139.i ] ; 2 uses
  %.sroa.0111.0.i20 = phi i64 [ %1, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread ], [ %i.dd, %._crit_edge139.i ]
  %.088.i21 = phi i32 [ 0, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread ], [ %.189.lcssa.i39, %._crit_edge139.i ] ; 2 uses
  %.0.i22 = phi ptr [ %i.h, %_ZNK2v88internal11StringShape19IsSequentialOneByteEv.exit.thread ], [ %.1.lcssa.i40, %._crit_edge139.i ] ; 2 uses
  %i.da = add i64 %.sroa.0111.0.i20, -1
  %i.db = inttoptr i64 %i.da to ptr               ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8 ; 2 uses
  %i.de = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 10624
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = icmp eq i64 %i.dd, %i.di                ; 2 uses
  br i1 %i.dj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = lshr i64 %i.dl, 32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.in = phi i64 [ %i.dm, %bb.x ], [ %2, %bb.w ]  ; 2 uses
  %i.dn = trunc i64 %.in to i32                   ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %bb.aa, label %bb.z, !prof !28

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.414) #28
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = lshr i64 %i.dq, 32
  %i.ds = trunc nuw i64 %i.dr to i32
  %.not128.i = icmp sgt i32 %i.dn, %i.ds
  br i1 %.not128.i, label %bb.ab, label %.preheader129.i, !prof !5

.preheader129.i:                                  ; preds = %bb.aa
  %.not143.i = icmp eq i32 %i.dn, 1
  br i1 %.not143.i, label %._crit_edge139.i, label %.lr.ph138.preheader.i

.lr.ph138.preheader.i:                            ; preds = %.preheader129.i
  %wide.trip.count.i23 = and i64 %.in, 2147483647
  br label %.lr.ph138.i

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.415) #28
  unreachable

._crit_edge139.i:                                 ; preds = %bb.ai, %.preheader129.i
  %.sroa.0110.1.lcssa.i = phi i64 [ %.sroa.0110.0.i, %.preheader129.i ], [ %i.du, %bb.ai ]
  %.189.lcssa.i39 = phi i32 [ %.088.i21, %.preheader129.i ], [ %.694.i36, %bb.ai ]
  %.1.lcssa.i40 = phi ptr [ %.0.i22, %.preheader129.i ], [ %.8.i37, %bb.ai ]
  br i1 %i.dj, label %_ZN2v88internal12_GLOBAL__N_120WriteChunkListToFlatIhEEvNS0_6TaggedINS0_10FixedArrayEEEiNS3_INS0_6StringEEEPT_i.exit, label %bb.w

.lr.ph138.i:                                      ; preds = %bb.ai, %.lr.ph138.preheader.i
  %indvars.iv.i24 = phi i64 [ 1, %.lr.ph138.preheader.i ], [ %indvars.iv.next.i38, %bb.ai ] ; 2 uses
  %.1137.i = phi ptr [ %.0.i22, %.lr.ph138.preheader.i ], [ %.8.i37, %bb.ai ] ; 2 uses
  %.189136.i = phi i32 [ %.088.i21, %.lr.ph138.preheader.i ], [ %.694.i36, %bb.ai ] ; 2 uses
  %.sroa.0110.1134.i = phi i64 [ %.sroa.0110.0.i, %.lr.ph138.preheader.i ], [ %i.du, %bb.ai ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.i24
  %i.du = load atomic volatile i64, ptr %i.dt monotonic, align 8 ; 6 uses
  %i.dv = and i64 %i.du, 1
  %i.dw = icmp eq i64 %i.dv, 0                    ; 2 uses
  br i1 %i.dw, label %bb.ac, label %bb.ad, !prof !5

bb.ac:                                            ; preds = %.lr.ph138.i
  %i.dx = lshr i64 %i.du, 32
  %i.dy = trunc nuw i64 %i.dx to i32              ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 0                   ; 2 uses
  %7 = sub nsw i32 0, %i.dy
  %.297.i45 = select i1 %i.dz, i32 0, i32 %7
  %.290.i46 = select i1 %i.dz, i32 %i.dy, i32 %.189136.i
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph138.i
  %.398.i25 = phi i32 [ %.297.i45, %bb.ac ], [ 0, %.lr.ph138.i ] ; 2 uses
  %.391.i26 = phi i32 [ %.290.i46, %bb.ac ], [ %.189136.i, %.lr.ph138.i ] ; 3 uses
  %i.ea = icmp ne i32 %.391.i26, 0
  %or.cond.i27 = and i1 %i.cw, %i.ea
  br i1 %or.cond.i27, label %.preheader.i43, label %.loopexit.i28

.preheader.i43:                                   ; preds = %bb.ad, %.preheader.i43
  %.2131.i = phi ptr [ %i.eb, %.preheader.i43 ], [ %.1137.i, %bb.ad ] ; 2 uses
  %.0102130.i = phi i32 [ %i.ec, %.preheader.i43 ], [ 0, %bb.ad ]
  call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %3, ptr noundef %.2131.i, i32 noundef 0, i32 noundef %i.l) #27
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %.2131.i, i64 %i.cx ; 2 uses
  %i.ec = add nuw i32 %.0102130.i, 1              ; 2 uses
  %exitcond.not.i44 = icmp eq i32 %i.ec, %.391.i26
  br i1 %exitcond.not.i44, label %.loopexit.i28, label %.preheader.i43, !llvm.loop !362

.loopexit.i28:                                    ; preds = %.preheader.i43, %bb.ad
  %.492.i29 = phi i32 [ %.391.i26, %bb.ad ], [ 0, %.preheader.i43 ]
  %.4.i30 = phi ptr [ %.1137.i, %bb.ad ], [ %i.eb, %.preheader.i43 ] ; 4 uses
  %.not.i31 = icmp eq i32 %.398.i25, 0
  br i1 %.not.i31, label %bb.ag, label %bb.ae, !prof !28

bb.ae:                                            ; preds = %.loopexit.i28
  %i.ed = add i64 %.sroa.0110.1134.i, -1
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = add nsw i32 %i.eg, %i.l                 ; 3 uses
  %i.ei = mul i32 %i.eh, %.398.i25
  %i.ej = zext i32 %i.ei to i64
  %.idx146.i = sub nsw i64 %i.ej, %i.cy           ; 2 uses
  %i.ek = shl nsw i64 %.idx146.i, 1
  %i.el = getelementptr inbounds i8, ptr %.4.i30, i64 %i.ek ; 2 uses
  %i.em = sext i32 %i.eh to i64                   ; 3 uses
  %i.en = icmp sgt i64 %.idx146.i, %i.em
  br i1 %i.en, label %.lr.ph.preheader.i41, label %._crit_edge.i32

.lr.ph.preheader.i41:                             ; preds = %bb.ae
  %i.eo = sub nsw i64 0, %i.em
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i41
  %i.ep = phi i64 [ %i.ew, %.lr.ph.i42 ], [ %i.eo, %.lr.ph.preheader.i41 ]
  %i.eq = phi i64 [ %i.ev, %.lr.ph.i42 ], [ %i.em, %.lr.ph.preheader.i41 ] ; 2 uses
  %.5133.i = phi ptr [ %i.et, %.lr.ph.i42 ], [ %.4.i30, %.lr.ph.preheader.i41 ] ; 3 uses
  %.0103132.i = phi i32 [ %i.eu, %.lr.ph.i42 ], [ %i.eh, %.lr.ph.preheader.i41 ]
  %i.er = getelementptr inbounds [2 x i8], ptr %.5133.i, i64 %i.ep
  %i.es = shl nsw i64 %i.eq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.5133.i, ptr align 2 %i.er, i64 %i.es, i1 false)
  %i.et = getelementptr inbounds [2 x i8], ptr %.5133.i, i64 %i.eq ; 3 uses
  %i.eu = shl nsw i32 %.0103132.i, 1              ; 2 uses
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %i.ew = sub nsw i64 0, %i.ev                    ; 2 uses
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.ew
  %i.ey = icmp ult ptr %i.et, %i.ex
  br i1 %i.ey, label %.lr.ph.i42, label %._crit_edge.i32, !llvm.loop !363

._crit_edge.i32:                                  ; preds = %.lr.ph.i42, %bb.ae
  %.5.lcssa.i33 = phi ptr [ %.4.i30, %bb.ae ], [ %i.et, %.lr.ph.i42 ] ; 5 uses
  %i.ez = ptrtoint ptr %i.el to i64
  %i.fa = ptrtoint ptr %.5.lcssa.i33 to i64
  %i.fb = sub i64 %i.ez, %i.fa
  %i.fc = lshr exact i64 %i.fb, 1                 ; 2 uses
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %._crit_edge.i32
  %i.ff = and i64 %i.fc, 2147483647               ; 3 uses
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr inbounds [2 x i8], ptr %.5.lcssa.i33, i64 %i.fg
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %i.cz
  %i.fj = shl nuw nsw i64 %i.ff, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.5.lcssa.i33, ptr align 2 %i.fi, i64 %i.fj, i1 false)
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.5.lcssa.i33, i64 %i.ff
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %._crit_edge.i32, %.loopexit.i28
  %.593.i34 = phi i32 [ %.492.i29, %.loopexit.i28 ], [ 1, %bb.af ], [ 1, %._crit_edge.i32 ]
  %.7.i35 = phi ptr [ %.4.i30, %.loopexit.i28 ], [ %i.fk, %bb.af ], [ %.5.lcssa.i33, %._crit_edge.i32 ] ; 3 uses
  br i1 %i.dw, label %bb.ai, label %bb.ah, !prof !5

bb.ah:                                            ; preds = %bb.ag
  %i.fl = add nsw i64 %i.du, -1
  %i.fm = inttoptr i64 %i.fl to ptr
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fo = load i32, ptr %i.fn, align 4            ; 2 uses
  call void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64 %i.du, ptr noundef %.7.i35, i32 noundef 0, i32 noundef %i.fo) #27
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds [2 x i8], ptr %.7.i35, i64 %i.fp
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.694.i36 = phi i32 [ 1, %bb.ah ], [ %.593.i34, %bb.ag ] ; 2 uses
  %.8.i37 = phi ptr [ %i.fq, %bb.ah ], [ %.7.i35, %bb.ag ] ; 2 uses
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond150.not.i = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i23
  br i1 %exitcond150.not.i, label %._crit_edge139.i, label %.lr.ph138.i, !llvm.loop !364

_ZN2v88internal12_GLOBAL__N_120WriteChunkListToFlatIhEEvNS0_6TaggedINS0_10FixedArrayEEEiNS3_INS0_6StringEEEPT_i.exit: ; preds = %._crit_edge139.i, %._crit_edge164.i
  call void @_ZN2v88internal27DisallowJavascriptExecutionD1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret i64 %4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal7Oddball10InitializeEPNS0_7IsolateENS0_12DirectHandleIS1_EEPKcNS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEES7_h(ptr noundef nonnull %0, ptr readonly captures(none) %1, ptr noundef %2, ptr readonly captures(none) %3, ptr noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %i.b = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %2, i64 %i.a) #27
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #32
  %i.d = tail call ptr @_ZN2v88internal7Factory21InternalizeUtf8StringENS_4base6VectorIKcEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %4, i64 %i.c) #27
  %i.e = load i64, ptr %3, align 8                ; 5 uses
  %i.f = trunc i64 %i.e to i1
  br i1 %i.f, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = icmp eq i16 %i.l, 130
  br i1 %i.m, label %bb.b, label %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.n = load i64, ptr %1, align 8
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.0.copyload.i.i.i.i = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.0.copyload.i.i.i.i, ptr %i.r, align 1
  br label %bb.e

_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.a, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit
  %i.s = load i64, ptr %1, align 8
  %i.t = add i64 %i.s, -1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = and i64 %i.e, 1
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.x = lshr i64 %i.e, 32
  %i.y = trunc nuw i64 %i.x to i32
  %i.z = sitofp i32 %i.y to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

bb.d:                                             ; preds = %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.aa = add nsw i64 %i.e, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.ac, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit

_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit: ; preds = %bb.c, %bb.d
  %i.ad = phi double [ %i.z, %bb.c ], [ %.0.copyload.i.i.i.i.i, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store double %i.ad, ptr %i.ae, align 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEE.exit, %bb.b
  %i.af = load i64, ptr %1, align 8
  %i.ag = add i64 %i.af, -1                       ; 3 uses
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load i64, ptr %3, align 8               ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  store atomic volatile i64 %i.ai, ptr %i.aj monotonic, align 8
  %i.ak = trunc i64 %i.ai to i1
  br i1 %i.ak, label %bb.f, label %_ZN2v88internal7Oddball13set_to_numberENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEEENS0_16WriteBarrierModeE.exit

bb.f:                                             ; preds = %bb.e
  %i.al = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.an = and i64 %i.ag, -262144
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = load i64, ptr %i.ao, align 262144       ; 2 uses
  %i.aq = and i64 %i.ap, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.aq, 0
  %i.ar = and i64 %i.ap, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not37.i.i.i.i.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.as = and i64 %i.ai, -262144
  %i.at = inttoptr i64 %i.as to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.at, align 262144
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not38.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.al, i64 noundef %i.am, i64 %i.ai) #27
  br label %bb.i

end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.m, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond29 = icmp eq i64 %i.d, 1
  br i1 %cond29, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = load i8, ptr %i.ab, align 1
  store i8 %i.ac, ptr %i.z, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.p, %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.ae) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.s, ptr %0, align 8
  store i64 %.0, ptr %i.h, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8              ; 9 uses
  %i.c = load ptr, ptr %0, align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.397) #28
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #31 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.o) #30
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.n, ptr %0, align 8
  store i64 %.0, ptr %i.d, align 8
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.c, align 1
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.q = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.r = load ptr, ptr %1, align 8                ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.s = load i8, ptr %i.r, align 1
  store i8 %i.s, ptr %i.q, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.r, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.t, align 8
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.b
  store i8 0, ptr %i.v, align 1
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare { i64, i8 } @_ZNK2v88internal18SharedFunctionInfo15TryGetDebugInfoEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

declare ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11StringTable12LookupStringEPNS0_7IsolateENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6String18SlowAsIntegerIndexEPm(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE13NewHeapNumberILNS0_14AllocationTypeE1EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory17NewReferenceErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr, i64) local_unnamed_addr #2

declare noundef i32 @_ZN2v88internal7Factory31ComputeSharingStrategyForStringENS0_12DirectHandleINS0_6StringEEEPNS0_17MaybeDirectHandleINS0_3MapEEE(ptr noundef nonnull align 1 dereferenceable(1), ptr, ptr noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6String9SlowShareINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEES5_PNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap28NotifyObjectLayoutChangeDoneENS0_6TaggedINS0_10HeapObjectEEE(i64) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE5EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare ptr @_ZN2v88internal6String9SlowShareINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

declare void @_ZN2v88internal6String11WriteToFlatIhEEvNS0_6TaggedIS1_EEPT_jj(i64, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal6String11WriteToFlatItEEvNS0_6TaggedIS1_EEPT_jj(i64, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal13DependentCode26DeoptimizeDependencyGroupsEPNS0_7IsolateENS_4base5FlagsINS1_15DependencyGroupEjjEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE20NewFixedArrayWithMapENS0_12DirectHandleINS0_3MapEEEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v88internal4Heap17CollectAllGarbageENS_4base5FlagsINS0_6GCFlagEhhEENS0_23GarbageCollectionReasonENS_15GCCallbackFlagsE(ptr noundef nonnull align 8 dereferenceable(2992), i8, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { noreturn }
attributes #30 = { builtin nounwind }
attributes #31 = { builtin nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = !{!12, !14}
!12 = distinct !{!12, !13, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!13 = distinct !{!13, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!14 = distinct !{!14, !15, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!15 = distinct !{!15, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!16 = !{i8 0, i8 2}
!17 = !{}
!18 = !{!"branch_weights", i32 2146410443, i32 1073205}
!19 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = !{!24, !26}
!24 = distinct !{!24, !25, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!25 = distinct !{!25, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!26 = distinct !{!26, !27, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!27 = distinct !{!27, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!28 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = !{!33, !35}
!33 = distinct !{!33, !34, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!34 = distinct !{!34, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!35 = distinct !{!35, !36, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!36 = distinct !{!36, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!42 = distinct !{!42, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!43 = distinct !{!43, !44, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!44 = distinct !{!44, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
!47 = distinct !{!47, !7}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!50 = distinct !{!50, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!51 = distinct !{!51, !52, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!52 = distinct !{!52, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!53 = distinct !{!53, !7}
!54 = distinct !{!54, !7}
!55 = distinct !{!55, !7}
!56 = !{!57, !59}
!57 = distinct !{!57, !58, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!58 = distinct !{!58, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!59 = distinct !{!59, !60, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!60 = distinct !{!60, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!61 = distinct !{!61, !7}
!62 = distinct !{!62, !7}
!63 = distinct !{!63, !7}
!64 = !{!65, !67}
!65 = distinct !{!65, !66, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!66 = distinct !{!66, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!67 = distinct !{!67, !68, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!68 = distinct !{!68, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!69 = distinct !{!69, !7}
!70 = distinct !{!70, !7}
!71 = distinct !{!71, !7}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!74 = distinct !{!74, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!75 = distinct !{!75, !76, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!76 = distinct !{!76, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!77 = distinct !{!77, !7}
!78 = distinct !{!78, !7}
!79 = distinct !{!79, !7}
!80 = distinct !{!80, !7}
!81 = distinct !{!81, !7}
!82 = distinct !{!82, !7}
!83 = distinct !{!83, !7}
!84 = distinct !{null}
!85 = distinct !{!85, !7}
!86 = !{!87, !89}
!87 = distinct !{!87, !88, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!88 = distinct !{!88, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!89 = distinct !{!89, !90, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!90 = distinct !{!90, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!91 = distinct !{!91, !7}
!92 = distinct !{!92, !7}
!93 = distinct !{!93, !7}
!94 = distinct !{!94, !7}
!95 = !{!96, !98}
!96 = distinct !{!96, !97, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!97 = distinct !{!97, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!98 = distinct !{!98, !99, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!99 = distinct !{!99, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!100 = distinct !{null}
!101 = distinct !{!101, !7}
!102 = !{!103, !105}
!103 = distinct !{!103, !104, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!104 = distinct !{!104, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!105 = distinct !{!105, !106, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!106 = distinct !{!106, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!107 = distinct !{!107, !7}
!108 = distinct !{!108, !7}
!109 = distinct !{!109, !7}
!110 = distinct !{!110, !7}
!111 = !{!112, !114}
!112 = distinct !{!112, !113, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!113 = distinct !{!113, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!114 = distinct !{!114, !115, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!115 = distinct !{!115, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!116 = distinct !{!116, !7}
!117 = !{!118, !120}
!118 = distinct !{!118, !119, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!119 = distinct !{!119, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!120 = distinct !{!120, !121, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!121 = distinct !{!121, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!122 = distinct !{!122, !7}
!123 = distinct !{!123, !7}
!124 = distinct !{!124, !7}
!125 = distinct !{!125, !7}
!126 = !{!127, !129}
!127 = distinct !{!127, !128, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!128 = distinct !{!128, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!129 = distinct !{!129, !130, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!130 = distinct !{!130, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!131 = distinct !{!131, !7}
!132 = distinct !{!132, !7}
!133 = !{!134, !136}
!134 = distinct !{!134, !135, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!135 = distinct !{!135, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!136 = distinct !{!136, !137, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!137 = distinct !{!137, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!138 = distinct !{!138, !7}
!139 = distinct !{!139, !7}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!142 = distinct !{!142, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!143 = distinct !{!143, !144, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!144 = distinct !{!144, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!145 = distinct !{!145, !7}
!146 = distinct !{!146, !7}
!147 = !{!148, !150}
!148 = distinct !{!148, !149, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!149 = distinct !{!149, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!150 = distinct !{!150, !151, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!151 = distinct !{!151, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!152 = distinct !{!152, !153}
!153 = !{!"llvm.loop.unroll.disable"}
!154 = distinct !{!154, !7}
!155 = distinct !{!155, !7}
!156 = !{!157, !159}
!157 = distinct !{!157, !158, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE: argument 0"}
!158 = distinct !{!158, !"_ZN2v88internal12WriteBarrier28GetWriteBarrierModeForObjectENS0_6TaggedINS0_10HeapObjectEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEE"}
!159 = distinct !{!159, !160, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!160 = distinct !{!160, !"_ZN2v88internal16HeapObjectLayout19GetWriteBarrierModeERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!161 = distinct !{!161, !7}
end_hunk_1
