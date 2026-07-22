inline.NumInlined: 2623
inline.NumDeleted: 1470
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2v88internal24CpuProfileJSONSerializer13SerializeImplEv:bb.a
bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.d, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit: ; preds = %bb.a, %bb.b, %bb.e
  %i.x = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.x, ptr noundef nonnull @.str.61)
  tail call void @_ZN2v88internal24CpuProfileJSONSerializer14SerializeNodesEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.y = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.y, ptr noundef nonnull @.str.62)
  %i.z = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.z, ptr noundef nonnull @.str.63)
  %i.aa = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.ab = load ptr, ptr %0, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.ac, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %1, align 8
  %i.ad = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #30
  %i.ae = trunc i64 %i.ad to i32
  call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.aa, i32 noundef %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  %i.af = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.af, ptr noundef nonnull @.str.64)
  %i.ag = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %.sroa.0.0.copyload.i1 = load i64, ptr %i.ai, align 8
  store i64 %.sroa.0.0.copyload.i1, ptr %2, align 8
  %i.aj = call noundef i64 @_ZNK2v84base9TimeDelta14InMicrosecondsEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #30
  %i.ak = trunc i64 %i.aj to i32
  call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.ag, i32 noundef %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.al = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.al, ptr noundef nonnull @.str.65)
  call void @_ZN2v88internal24CpuProfileJSONSerializer16SerializeSamplesEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.am = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 36 ; 3 uses
  %i.ao = load i8, ptr %i.an, align 4, !range !65, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN2v88internal18OutputStreamWriter8FinalizeEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 32 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8
  %i.au = sext i32 %i.as to i64
  %i.av = load ptr, ptr %i.aq, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  store i8 93, ptr %i.aw, align 1
  %i.ax = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit2

bb.g:                                             ; preds = %bb.f
  %i.bb = load i8, ptr %i.an, align 4, !range !65, !noundef !66
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bd = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.be = load ptr, ptr %i.aq, align 8
  %i.bf = load ptr, ptr %i.bd, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i32 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.be, i32 noundef %i.ax) #30, !inline_history !112
  %i.bj = icmp eq i32 %i.bi, 1
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.an, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.ar, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit2

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit2: ; preds = %bb.f, %bb.g, %bb.j
  %i.bk = load ptr, ptr %i.a, align 8
  call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.bk, ptr noundef nonnull @.str.66)
  call void @_ZN2v88internal24CpuProfileJSONSerializer19SerializeTimeDeltasEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.bl = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.bn = load i8, ptr %i.bm, align 4, !range !65, !noundef !66
  %i.bo = trunc nuw i8 %i.bn to i1
  br i1 %i.bo, label %_ZN2v88internal18OutputStreamWriter8FinalizeEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit2
  call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.bl, ptr noundef nonnull @.str.62)
  %i.bp = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 8            ; 2 uses
  %i.bt = add nsw i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 8
  %i.bu = sext i32 %i.bs to i64
  %i.bv = load ptr, ptr %i.bq, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bu
  store i8 125, ptr %i.bw, align 1
  %i.bx = load i32, ptr %i.br, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp eq i32 %i.bx, %i.bz
  br i1 %i.ca, label %bb.l, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit3

bb.l:                                             ; preds = %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 36 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 4, !range !65, !noundef !66
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.cf = load ptr, ptr %i.bq, align 8
  %i.cg = load ptr, ptr %i.ce, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i32 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noundef %i.cf, i32 noundef %i.bx) #30, !inline_history !112
  %i.ck = icmp eq i32 %i.cj, 1
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i32 0, ptr %i.br, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit3

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit3: ; preds = %bb.k, %bb.l, %bb.o
  %i.cl = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 36 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 4, !range !65, !noundef !66
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN2v88internal18OutputStreamWriter8FinalizeEv.exit, label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit3
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 32 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8            ; 2 uses
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load ptr, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.ct, i32 noundef %i.cq) #30, !inline_history !113
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.r, label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.i

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.cm, align 4
  br label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.i

_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.i: ; preds = %bb.r, %bb.q
  store i32 0, ptr %i.cp, align 8
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.i, %bb.p
  %i.cz = load ptr, ptr %i.cl, align 8            ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cz) #30, !inline_history !114
  br label %_ZN2v88internal18OutputStreamWriter8FinalizeEv.exit

_ZN2v88internal18OutputStreamWriter8FinalizeEv.exit: ; preds = %bb.s, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit3, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit2, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24CpuProfileJSONSerializer22SerializePositionTicksEPKNS_14CpuProfileNodeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #27
  unreachable

_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %i.b = zext nneg i32 %2 to i64                  ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.c = mul nuw nsw i64 %i.b, 12                 ; 2 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #28 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  %i.e = add nsw i64 %i.b, -1                     ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.e, 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.c
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.g, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !115

_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.j = tail call noundef zeroext i1 @_ZNK2v814CpuProfileNode12GetLineTicksEPNS0_8LineTickEj(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %i.d, i32 noundef %2) #30
  br i1 %i.j, label %.lr.ph, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.l = add nsw i32 %2, -1
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.not23 = icmp eq i64 %i.e, 0
  br i1 %.not23, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %3 = add nsw i64 %wide.trip.count, -2
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12
  %indvars.iv = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12 ] ; 4 uses
  %i.n = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = sext i32 %i.q to i64
  %i.t = load ptr, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 123, ptr %i.u, align 1
  %i.v = load i32, ptr %i.p, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.e, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 36 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 4, !range !65, !noundef !66
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.ad = load ptr, ptr %i.o, align 8
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad, i32 noundef %i.v) #30, !inline_history !112
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.z, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store i32 0, ptr %i.p, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit: ; preds = %bb.d, %bb.e, %bb.h
  %i.aj = load ptr, ptr %i.k, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.aj, ptr noundef nonnull @.str.46)
  %i.ak = load ptr, ptr %i.k, align 8
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.ak, i32 noundef %i.am)
  %i.an = load ptr, ptr %i.k, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.an, ptr noundef nonnull @.str.47)
  %i.ao = load ptr, ptr %i.k, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.ao, i32 noundef %i.aq)
  %i.ar = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 4 uses
  %i.au = load i32, ptr %i.at, align 8            ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.at, align 8
  %i.aw = sext i32 %i.au to i64
  %i.ax = load ptr, ptr %i.as, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 125, ptr %i.ay, align 1
  %i.az = load i32, ptr %i.at, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11

bb.i:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 36 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4, !range !65, !noundef !66
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.bh = load ptr, ptr %i.as, align 8
  %i.bi = load ptr, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef %i.bh, i32 noundef %i.az) #30, !inline_history !112
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.bd, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store i32 0, ptr %i.at, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11: ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, %bb.i, %bb.l
  %.not = icmp eq i64 %indvars.iv, %i.m
  br i1 %.not, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12, label %bb.m

