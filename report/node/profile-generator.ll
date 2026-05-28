inline.NumInlined: 2623
inline.NumDeleted: 1470
begin_hunk_0_@_ZN2v88internal24CpuProfileJSONSerializer13SerializeImplEv:bb.a
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
define hidden void @_ZN2v88internal24CpuProfileJSONSerializer22SerializePositionTicksEPKNS_14CpuProfileNodeEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.85) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %3 = zext nneg i32 %2 to i64                    ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %2, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.b = mul nuw nsw i64 %3, 12                   ; 2 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #28 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.d = add nsw i64 %3, -1                       ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.d, 12
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.f, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 12, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !115

_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.c
  %i.i = tail call noundef zeroext i1 @_ZNK2v814CpuProfileNode12GetLineTicksEPNS0_8LineTickEj(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull %i.c, i32 noundef %2) #30
  br i1 %i.i, label %.lr.ph, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.k = add nsw i32 %2, -1
  %i.l = zext nneg i32 %i.k to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12 ] ; 3 uses
  %i.m = load ptr, ptr %i.j, align 8              ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8              ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8
  %i.r = sext i32 %i.p to i64
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.r
  store i8 123, ptr %i.t, align 1
  %i.u = load i32, ptr %i.o, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp eq i32 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 36 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !range !65, !noundef !66
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.ac = load ptr, ptr %i.n, align 8
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef %i.ac, i32 noundef %i.u) #30, !inline_history !112
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.y, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 0, ptr %i.o, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit: ; preds = %bb.e, %bb.f, %bb.i
  %i.ai = load ptr, ptr %i.j, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.ai, ptr noundef nonnull @.str.46)
  %i.aj = load ptr, ptr %i.j, align 8
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIiEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.aj, i32 noundef %i.al)
  %i.am = load ptr, ptr %i.j, align 8
  tail call void @_ZN2v88internal18OutputStreamWriter9AddStringEPKc(ptr noundef nonnull align 8 dereferenceable(37) %i.am, ptr noundef nonnull @.str.47)
  %i.an = load ptr, ptr %i.j, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4
  tail call void @_ZN2v88internal18OutputStreamWriter9AddNumberIjEEvT_(ptr noundef nonnull align 8 dereferenceable(37) %i.an, i32 noundef %i.ap)
  %i.aq = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 32 ; 4 uses
  %i.at = load i32, ptr %i.as, align 8            ; 2 uses
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8
  %i.av = sext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.ar, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 125, ptr %i.ax, align 1
  %i.ay = load i32, ptr %i.as, align 8            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.j, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11

bb.j:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 36 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 4, !range !65, !noundef !66
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.bg = load ptr, ptr %i.ar, align 8
  %i.bh = load ptr, ptr %i.bf, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bg, i32 noundef %i.ay) #30, !inline_history !112
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.bc, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 0, ptr %i.as, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11: ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit, %bb.j, %bb.m
  %.not = icmp eq i64 %indvars.iv, %i.l
  br i1 %.not, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11
  %i.bm = load ptr, ptr %i.j, align 8             ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32 ; 4 uses
  %i.bp = load i32, ptr %i.bo, align 8            ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 8
  %i.br = sext i32 %i.bp to i64
  %i.bs = load ptr, ptr %i.bn, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 44, ptr %i.bt, align 1
  %i.bu = load i32, ptr %i.bo, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = icmp eq i32 %i.bu, %i.bw
  br i1 %i.bx, label %bb.o, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12

bb.o:                                             ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bm, i64 36 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 4, !range !65, !noundef !66
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.cc = load ptr, ptr %i.bn, align 8
  %i.cd = load ptr, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call noundef i32 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef %i.cc, i32 noundef %i.bu) #30, !inline_history !112
  %i.ch = icmp eq i32 %i.cg, 1
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.by, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i32 0, ptr %i.bo, align 8
  br label %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12

_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12: ; preds = %bb.r, %bb.o, %bb.n, %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit, label %bb.e, !llvm.loop !116

_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EED2Ev.exit: ; preds = %_ZN2v88internal18OutputStreamWriter12AddCharacterEc.exit12, %_ZNSt6vectorIN2v814CpuProfileNode8LineTickESaIS2_EEC2EmRKS3_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.b) #29
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
  %i.x = add nsw i32 %i.w, %.sroa.speculated      ; 4 uses
  store i32 %i.x, ptr %i.d, align 8
  %i.y = load i32, ptr %i.c, align 8
  %i.z = icmp ne i32 %i.x, %i.y
  %i.aa = load i8, ptr %i.g, align 4, !range !65
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %i.z, i1 true, i1 %i.ab
  br i1 %or.cond, label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit
  %i.ac = load ptr, ptr %0, align 8               ; 2 uses
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = load ptr, ptr %i.ac, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call noundef i32 %i.ag(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.ad, i32 noundef %i.x) #30, !inline_history !117
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.g, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i32 0, ptr %i.d, align 8
  br label %_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit

_ZN2v88internal18OutputStreamWriter15MaybeWriteChunkEv.exit: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit, %bb.v
  %i.aj = phi i32 [ %i.x, %_ZN2v88internal7MemCopyEPvPKvm.exit ], [ 0, %bb.v ]
  %i.ak = icmp ult ptr %i.v, %i.b
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !118

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
  br i1 %i.k, label %.lr.ph, label %tailrecurse.us._crit_edge, !prof !119

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
end_hunk_0