bb.m:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11
  %i.bn = load ptr, ptr %i.k, align 8             ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8
  %i.bs = sext i32 %i.bq to i64
  %i.bt = load ptr, ptr %i.bo, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 44, ptr %i.bu, align 1
  %i.bv = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = icmp eq i32 %i.bv, %i.bx
  br i1 %i.by, label %bb.n, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 36 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4, !range !65, !noundef !66
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = load ptr, ptr %i.bn, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.bo, align 8
  %i.ce = load ptr, ptr %i.cc, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef i32 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cd, i32 noundef %i.bv) #30, !inline_history !112
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bz, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i32 0, ptr %i.bp, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12: ; preds = %bb.q, %bb.n, %bb.m, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %3
  br i1 %exitcond.not, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit.loopexit.peel.begin, label %bb.d, !llvm.loop !116

_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit.loopexit.peel.begin: ; preds = %.lr.ph, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12
  %4 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12 ] ; 2 uses
  %5 = load ptr, ptr %i.k, align 8                ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %8 = load i32, ptr %7, align 8                  ; 2 uses
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 8
  %10 = sext i32 %8 to i64
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 %10
  store i8 123, ptr %12, align 1
  %13 = load i32, ptr %7, align 8                 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit.peel

17:                                               ; preds = %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit.loopexit.peel.begin
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %19 = load i8, ptr %18, align 4, !range !65, !noundef !66
  %20 = trunc nuw i8 %19 to i1
  br i1 %20, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit.peel, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %5, align 8                 ; 2 uses
  %23 = load ptr, ptr %6, align 8
  %24 = load ptr, ptr %22, align 8
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 32
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %23, i32 noundef %13) #30, !inline_history !112
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i8 1, ptr %18, align 4
  br label %30

30:                                               ; preds = %29, %21
  store i32 0, ptr %7, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit.peel

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit.peel: ; preds = %30, %17, %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit.loopexit.peel.begin
  %31 = load ptr, ptr %i.k, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %31, ptr noundef nonnull @.str.46)
  %32 = load ptr, ptr %i.k, align 8
  %33 = getelementptr inbounds nuw [12 x i8], ptr %i.d, i64 %4 ; 2 uses
  %34 = load i32, ptr %33, align 4
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %32, i32 noundef %34)
  %35 = load ptr, ptr %i.k, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %35, ptr noundef nonnull @.str.47)
  %36 = load ptr, ptr %i.k, align 8
  %37 = getelementptr inbounds nuw i8, ptr %33, i64 8
  %38 = load i32, ptr %37, align 4
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %36, i32 noundef %38)
  %39 = load ptr, ptr %i.k, align 8               ; 5 uses
  %40 = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 32 ; 4 uses
  %42 = load i32, ptr %41, align 8                ; 2 uses
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 8
  %44 = sext i32 %42 to i64
  %45 = load ptr, ptr %40, align 8
  %46 = getelementptr inbounds nuw i8, ptr %45, i64 %44
  store i8 125, ptr %46, align 1
  %47 = load i32, ptr %41, align 8                ; 2 uses
  %48 = getelementptr inbounds nuw i8, ptr %39, i64 8
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11.peel

51:                                               ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit.peel
  %52 = getelementptr inbounds nuw i8, ptr %39, i64 36 ; 2 uses
  %53 = load i8, ptr %52, align 4, !range !65, !noundef !66
  %54 = trunc nuw i8 %53 to i1
  br i1 %54, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11.peel, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %39, align 8                ; 2 uses
  %57 = load ptr, ptr %40, align 8
  %58 = load ptr, ptr %56, align 8
  %59 = getelementptr inbounds nuw i8, ptr %58, i64 32
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57, i32 noundef %47) #30, !inline_history !112
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i8 1, ptr %52, align 4
  br label %64

64:                                               ; preds = %63, %55
  store i32 0, ptr %41, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11.peel

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11.peel: ; preds = %64, %51, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit.peel
  %.not.peel = icmp eq i64 %4, %i.m
  br i1 %.not.peel, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit, label %65

65:                                               ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11.peel
  %66 = load ptr, ptr %i.k, align 8               ; 5 uses
  %67 = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %68 = getelementptr inbounds nuw i8, ptr %66, i64 32 ; 4 uses
  %69 = load i32, ptr %68, align 8                ; 2 uses
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %68, align 8
  %71 = sext i32 %69 to i64
  %72 = load ptr, ptr %67, align 8
  %73 = getelementptr inbounds nuw i8, ptr %72, i64 %71
  store i8 44, ptr %73, align 1
  %74 = load i32, ptr %68, align 8                ; 2 uses
  %75 = getelementptr inbounds nuw i8, ptr %66, i64 8
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit

78:                                               ; preds = %65
  %79 = getelementptr inbounds nuw i8, ptr %66, i64 36 ; 2 uses
  %80 = load i8, ptr %79, align 4, !range !65, !noundef !66
  %81 = trunc nuw i8 %80 to i1
  br i1 %81, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %66, align 8                ; 2 uses
  %84 = load ptr, ptr %67, align 8
  %85 = load ptr, ptr %83, align 8
  %86 = getelementptr inbounds nuw i8, ptr %85, i64 32
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef i32 %87(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef %84, i32 noundef %74) #30, !inline_history !112
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  store i8 1, ptr %79, align 4
  br label %91

91:                                               ; preds = %90, %82
  store i32 0, ptr %68, align 8
  br label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit

_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit: ; preds = %91, %78, %65, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11.peel, %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.c) #29
  ret void
}

declare noundef zeroext i1 @_ZNK2v814CpuProfileNode12GetLineTicksEPNS0_8LineTickEj(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a ; 2 uses
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %.pre = load i32, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit
  %i.h = phi i32 [ %.pre, %.lr.ph ], [ %i.aj, %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit ] ; 2 uses
  %.016 = phi ptr [ %1, %.lr.ph ], [ %i.v, %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit ] ; 19 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = sub nsw i32 %i.i, %i.h
  %i.k = ptrtoint ptr %.016 to i64
  %i.l = sub i64 %i.e, %i.k
  %i.m = trunc i64 %i.l to i32
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.m) ; 3 uses
  %i.n = load ptr, ptr %i.f, align 8
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o ; 17 uses
  %i.q = sext i32 %.sroa.speculated to i64        ; 2 uses
  switch i32 %.sroa.speculated, label %bb.s [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
  ]

bb.c:                                             ; preds = %bb.b
  %i.r = load i8, ptr %.016, align 1
  store i8 %i.r, ptr %i.p, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i16, ptr %.016, align 1
  store i16 %i.s, ptr %i.p, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.p, ptr noundef nonnull align 1 dereferenceable(3) %.016, i64 3, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.f:                                             ; preds = %bb.b
  %i.t = load i32, ptr %.016, align 1
  store i32 %i.t, ptr %i.p, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.p, ptr noundef nonnull align 1 dereferenceable(5) %.016, i64 5, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.p, ptr noundef nonnull align 1 dereferenceable(6) %.016, i64 6, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, ptr noundef nonnull align 1 dereferenceable(7) %.016, i64 7, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.j:                                             ; preds = %bb.b
  %i.u = load i64, ptr %.016, align 1
  store i64 %i.u, ptr %i.p, align 1
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.p, ptr noundef nonnull align 1 dereferenceable(9) %.016, i64 9, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.p, ptr noundef nonnull align 1 dereferenceable(10) %.016, i64 10, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.p, ptr noundef nonnull align 1 dereferenceable(11) %.016, i64 11, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(12) %.016, i64 12, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.p, ptr noundef nonnull align 1 dereferenceable(13) %.016, i64 13, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.p, ptr noundef nonnull align 1 dereferenceable(14) %.016, i64 14, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.p, ptr noundef nonnull align 1 dereferenceable(15) %.016, i64 15, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) %.016, i64 16, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

bb.s:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %.016, i64 %i.q, i1 false)
  br label %_ZN2v88internal7MemCopyEPvPKvm.exit

_ZN2v88internal7MemCopyEPvPKvm.exit:              ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %i.v = getelementptr inbounds i8, ptr %.016, i64 %i.q ; 2 uses
  %i.w = load i32, ptr %i.d, align 8
  %i.x = add nsw i32 %i.w, %.sroa.speculated      ; 5 uses
  store i32 %i.x, ptr %i.d, align 8
  %i.y = load i32, ptr %i.c, align 8
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.t, label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit

bb.t:                                             ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit
  %i.aa = load i8, ptr %i.g, align 4, !range !65, !noundef !66
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad, i32 noundef %i.x) #30, !inline_history !118
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.g, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  store i32 0, ptr %i.d, align 8
  br label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit

_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit, %bb.t, %bb.w
  %i.aj = phi i32 [ %i.x, %_ZN2v88internal7MemCopyEPvPKvm.exit ], [ %i.x, %bb.t ], [ 0, %bb.w ]
  %i.ak = icmp ult ptr %i.v, %i.b
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !119

._crit_edge:                                      ; preds = %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = icmp eq i32 %1, 0
  %i.e = icmp slt i32 %1, 0
  %i.f = sub i32 0, %1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  %i.h = load i32, ptr %i.b, align 8              ; 3 uses
  br i1 %i.d, label %.split.us, label %tailrecurse

.split.us:                                        ; preds = %bb.a
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = load i64, ptr %i.c, align 8
  %i.k = icmp eq i64 %i.j, %i.i
  br i1 %i.k, label %.lr.ph, label %tailrecurse.us._crit_edge, !prof !120

tailrecurse.us._crit_edge:                        ; preds = %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us, %.split.us
  %.lcssa32 = phi i64 [ %i.i, %.split.us ], [ %i.ab, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us ]
  %.lcssa31 = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds i8, ptr %.lcssa31, i64 %.lcssa32 ; 2 uses
  store i8 48, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br label %bb.r

.lr.ph:                                           ; preds = %.split.us, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us
  %i.n = phi i64 [ %i.z, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us ], [ %i.i, %.split.us ]
  %i.o = phi i32 [ %i.aa, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us ], [ %i.h, %.split.us ] ; 3 uses
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %.split28.us, label %bb.b, !prof !8

bb.b:                                             ; preds = %.lr.ph
  %i.q = load i8, ptr %i.g, align 4, !range !65, !noundef !66
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load ptr, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.t, i32 noundef %i.o) #30, !inline_history !121
  %i.y = icmp eq i32 %i.x, 1
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.g, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.b, align 8
  %.pre42 = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us

_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us: ; preds = %bb.e, %bb.b
  %i.z = phi i64 [ %.pre42, %bb.e ], [ %i.n, %bb.b ] ; 2 uses
  %i.aa = phi i32 [ 0, %bb.e ], [ %i.o, %bb.b ]   ; 2 uses
  %i.ab = zext nneg i32 %i.aa to i64              ; 2 uses
  %i.ac = icmp eq i64 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph, label %tailrecurse.us._crit_edge, !prof !122

tailrecurse:                                      ; preds = %bb.a, %tailrecurse.backedge
  %i.ad = phi i32 [ %.be, %tailrecurse.backedge ], [ %i.h, %bb.a ] ; 2 uses
  %i.ae = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.af = sext i32 %i.ad to i64                   ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 3 uses
  %i.ah = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = icmp eq i64 %i.ah, %i.af
  br i1 %i.aj, label %bb.w, label %bb.f, !prof !8

bb.f:                                             ; preds = %tailrecurse
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  store i8 45, ptr %i.ag, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i = phi ptr [ %i.ak, %bb.g ], [ %i.ag, %bb.f ] ; 6 uses
  %.0.i = phi i32 [ %i.f, %bb.g ], [ %1, %bb.f ]  ; 5 uses
  %i.al = icmp ult i32 %.0.i, 10
  br i1 %i.al, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.n
  %.02230.i.i.i = phi i32 [ %i.as, %bb.n ], [ %.0.i, %bb.h ] ; 5 uses
  %.02329.i.i.i = phi i32 [ %i.at, %bb.n ], [ 1, %bb.h ] ; 4 uses
  %i.am = icmp ult i32 %.02230.i.i.i, 100
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.an = add i32 %.02329.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ao = icmp ult i32 %.02230.i.i.i, 1000
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = add i32 %.02329.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.aq = icmp ult i32 %.02230.i.i.i, 10000
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = add i32 %.02329.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.as = udiv i32 %.02230.i.i.i, 10000
  %i.at = add i32 %.02329.i.i.i, 4                ; 2 uses
  %i.au = icmp ult i32 %.02230.i.i.i, 100000
  br i1 %i.au, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.n, %bb.m, %bb.k, %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.ar, %bb.m ], [ %i.an, %bb.i ], [ %i.ap, %bb.k ], [ 1, %bb.h ], [ %i.at, %bb.n ] ; 2 uses
  %i.av = ptrtoint ptr %i.ai to i64
  %i.aw = ptrtoint ptr %.026.i to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = zext i32 %.0.i.i.i to i64               ; 2 uses
  %i.az = icmp slt i64 %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i._crit_edge, label %bb.o, !prof !8

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i._crit_edge: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %.pre41 = load i32, ptr %i.b, align 8
  br label %bb.w

bb.o:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.ba = icmp ugt i32 %.0.i, 99
  br i1 %i.ba, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.o
  %i.bb = add i32 %.0.i.i.i, -1
  br label %.lr.ph.i9.i.i

.lr.ph.i9.i.i:                                    ; preds = %.lr.ph.i9.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i32 [ %i.be, %.lr.ph.i9.i.i ], [ %.0.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bp, %.lr.ph.i9.i.i ], [ %i.bb, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.bc = urem i32 %.020.i.i.i, 100
  %i.bd = shl nuw nsw i32 %i.bc, 1
  %i.be = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i32 %.01819.i.i.i to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.bj
  store i8 %i.bi, ptr %i.bk, align 1
  %i.bl = load i8, ptr %i.bg, align 2
  %i.bm = add i32 %.01819.i.i.i, -1
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.bn
  store i8 %i.bl, ptr %i.bo, align 1
  %i.bp = add i32 %.01819.i.i.i, -2
  %i.bq = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.bq, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !124

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %bb.o
  %.0.lcssa.i.i.i = phi i32 [ %.0.i, %bb.o ], [ %i.be, %.lr.ph.i9.i.i ] ; 3 uses
  %i.br = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bs = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.026.i, i64 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = load i8, ptr %i.bu, align 2
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i.i

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bz = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.ca = or disjoint i8 %i.bz, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i.i

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i.i: ; preds = %bb.q, %bb.p
  %storemerge.i.i.i = phi i8 [ %i.ca, %bb.q ], [ %i.by, %bb.p ]
  store i8 %storemerge.i.i.i, ptr %.026.i, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.026.i, i64 %i.ay
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i.i, %tailrecurse.us._crit_edge
  %.pn68.i.ph = phi ptr [ %i.m, %tailrecurse.us._crit_edge ], [ %i.cb, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i.i ]
  %i.cc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cd = ptrtoint ptr %.pn68.i.ph to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = trunc i64 %i.cf to i32                  ; 3 uses
  store i32 %i.cg, ptr %i.b, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = icmp eq i32 %i.ci, %i.cg
  br i1 %i.cj, label %bb.s, label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit

bb.s:                                             ; preds = %bb.r
  %i.ck = load i8, ptr %i.g, align 4, !range !65, !noundef !66
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = load ptr, ptr %0, align 8               ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef %i.cc, i32 noundef %i.cg) #30, !inline_history !118
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.g, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 0, ptr %i.b, align 8
  br label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit

bb.w:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i._crit_edge, %tailrecurse
  %i.cs = phi i32 [ %.pre41, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i._crit_edge ], [ %i.ad, %tailrecurse ] ; 3 uses
  %i.ct = icmp slt i32 %i.cs, 1
  br i1 %i.ct, label %.split28.us, label %bb.x, !prof !8

.split28.us:                                      ; preds = %bb.w, %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.90) #27
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cu = load i8, ptr %i.g, align 4, !range !65, !noundef !66
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %tailrecurse.backedge, label %bb.y

tailrecurse.backedge:                             ; preds = %bb.x, %bb.aa
  %.be = phi i32 [ 0, %bb.aa ], [ %i.cs, %bb.x ]
  br label %tailrecurse

bb.y:                                             ; preds = %bb.x
  %i.cw = load ptr, ptr %0, align 8               ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8
  %i.cy = load ptr, ptr %i.cw, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef i32 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.cx, i32 noundef %i.cs) #30, !inline_history !121
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.g, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 0, ptr %i.b, align 8
  br label %tailrecurse.backedge

_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit: ; preds = %bb.v, %bb.s, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = icmp eq i32 %1, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 8 uses
  br i1 %i.d, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8              ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = load i64, ptr %i.c, align 8
  %i.i = icmp eq i64 %i.h, %i.g
  br i1 %i.i, label %.lr.ph, label %.loopexit, !prof !120

.lr.ph:                                           ; preds = %.split.us, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us
  %i.j = phi i64 [ %i.v, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us ], [ %i.g, %.split.us ]
  %i.k = phi i32 [ %i.w, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us ], [ %i.f, %.split.us ] ; 3 uses
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %.split30.us, label %bb.b, !prof !8

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i8, ptr %i.e, align 4, !range !65, !noundef !66
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %0, align 8                ; 2 uses
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = load ptr, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.p, i32 noundef %i.k) #30, !inline_history !121
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.e, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.b, align 8
  %.pre63 = load i64, ptr %i.c, align 8
  br label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us

_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us: ; preds = %bb.e, %bb.b
  %i.v = phi i64 [ %.pre63, %bb.e ], [ %i.j, %bb.b ] ; 2 uses
  %i.w = phi i32 [ 0, %bb.e ], [ %i.k, %bb.b ]    ; 2 uses
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %.lr.ph, label %.loopexit, !prof !122

.split:                                           ; preds = %bb.a
  %i.z = icmp ult i32 %1, 10
  %.pre62 = load i32, ptr %i.b, align 8           ; 3 uses
  br i1 %i.z, label %tailrecurse.us35.preheader, label %tailrecurse.outer

tailrecurse.us35.preheader:                       ; preds = %.split
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ab = sext i32 %.pre62 to i64                 ; 2 uses
  %i.ac = load i64, ptr %i.c, align 8
  %.not107 = icmp sgt i64 %i.ac, %i.ab
  br i1 %.not107, label %.split38.us, label %.lr.ph108, !prof !125

.lr.ph108:                                        ; preds = %tailrecurse.us35.preheader, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36
  %i.ad = phi ptr [ %i.ap, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36 ], [ %i.aa, %tailrecurse.us35.preheader ]
  %i.ae = phi i32 [ %i.ao, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36 ], [ %.pre62, %tailrecurse.us35.preheader ] ; 3 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %.split30.us, label %bb.f, !prof !8

bb.f:                                             ; preds = %.lr.ph108
  %i.ag = load i8, ptr %i.e, align 4, !range !65, !noundef !66
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ad, i32 noundef %i.ae) #30, !inline_history !121
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.e, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 0, ptr %i.b, align 8
  br label %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36

_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36: ; preds = %bb.i, %bb.f
  %i.ao = phi i32 [ 0, %bb.i ], [ %i.ae, %bb.f ]  ; 2 uses
  %i.ap = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aq = sext i32 %i.ao to i64                   ; 2 uses
  %i.ar = load i64, ptr %i.c, align 8
  %.not = icmp sgt i64 %i.ar, %i.aq
  br i1 %.not, label %.split38.us, label %.lr.ph108, !prof !126

tailrecurse:                                      ; preds = %tailrecurse.outer, %bb.x
  br i1 %i.dk, label %bb.w, label %.lr.ph.i.i.i, !prof !8

.lr.ph.i.i.i:                                     ; preds = %tailrecurse, %bb.o
  %.02230.i.i.i = phi i32 [ %i.ay, %bb.o ], [ %1, %tailrecurse ] ; 5 uses
  %.02329.i.i.i = phi i32 [ %i.az, %bb.o ], [ 1, %tailrecurse ] ; 4 uses
  %i.as = icmp ult i32 %.02230.i.i.i, 100
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.at = add i32 %.02329.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.au = icmp ult i32 %.02230.i.i.i, 1000
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.av = add i32 %.02329.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.aw = icmp ult i32 %.02230.i.i.i, 10000
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = add i32 %.02329.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.ay = udiv i32 %.02230.i.i.i, 10000
  %i.az = add i32 %.02329.i.i.i, 4                ; 2 uses
  %i.ba = icmp ult i32 %.02230.i.i.i, 100000
  br i1 %i.ba, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !123

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i:  ; preds = %bb.o, %bb.n, %bb.l, %bb.j
  %.0.i.i.i = phi i32 [ %i.ax, %bb.n ], [ %i.at, %bb.j ], [ %i.av, %bb.l ], [ %i.az, %bb.o ] ; 2 uses
  %i.bb = zext i32 %.0.i.i.i to i64               ; 2 uses
  %i.bc = icmp slt i64 %gepdiff, %i.bb
  br i1 %i.bc, label %bb.w, label %.split38.us.loopexit46, !prof !8

.split38.us.loopexit46:                           ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  %i.bd = load ptr, ptr %i.a, align 8
  %i.be = add i32 %.0.i.i.i, -1
  br label %.split38.us

.split38.us:                                      ; preds = %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36, %tailrecurse.us35.preheader, %.split38.us.loopexit46
  %.us-phi = phi i64 [ %i.di, %.split38.us.loopexit46 ], [ %i.ab, %tailrecurse.us35.preheader ], [ %i.aq, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36 ]
  %.us-phi39 = phi ptr [ %i.bd, %.split38.us.loopexit46 ], [ %i.aa, %tailrecurse.us35.preheader ], [ %i.ap, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36 ]
  %.us-phi42 = phi i32 [ %i.be, %.split38.us.loopexit46 ], [ 0, %tailrecurse.us35.preheader ], [ 0, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36 ]
  %.us-phi43 = phi i64 [ %i.bb, %.split38.us.loopexit46 ], [ 1, %tailrecurse.us35.preheader ], [ 1, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us36 ] ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.us-phi39, i64 %.us-phi ; 5 uses
  %i.bg = icmp ugt i32 %1, 99
  br i1 %i.bg, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i

.lr.ph.i9.i.i:                                    ; preds = %.split38.us, %.lr.ph.i9.i.i
  %.020.i.i.i = phi i32 [ %i.bj, %.lr.ph.i9.i.i ], [ %1, %.split38.us ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.bu, %.lr.ph.i9.i.i ], [ %.us-phi42, %.split38.us ] ; 3 uses
  %i.bh = urem i32 %.020.i.i.i, 100
  %i.bi = shl nuw nsw i32 %i.bh, 1
  %i.bj = udiv i32 %.020.i.i.i, 100               ; 2 uses
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i32 %.01819.i.i.i to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1
  %i.bq = load i8, ptr %i.bl, align 2
  %i.br = add i32 %.01819.i.i.i, -1
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bs
  store i8 %i.bq, ptr %i.bt, align 1
  %i.bu = add i32 %.01819.i.i.i, -2
  %i.bv = icmp ugt i32 %.020.i.i.i, 9999
  br i1 %i.bv, label %.lr.ph.i9.i.i, label %._crit_edge.i.i.i, !llvm.loop !124

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i9.i.i, %.split38.us
  %.0.lcssa.i.i.i = phi i32 [ %1, %.split38.us ], [ %i.bj, %.lr.ph.i9.i.i ] ; 3 uses
  %i.bw = icmp samesign ugt i32 %.0.lcssa.i.i.i, 9
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = shl nuw nsw i32 %.0.lcssa.i.i.i, 1
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = load i8, ptr %i.bz, align 2
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.ce = trunc nuw nsw i32 %.0.lcssa.i.i.i to i8
  %i.cf = or disjoint i8 %i.ce, 48
  br label %bb.r

.loopexit:                                        ; preds = %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us, %.split.us
  %.lcssa25.us = phi i64 [ %i.g, %.split.us ], [ %i.x, %_ZN2v88internal18OutputStreamWriter10WriteChunkEv.exit.us ]
  %.lcssa24.us = load ptr, ptr %i.a, align 8
  %i.cg = getelementptr inbounds i8, ptr %.lcssa24.us, i64 %.lcssa25.us
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.q, %bb.p
  %i.ch = phi ptr [ %i.bf, %bb.q ], [ %i.bf, %bb.p ], [ %i.cg, %.loopexit ] ; 2 uses
  %.sink109.i = phi i8 [ %i.cf, %bb.q ], [ %i.cd, %bb.p ], [ 48, %.loopexit ]
  %.sink.i = phi i64 [ %.us-phi43, %bb.q ], [ %.us-phi43, %bb.p ], [ 1, %.loopexit ]
  store i8 %.sink109.i, ptr %i.ch, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sink.i
  %i.cj = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = trunc i64 %i.cm to i32                  ; 3 uses
  store i32 %i.cn, ptr %i.b, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = icmp eq i32 %i.cp, %i.cn
  br i1 %i.cq, label %bb.s, label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit

bb.s:                                             ; preds = %bb.r
  %i.cr = load i8, ptr %i.e, align 4, !range !65, !noundef !66
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %0, align 8               ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef i32 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %i.cj, i32 noundef %i.cn) #30, !inline_history !118
  %i.cy = icmp eq i32 %i.cx, 1
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.e, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 0, ptr %i.b, align 8
  br label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit

bb.w:                                             ; preds = %tailrecurse, %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i.i
  br i1 %i.dl, label %.split30.us, label %bb.x, !prof !8

.split30.us:                                      ; preds = %bb.w, %.lr.ph108, %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.90) #27
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.cz = load i8, ptr %i.e, align 4, !range !65, !noundef !66
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %tailrecurse, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = load ptr, ptr %i.a, align 8
  %i.dc = load ptr, ptr %0, align 8               ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = tail call noundef i32 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.dc, ptr noundef %i.db, i32 noundef %.ph) #30, !inline_history !121
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.e, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i32 0, ptr %i.b, align 8
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %.split, %bb.aa
  %.ph = phi i32 [ 0, %bb.aa ], [ %.pre62, %.split ] ; 3 uses
  %i.di = sext i32 %.ph to i64                    ; 3 uses
  %i.dj = load i64, ptr %i.c, align 8             ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.di
  %gepdiff = sub nsw i64 %i.dj, %i.di
  %i.dl = icmp slt i32 %.ph, 1
  br label %tailrecurse

_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit: ; preds = %bb.v, %bb.s, %bb.r
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24CpuProfileJSONSerializer18SerializeCallFrameEPKNS_14CpuProfileNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.b, ptr noundef nonnull @.str.48)
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = tail call noundef ptr @_ZNK2v814CpuProfileNode18GetFunctionNameStrEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.c, ptr noundef %i.d)
  %i.e = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.e, ptr noundef nonnull @.str.49)
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = tail call noundef i32 @_ZNK2v814CpuProfileNode13GetLineNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  %i.h = add nsw i32 %i.g, -1
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.f, i32 noundef %i.h)
  %i.i = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.i, ptr noundef nonnull @.str.50)
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = tail call noundef i32 @_ZNK2v814CpuProfileNode15GetColumnNumberEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  %i.l = add nsw i32 %i.k, -1
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.j, i32 noundef %i.l)
  %i.m = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.m, ptr noundef nonnull @.str.51)
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = tail call noundef i32 @_ZNK2v814CpuProfileNode11GetScriptIdEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.n, i32 noundef %i.o)
  %i.p = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.p, ptr noundef nonnull @.str.52)
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = tail call noundef ptr @_ZNK2v814CpuProfileNode24GetScriptResourceNameStrEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.q, ptr noundef %i.r)
  %i.s = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 4 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 8
  %i.x = sext i32 %i.v to i64
  %i.y = load ptr, ptr %i.t, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 34, ptr %i.z, align 1
  %i.aa = load i32, ptr %i.u, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.b, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

bb.b:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 36 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 4, !range !65, !noundef !66
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.t, align 8
  %i.aj = load ptr, ptr %i.ah, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.ai, i32 noundef %i.aa) #30, !inline_history !112
  %i.an = icmp eq i32 %i.am, 1
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.ae, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.u, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit: ; preds = %bb.a, %bb.b, %bb.e
  ret void
}

declare noundef ptr @_ZNK2v814CpuProfileNode18GetFunctionNameStrEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef i32 @_ZNK2v814CpuProfileNode13GetLineNumberEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef i32 @_ZNK2v814CpuProfileNode15GetColumnNumberEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef i32 @_ZNK2v814CpuProfileNode11GetScriptIdEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef ptr @_ZNK2v814CpuProfileNode24GetScriptResourceNameStrEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24CpuProfileJSONSerializer17SerializeChildrenEPKNS_14CpuProfileNodeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = add nsw i32 %2, -1                       ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.d = add nsw i32 %2, -2
  br label %bb.g

._crit_edge.loopexit.peel.begin:                  ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, %.lr.ph
  %i.e = phi i32 [ 0, %.lr.ph ], [ %i.bd, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = tail call noundef ptr @_ZNK2v814CpuProfileNode8GetChildEi(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.e) #30
  %i.h = tail call noundef i32 @_ZNK2v814CpuProfileNode9GetNodeIdEv(ptr noundef nonnull align 1 dereferenceable(1) %i.g) #30
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.f, i32 noundef %i.h)
  %.not.peel = icmp eq i32 %i.e, %i.c
  br i1 %.not.peel, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %i.i = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 8
  %i.n = sext i32 %i.l to i64
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 44, ptr %i.p, align 1
  %i.q = load i32, ptr %i.k, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4, !range !65, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.j, align 8
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.y, i32 noundef %i.q) #30, !inline_history !112
  %i.ad = icmp eq i32 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.u, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 0, ptr %i.k, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.peel.begin, %bb.b, %bb.c, %bb.f, %bb.a
  ret void

bb.g:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, %.lr.ph.split
  %.08 = phi i32 [ 0, %.lr.ph.split ], [ %i.bd, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit ] ; 3 uses
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = tail call noundef ptr @_ZNK2v814CpuProfileNode8GetChildEi(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %.08) #30
  %i.ag = tail call noundef i32 @_ZNK2v814CpuProfileNode9GetNodeIdEv(ptr noundef nonnull align 1 dereferenceable(1) %i.af) #30
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.ae, i32 noundef %i.ag)
  %i.ah = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = sext i32 %i.ak to i64
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 44, ptr %i.ao, align 1
  %i.ap = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.h, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.au = load i8, ptr %i.at, align 4, !range !65, !noundef !66
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.ax = load ptr, ptr %i.ai, align 8
  %i.ay = load ptr, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ax, i32 noundef %i.ap) #30, !inline_history !112
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.at, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 0, ptr %i.aj, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit: ; preds = %bb.k, %bb.h, %bb.g
  %i.bd = add nuw nsw i32 %.08, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %.08, %i.d
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %bb.g, !llvm.loop !127
}

declare noundef ptr @_ZNK2v814CpuProfileNode8GetChildEi(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK2v814CpuProfileNode9GetNodeIdEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24CpuProfileJSONSerializer13SerializeNodeEPKNS_14CpuProfileNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8
  %i.g = sext i32 %i.e to i64
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.g
  store i8 123, ptr %i.i, align 1
  %i.j = load i32, ptr %i.d, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp eq i32 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 36 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4, !range !65, !noundef !66
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.r, i32 noundef %i.j) #30, !inline_history !112
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.n, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.d, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit: ; preds = %bb.a, %bb.b, %bb.e
  %i.x = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.x, ptr noundef nonnull @.str.53)
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = tail call noundef i32 @_ZNK2v814CpuProfileNode9GetNodeIdEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.y, i32 noundef %i.z)
  %i.aa = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.aa, ptr noundef nonnull @.str.54)
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = tail call noundef i32 @_ZNK2v814CpuProfileNode11GetHitCountEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.ab, i32 noundef %i.ac)
  %i.ad = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.ad, ptr noundef nonnull @.str.55)
  tail call void @_ZN2v88internal24CpuProfileJSONSerializer18SerializeCallFrameEPKNS_14CpuProfileNodeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
  %i.ae = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 4 uses
  %i.ah = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8
  %i.aj = sext i32 %i.ah to i64
  %i.ak = load ptr, ptr %i.af, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aj
  store i8 125, ptr %i.al, align 1
  %i.am = load i32, ptr %i.ag, align 8            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = icmp eq i32 %i.am, %i.ao
  br i1 %i.ap, label %bb.f, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit22

bb.f:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 36 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 4, !range !65, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.au = load ptr, ptr %i.af, align 8
  %i.av = load ptr, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.au, i32 noundef %i.am) #30, !inline_history !112
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.aq, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 0, ptr %i.ag, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit22

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit22: ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, %bb.f, %bb.i
  %i.ba = tail call noundef i32 @_ZNK2v814CpuProfileNode16GetChildrenCountEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30 ; 2 uses
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit23, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit22
  %i.bb = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.bb, ptr noundef nonnull @.str.56)
  tail call void @_ZN2v88internal24CpuProfileJSONSerializer17SerializeChildrenEPKNS_14CpuProfileNodeEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, i32 noundef %i.ba)
  %i.bc = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8
  %i.bh = sext i32 %i.bf to i64
  %i.bi = load ptr, ptr %i.bd, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bh
  store i8 93, ptr %i.bj, align 1
  %i.bk = load i32, ptr %i.be, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = icmp eq i32 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit23

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bc, i64 36 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 4, !range !65, !noundef !66
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit23, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.bs = load ptr, ptr %i.bd, align 8
  %i.bt = load ptr, ptr %i.br, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.br, ptr noundef %i.bs, i32 noundef %i.bk) #30, !inline_history !112
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.bo, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i32 0, ptr %i.be, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit23

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit23: ; preds = %bb.n, %bb.k, %bb.j, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit22
  %i.by = tail call noundef ptr @_ZNK2v814CpuProfileNode16GetBailoutReasonEv(ptr noundef nonnull align 1 dereferenceable(1) %1) #30 ; 4 uses
  %.not18 = icmp eq ptr %i.by, null
  br i1 %.not18, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit24, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit23
  %i.bz = load i8, ptr %i.by, align 1
  %.not19 = icmp eq i8 %i.bz, 0
  br i1 %.not19, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit24, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.by, ptr noundef nonnull dereferenceable(10) @.str.57) #31
  %.not20 = icmp eq i32 %i.ca, 0
  br i1 %.not20, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit24, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.cb, ptr noundef nonnull @.str.58)
  %i.cc = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.cc, ptr noundef nonnull %i.by)
  %i.cd = load ptr, ptr %i.a, align 8             ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32 ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 8            ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8
  %i.ci = sext i32 %i.cg to i64
  %i.cj = load ptr, ptr %i.ce, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 34, ptr %i.ck, align 1
  %i.cl = load i32, ptr %i.cf, align 8            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cn = load i32, ptr %i.cm, align 8
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.r, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit24

bb.r:                                             ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 36 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 4, !range !65, !noundef !66
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit24, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cs = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.ct = load ptr, ptr %i.ce, align 8
  %i.cu = load ptr, ptr %i.cs, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
end_hunk_0
begin_hunk_1_@_ZN2v88internal32CpuProfileMaxSamplesCallbackTask3RunEv
define linkonce_odr hidden void @_ZN2v88internal32CpuProfileMaxSamplesCallbackTask3RunEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #22

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #22

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress norecurse nounwind willreturn uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind allocsize(0) }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN2v88internal9CodeEntry12GetDeoptInfoEv: argument 0"}
!19 = distinct !{!19, !"_ZN2v88internal9CodeEntry12GetDeoptInfoEv"}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_ZSt19__relocate_object_aIN2v88internal8PositionES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!24 = distinct !{!24, !"_ZSt19__relocate_object_aIN2v88internal8PositionES2_SaIS2_EEvPT_PT0_RT1_"}
!25 = distinct !{!25, !24, !"_ZSt19__relocate_object_aIN2v88internal8PositionES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!26 = distinct !{!26, !6}
!27 = distinct !{!27, !6}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNKSt6vectorIPN2v88internal9CodeEntryESaIS3_EE6rbeginEv: argument 0"}
!30 = distinct !{!30, !"_ZNKSt6vectorIPN2v88internal9CodeEntryESaIS3_EE6rbeginEv"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNKSt6vectorIPN2v88internal9CodeEntryESaIS3_EE4rendEv: argument 0"}
!33 = distinct !{!33, !"_ZNKSt6vectorIPN2v88internal9CodeEntryESaIS3_EE4rendEv"}
!34 = distinct !{!34, !6}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNKSt6vectorIN2v88internal20CodeEntryAndPositionESaIS2_EE6rbeginEv: argument 0"}
!37 = distinct !{!37, !"_ZNKSt6vectorIN2v88internal20CodeEntryAndPositionESaIS2_EE6rbeginEv"}
!38 = !{!39}
!39 = distinct !{!39, !40, !"_ZNKSt6vectorIN2v88internal20CodeEntryAndPositionESaIS2_EE4rendEv: argument 0"}
!40 = distinct !{!40, !"_ZNKSt6vectorIN2v88internal20CodeEntryAndPositionESaIS2_EE4rendEv"}
!41 = distinct !{!41, !6}
!42 = distinct !{null}
!43 = distinct !{null, null}
!44 = distinct !{null, null}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE: argument 0"}
!47 = distinct !{!47, !"_ZN2v88Platform23GetForegroundTaskRunnerEPNS_7IsolateE"}
!48 = distinct !{null}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZSt11make_uniqueIN2v88internal32CpuProfileMaxSamplesCallbackTaskEJSt10unique_ptrINS0_24DiscardedSamplesDelegateESt14default_deleteIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!51 = distinct !{!51, !"_ZSt11make_uniqueIN2v88internal32CpuProfileMaxSamplesCallbackTaskEJSt10unique_ptrINS0_24DiscardedSamplesDelegateESt14default_deleteIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!52 = distinct !{null}
!53 = distinct !{null, null, null}
!54 = distinct !{null, null, null}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZN2v88internal11ProfileTree16TakePendingNodesEv: argument 0"}
!57 = distinct !{!57, !"_ZN2v88internal11ProfileTree16TakePendingNodesEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!60 = distinct !{!60, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!61 = distinct !{!61, !6}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!64 = distinct !{!64, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!69 = distinct !{!69, !"_ZNSt7__cxx119to_stringEm"}
!70 = distinct !{!70, !6}
!71 = distinct !{!71, !6}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!74 = distinct !{!74, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!75 = distinct !{!75, !6}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!78 = distinct !{!78, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EE5beginEv: argument 0"}
!81 = distinct !{!81, !"_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EE5beginEv"}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!84 = distinct !{!84, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EE3endEv: argument 0"}
!87 = distinct !{!87, !"_ZNSt5dequeIN2v88internal10CpuProfile10SampleInfoESaIS3_EE3endEv"}
!88 = !{!89, !91, !93}
!89 = distinct !{!89, !90, !"_ZSt9__find_ifISt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS4_PS4_EN9__gnu_cxx5__ops10_Iter_predIZNS3_24StreamPendingTraceEventsEvE3$_0EEET_SD_SD_T0_St26random_access_iterator_tag: argument 0"}
!90 = distinct !{!90, !"_ZSt9__find_ifISt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS4_PS4_EN9__gnu_cxx5__ops10_Iter_predIZNS3_24StreamPendingTraceEventsEvE3$_0EEET_SD_SD_T0_St26random_access_iterator_tag"}
!91 = distinct !{!91, !92, !"_ZSt9__find_ifISt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS4_PS4_EN9__gnu_cxx5__ops10_Iter_predIZNS3_24StreamPendingTraceEventsEvE3$_0EEET_SD_SD_T0_: argument 0"}
!92 = distinct !{!92, !"_ZSt9__find_ifISt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS4_PS4_EN9__gnu_cxx5__ops10_Iter_predIZNS3_24StreamPendingTraceEventsEvE3$_0EEET_SD_SD_T0_"}
!93 = distinct !{!93, !94, !"_ZSt7find_ifISt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS4_PS4_EZNS3_24StreamPendingTraceEventsEvE3$_0ET_S9_S9_T0_: argument 0"}
!94 = distinct !{!94, !"_ZSt7find_ifISt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS4_PS4_EZNS3_24StreamPendingTraceEventsEvE3$_0ET_S9_S9_T0_"}
!95 = distinct !{!95, !6}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!98 = distinct !{!98, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!101 = distinct !{!101, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!102 = distinct !{!102, !6}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!105 = distinct !{!105, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!106 = distinct !{!106, !6}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!109 = distinct !{!109, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!110 = distinct !{!110, !6}
!111 = distinct !{null}
!112 = distinct !{null, null, null}
!113 = distinct !{null, null}
!114 = distinct !{null}
!115 = distinct !{!115, !6}
!116 = distinct !{!116, !6, !117}
!117 = !{!"llvm.loop.peeled.count", i32 1}
!118 = distinct !{null, null}
!119 = distinct !{!119, !6}
!120 = !{!"branch_weights", i32 1, i32 1999}
!121 = distinct !{null}
!122 = !{!"branch_weights", i32 0, i32 1}
!123 = distinct !{!123, !6}
!124 = distinct !{!124, !6}
!125 = !{!"branch_weights", i32 3995999, i32 4001}
!126 = !{!"branch_weights", i32 4001, i32 0}
!127 = distinct !{!127, !6, !117}
!128 = distinct !{!128, !6}
!129 = distinct !{!129, !6}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!132 = distinct !{!132, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!133 = distinct !{!133, !6}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El: argument 0"}
!136 = distinct !{!136, !"_ZStplRKSt15_Deque_iteratorIN2v88internal10CpuProfile10SampleInfoERS3_PS3_El"}
!137 = distinct !{!137, !6}
!138 = !{i64 8}
!139 = distinct !{!139, !6}
!140 = distinct !{!140, !6}
!141 = distinct !{!141, !6}
!142 = distinct !{!142, !6}
!143 = distinct !{!143, !6}
!144 = distinct !{!144, !6}
!145 = distinct !{!145, !6}
!146 = distinct !{!146, !6}
!147 = distinct !{!147, !6}
!148 = distinct !{null, null}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!151 = distinct !{!151, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!152 = !{!153}
!153 = distinct !{!153, !151, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!154 = !{!153, !155}
!155 = distinct !{!155, !156}
!156 = distinct !{!156, !"LVerDomain"}
!157 = !{!150, !158}
!158 = distinct !{!158, !156}
!159 = distinct !{!159, !6, !160, !161}
!160 = !{!"llvm.loop.isvectorized", i32 1}
!161 = !{!"llvm.loop.unroll.runtime.disable"}
!162 = distinct !{!162, !6, !160}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE6rbeginEv: argument 0"}
!165 = distinct !{!165, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE6rbeginEv"}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE4rendEv: argument 0"}
!168 = distinct !{!168, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE4rendEv"}
!169 = !{!170, !172, !174}
!170 = distinct !{!170, !171, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0EEET_SL_SL_T0_St26random_access_iterator_tag: argument 0"}
!171 = distinct !{!171, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0EEET_SL_SL_T0_St26random_access_iterator_tag"}
!172 = distinct !{!172, !173, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0EEET_SL_SL_T0_: argument 0"}
!173 = distinct !{!173, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0EEET_SL_SL_T0_"}
!174 = distinct !{!174, !175, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_: argument 0"}
!175 = distinct !{!175, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection13StopProfilingEjE3$_0ET_SI_SI_T0_"}
!176 = distinct !{!176, !6}
!177 = distinct !{!177, !6}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE6rbeginEv: argument 0"}
!180 = distinct !{!180, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE6rbeginEv"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE4rendEv: argument 0"}
!183 = distinct !{!183, !"_ZNSt6vectorISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EESaIS6_EE4rendEv"}
!184 = !{!185, !187, !189}
!185 = distinct !{!185, !186, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection6LookupEPKcE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag: argument 0"}
!186 = distinct !{!186, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection6LookupEPKcE3$_0EEET_SN_SN_T0_St26random_access_iterator_tag"}
!187 = distinct !{!187, !188, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection6LookupEPKcE3$_0EEET_SN_SN_T0_: argument 0"}
!188 = distinct !{!188, !"_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEENS1_5__ops10_Iter_predIZNS5_21CpuProfilesCollection6LookupEPKcE3$_0EEET_SN_SN_T0_"}
!189 = distinct !{!189, !190, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_: argument 0"}
!190 = distinct !{!190, !"_ZSt7find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS6_EESt6vectorIS9_SaIS9_EEEEEZNS5_21CpuProfilesCollection6LookupEPKcE3$_0ET_SK_SK_T0_"}
!191 = distinct !{!191, !6}
!192 = distinct !{!192, !6}
!193 = distinct !{!193, !6}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZSt19__relocate_object_aIN2v819CpuProfileDeoptInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!196 = distinct !{!196, !"_ZSt19__relocate_object_aIN2v819CpuProfileDeoptInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!197 = !{!198}
!198 = distinct !{!198, !196, !"_ZSt19__relocate_object_aIN2v819CpuProfileDeoptInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!199 = distinct !{!199, !6}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZSt19__relocate_object_aIN2v819CpuProfileDeoptInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!202 = distinct !{!202, !"_ZSt19__relocate_object_aIN2v819CpuProfileDeoptInfoES1_SaIS1_EEvPT_PT0_RT1_"}
!203 = !{!204}
!204 = distinct !{!204, !202, !"_ZSt19__relocate_object_aIN2v819CpuProfileDeoptInfoES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!205 = distinct !{null}
!206 = distinct !{!206, !6}
!207 = distinct !{!207, !6}
!208 = distinct !{null, null, null}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!211 = distinct !{!211, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!212 = !{!213}
!213 = distinct !{!213, !211, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!214 = !{!213, !215}
!215 = distinct !{!215, !216}
!216 = distinct !{!216, !"LVerDomain"}
!217 = !{!210, !218}
!218 = distinct !{!218, !216}
!219 = distinct !{!219, !6, !160, !161}
!220 = distinct !{!220, !6, !160}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!223 = distinct !{!223, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!224 = !{!225}
!225 = distinct !{!225, !223, !"_ZSt19__relocate_object_aISt10unique_ptrIN2v88internal10CpuProfileESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!226 = !{!225, !227}
!227 = distinct !{!227, !228}
!228 = distinct !{!228, !"LVerDomain"}
!229 = !{!222, !230}
!230 = distinct !{!230, !228}
!231 = distinct !{!231, !6, !160, !161}
!232 = distinct !{!232, !6, !160}
!233 = distinct !{!233, !6}
!234 = distinct !{!234, !6}
!235 = distinct !{!235, !6}
!236 = distinct !{!236, !6}
!237 = distinct !{!237, !6}
!238 = distinct !{ptr @_ZN2v88internal32CpuProfileMaxSamplesCallbackTaskD2Ev, null, null}
end_hunk_1
