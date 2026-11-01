Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastMesh?download=true
inline.NumInlined: 287
inline.NumDeleted: 47
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZL18buildMeshAdjacencyPtiii:bb.a
  store i16 %i.v, ptr %i.al, align 2, !tbaa !77
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 6
  store i16 0, ptr %i.am, align 2, !tbaa !77
  %i.an = zext i16 %i.x to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !77
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.af
  store i16 %i.ap, ptr %i.aq, align 2, !tbaa !77
  %i.ar = trunc i32 %.1127150.us to i16
  store i16 %i.ar, ptr %i.ao, align 2, !tbaa !77
  %i.as = add nsw i32 %.1127150.us, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.us = phi i32 [ %i.as, %bb.h ], [ %.1127150.us, %bb.g ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

._crit_edge.us:                                   ; preds = %bb.i, %bb.c
  %.1127.lcssa.us = phi i32 [ %.1127150.us, %bb.c ], [ %.2.us, %bb.i ] ; 3 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %.lr.ph168, label %.lr.ph152.us

.lr.ph168:                                        ; preds = %._crit_edge.us
  %i.at = shl nuw i32 %3, 1
  %i.au = zext nneg i32 %3 to i64
  %wide.trip.count189 = zext nneg i32 %1 to i64
  %wide.trip.count184 = zext nneg i32 %3 to i64
  br label %.lr.ph165

.preheader:                                       ; preds = %._crit_edge
  %i.av = icmp sgt i32 %.1127.lcssa.us, 0
  br i1 %i.av, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %.preheader
  %i.aw = shl nuw i32 %3, 1                       ; 2 uses
  %wide.trip.count194 = zext nneg i32 %.1127.lcssa.us to i64
  br label %bb.r

.lr.ph165:                                        ; preds = %.lr.ph168, %._crit_edge
  %indvars.iv186 = phi i64 [ 0, %.lr.ph168 ], [ %indvars.iv.next187, %._crit_edge ] ; 3 uses
  %i.ax = trunc nuw nsw i64 %indvars.iv186 to i32
  %i.ay = mul i32 %i.at, %i.ax
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %0, i64 %i.az ; 3 uses
  %i.bb = trunc i64 %indvars.iv186 to i16
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph165, %.loopexit
  %indvars.iv181 = phi i64 [ 0, %.lr.ph165 ], [ %indvars.iv.next182, %.loopexit ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv181
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !77 ; 3 uses
  %i.be = icmp eq i16 %i.bd, -1
  br i1 %i.be, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 4 uses
  %.not142 = icmp samesign ult i64 %indvars.iv.next182, %i.au
  br i1 %.not142, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv.next182
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !77 ; 2 uses
  %i.bh = icmp eq i16 %i.bg, -1
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !77
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bj = phi i16 [ %i.bi, %bb.m ], [ %i.bg, %bb.l ] ; 2 uses
  %i.bk = icmp ugt i16 %i.bd, %i.bj
  br i1 %i.bk, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bl = zext i16 %i.bj to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %i.bl
  %.0120160 = load i16, ptr %i.bm, align 2, !tbaa !77 ; 2 uses
  %.not143161 = icmp eq i16 %.0120160, -1
  br i1 %.not143161, label %.loopexit, label %.lr.ph163

.lr.ph163:                                        ; preds = %bb.o, %bb.q
  %.0120162 = phi i16 [ %.0120, %bb.q ], [ %.0120160, %bb.o ]
  %i.bn = zext i16 %.0120162 to i64               ; 2 uses
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.bn ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !77
  %i.br = icmp eq i16 %i.bq, %i.bd
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph163
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !77
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !77
  %i.bw = icmp eq i16 %i.bt, %i.bv
  br i1 %i.bw, label %.critedge, label %bb.q

.critedge:                                        ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  store i16 %i.bb, ptr %i.bx, align 2, !tbaa !77
  %i.by = trunc i64 %indvars.iv181 to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 6
  store i16 %i.by, ptr %i.bz, align 2, !tbaa !77
  br label %.loopexit

bb.q:                                             ; preds = %bb.p, %.lr.ph163
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.bn
  %.0120 = load i16, ptr %i.ca, align 2, !tbaa !77 ; 2 uses
  %.not143 = icmp eq i16 %.0120, -1
  br i1 %.not143, label %.loopexit, label %.lr.ph163

.loopexit:                                        ; preds = %bb.q, %bb.o, %.critedge, %bb.n
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count184
  br i1 %exitcond185.not, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %.loopexit, %bb.j
  %indvars.iv.next187 = add nuw nsw i64 %indvars.iv186, 1 ; 2 uses
  %exitcond190.not = icmp eq i64 %indvars.iv.next187, %wide.trip.count189
  br i1 %exitcond190.not, label %.preheader, label %.lr.ph165

._crit_edge171:                                   ; preds = %bb.t, %.lr.ph157, %.preheader146, %.preheader
  tail call void @_Z6rcFreePv(ptr noundef nonnull %i.e) #8
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph170, %bb.t
  %indvars.iv191 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next192, %bb.t ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %indvars.iv191 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !77 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 10
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !77 ; 3 uses
  %.not141 = icmp eq i16 %i.cd, %i.cf
  br i1 %.not141, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = zext i16 %i.cf to i32
  %i.ch = zext i16 %i.cd to i32
  %i.ci = mul i32 %i.aw, %i.ch
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cj
  %i.cl = mul i32 %i.aw, %i.cg
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [2 x i8], ptr %0, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !77
  %i.cq = zext i16 %i.cp to i32
  %i.cr = add nuw nsw i32 %3, %i.cq
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.ck, i64 %i.cs
  store i16 %i.cf, ptr %i.ct, align 2, !tbaa !77
  %i.cu = load i16, ptr %i.cc, align 2, !tbaa !77
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !77
  %i.cx = zext i16 %i.cw to i32
  %i.cy = add nuw nsw i32 %3, %i.cx
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.cz
  store i16 %i.cu, ptr %i.da, align 2, !tbaa !77
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %._crit_edge171, label %bb.r

.sink.split:                                      ; preds = %bb.b, %._crit_edge171
  %.sink = phi ptr [ %i.j, %._crit_edge171 ], [ %i.e, %bb.b ]
  tail call void @_Z6rcFreePv(ptr noundef nonnull %.sink) #8
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.not140.not, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z17rcMergePolyMeshesP9rcContextPP10rcPolyMeshiRS1_(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne i32 %2, 0
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %_ZN13rcScopedTimerD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17, !range !18, !noundef !19
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 12) #8, !call_target !27, !inline_history !2
  br label %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit

_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit: ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !127    ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 52 ; 7 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !74
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %i.o = load <2 x float>, ptr %i.m, align 8, !tbaa !60
  store <2 x float> %i.o, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.r = load float, ptr %i.q, align 8, !tbaa !60 ; 2 uses
  store float %i.r, ptr %i.p, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %i.t = load float, ptr %i.s, align 4, !tbaa !60 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 60 ; 2 uses
  store float %i.t, ptr %i.u, align 4, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.w = load float, ptr %i.v, align 8, !tbaa !60 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 3 uses
  store float %i.w, ptr %i.x, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %i.aa = load float, ptr %i.z, align 4, !tbaa !60 ; 2 uses
  store float %i.aa, ptr %i.y, align 4, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 2 uses
  store float %i.ac, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.af = load float, ptr %i.ae, align 4, !tbaa !60 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 76 ; 3 uses
  store float %i.af, ptr %i.ag, align 4, !tbaa !60
  %i.ah = icmp sgt i32 %2, 0                      ; 2 uses
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit
  %.0205.lcssa = phi i32 [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bv, %bb.d ] ; 3 uses
  %.0204.lcssa = phi i32 [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.by, %bb.d ] ; 5 uses
  %.0203.lcssa = phi i32 [ 0, %_ZN13rcScopedTimerC2EP9rcContext12rcTimerLabel.exit ], [ %i.bu, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !72
  %i.aj = sext i32 %.0205.lcssa to i64            ; 2 uses
  %i.ak = mul nsw i64 %i.aj, 6
  %i.al = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ak, i32 noundef 0) #8 ; 2 uses
  store ptr %i.al, ptr %3, align 8, !tbaa !68
  %.not = icmp eq ptr %i.al, null
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.am = phi float [ %i.af, %.lr.ph ], [ %i.br, %bb.d ] ; 2 uses
  %i.an = phi float [ %i.ac, %.lr.ph ], [ %i.bn, %bb.d ] ; 2 uses
  %i.ao = phi float [ %i.aa, %.lr.ph ], [ %i.bj, %bb.d ] ; 2 uses
  %i.ap = phi float [ %i.w, %.lr.ph ], [ %i.bf, %bb.d ] ; 2 uses
  %i.aq = phi float [ %i.t, %.lr.ph ], [ %i.bb, %bb.d ] ; 2 uses
  %i.ar = phi float [ %i.r, %.lr.ph ], [ %i.ax, %bb.d ] ; 2 uses
  %.0203243 = phi i32 [ 0, %.lr.ph ], [ %i.bu, %bb.d ]
  %.0204242 = phi i32 [ 0, %.lr.ph ], [ %i.by, %bb.d ]
  %.0205241 = phi i32 [ 0, %.lr.ph ], [ %i.bv, %bb.d ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !127 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.av = load float, ptr %i.au, align 4, !tbaa !60 ; 2 uses
  %i.aw = fcmp olt float %i.ar, %i.av
  %i.ax = select i1 %i.aw, float %i.ar, float %i.av ; 2 uses
  store float %i.ax, ptr %i.p, align 8, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.az = load float, ptr %i.ay, align 4, !tbaa !60 ; 2 uses
  %i.ba = fcmp olt float %i.aq, %i.az
  %i.bb = select i1 %i.ba, float %i.aq, float %i.az ; 2 uses
  store float %i.bb, ptr %i.u, align 4, !tbaa !60
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !60 ; 2 uses
  %i.be = fcmp olt float %i.ap, %i.bd
  %i.bf = select i1 %i.be, float %i.ap, float %i.bd ; 2 uses
  store float %i.bf, ptr %i.x, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !60 ; 2 uses
  %i.bi = fcmp ogt float %i.ao, %i.bh
  %i.bj = select i1 %i.bi, float %i.ao, float %i.bh ; 2 uses
  store float %i.bj, ptr %i.y, align 4, !tbaa !60
  %i.bk = getelementptr inbounds nuw i8, ptr %i.at, i64 72
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !60 ; 2 uses
  %i.bm = fcmp ogt float %i.an, %i.bl
  %i.bn = select i1 %i.bm, float %i.an, float %i.bl ; 2 uses
  store float %i.bn, ptr %i.ad, align 8, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.at, i64 76
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !60 ; 2 uses
  %i.bq = fcmp ogt float %i.am, %i.bp
  %i.br = select i1 %i.bq, float %i.am, float %i.bp ; 2 uses
  store float %i.br, ptr %i.ag, align 4, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !72 ; 2 uses
  %i.bu = tail call noundef i32 @llvm.smax.i32(i32 %.0203243, i32 %i.bt) ; 2 uses
  %i.bv = add nsw i32 %i.bt, %.0205241            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !73
  %i.by = add nsw i32 %i.bx, %.0204242            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d

bb.e:                                             ; preds = %._crit_edge
  %i.bz = mul nsw i32 %.0205.lcssa, 3
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef %i.bz) #8
  br label %bb.bj

bb.f:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 6 uses
  store i32 0, ptr %i.ca, align 4, !tbaa !73
  %i.cb = sext i32 %.0204.lcssa to i64            ; 4 uses
  %i.cc = shl nsw i64 %i.cb, 1                    ; 4 uses
  %i.cd = shl nsw i64 %i.cb, 2                    ; 2 uses
  %i.ce = load i32, ptr %i.l, align 4, !tbaa !74
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cd, %i.cf
  %i.ch = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cg, i32 noundef 0) #8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !69
  %.not215 = icmp eq ptr %i.ch, null
  br i1 %.not215, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cj = shl nsw i32 %.0204.lcssa, 1
  %i.ck = load i32, ptr %i.l, align 4, !tbaa !74
  %i.cl = mul nsw i32 %i.cj, %i.ck
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %i.cl) #8
  br label %bb.bj

bb.h:                                             ; preds = %bb.f
  %i.cm = load i32, ptr %i.l, align 4, !tbaa !74
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul i64 %i.cd, %i.cn
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ch, i8 -1, i64 %i.co, i1 false)
  %i.cp = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cc, i32 noundef 0) #8 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !70
  %.not216 = icmp eq ptr %i.cp, null
  br i1 %.not216, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.20, i32 noundef %.0204.lcssa) #8
  br label %bb.bj

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.cp, i8 0, i64 %i.cc, i1 false)
  %i.cr = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cb, i32 noundef 0) #8 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !71
  %.not217 = icmp eq ptr %i.cr, null
  br i1 %.not217, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.21, i32 noundef %.0204.lcssa) #8
  br label %bb.bj

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cr, i8 0, i64 %i.cb, i1 false)
  %i.ct = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cc, i32 noundef 0) #8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !82
  %.not218 = icmp eq ptr %i.ct, null
  br i1 %.not218, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.22, i32 noundef %.0204.lcssa) #8
  br label %bb.bj

bb.n:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.ct, i8 0, i64 %i.cc, i1 false)
  %i.cv = shl nsw i64 %i.aj, 2                    ; 2 uses
  %i.cw = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cv, i32 noundef 1) #8 ; 5 uses
  %.not219 = icmp eq ptr %i.cw, null
  br i1 %.not219, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.23, i32 noundef %.0205.lcssa) #8
  br label %bb.bi

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cw, i8 0, i64 %i.cv, i1 false)
  %i.cx = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef 16384, i32 noundef 1) #8 ; 4 uses
  %.not220 = icmp eq ptr %i.cx, null
  br i1 %.not220, label %bb.q, label %.preheader239.preheader

.preheader239.preheader:                          ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16384) %i.cx, i8 -1, i64 16384, i1 false), !tbaa !76
  %i.cy = zext nneg i32 %.0203.lcssa to i64
  %i.cz = shl nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.da = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.cz, i32 noundef 0) #8 ; 5 uses
  %.not221 = icmp eq ptr %i.da, null
  br i1 %.not221, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.24, i32 noundef 4096) #8
  br label %bb.bh

bb.r:                                             ; preds = %.preheader239.preheader
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.25, i32 noundef %.0203.lcssa) #8
  br label %bb.bg

bb.s:                                             ; preds = %.preheader239.preheader
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.da, i8 0, i64 %i.cz, i1 false)
  br i1 %i.ah, label %.lr.ph270, label %._crit_edge271

.lr.ph270:                                        ; preds = %bb.s
  %wide.trip.count305 = zext nneg i32 %2 to i64
  br label %bb.t

._crit_edge271:                                   ; preds = %._crit_edge267, %bb.s
  %i.db = load ptr, ptr %i.ci, align 8, !tbaa !69
  %i.dc = load i32, ptr %i.ca, align 4, !tbaa !73
  %i.dd = load i32, ptr %i.ai, align 8, !tbaa !72
  %i.de = load i32, ptr %i.l, align 4, !tbaa !74
  %i.df = tail call fastcc noundef zeroext i1 @_ZL18buildMeshAdjacencyPtiii(ptr noundef %i.db, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.de)
  br i1 %i.df, label %bb.bc, label %bb.bb

bb.t:                                             ; preds = %.lr.ph270, %._crit_edge267
  %indvars.iv302 = phi i64 [ 0, %.lr.ph270 ], [ %indvars.iv.next303, %._crit_edge267 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv302
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !127 ; 11 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load float, ptr %i.di, align 8, !tbaa !60
  %i.dk = load float, ptr %i.p, align 8, !tbaa !60
  %i.dl = load <1 x float>, ptr %i.n, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !60
  %i.do = load <2 x float>, ptr %i.x, align 8
  %i.dp = load <2 x float>, ptr %i.y, align 4
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 68
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !60
  %i.ds = insertelement <2 x float> %i.dp, float %i.dj, i64 1
  %i.dt = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.du = insertelement <2 x float> %i.dt, float %i.dk, i64 1
  %i.dv = fsub <2 x float> %i.ds, %i.du
  %i.dw = shufflevector <1 x float> %i.dl, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dx = fdiv <2 x float> %i.dv, %i.dw
  %i.dy = fadd <2 x float> %i.dx, splat (float 5.000000e-01)
  %i.dz = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.dy)
  %i.ea = fptoui <2 x float> %i.dz to <2 x i16>   ; 2 uses
  %i.eb = icmp eq <2 x i16> %i.ea, zeroinitializer ; 10 uses
  %i.ec = load float, ptr %i.ag, align 4, !tbaa !60
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 76
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !60
  %i.ef = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ec, i64 1
  %i.eh = insertelement <2 x float> %i.do, float %i.ee, i64 1
  %i.ei = fsub <2 x float> %i.eg, %i.eh
  %i.ej = fdiv <2 x float> %i.ei, %i.dw
  %i.ek = fadd <2 x float> %i.ej, splat (float 5.000000e-01) ; 2 uses
  %i.el = extractelement <2 x float> %i.ek, i64 0
  %i.em = tail call float @llvm.floor.f32(float %i.el)
  %i.en = fptoui float %i.em to i16
  %.fr272 = freeze i16 %i.en                      ; 2 uses
  %i.eo = icmp eq i16 %.fr272, 0                  ; 2 uses
  %i.ep = extractelement <2 x float> %i.ek, i64 1
  %i.eq = tail call float @llvm.floor.f32(float %i.ep)
  %i.er = fptoui float %i.eq to i16
  %i.es = icmp eq i16 %i.er, 0                    ; 11 uses
  %i.et = extractelement <2 x i1> %i.eb, i64 1    ; 7 uses
  %or.cond3 = or i1 %i.et, %i.eo
  %i.eu = extractelement <2 x i1> %i.eb, i64 0    ; 7 uses
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %i.eu
  %i.ev = select i1 %or.cond5, i1 true, i1 %i.es
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dh, i64 40 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !72 ; 2 uses
  %i.ey = icmp sgt i32 %i.ex, 0
  br i1 %i.ey, label %.lr.ph255, label %.preheader238

.lr.ph255:                                        ; preds = %bb.t
  %i.ez = load ptr, ptr %i.dh, align 8, !tbaa !68
  %i.fa = load ptr, ptr %3, align 8, !tbaa !68    ; 2 uses
  %i.fb = extractelement <2 x i16> %i.ea, i64 1
  br label %bb.u

.preheader238:                                    ; preds = %_ZL9addVertextttPtPiS0_Ri.exit, %bb.t
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dh, i64 44 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph266, label %._crit_edge267

.lr.ph266:                                        ; preds = %.preheader238
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.pre307 = load i32, ptr %i.ca, align 4, !tbaa !73
  %.pre308 = load i32, ptr %i.l, align 4, !tbaa !74
  %broadcast.splat408 = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert409 = insertelement <8 x i1> poison, i1 %i.es, i64 0
  %broadcast.splat410 = shufflevector <8 x i1> %broadcast.splatinsert409, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat412 = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat363 = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert364 = insertelement <8 x i1> poison, i1 %i.es, i64 0
  %broadcast.splat365 = shufflevector <8 x i1> %broadcast.splatinsert364, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splat367 = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat409 = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert410 = insertelement <8 x i1> poison, i1 %i.es, i64 0
  %broadcast.splat411 = shufflevector <8 x i1> %broadcast.splatinsert410, <8 x i1> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat413 = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %broadcast.splat = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert335 = insertelement <8 x i1> poison, i1 %i.es, i64 0
  %broadcast.splat336 = shufflevector <8 x i1> %broadcast.splatinsert335, <8 x i1> poison, <8 x i32> zeroinitializer
  %broadcast.splat338 = shufflevector <2 x i1> %i.eb, <2 x i1> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  br label %bb.z

bb.u:                                             ; preds = %.lr.ph255, %_ZL9addVertextttPtPiS0_Ri.exit
  %i.fj = phi i32 [ %i.ex, %.lr.ph255 ], [ %i.gy, %_ZL9addVertextttPtPiS0_Ri.exit ]
  %indvars.iv281 = phi i64 [ 0, %.lr.ph255 ], [ %indvars.iv.next282, %_ZL9addVertextttPtPiS0_Ri.exit ] ; 3 uses
  %.idx = mul nuw nsw i64 %indvars.iv281, 6
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.idx ; 3 uses
  %i.fl = load i16, ptr %i.fk, align 2, !tbaa !77
  %i.fm = add i16 %i.fl, %i.fb                    ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !77 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !77
  %i.fr = add i16 %i.fq, %.fr272                  ; 3 uses
  %i.fs = zext i16 %i.fm to i64
  %i.ft = zext i16 %i.fr to i64
  %i.fu = mul nuw nsw i64 %i.fs, 835
  %i.fv = mul nuw nsw i64 %i.ft, 799
  %i.fw = add nuw nsw i64 %i.fv, %i.fu
  %i.fx = and i64 %i.fw, 4095
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.fx ; 3 uses
  %.03642.i = load i32, ptr %i.fy, align 4, !tbaa !76 ; 2 uses
  %.not43.i = icmp eq i32 %.03642.i, -1
  br i1 %.not43.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u
  %i.fz = zext i16 %i.fo to i32
  %invariant.op = sub i32 2, %i.fz
  br label %bb.v

bb.v:                                             ; preds = %bb.y, %.lr.ph.i
  %.03644.i = phi i32 [ %.03642.i, %.lr.ph.i ], [ %.036.i, %bb.y ] ; 3 uses
  %i.ga = mul nsw i32 %.03644.i, 3
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.gb ; 3 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !77
  %i.ge = icmp eq i16 %i.gd, %i.fm
  br i1 %i.ge, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !77
  %i.gh = zext i16 %i.gg to i32
  %.reass.i.reass.reass = add i32 %i.gh, %invariant.op
  %i.gi = icmp ult i32 %.reass.i.reass.reass, 5
  br i1 %i.gi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !77
  %i.gl = icmp eq i16 %i.gk, %i.fr
  br i1 %i.gl, label %_ZL9addVertextttPtPiS0_Ri.exit, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.gm = sext i32 %.03644.i to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gm
  %.036.i = load i32, ptr %i.gn, align 4, !tbaa !76 ; 2 uses
  %.not.i = icmp eq i32 %.036.i, -1
  br i1 %.not.i, label %._crit_edge.i, label %bb.v

._crit_edge.i:                                    ; preds = %bb.y, %bb.u
  %i.go = load i32, ptr %i.ai, align 8, !tbaa !76 ; 5 uses
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.ai, align 8, !tbaa !76
  %i.gq = mul nsw i32 %i.go, 3
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.fa, i64 %i.gr ; 3 uses
  store i16 %i.fm, ptr %i.gs, align 2, !tbaa !77
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store i16 %i.fo, ptr %i.gt, align 2, !tbaa !77
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i16 %i.fr, ptr %i.gu, align 2, !tbaa !77
  %i.gv = load i32, ptr %i.fy, align 4, !tbaa !76
  %i.gw = sext i32 %i.go to i64
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.gw
  store i32 %i.gv, ptr %i.gx, align 4, !tbaa !76
  store i32 %i.go, ptr %i.fy, align 4, !tbaa !76
  %.pre = load i32, ptr %i.ew, align 8, !tbaa !72
  br label %_ZL9addVertextttPtPiS0_Ri.exit

_ZL9addVertextttPtPiS0_Ri.exit:                   ; preds = %bb.x, %._crit_edge.i
  %i.gy = phi i32 [ %.pre, %._crit_edge.i ], [ %i.fj, %bb.x ] ; 2 uses
  %.2.in.i = phi i32 [ %i.go, %._crit_edge.i ], [ %.03644.i, %bb.x ]
  %.2.i = trunc i32 %.2.in.i to i16
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv281
  store i16 %.2.i, ptr %i.gz, align 2, !tbaa !77
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.ha = sext i32 %i.gy to i64
  %i.hb = icmp slt i64 %indvars.iv.next282, %i.ha
  br i1 %i.hb, label %bb.u, label %.preheader238

._crit_edge267:                                   ; preds = %.loopexit, %.preheader238
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %._crit_edge271, label %bb.t

bb.z:                                             ; preds = %.lr.ph266, %.loopexit
  %i.hc = phi i32 [ %.pre308, %.lr.ph266 ], [ %i.ij, %.loopexit ] ; 2 uses
  %i.hd = phi i32 [ %.pre307, %.lr.ph266 ], [ %i.ii, %.loopexit ] ; 2 uses
  %indvars.iv299 = phi i64 [ 0, %.lr.ph266 ], [ %indvars.iv.next300, %.loopexit ] ; 5 uses
  %i.he = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  %i.hf = ptrtoaddr ptr %i.he to i64              ; 2 uses
  %i.hg = shl i32 %i.hd, 1
  %i.hh = mul i32 %i.hg, %i.hc
  %i.hi = sext i32 %i.hh to i64                   ; 3 uses
  %i.hj = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hi ; 55 uses
  %i.hk = load ptr, ptr %i.ff, align 8, !tbaa !69 ; 2 uses
  %i.hl = ptrtoaddr ptr %i.hk to i64              ; 2 uses
  %indvars.iv299.tr = trunc i64 %indvars.iv299 to i32
  %i.hm = shl nuw i32 %indvars.iv299.tr, 1
  %i.hn = mul i32 %i.hm, %i.hc
  %i.ho = sext i32 %i.hn to i64                   ; 3 uses
  %i.hp = getelementptr inbounds [2 x i8], ptr %i.hk, i64 %i.ho ; 11 uses
  %i.hq = load ptr, ptr %i.fg, align 8, !tbaa !70
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr %i.hq, i64 %indvars.iv299
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !77
  %i.ht = load ptr, ptr %i.cq, align 8, !tbaa !70
  %i.hu = sext i32 %i.hd to i64                   ; 2 uses
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.ht, i64 %i.hu
  store i16 %i.hs, ptr %i.hv, align 2, !tbaa !77
  %i.hw = load ptr, ptr %i.fh, align 8, !tbaa !71
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %indvars.iv299
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !78
  %i.hz = load ptr, ptr %i.cs, align 8, !tbaa !71
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hu
  store i8 %i.hy, ptr %i.ia, align 1, !tbaa !78
  %i.ib = load ptr, ptr %i.fi, align 8, !tbaa !82
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %indvars.iv299
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !77
  %i.ie = load ptr, ptr %i.cu, align 8, !tbaa !82
  %i.if = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [2 x i8], ptr %i.ie, i64 %i.ig
  store i16 %i.id, ptr %i.ih, align 2, !tbaa !77
  %i.ii = add nsw i32 %i.if, 1                    ; 2 uses
  store i32 %i.ii, ptr %i.ca, align 4, !tbaa !73
  %i.ij = load i32, ptr %i.l, align 4, !tbaa !74  ; 6 uses
  %i.ik = icmp sgt i32 %i.ij, 0
  br i1 %i.ik, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %bb.z
  %wide.trip.count287 = zext nneg i32 %i.ij to i64
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %.lr.ph258.preheader, %bb.aa
  %indvars.iv284 = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next285, %bb.aa ] ; 3 uses
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %i.hp, i64 %indvars.iv284
  %i.im = load i16, ptr %i.il, align 2, !tbaa !77 ; 2 uses
  %i.in = icmp eq i16 %i.im, -1
  br i1 %i.in, label %._crit_edge259, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph258
  %i.io = zext i16 %i.im to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !77
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr %i.hj, i64 %indvars.iv284
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !77
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %._crit_edge259, label %.lr.ph258

._crit_edge259:                                   ; preds = %bb.aa, %.lr.ph258, %bb.z
  br i1 %i.ev, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge259
  %i.is = shl nsw i32 %i.ij, 1                    ; 2 uses
  %i.it = icmp slt i32 %i.ij, %i.is
  br i1 %i.it, label %.lr.ph264, label %.loopexit

.lr.ph264:                                        ; preds = %.preheader
  %i.iu = sext i32 %i.ij to i64                   ; 13 uses
  %wide.trip.count297 = sext i32 %i.is to i64     ; 5 uses
  %i.iv = sub nsw i64 %wide.trip.count297, %i.iu  ; 13 uses
  %min.iters.check = icmp ult i64 %i.iv, 8        ; 2 uses
  br i1 %i.eo, label %.lr.ph264.split.us.preheader.a, label %iter.check.a

iter.check.a:                                     ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.preheader, label %vector.memcheck357

vector.memcheck357:                               ; preds = %iter.check.a
  %i.iw = shl nsw i64 %i.hi, 1
  %i.ix = shl nsw i64 %i.ho, 1
  %i.iy = add i64 %i.iw, %i.hf
  %i.iz = add i64 %i.ix, %i.hl
  %i.ja = sub i64 %i.iz, %i.iy
  %diff.check358 = icmp ugt i64 %i.ja, -32
  br i1 %diff.check358, label %.lr.ph264.split.preheader, label %vector.main.loop.iter.check.a

vector.main.loop.iter.check.a:                    ; preds = %vector.memcheck357
  %min.iters.check359 = icmp ult i64 %i.iv, 16
  br i1 %min.iters.check359, label %vec.epilog.ph.a, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check.a
  %i.jb = and i64 %i.iv, 8
  %n.vec361 = and i64 %i.iv, -16                  ; 4 uses
  %i.jc = add nsw i64 %n.vec361, %i.iu
  br label %vector.body368

vector.body368:                                   ; preds = %vector.ph360, %pred.store.continue403
  %index369 = phi i64 [ 0, %vector.ph360 ], [ %index.next404, %pred.store.continue403 ] ; 2 uses
  %i.jd = add nuw i64 %index369, %i.iu            ; 17 uses
  %i.je = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.jd ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %wide.load370 = load <8 x i16>, ptr %i.je, align 2, !tbaa !77 ; 10 uses
  %wide.load371 = load <8 x i16>, ptr %i.jf, align 2, !tbaa !77 ; 10 uses
  %i.jg = icmp slt <8 x i16> %wide.load370, splat (i16 -1) ; 3 uses
  %i.jh = icmp slt <8 x i16> %wide.load371, splat (i16 -1) ; 3 uses
  %i.ji = and <8 x i16> %wide.load370, splat (i16 15) ; 3 uses
  %i.jj = and <8 x i16> %wide.load371, splat (i16 15) ; 3 uses
  %i.jk = icmp eq <8 x i16> %i.ji, zeroinitializer
  %i.jl = icmp eq <8 x i16> %i.jj, zeroinitializer
  %i.jm = icmp eq <8 x i16> %i.ji, splat (i16 1)
  %i.jn = icmp eq <8 x i16> %i.jj, splat (i16 1)
  %i.jo = icmp eq <8 x i16> %i.ji, splat (i16 2)
  %i.jp = icmp eq <8 x i16> %i.jj, splat (i16 2)
  %i.jq = and <8 x i1> %i.jg, %i.jk
  %i.jr = and <8 x i1> %i.jh, %i.jl
  %i.js = and <8 x i1> %i.jg, %i.jm
  %i.jt = and <8 x i1> %i.jh, %i.jn
  %i.ju = and <8 x i1> %i.jg, %i.jo
  %i.jv = and <8 x i1> %i.jh, %i.jp
  %i.jw = select <8 x i1> %i.js, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.jx = select <8 x i1> %i.jt, <8 x i1> %broadcast.splat410, <8 x i1> zeroinitializer
  %i.jy = select <8 x i1> %i.ju, <8 x i1> %broadcast.splat408, <8 x i1> %i.jw
  %i.jz = select <8 x i1> %i.jv, <8 x i1> %broadcast.splat408, <8 x i1> %i.jx
  %i.ka = select <8 x i1> %i.jq, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %i.kb = select <8 x i1> %i.jr, <8 x i1> %broadcast.splat412, <8 x i1> zeroinitializer
  %i.kc = or <8 x i1> %i.jy, %i.ka                ; 8 uses
  %i.kd = or <8 x i1> %i.jz, %i.kb                ; 8 uses
  %i.ke = extractelement <8 x i1> %i.kc, i64 0
  br i1 %i.ke, label %pred.store.if372, label %pred.store.continue373

pred.store.if372:                                 ; preds = %vector.body368
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kg = extractelement <8 x i16> %wide.load370, i64 0
  store i16 %i.kg, ptr %i.kf, align 2, !tbaa !77
  br label %pred.store.continue373

pred.store.continue373:                           ; preds = %pred.store.if372, %vector.body368
  %i.kh = extractelement <8 x i1> %i.kc, i64 1
  br i1 %i.kh, label %pred.store.if374, label %pred.store.continue375

pred.store.if374:                                 ; preds = %pred.store.continue373
  %i.ki = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kj = getelementptr i8, ptr %i.ki, i64 2
  %i.kk = extractelement <8 x i16> %wide.load370, i64 1
  store i16 %i.kk, ptr %i.kj, align 2, !tbaa !77
  br label %pred.store.continue375

pred.store.continue375:                           ; preds = %pred.store.if374, %pred.store.continue373
  %i.kl = extractelement <8 x i1> %i.kc, i64 2
  br i1 %i.kl, label %pred.store.if376, label %pred.store.continue377

pred.store.if376:                                 ; preds = %pred.store.continue375
  %i.km = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kn = getelementptr i8, ptr %i.km, i64 4
  %i.ko = extractelement <8 x i16> %wide.load370, i64 2
  store i16 %i.ko, ptr %i.kn, align 2, !tbaa !77
  br label %pred.store.continue377

pred.store.continue377:                           ; preds = %pred.store.if376, %pred.store.continue375
  %i.kp = extractelement <8 x i1> %i.kc, i64 3
  br i1 %i.kp, label %pred.store.if378, label %pred.store.continue379

pred.store.if378:                                 ; preds = %pred.store.continue377
  %i.kq = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kr = getelementptr i8, ptr %i.kq, i64 6
  %i.ks = extractelement <8 x i16> %wide.load370, i64 3
  store i16 %i.ks, ptr %i.kr, align 2, !tbaa !77
  br label %pred.store.continue379

pred.store.continue379:                           ; preds = %pred.store.if378, %pred.store.continue377
  %i.kt = extractelement <8 x i1> %i.kc, i64 4
  br i1 %i.kt, label %pred.store.if380.a, label %pred.store.continue381.a

pred.store.if380.a:                               ; preds = %pred.store.continue379
  %i.ku = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kv = getelementptr i8, ptr %i.ku, i64 8
  %i.kw = extractelement <8 x i16> %wide.load370, i64 4
  store i16 %i.kw, ptr %i.kv, align 2, !tbaa !77
  br label %pred.store.continue381.a

pred.store.continue381.a:                         ; preds = %pred.store.if380.a, %pred.store.continue379
  %i.kx = extractelement <8 x i1> %i.kc, i64 5
  br i1 %i.kx, label %pred.store.if382.a, label %pred.store.continue383.a

pred.store.if382.a:                               ; preds = %pred.store.continue381.a
  %i.ky = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.kz = getelementptr i8, ptr %i.ky, i64 10
  %i.la = extractelement <8 x i16> %wide.load370, i64 5
  store i16 %i.la, ptr %i.kz, align 2, !tbaa !77
  br label %pred.store.continue383.a

pred.store.continue383.a:                         ; preds = %pred.store.if382.a, %pred.store.continue381.a
  %i.lb = extractelement <8 x i1> %i.kc, i64 6
  br i1 %i.lb, label %pred.store.if384.a, label %pred.store.continue385.a

pred.store.if384.a:                               ; preds = %pred.store.continue383.a
  %i.lc = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.ld = getelementptr i8, ptr %i.lc, i64 12
  %i.le = extractelement <8 x i16> %wide.load370, i64 6
  store i16 %i.le, ptr %i.ld, align 2, !tbaa !77
  br label %pred.store.continue385.a

pred.store.continue385.a:                         ; preds = %pred.store.if384.a, %pred.store.continue383.a
  %i.lf = extractelement <8 x i1> %i.kc, i64 7
  br i1 %i.lf, label %pred.store.if386.a, label %pred.store.continue387.a

pred.store.if386.a:                               ; preds = %pred.store.continue385.a
  %i.lg = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lh = getelementptr i8, ptr %i.lg, i64 14
  %i.li = extractelement <8 x i16> %wide.load370, i64 7
  store i16 %i.li, ptr %i.lh, align 2, !tbaa !77
  br label %pred.store.continue387.a

pred.store.continue387.a:                         ; preds = %pred.store.if386.a, %pred.store.continue385.a
  %i.lj = extractelement <8 x i1> %i.kd, i64 0
  br i1 %i.lj, label %pred.store.if388.a, label %pred.store.continue389.a

pred.store.if388.a:                               ; preds = %pred.store.continue387.a
  %i.lk = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.ll = getelementptr i8, ptr %i.lk, i64 16
  %i.lm = extractelement <8 x i16> %wide.load371, i64 0
  store i16 %i.lm, ptr %i.ll, align 2, !tbaa !77
  br label %pred.store.continue389.a

pred.store.continue389.a:                         ; preds = %pred.store.if388.a, %pred.store.continue387.a
  %i.ln = extractelement <8 x i1> %i.kd, i64 1
  br i1 %i.ln, label %pred.store.if390.a, label %pred.store.continue391.a

pred.store.if390.a:                               ; preds = %pred.store.continue389.a
  %i.lo = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lp = getelementptr i8, ptr %i.lo, i64 18
  %i.lq = extractelement <8 x i16> %wide.load371, i64 1
  store i16 %i.lq, ptr %i.lp, align 2, !tbaa !77
  br label %pred.store.continue391.a

pred.store.continue391.a:                         ; preds = %pred.store.if390.a, %pred.store.continue389.a
  %i.lr = extractelement <8 x i1> %i.kd, i64 2
  br i1 %i.lr, label %pred.store.if392.a, label %pred.store.continue393.a

pred.store.if392.a:                               ; preds = %pred.store.continue391.a
  %i.ls = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lt = getelementptr i8, ptr %i.ls, i64 20
  %i.lu = extractelement <8 x i16> %wide.load371, i64 2
  store i16 %i.lu, ptr %i.lt, align 2, !tbaa !77
  br label %pred.store.continue393.a

pred.store.continue393.a:                         ; preds = %pred.store.if392.a, %pred.store.continue391.a
  %i.lv = extractelement <8 x i1> %i.kd, i64 3
  br i1 %i.lv, label %pred.store.if394.a, label %pred.store.continue395.a

pred.store.if394.a:                               ; preds = %pred.store.continue393.a
  %i.lw = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.lx = getelementptr i8, ptr %i.lw, i64 22
  %i.ly = extractelement <8 x i16> %wide.load371, i64 3
  store i16 %i.ly, ptr %i.lx, align 2, !tbaa !77
  br label %pred.store.continue395.a

pred.store.continue395.a:                         ; preds = %pred.store.if394.a, %pred.store.continue393.a
  %i.lz = extractelement <8 x i1> %i.kd, i64 4
  br i1 %i.lz, label %pred.store.if396, label %pred.store.continue397

pred.store.if396:                                 ; preds = %pred.store.continue395.a
  %i.ma = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.mb = getelementptr i8, ptr %i.ma, i64 24
  %i.mc = extractelement <8 x i16> %wide.load371, i64 4
  store i16 %i.mc, ptr %i.mb, align 2, !tbaa !77
  br label %pred.store.continue397

pred.store.continue397:                           ; preds = %pred.store.if396, %pred.store.continue395.a
  %i.md = extractelement <8 x i1> %i.kd, i64 5
  br i1 %i.md, label %pred.store.if398, label %pred.store.continue399

pred.store.if398:                                 ; preds = %pred.store.continue397
  %i.me = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.mf = getelementptr i8, ptr %i.me, i64 26
  %i.mg = extractelement <8 x i16> %wide.load371, i64 5
  store i16 %i.mg, ptr %i.mf, align 2, !tbaa !77
  br label %pred.store.continue399

pred.store.continue399:                           ; preds = %pred.store.if398, %pred.store.continue397
  %i.mh = extractelement <8 x i1> %i.kd, i64 6
  br i1 %i.mh, label %pred.store.if400, label %pred.store.continue401

pred.store.if400:                                 ; preds = %pred.store.continue399
  %i.mi = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.mj = getelementptr i8, ptr %i.mi, i64 28
  %i.mk = extractelement <8 x i16> %wide.load371, i64 6
  store i16 %i.mk, ptr %i.mj, align 2, !tbaa !77
  br label %pred.store.continue401

pred.store.continue401:                           ; preds = %pred.store.if400, %pred.store.continue399
  %i.ml = extractelement <8 x i1> %i.kd, i64 7
  br i1 %i.ml, label %pred.store.if402, label %pred.store.continue403

pred.store.if402:                                 ; preds = %pred.store.continue401
  %i.mm = getelementptr [2 x i8], ptr %i.hj, i64 %i.jd
  %i.mn = getelementptr i8, ptr %i.mm, i64 30
  %i.mo = extractelement <8 x i16> %wide.load371, i64 7
  store i16 %i.mo, ptr %i.mn, align 2, !tbaa !77
  br label %pred.store.continue403

pred.store.continue403:                           ; preds = %pred.store.if402, %pred.store.continue401
  %index.next404 = add nuw i64 %index369, 16      ; 2 uses
  %i.mp = icmp eq i64 %index.next404, %n.vec361
  br i1 %i.mp, label %middle.block405, label %vector.body368, !llvm.loop !120

middle.block405:                                  ; preds = %pred.store.continue403
  %cmp.n406 = icmp eq i64 %i.iv, %n.vec361
  br i1 %cmp.n406, label %.loopexit, label %vec.epilog.iter.check.a

vec.epilog.iter.check.a:                          ; preds = %middle.block405
  %min.epilog.iters.check.not.not.a = icmp eq i64 %i.jb, 0
  br i1 %min.epilog.iters.check.not.not.a, label %.lr.ph264.split.preheader, label %vec.epilog.ph.a, !prof !81

vec.epilog.ph.a:                                  ; preds = %vector.main.loop.iter.check.a, %vec.epilog.iter.check.a
  %vec.epilog.resume.val.a = phi i64 [ %n.vec361, %vec.epilog.iter.check.a ], [ 0, %vector.main.loop.iter.check.a ]
  %n.vec407 = and i64 %i.iv, -8                   ; 3 uses
  %i.mq = add nsw i64 %n.vec407, %i.iu
  br label %vec.epilog.vector.body.a

vec.epilog.vector.body.a:                         ; preds = %pred.store.continue431, %vec.epilog.ph.a
  %index414 = phi i64 [ %vec.epilog.resume.val.a, %vec.epilog.ph.a ], [ %index.next432, %pred.store.continue431 ] ; 2 uses
  %i.mr = add nuw i64 %index414, %i.iu            ; 9 uses
  %i.ms = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.mr
  %wide.load415 = load <8 x i16>, ptr %i.ms, align 2, !tbaa !77 ; 10 uses
  %i.mt = icmp slt <8 x i16> %wide.load415, splat (i16 -1) ; 3 uses
  %i.mu = and <8 x i16> %wide.load415, splat (i16 15) ; 3 uses
  %i.mv = icmp eq <8 x i16> %i.mu, zeroinitializer
  %i.mw = icmp eq <8 x i16> %i.mu, splat (i16 1)
  %i.mx = icmp eq <8 x i16> %i.mu, splat (i16 2)
  %i.my = and <8 x i1> %i.mt, %i.mv
  %i.mz = and <8 x i1> %i.mt, %i.mw
  %i.na = and <8 x i1> %i.mt, %i.mx
  %i.nb = select <8 x i1> %i.mz, <8 x i1> %broadcast.splat365, <8 x i1> zeroinitializer
  %i.nc = select <8 x i1> %i.na, <8 x i1> %broadcast.splat363, <8 x i1> %i.nb
  %i.nd = select <8 x i1> %i.my, <8 x i1> %broadcast.splat367, <8 x i1> zeroinitializer
  %i.ne = or <8 x i1> %i.nc, %i.nd                ; 8 uses
  %i.nf = extractelement <8 x i1> %i.ne, i64 0
  br i1 %i.nf, label %pred.store.if416, label %pred.store.continue417

pred.store.if416:                                 ; preds = %vec.epilog.vector.body.a
  %i.ng = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.mr
  %i.nh = extractelement <8 x i16> %wide.load415, i64 0
  store i16 %i.nh, ptr %i.ng, align 2, !tbaa !77
  br label %pred.store.continue417

pred.store.continue417:                           ; preds = %pred.store.if416, %vec.epilog.vector.body.a
  %i.ni = extractelement <8 x i1> %i.ne, i64 1
  br i1 %i.ni, label %pred.store.if418, label %pred.store.continue419

pred.store.if418:                                 ; preds = %pred.store.continue417
  %i.nj = getelementptr [2 x i8], ptr %i.hj, i64 %i.mr
  %i.nk = getelementptr i8, ptr %i.nj, i64 2
  %i.nl = extractelement <8 x i16> %wide.load415, i64 1
  store i16 %i.nl, ptr %i.nk, align 2, !tbaa !77
  br label %pred.store.continue419

pred.store.continue419:                           ; preds = %pred.store.if418, %pred.store.continue417
  %i.nm = extractelement <8 x i1> %i.ne, i64 2
  br i1 %i.nm, label %pred.store.if420, label %pred.store.continue421

pred.store.if420:                                 ; preds = %pred.store.continue419
  %i.nn = getelementptr [2 x i8], ptr %i.hj, i64 %i.mr
  %i.no = getelementptr i8, ptr %i.nn, i64 4
  %i.np = extractelement <8 x i16> %wide.load415, i64 2
  store i16 %i.np, ptr %i.no, align 2, !tbaa !77
  br label %pred.store.continue421

pred.store.continue421:                           ; preds = %pred.store.if420, %pred.store.continue419
  %i.nq = extractelement <8 x i1> %i.ne, i64 3
  br i1 %i.nq, label %pred.store.if422, label %pred.store.continue423

pred.store.if422:                                 ; preds = %pred.store.continue421
  %i.nr = getelementptr [2 x i8], ptr %i.hj, i64 %i.mr
  %i.ns = getelementptr i8, ptr %i.nr, i64 6
  %i.nt = extractelement <8 x i16> %wide.load415, i64 3
  store i16 %i.nt, ptr %i.ns, align 2, !tbaa !77
  br label %pred.store.continue423

pred.store.continue423:                           ; preds = %pred.store.if422, %pred.store.continue421
  %i.nu = extractelement <8 x i1> %i.ne, i64 4
  br i1 %i.nu, label %pred.store.if424, label %pred.store.continue425

pred.store.if424:                                 ; preds = %pred.store.continue423
  %i.nv = getelementptr [2 x i8], ptr %i.hj, i64 %i.mr
  %i.nw = getelementptr i8, ptr %i.nv, i64 8
  %i.nx = extractelement <8 x i16> %wide.load415, i64 4
  store i16 %i.nx, ptr %i.nw, align 2, !tbaa !77
  br label %pred.store.continue425

pred.store.continue425:                           ; preds = %pred.store.if424, %pred.store.continue423
  %i.ny = extractelement <8 x i1> %i.ne, i64 5
  br i1 %i.ny, label %pred.store.if426, label %pred.store.continue427

pred.store.if426:                                 ; preds = %pred.store.continue425
  %i.nz = getelementptr [2 x i8], ptr %i.hj, i64 %i.mr
  %i.oa = getelementptr i8, ptr %i.nz, i64 10
  %i.ob = extractelement <8 x i16> %wide.load415, i64 5
  store i16 %i.ob, ptr %i.oa, align 2, !tbaa !77
  br label %pred.store.continue427

pred.store.continue427:                           ; preds = %pred.store.if426, %pred.store.continue425
  %i.oc = extractelement <8 x i1> %i.ne, i64 6
  br i1 %i.oc, label %pred.store.if428, label %pred.store.continue429

pred.store.if428:                                 ; preds = %pred.store.continue427
  %i.od = getelementptr [2 x i8], ptr %i.hj, i64 %i.mr
  %i.oe = getelementptr i8, ptr %i.od, i64 12
  %i.of = extractelement <8 x i16> %wide.load415, i64 6
  store i16 %i.of, ptr %i.oe, align 2, !tbaa !77
  br label %pred.store.continue429

pred.store.continue429:                           ; preds = %pred.store.if428, %pred.store.continue427
  %i.og = extractelement <8 x i1> %i.ne, i64 7
  br i1 %i.og, label %pred.store.if430, label %pred.store.continue431

pred.store.if430:                                 ; preds = %pred.store.continue429
  %i.oh = getelementptr [2 x i8], ptr %i.hj, i64 %i.mr
  %i.oi = getelementptr i8, ptr %i.oh, i64 14
  %i.oj = extractelement <8 x i16> %wide.load415, i64 7
  store i16 %i.oj, ptr %i.oi, align 2, !tbaa !77
  br label %pred.store.continue431

pred.store.continue431:                           ; preds = %pred.store.if430, %pred.store.continue429
  %index.next432 = add nuw i64 %index414, 8       ; 2 uses
  %i.ok = icmp eq i64 %index.next432, %n.vec407
  br i1 %i.ok, label %vec.epilog.middle.block.a, label %vec.epilog.vector.body.a, !llvm.loop !121

vec.epilog.middle.block.a:                        ; preds = %pred.store.continue431
  %cmp.n433 = icmp eq i64 %i.iv, %n.vec407
  br i1 %cmp.n433, label %.loopexit, label %.lr.ph264.split.preheader

.lr.ph264.split.preheader:                        ; preds = %iter.check.a, %vector.memcheck357, %vec.epilog.iter.check.a, %vec.epilog.middle.block.a
  %indvars.iv289.ph = phi i64 [ %i.iu, %iter.check.a ], [ %i.iu, %vector.memcheck357 ], [ %i.jc, %vec.epilog.iter.check.a ], [ %i.mq, %vec.epilog.middle.block.a ] ; 6 uses
  %xtraiter = and i64 %indvars.iv289.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph264.split.prol.loopexit, label %.lr.ph264.split.prol

.lr.ph264.split.prol:                             ; preds = %.lr.ph264.split.preheader
  %i.ol = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv289.ph
  %i.om = load i16, ptr %i.ol, align 2, !tbaa !77 ; 3 uses
  %or.cond224.prol = icmp sgt i16 %i.om, -2
  br i1 %or.cond224.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph264.split.prol
  %i.on = and i16 %i.om, 15
  switch i16 %i.on, label %.lr.ph264.split.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ae
    i16 1, label %bb.ad
    i16 2, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.eu, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.es, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

bb.ae:                                            ; preds = %bb.ab
  br i1 %i.et, label %.sink.split330.prol, label %.lr.ph264.split.prol.loopexit.unr-lcssa

.sink.split330.prol:                              ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv289.ph
  store i16 %i.om, ptr %i.oo, align 2, !tbaa !77
  br label %.lr.ph264.split.prol.loopexit.unr-lcssa

.lr.ph264.split.prol.loopexit.unr-lcssa:          ; preds = %.sink.split330.prol, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.lr.ph264.split.prol
  %indvars.iv.next290.prol = add nuw nsw i64 %indvars.iv289.ph, 1
  br label %.lr.ph264.split.prol.loopexit

.lr.ph264.split.prol.loopexit:                    ; preds = %.lr.ph264.split.prol.loopexit.unr-lcssa, %.lr.ph264.split.preheader
  %indvars.iv289.unr = phi i64 [ %indvars.iv289.ph, %.lr.ph264.split.preheader ], [ %indvars.iv.next290.prol, %.lr.ph264.split.prol.loopexit.unr-lcssa ]
  %i.op = add nsw i64 %wide.trip.count297, -1
  %i.oq = icmp eq i64 %indvars.iv289.ph, %i.op
  br i1 %i.oq, label %.loopexit, label %.lr.ph264.split

.lr.ph264.split.us.preheader.a:                   ; preds = %.lr.ph264
  br i1 %min.iters.check, label %.lr.ph264.split.us.preheader435, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph264.split.us.preheader.a
  %i.or = shl nsw i64 %i.hi, 1
  %i.os = shl nsw i64 %i.ho, 1
  %i.ot = add i64 %i.or, %i.hf
  %i.ou = add i64 %i.os, %i.hl
  %i.ov = sub i64 %i.ou, %i.ot
  %diff.check = icmp ugt i64 %i.ov, -32
  br i1 %diff.check, label %.lr.ph264.split.us.preheader435, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check335 = icmp ult i64 %i.iv, 16
  br i1 %min.iters.check335, label %vector.ph.a, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %4 = and i64 %i.iv, 8
  %n.vec = and i64 %i.iv, -16                     ; 4 uses
  %5 = add nsw i64 %n.vec, %i.iu
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue370
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue370 ] ; 2 uses
  %6 = add nuw i64 %index, %i.iu                  ; 17 uses
  %7 = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %6 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %wide.load = load <8 x i16>, ptr %7, align 2, !tbaa !77 ; 10 uses
  %wide.load340 = load <8 x i16>, ptr %8, align 2, !tbaa !77 ; 10 uses
  %9 = icmp slt <8 x i16> %wide.load, splat (i16 -1) ; 4 uses
  %10 = icmp slt <8 x i16> %wide.load340, splat (i16 -1) ; 4 uses
  %11 = and <8 x i16> %wide.load, splat (i16 15)  ; 4 uses
  %12 = and <8 x i16> %wide.load340, splat (i16 15) ; 4 uses
  %13 = icmp eq <8 x i16> %11, zeroinitializer
  %14 = icmp eq <8 x i16> %12, zeroinitializer
  %15 = icmp eq <8 x i16> %11, splat (i16 1)
  %16 = icmp eq <8 x i16> %12, splat (i16 1)
  %17 = icmp eq <8 x i16> %11, splat (i16 2)
  %18 = icmp eq <8 x i16> %12, splat (i16 2)
  %19 = icmp eq <8 x i16> %11, splat (i16 3)
  %20 = icmp eq <8 x i16> %12, splat (i16 3)
  %21 = and <8 x i1> %9, %13
  %22 = and <8 x i1> %10, %14
  %23 = and <8 x i1> %9, %15
  %24 = and <8 x i1> %10, %16
  %25 = and <8 x i1> %9, %17
  %26 = and <8 x i1> %10, %18
  %27 = and <8 x i1> %9, %19
  %28 = and <8 x i1> %10, %20
  %29 = select <8 x i1> %23, <8 x i1> %broadcast.splat411, <8 x i1> zeroinitializer
  %30 = select <8 x i1> %24, <8 x i1> %broadcast.splat411, <8 x i1> zeroinitializer
  %31 = select <8 x i1> %21, <8 x i1> %broadcast.splat413, <8 x i1> %29
  %32 = select <8 x i1> %22, <8 x i1> %broadcast.splat413, <8 x i1> %30
  %33 = select <8 x i1> %25, <8 x i1> %broadcast.splat409, <8 x i1> zeroinitializer
  %34 = select <8 x i1> %26, <8 x i1> %broadcast.splat409, <8 x i1> zeroinitializer
  %35 = or <8 x i1> %31, %33
  %36 = or <8 x i1> %32, %34
  %37 = or <8 x i1> %35, %27                      ; 8 uses
  %38 = or <8 x i1> %36, %28                      ; 8 uses
  %39 = extractelement <8 x i1> %37, i64 0
  br i1 %39, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %40 = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %6
  %41 = extractelement <8 x i16> %wide.load, i64 0
  store i16 %41, ptr %40, align 2, !tbaa !77
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %42 = extractelement <8 x i1> %37, i64 1
  br i1 %42, label %pred.store.if341, label %pred.store.continue342

pred.store.if341:                                 ; preds = %pred.store.continue
  %43 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %44 = getelementptr i8, ptr %43, i64 2
  %45 = extractelement <8 x i16> %wide.load, i64 1
  store i16 %45, ptr %44, align 2, !tbaa !77
  br label %pred.store.continue342

pred.store.continue342:                           ; preds = %pred.store.if341, %pred.store.continue
  %46 = extractelement <8 x i1> %37, i64 2
  br i1 %46, label %pred.store.if343, label %pred.store.continue344

pred.store.if343:                                 ; preds = %pred.store.continue342
  %47 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %48 = getelementptr i8, ptr %47, i64 4
  %49 = extractelement <8 x i16> %wide.load, i64 2
  store i16 %49, ptr %48, align 2, !tbaa !77
  br label %pred.store.continue344

pred.store.continue344:                           ; preds = %pred.store.if343, %pred.store.continue342
  %50 = extractelement <8 x i1> %37, i64 3
  br i1 %50, label %pred.store.if345, label %pred.store.continue346

pred.store.if345:                                 ; preds = %pred.store.continue344
  %51 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %52 = getelementptr i8, ptr %51, i64 6
  %53 = extractelement <8 x i16> %wide.load, i64 3
  store i16 %53, ptr %52, align 2, !tbaa !77
  br label %pred.store.continue346

pred.store.continue346:                           ; preds = %pred.store.if345, %pred.store.continue344
  %54 = extractelement <8 x i1> %37, i64 4
  br i1 %54, label %pred.store.if347, label %pred.store.continue348

pred.store.if347:                                 ; preds = %pred.store.continue346
  %55 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %56 = getelementptr i8, ptr %55, i64 8
  %57 = extractelement <8 x i16> %wide.load, i64 4
  store i16 %57, ptr %56, align 2, !tbaa !77
  br label %pred.store.continue348

pred.store.continue348:                           ; preds = %pred.store.if347, %pred.store.continue346
  %58 = extractelement <8 x i1> %37, i64 5
  br i1 %58, label %pred.store.if349, label %pred.store.continue350

pred.store.if349:                                 ; preds = %pred.store.continue348
  %59 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %60 = getelementptr i8, ptr %59, i64 10
  %61 = extractelement <8 x i16> %wide.load, i64 5
  store i16 %61, ptr %60, align 2, !tbaa !77
  br label %pred.store.continue350

pred.store.continue350:                           ; preds = %pred.store.if349, %pred.store.continue348
  %62 = extractelement <8 x i1> %37, i64 6
  br i1 %62, label %pred.store.if351, label %pred.store.continue352

pred.store.if351:                                 ; preds = %pred.store.continue350
  %63 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %64 = getelementptr i8, ptr %63, i64 12
  %65 = extractelement <8 x i16> %wide.load, i64 6
  store i16 %65, ptr %64, align 2, !tbaa !77
  br label %pred.store.continue352

pred.store.continue352:                           ; preds = %pred.store.if351, %pred.store.continue350
  %66 = extractelement <8 x i1> %37, i64 7
  br i1 %66, label %pred.store.if353, label %pred.store.continue354

pred.store.if353:                                 ; preds = %pred.store.continue352
  %67 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %68 = getelementptr i8, ptr %67, i64 14
  %69 = extractelement <8 x i16> %wide.load, i64 7
  store i16 %69, ptr %68, align 2, !tbaa !77
  br label %pred.store.continue354

pred.store.continue354:                           ; preds = %pred.store.if353, %pred.store.continue352
  %70 = extractelement <8 x i1> %38, i64 0
  br i1 %70, label %pred.store.if355, label %pred.store.continue356

pred.store.if355:                                 ; preds = %pred.store.continue354
  %71 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %72 = getelementptr i8, ptr %71, i64 16
  %73 = extractelement <8 x i16> %wide.load340, i64 0
  store i16 %73, ptr %72, align 2, !tbaa !77
  br label %pred.store.continue356

pred.store.continue356:                           ; preds = %pred.store.if355, %pred.store.continue354
  %74 = extractelement <8 x i1> %38, i64 1
  br i1 %74, label %pred.store.if357, label %pred.store.continue358

pred.store.if357:                                 ; preds = %pred.store.continue356
  %75 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %76 = getelementptr i8, ptr %75, i64 18
  %77 = extractelement <8 x i16> %wide.load340, i64 1
  store i16 %77, ptr %76, align 2, !tbaa !77
  br label %pred.store.continue358

pred.store.continue358:                           ; preds = %pred.store.if357, %pred.store.continue356
  %78 = extractelement <8 x i1> %38, i64 2
  br i1 %78, label %pred.store.if359, label %pred.store.continue360

pred.store.if359:                                 ; preds = %pred.store.continue358
  %79 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %80 = getelementptr i8, ptr %79, i64 20
  %81 = extractelement <8 x i16> %wide.load340, i64 2
  store i16 %81, ptr %80, align 2, !tbaa !77
  br label %pred.store.continue360

pred.store.continue360:                           ; preds = %pred.store.if359, %pred.store.continue358
  %82 = extractelement <8 x i1> %38, i64 3
  br i1 %82, label %pred.store.if361, label %pred.store.continue362

pred.store.if361:                                 ; preds = %pred.store.continue360
  %83 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %84 = getelementptr i8, ptr %83, i64 22
  %85 = extractelement <8 x i16> %wide.load340, i64 3
  store i16 %85, ptr %84, align 2, !tbaa !77
  br label %pred.store.continue362

pred.store.continue362:                           ; preds = %pred.store.if361, %pred.store.continue360
  %86 = extractelement <8 x i1> %38, i64 4
  br i1 %86, label %pred.store.if363, label %pred.store.continue364

pred.store.if363:                                 ; preds = %pred.store.continue362
  %87 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %88 = getelementptr i8, ptr %87, i64 24
  %89 = extractelement <8 x i16> %wide.load340, i64 4
  store i16 %89, ptr %88, align 2, !tbaa !77
  br label %pred.store.continue364

pred.store.continue364:                           ; preds = %pred.store.if363, %pred.store.continue362
  %90 = extractelement <8 x i1> %38, i64 5
  br i1 %90, label %pred.store.if365, label %pred.store.continue366

pred.store.if365:                                 ; preds = %pred.store.continue364
  %91 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %92 = getelementptr i8, ptr %91, i64 26
  %93 = extractelement <8 x i16> %wide.load340, i64 5
  store i16 %93, ptr %92, align 2, !tbaa !77
  br label %pred.store.continue366

pred.store.continue366:                           ; preds = %pred.store.if365, %pred.store.continue364
  %94 = extractelement <8 x i1> %38, i64 6
  br i1 %94, label %pred.store.if367, label %pred.store.continue368

pred.store.if367:                                 ; preds = %pred.store.continue366
  %95 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %96 = getelementptr i8, ptr %95, i64 28
  %97 = extractelement <8 x i16> %wide.load340, i64 6
  store i16 %97, ptr %96, align 2, !tbaa !77
  br label %pred.store.continue368

pred.store.continue368:                           ; preds = %pred.store.if367, %pred.store.continue366
  %98 = extractelement <8 x i1> %38, i64 7
  br i1 %98, label %pred.store.if369, label %pred.store.continue370

pred.store.if369:                                 ; preds = %pred.store.continue368
  %99 = getelementptr [2 x i8], ptr %i.hj, i64 %6
  %100 = getelementptr i8, ptr %99, i64 30
  %101 = extractelement <8 x i16> %wide.load340, i64 7
  store i16 %101, ptr %100, align 2, !tbaa !77
  br label %pred.store.continue370

pred.store.continue370:                           ; preds = %pred.store.if369, %pred.store.continue368
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %102 = icmp eq i64 %index.next, %n.vec
  br i1 %102, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %pred.store.continue370
  %cmp.n = icmp eq i64 %i.iv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %4, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph264.split.us.preheader435, label %vector.ph.a, !prof !81

vector.ph.a:                                      ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec.a = and i64 %i.iv, -8                    ; 3 uses
  %i.ow = add nsw i64 %n.vec.a, %i.iu
  br label %vector.body.a

vector.body.a:                                    ; preds = %pred.store.continue352.a, %vector.ph.a
  %index.a = phi i64 [ %vec.epilog.resume.val, %vector.ph.a ], [ %index.next.a, %pred.store.continue352.a ] ; 2 uses
  %i.ox = add nuw i64 %index.a, %i.iu             ; 9 uses
  %i.oy = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.ox
  %wide.load.a = load <8 x i16>, ptr %i.oy, align 2, !tbaa !77 ; 10 uses
  %i.oz = icmp slt <8 x i16> %wide.load.a, splat (i16 -1) ; 4 uses
  %i.pa = and <8 x i16> %wide.load.a, splat (i16 15) ; 4 uses
  %i.pb = icmp eq <8 x i16> %i.pa, zeroinitializer
  %i.pc = icmp eq <8 x i16> %i.pa, splat (i16 1)
  %i.pd = icmp eq <8 x i16> %i.pa, splat (i16 2)
  %i.pe = icmp eq <8 x i16> %i.pa, splat (i16 3)
  %i.pf = and <8 x i1> %i.oz, %i.pb
  %i.pg = and <8 x i1> %i.oz, %i.pc
  %i.ph = and <8 x i1> %i.oz, %i.pd
  %i.pi = and <8 x i1> %i.oz, %i.pe
  %i.pj = select <8 x i1> %i.pg, <8 x i1> %broadcast.splat336, <8 x i1> zeroinitializer
  %i.pk = select <8 x i1> %i.pf, <8 x i1> %broadcast.splat338, <8 x i1> %i.pj
  %i.pl = select <8 x i1> %i.ph, <8 x i1> %broadcast.splat, <8 x i1> zeroinitializer
  %i.pm = or <8 x i1> %i.pk, %i.pl
  %i.pn = or <8 x i1> %i.pm, %i.pi                ; 8 uses
  %i.po = extractelement <8 x i1> %i.pn, i64 0
  br i1 %i.po, label %pred.store.if.a, label %pred.store.continue.a

pred.store.if.a:                                  ; preds = %vector.body.a
  %i.pp = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %i.ox
  %i.pq = extractelement <8 x i16> %wide.load.a, i64 0
  store i16 %i.pq, ptr %i.pp, align 2, !tbaa !77
  br label %pred.store.continue.a

pred.store.continue.a:                            ; preds = %pred.store.if.a, %vector.body.a
  %i.pr = extractelement <8 x i1> %i.pn, i64 1
  br i1 %i.pr, label %pred.store.if339, label %pred.store.continue340

pred.store.if339:                                 ; preds = %pred.store.continue.a
  %i.ps = getelementptr [2 x i8], ptr %i.hj, i64 %i.ox
  %i.pt = getelementptr i8, ptr %i.ps, i64 2
  %i.pu = extractelement <8 x i16> %wide.load.a, i64 1
  store i16 %i.pu, ptr %i.pt, align 2, !tbaa !77
  br label %pred.store.continue340

pred.store.continue340:                           ; preds = %pred.store.if339, %pred.store.continue.a
  %i.pv = extractelement <8 x i1> %i.pn, i64 2
  br i1 %i.pv, label %pred.store.if341.a, label %pred.store.continue342.a

pred.store.if341.a:                               ; preds = %pred.store.continue340
  %i.pw = getelementptr [2 x i8], ptr %i.hj, i64 %i.ox
  %i.px = getelementptr i8, ptr %i.pw, i64 4
  %i.py = extractelement <8 x i16> %wide.load.a, i64 2
  store i16 %i.py, ptr %i.px, align 2, !tbaa !77
  br label %pred.store.continue342.a

pred.store.continue342.a:                         ; preds = %pred.store.if341.a, %pred.store.continue340
  %i.pz = extractelement <8 x i1> %i.pn, i64 3
  br i1 %i.pz, label %pred.store.if343.a, label %pred.store.continue344.a

pred.store.if343.a:                               ; preds = %pred.store.continue342.a
  %i.qa = getelementptr [2 x i8], ptr %i.hj, i64 %i.ox
  %i.qb = getelementptr i8, ptr %i.qa, i64 6
  %i.qc = extractelement <8 x i16> %wide.load.a, i64 3
  store i16 %i.qc, ptr %i.qb, align 2, !tbaa !77
  br label %pred.store.continue344.a

pred.store.continue344.a:                         ; preds = %pred.store.if343.a, %pred.store.continue342.a
  %i.qd = extractelement <8 x i1> %i.pn, i64 4
  br i1 %i.qd, label %pred.store.if345.a, label %pred.store.continue346.a

pred.store.if345.a:                               ; preds = %pred.store.continue344.a
  %i.qe = getelementptr [2 x i8], ptr %i.hj, i64 %i.ox
  %i.qf = getelementptr i8, ptr %i.qe, i64 8
  %i.qg = extractelement <8 x i16> %wide.load.a, i64 4
  store i16 %i.qg, ptr %i.qf, align 2, !tbaa !77
  br label %pred.store.continue346.a

pred.store.continue346.a:                         ; preds = %pred.store.if345.a, %pred.store.continue344.a
  %i.qh = extractelement <8 x i1> %i.pn, i64 5
  br i1 %i.qh, label %pred.store.if347.a, label %pred.store.continue348.a

pred.store.if347.a:                               ; preds = %pred.store.continue346.a
  %i.qi = getelementptr [2 x i8], ptr %i.hj, i64 %i.ox
  %i.qj = getelementptr i8, ptr %i.qi, i64 10
  %i.qk = extractelement <8 x i16> %wide.load.a, i64 5
  store i16 %i.qk, ptr %i.qj, align 2, !tbaa !77
  br label %pred.store.continue348.a

pred.store.continue348.a:                         ; preds = %pred.store.if347.a, %pred.store.continue346.a
  %i.ql = extractelement <8 x i1> %i.pn, i64 6
  br i1 %i.ql, label %pred.store.if349.a, label %pred.store.continue350.a

pred.store.if349.a:                               ; preds = %pred.store.continue348.a
  %i.qm = getelementptr [2 x i8], ptr %i.hj, i64 %i.ox
  %i.qn = getelementptr i8, ptr %i.qm, i64 12
  %i.qo = extractelement <8 x i16> %wide.load.a, i64 6
  store i16 %i.qo, ptr %i.qn, align 2, !tbaa !77
  br label %pred.store.continue350.a

pred.store.continue350.a:                         ; preds = %pred.store.if349.a, %pred.store.continue348.a
  %i.qp = extractelement <8 x i1> %i.pn, i64 7
  br i1 %i.qp, label %pred.store.if351.a, label %pred.store.continue352.a

pred.store.if351.a:                               ; preds = %pred.store.continue350.a
  %i.qq = getelementptr [2 x i8], ptr %i.hj, i64 %i.ox
  %i.qr = getelementptr i8, ptr %i.qq, i64 14
  %i.qs = extractelement <8 x i16> %wide.load.a, i64 7
  store i16 %i.qs, ptr %i.qr, align 2, !tbaa !77
  br label %pred.store.continue352.a

pred.store.continue352.a:                         ; preds = %pred.store.if351.a, %pred.store.continue350.a
  %index.next.a = add nuw i64 %index.a, 8         ; 2 uses
  %i.qt = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.qt, label %middle.block.a, label %vector.body.a, !llvm.loop !123

middle.block.a:                                   ; preds = %pred.store.continue352.a
  %cmp.n.a = icmp eq i64 %i.iv, %n.vec.a
  br i1 %cmp.n.a, label %.loopexit, label %.lr.ph264.split.us.preheader435

.lr.ph264.split.us.preheader435:                  ; preds = %.lr.ph264.split.us.preheader.a, %vector.memcheck, %vec.epilog.iter.check, %middle.block.a
  %indvars.iv294.ph = phi i64 [ %i.iu, %.lr.ph264.split.us.preheader.a ], [ %i.iu, %vector.memcheck ], [ %5, %vec.epilog.iter.check ], [ %i.ow, %middle.block.a ] ; 6 uses
  %xtraiter440 = and i64 %indvars.iv294.ph, 1
  %lcmp.mod441.not = icmp eq i64 %xtraiter440, 0
  br i1 %lcmp.mod441.not, label %.lr.ph264.split.us.prol.loopexit, label %.lr.ph264.split.us.prol

.lr.ph264.split.us.prol:                          ; preds = %.lr.ph264.split.us.preheader435
  %i.qu = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv294.ph
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.prol = icmp sgt i16 %i.qv, -2
  br i1 %or.cond224.us.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa, label %bb.af

bb.af:                                            ; preds = %.lr.ph264.split.us.prol
  %i.qw = and i16 %i.qv, 15
  switch i16 %i.qw, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa [
    i16 0, label %bb.ai
    i16 1, label %bb.ah
    i16 2, label %bb.ag
    i16 3, label %.sink.split.prol
  ]

bb.ag:                                            ; preds = %bb.af
  br i1 %i.eu, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ah:                                            ; preds = %bb.af
  br i1 %i.es, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

bb.ai:                                            ; preds = %bb.af
  br i1 %i.et, label %.sink.split.prol, label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.sink.split.prol:                                 ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %i.qx = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv294.ph
  store i16 %i.qv, ptr %i.qx, align 2, !tbaa !77
  br label %.lr.ph264.split.us.prol.loopexit.unr-lcssa

.lr.ph264.split.us.prol.loopexit.unr-lcssa:       ; preds = %.sink.split.prol, %bb.ai, %bb.ah, %bb.ag, %bb.af, %.lr.ph264.split.us.prol
  %indvars.iv.next295.prol = add nuw nsw i64 %indvars.iv294.ph, 1
  br label %.lr.ph264.split.us.prol.loopexit

.lr.ph264.split.us.prol.loopexit:                 ; preds = %.lr.ph264.split.us.prol.loopexit.unr-lcssa, %.lr.ph264.split.us.preheader435
  %indvars.iv294.unr = phi i64 [ %indvars.iv294.ph, %.lr.ph264.split.us.preheader435 ], [ %indvars.iv.next295.prol, %.lr.ph264.split.us.prol.loopexit.unr-lcssa ]
  %i.qy = add nsw i64 %wide.trip.count297, -1
  %i.qz = icmp eq i64 %indvars.iv294.ph, %i.qy
  br i1 %i.qz, label %.loopexit, label %.lr.ph264.split.us

.lr.ph264.split.us:                               ; preds = %.lr.ph264.split.us.prol.loopexit, %bb.ar
  %indvars.iv294 = phi i64 [ %indvars.iv.next295.1, %bb.ar ], [ %indvars.iv294.unr, %.lr.ph264.split.us.prol.loopexit ] ; 4 uses
  %i.ra = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv294
  %i.rb = load i16, ptr %i.ra, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us = icmp sgt i16 %i.rb, -2
  br i1 %or.cond224.us, label %.lr.ph264.split.us.1, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph264.split.us
  %i.rc = and i16 %i.rb, 15
  switch i16 %i.rc, label %.lr.ph264.split.us.1 [
    i16 0, label %bb.am
    i16 1, label %bb.al
    i16 2, label %bb.ak
    i16 3, label %.sink.split
  ]

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.eu, label %.sink.split, label %.lr.ph264.split.us.1

bb.al:                                            ; preds = %bb.aj
  br i1 %i.es, label %.sink.split, label %.lr.ph264.split.us.1

bb.am:                                            ; preds = %bb.aj
  br i1 %i.et, label %.sink.split, label %.lr.ph264.split.us.1

.sink.split:                                      ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj
  %i.rd = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv294
  store i16 %i.rb, ptr %i.rd, align 2, !tbaa !77
  br label %.lr.ph264.split.us.1

.lr.ph264.split.us.1:                             ; preds = %.sink.split, %bb.am, %bb.al, %bb.ak, %bb.aj, %.lr.ph264.split.us
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %i.re = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv.next295
  %i.rf = load i16, ptr %i.re, align 2, !tbaa !77 ; 3 uses
  %or.cond224.us.1 = icmp sgt i16 %i.rf, -2
  br i1 %or.cond224.us.1, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %.lr.ph264.split.us.1
  %i.rg = and i16 %i.rf, 15
  switch i16 %i.rg, label %bb.ar [
    i16 0, label %bb.aq
    i16 1, label %bb.ap
    i16 2, label %bb.ao
    i16 3, label %.sink.split.1
  ]

bb.ao:                                            ; preds = %bb.an
  br i1 %i.eu, label %.sink.split.1, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  br i1 %i.es, label %.sink.split.1, label %bb.ar

bb.aq:                                            ; preds = %bb.an
  br i1 %i.et, label %.sink.split.1, label %bb.ar

.sink.split.1:                                    ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.an
  %i.rh = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv.next295
  store i16 %i.rf, ptr %i.rh, align 2, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split.1, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.lr.ph264.split.us.1
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 2 uses
  %exitcond298.not.1 = icmp eq i64 %indvars.iv.next295.1, %wide.trip.count297
  br i1 %exitcond298.not.1, label %.loopexit, label %.lr.ph264.split.us, !llvm.loop !124

.lr.ph264.split:                                  ; preds = %.lr.ph264.split.prol.loopexit, %bb.ba
  %indvars.iv289 = phi i64 [ %indvars.iv.next290.1, %bb.ba ], [ %indvars.iv289.unr, %.lr.ph264.split.prol.loopexit ] ; 4 uses
  %i.ri = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv289
  %i.rj = load i16, ptr %i.ri, align 2, !tbaa !77 ; 3 uses
  %or.cond224 = icmp sgt i16 %i.rj, -2
  br i1 %or.cond224, label %.lr.ph264.split.1, label %bb.as

bb.as:                                            ; preds = %.lr.ph264.split
  %i.rk = and i16 %i.rj, 15
  switch i16 %i.rk, label %.lr.ph264.split.1 [
    i16 0, label %bb.at
    i16 1, label %bb.au
    i16 2, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  br i1 %i.et, label %.sink.split330, label %.lr.ph264.split.1

bb.au:                                            ; preds = %bb.as
  br i1 %i.es, label %.sink.split330, label %.lr.ph264.split.1

bb.av:                                            ; preds = %bb.as
  br i1 %i.eu, label %.sink.split330, label %.lr.ph264.split.1

.sink.split330:                                   ; preds = %bb.av, %bb.au, %bb.at
  %i.rl = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv289
  store i16 %i.rj, ptr %i.rl, align 2, !tbaa !77
  br label %.lr.ph264.split.1

.lr.ph264.split.1:                                ; preds = %.sink.split330, %bb.as, %bb.at, %bb.au, %bb.av, %.lr.ph264.split
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.rm = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %indvars.iv.next290
  %i.rn = load i16, ptr %i.rm, align 2, !tbaa !77 ; 3 uses
  %or.cond224.1 = icmp sgt i16 %i.rn, -2
  br i1 %or.cond224.1, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph264.split.1
  %i.ro = and i16 %i.rn, 15
  switch i16 %i.ro, label %bb.ba [
    i16 0, label %bb.az
    i16 1, label %bb.ay
    i16 2, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.eu, label %.sink.split330.1, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.es, label %.sink.split330.1, label %bb.ba

bb.az:                                            ; preds = %bb.aw
  br i1 %i.et, label %.sink.split330.1, label %bb.ba

.sink.split330.1:                                 ; preds = %bb.az, %bb.ay, %bb.ax
  %i.rp = getelementptr inbounds [2 x i8], ptr %i.hj, i64 %indvars.iv.next290
  store i16 %i.rn, ptr %i.rp, align 2, !tbaa !77
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split330.1, %bb.az, %bb.ay, %bb.ax, %bb.aw, %.lr.ph264.split.1
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 2 uses
  %exitcond293.not.1 = icmp eq i64 %indvars.iv.next290.1, %wide.trip.count297
  br i1 %exitcond293.not.1, label %.loopexit, label %.lr.ph264.split, !llvm.loop !125

.loopexit:                                        ; preds = %.lr.ph264.split.prol.loopexit, %bb.ba, %.lr.ph264.split.us.prol.loopexit, %bb.ar, %middle.block405, %vec.epilog.middle.block.a, %middle.block, %middle.block.a, %.preheader, %._crit_edge259
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.rq = load i32, ptr %i.fc, align 4, !tbaa !73
  %i.rr = sext i32 %i.rq to i64
  %i.rs = icmp slt i64 %indvars.iv.next300, %i.rr
  br i1 %i.rs, label %bb.z, label %._crit_edge267

bb.bb:                                            ; preds = %._crit_edge271
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.26) #8
  br label %bb.bg

bb.bc:                                            ; preds = %._crit_edge271
  %i.rt = load i32, ptr %i.ai, align 8, !tbaa !72 ; 2 uses
  %i.ru = icmp sgt i32 %i.rt, 65535
  br i1 %i.ru, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.27, i32 noundef %i.rt, i32 noundef 65535) #8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.rv = load i32, ptr %i.ca, align 4, !tbaa !73 ; 2 uses
  %i.rw = icmp sgt i32 %i.rv, 65535
  br i1 %i.rw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef %i.rv, i32 noundef 65535) #8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bb, %bb.r
  %.0198 = phi i1 [ false, %bb.r ], [ false, %bb.bb ], [ true, %bb.bf ], [ true, %bb.be ]
  tail call void @_Z6rcFreePv(ptr noundef %i.da) #8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.q
  %.1 = phi i1 [ %.0198, %bb.bg ], [ false, %bb.q ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cx) #8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.o
  %.2 = phi i1 [ %.1, %bb.bh ], [ false, %bb.o ]
  tail call void @_Z6rcFreePv(ptr noundef %i.cw) #8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.3 = phi i1 [ %.2, %bb.bi ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ] ; 2 uses
  %i.rx = load i8, ptr %i.c, align 1, !tbaa !17, !range !18, !noundef !19
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %bb.bk, label %_ZN13rcScopedTimerD2Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.rz = load ptr, ptr %0, align 8, !tbaa !21
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 48
  %i.sb = load ptr, ptr %i.sa, align 8
  tail call void %i.sb(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 12) #8, !call_target !83, !inline_history !3
  br label %_ZN13rcScopedTimerD2Ev.exit

_ZN13rcScopedTimerD2Ev.exit:                      ; preds = %bb.bk, %bb.bj, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ %.3, %bb.bj ], [ %.3, %bb.bk ]
  ret i1 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @_Z14rcCopyPolyMeshP9rcContextRK10rcPolyMeshRS1_(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 8), (40, 96)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.b, ptr %i.c, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 13 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 44
  store i32 %i.e, ptr %i.f, align 4, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 %i.e, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 %i.i, ptr %i.j, align 4, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load float, ptr %i.l, align 8, !tbaa !60
  store float %i.m, ptr %i.k, align 8, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.o = load float, ptr %i.n, align 4, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 60
  store float %i.o, ptr %i.p, align 4, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.r = load float, ptr %i.q, align 8, !tbaa !60
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 64
  store float %i.r, ptr %i.s, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.v = load float, ptr %i.u, align 4, !tbaa !60
  store float %i.v, ptr %i.t, align 4, !tbaa !60
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load float, ptr %i.w, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float %i.x, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.aa = load float, ptr %i.z, align 4, !tbaa !60
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 76
  store float %i.aa, ptr %i.ab, align 4, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ae = load <2 x float>, ptr %i.ac, align 8, !tbaa !60
  store <2 x float> %i.ae, ptr %i.ad, align 8, !tbaa !60
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !65
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 92
  store float %i.aj, ptr %i.ak, align 4, !tbaa !66
  %i.al = sext i32 %i.b to i64
  %i.am = mul nsw i64 %i.al, 6
  %i.an = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.am, i32 noundef 0) #8 ; 3 uses
  store ptr %i.an, ptr %2, align 8, !tbaa !68
  %.not = icmp eq ptr %i.an, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %i.a, align 8, !tbaa !72
  %i.ap = mul nsw i32 %i.ao, 3
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.29, i32 noundef %i.ap) #8
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.aq = load ptr, ptr %1, align 8, !tbaa !68
  %i.ar = load i32, ptr %i.a, align 8, !tbaa !72
  %i.as = sext i32 %i.ar to i64
  %i.at = mul nsw i64 %i.as, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.an, ptr align 2 %i.aq, i64 %i.at, i1 false)
  %i.au = load i32, ptr %i.d, align 4, !tbaa !73
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i64 %i.av, 2
  %i.ax = load i32, ptr %i.h, align 4, !tbaa !74
  %i.ay = sext i32 %i.ax to i64
  %i.az = mul i64 %i.aw, %i.ay
  %i.ba = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.az, i32 noundef 0) #8 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !69
  %.not69 = icmp eq ptr %i.ba, null
  br i1 %.not69, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bc = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bd = shl nsw i32 %i.bc, 1
  %i.be = load i32, ptr %i.h, align 4, !tbaa !74
  %i.bf = mul nsw i32 %i.bd, %i.be
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.30, i32 noundef %i.bf) #8
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !69
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2
  %i.bl = load i32, ptr %i.h, align 4, !tbaa !74
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %i.bk, %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ba, ptr align 2 %i.bh, i64 %i.bn, i1 false)
  %i.bo = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 1
  %i.br = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.bq, i32 noundef 0) #8 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !70
  %.not70 = icmp eq ptr %i.br, null
  br i1 %.not70, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.d, align 4, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.31, i32 noundef %i.bt) #8
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !73
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.br, ptr align 2 %i.bv, i64 %i.by, i1 false)
  %i.bz = load i32, ptr %i.d, align 4, !tbaa !73
  %i.ca = sext i32 %i.bz to i64
  %i.cb = tail call noundef ptr @_Z7rcAllocm11rcAllocHint(i64 noundef %i.ca, i32 noundef 0) #8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !71
  %.not71 = icmp eq ptr %i.cb, null
  br i1 %.not71, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %i.d, align 4, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @_ZN9rcContext3logE13rcLogCategoryPKcz(ptr noundef nonnull align 8 dereferenceable(10) %0, i32 noundef 3, ptr noundef nonnull @.str.32, i32 noundef %i.cd) #8
  br label %bb.l

end_hunk_0
begin_hunk_1_@_ZL8diagonaliiiPKiPi:bb.a

bb.q:                                             ; preds = %_ZL7betweenPKiS0_S0_.exit84.thread20.i.i
  %.not.i90.i.i = icmp eq i32 %i.cu, %i.dd
  br i1 %.not.i90.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not31.i91.i.i = icmp sgt i32 %i.cu, %i.aw
  %.not32.i92.i.i = icmp sgt i32 %i.aw, %i.dd
  %or.cond.i93.i.i = or i1 %.not31.i91.i.i, %.not32.i92.i.i
  br i1 %or.cond.i93.i.i, label %.split.i, label %_ZL10diagonalieiiiPKiPi.exit

.split.i:                                         ; preds = %bb.r
  %.not33.i94.i.i = icmp sge i32 %i.cu, %i.aw
  %i.fm = icmp sge i32 %i.aw, %i.dd
  %spec.select.i95.i.i = and i1 %.not33.i94.i.i, %i.fm
  %cond.fr6068.i = freeze i1 %spec.select.i95.i.i
  br i1 %cond.fr6068.i, label %_ZL10diagonalieiiiPKiPi.exit, label %.thread82.i

bb.s:                                             ; preds = %bb.q
  %.not28.i96.i.i = icmp sgt i32 %.val56.i, %.val54.pre.i
  %.not29.i97.i.i = icmp sgt i32 %.val54.pre.i, %.val39.i.i24
  %or.cond9.i98.i.i = or i1 %.not28.i96.i.i, %.not29.i97.i.i
  br i1 %or.cond9.i98.i.i, label %_ZL9intersectPKiS0_S0_S0_.exit.i, label %_ZL10diagonalieiiiPKiPi.exit

_ZL9intersectPKiS0_S0_S0_.exit.i:                 ; preds = %bb.s
  %.not30.i99.i.i = icmp sge i32 %.val56.i, %.val54.pre.i
  %i.fn = icmp sge i32 %.val54.pre.i, %.val39.i.i24
  %spec.select10.i100.i.i = and i1 %.not30.i99.i.i, %i.fn
  %cond.fr60.i = freeze i1 %spec.select10.i100.i.i
  br i1 %cond.fr60.i, label %_ZL10diagonalieiiiPKiPi.exit, label %.thread82.i

.thread82.i:                                      ; preds = %_ZL9intersectPKiS0_S0_S0_.exit.i, %.split.i, %_ZL7betweenPKiS0_S0_.exit84.thread20.i.i, %_ZL6vequalPKiS0_.exit59.i, %_ZL6vequalPKiS0_.exit58.i, %_ZL6vequalPKiS0_.exit57.i, %_ZL6vequalPKiS0_.exit.i, %bb.d
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bx
  br i1 %exitcond.not.i, label %_ZL10diagonalieiiiPKiPi.exit, label %bb.d

_ZL10diagonalieiiiPKiPi.exit:                     ; preds = %.thread82.i, %_ZL9intersectPKiS0_S0_S0_.exit.i, %bb.s, %.split.i, %bb.r, %_ZL7betweenPKiS0_S0_.exit84.i.i, %bb.p, %.split22.i.i, %bb.o, %_ZL7betweenPKiS0_S0_.exit67.i.i, %.thread32, %.split18.i.i, %.thread, %_ZL7betweenPKiS0_S0_.exit.i.i, %bb.l, %.split.i.i, %bb.k, %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i, %bb.b, %_ZL6inConeiiiPKiPi.exit.thread, %.split, %_ZL6inConeiiiPKiPi.exit
  %i.fo = phi i1 [ false, %_ZL6inConeiiiPKiPi.exit ], [ false, %.split ], [ false, %bb.b ], [ true, %_ZL6inConeiiiPKiPi.exit.thread ], [ false, %_ZL7betweenPKiS0_S0_.exit.i.i ], [ false, %_ZL13intersectPropPKiS0_S0_S0_.exit.i.i ], [ false, %.split22.i.i ], [ false, %_ZL7betweenPKiS0_S0_.exit84.i.i ], [ false, %_ZL7betweenPKiS0_S0_.exit67.i.i ], [ false, %bb.s ], [ false, %.split.i.i ], [ false, %bb.l ], [ false, %.split18.i.i ], [ false, %.thread32 ], [ false, %bb.r ], [ false, %bb.k ], [ false, %.thread ], [ false, %bb.o ], [ false, %bb.p ], [ false, %.split.i ], [ false, %_ZL9intersectPKiS0_S0_S0_.exit.i ], [ true, %.thread82.i ]
  ret i1 %i.fo
}

declare void @_Z6rcFreePv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "rcTimerLabel", file: !22, line: 39, baseType: !28, size: 32, elements: !58, identifier: "_ZTS12rcTimerLabel")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "rcContext", file: !22, line: 114, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS9rcContext")
!2 = distinct !{null, null}
!3 = distinct !{null, null}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"bool", !11, i64 0}
!16 = !{!"_ZTS9rcContext", !15, i64 8, !15, i64 9}
!17 = !{!16, !15, i64 9}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = !{!"vtable pointer", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !DIFile(filename: "Recast/Include/Recast.h", directory: "/opt-bench/work/recastnavigation/recastnavigation", checksumkind: CSK_MD5, checksum: "a4a30d1b276324b9005ba15d2d361d90")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !0)
!25 = !{null, !23, !24}
!26 = !DISubroutineType(types: !25)
!27 = !DISubprogram(name: "doStartTimer", linkageName: "_ZN9rcContext12doStartTimerE12rcTimerLabel", scope: !1, file: !22, line: 176, type: !26, scopeLine: 176, containingType: !1, virtualIndex: 5, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DIEnumerator(name: "RC_TIMER_TOTAL", value: 0, isUnsigned: true)
!30 = !DIEnumerator(name: "RC_TIMER_TEMP", value: 1, isUnsigned: true)
!31 = !DIEnumerator(name: "RC_TIMER_RASTERIZE_TRIANGLES", value: 2, isUnsigned: true)
!32 = !DIEnumerator(name: "RC_TIMER_BUILD_COMPACTHEIGHTFIELD", value: 3, isUnsigned: true)
!33 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS", value: 4, isUnsigned: true)
!34 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_TRACE", value: 5, isUnsigned: true)
!35 = !DIEnumerator(name: "RC_TIMER_BUILD_CONTOURS_SIMPLIFY", value: 6, isUnsigned: true)
!36 = !DIEnumerator(name: "RC_TIMER_FILTER_BORDER", value: 7, isUnsigned: true)
!37 = !DIEnumerator(name: "RC_TIMER_FILTER_WALKABLE", value: 8, isUnsigned: true)
!38 = !DIEnumerator(name: "RC_TIMER_MEDIAN_AREA", value: 9, isUnsigned: true)
!39 = !DIEnumerator(name: "RC_TIMER_FILTER_LOW_OBSTACLES", value: 10, isUnsigned: true)
!40 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESH", value: 11, isUnsigned: true)
!41 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESH", value: 12, isUnsigned: true)
!42 = !DIEnumerator(name: "RC_TIMER_ERODE_AREA", value: 13, isUnsigned: true)
!43 = !DIEnumerator(name: "RC_TIMER_MARK_BOX_AREA", value: 14, isUnsigned: true)
!44 = !DIEnumerator(name: "RC_TIMER_MARK_CYLINDER_AREA", value: 15, isUnsigned: true)
!45 = !DIEnumerator(name: "RC_TIMER_MARK_CONVEXPOLY_AREA", value: 16, isUnsigned: true)
!46 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD", value: 17, isUnsigned: true)
!47 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_DIST", value: 18, isUnsigned: true)
!48 = !DIEnumerator(name: "RC_TIMER_BUILD_DISTANCEFIELD_BLUR", value: 19, isUnsigned: true)
!49 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS", value: 20, isUnsigned: true)
!50 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_WATERSHED", value: 21, isUnsigned: true)
!51 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_EXPAND", value: 22, isUnsigned: true)
!52 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FLOOD", value: 23, isUnsigned: true)
!53 = !DIEnumerator(name: "RC_TIMER_BUILD_REGIONS_FILTER", value: 24, isUnsigned: true)
!54 = !DIEnumerator(name: "RC_TIMER_BUILD_LAYERS", value: 25, isUnsigned: true)
!55 = !DIEnumerator(name: "RC_TIMER_BUILD_POLYMESHDETAIL", value: 26, isUnsigned: true)
!56 = !DIEnumerator(name: "RC_TIMER_MERGE_POLYMESHDETAIL", value: 27, isUnsigned: true)
!57 = !DIEnumerator(name: "RC_MAX_TIMERS", value: 28, isUnsigned: true)
!58 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!59 = !{!"float", !11, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"any pointer", !11, i64 0}
!62 = !{!"p1 short", !61, i64 0}
!63 = !{!"p1 omnipotent char", !61, i64 0}
!64 = !{!"_ZTS10rcPolyMesh", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !63, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !11, i64 56, !11, i64 68, !59, i64 80, !59, i64 84, !12, i64 88, !59, i64 92}
!65 = !{!64, !12, i64 88}
!66 = !{!64, !59, i64 92}
!67 = !{!"short", !11, i64 0}
!68 = !{!64, !62, i64 0}
!69 = !{!64, !62, i64 8}
!70 = !{!64, !62, i64 16}
!71 = !{!64, !63, i64 32}
!72 = !{!64, !12, i64 40}
!73 = !{!64, !12, i64 44}
!74 = !{!64, !12, i64 52}
!75 = !{!64, !12, i64 48}
!76 = !{!12, !12, i64 0}
!77 = !{!67, !67, i64 0}
!78 = !{!11, !11, i64 0}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = !{!"branch_weights", i32 8, i32 8}
!82 = !{!64, !62, i64 24}
!83 = !DISubprogram(name: "doStopTimer", linkageName: "_ZN9rcContext11doStopTimerE12rcTimerLabel", scope: !1, file: !22, line: 180, type: !26, scopeLine: 180, containingType: !1, virtualIndex: 6, flags: DIFlagProtected | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!84 = distinct !{!84, !79, !80}
!85 = distinct !{!85, !79, !80}
!86 = distinct !{!86, !115}
!87 = distinct !{!87, !79}
!88 = distinct !{!88, !79, !80}
!89 = distinct !{!89, !80, !79}
!90 = distinct !{!90, !79, !80}
!91 = distinct !{!91, !80, !79}
!92 = distinct !{!92, !79, !80}
!93 = distinct !{!93, !80, !79}
!94 = distinct !{!94, !79, !80}
!95 = distinct !{!95, !79, !80}
!96 = distinct !{!96, !80, !79}
!97 = distinct !{!97, !79, !80}
!98 = distinct !{!98, !79, !80}
!99 = distinct !{!99, !80, !79}
!100 = distinct !{!100, !79, !80}
!101 = distinct !{!101, !79, !80}
!102 = distinct !{!102, !115}
!103 = distinct !{!103, !79}
!104 = !{!"p1 _ZTS9rcContour", !61, i64 0}
!105 = !{!"_ZTS12rcContourSet", !104, i64 0, !12, i64 8, !11, i64 12, !11, i64 24, !59, i64 36, !59, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !59, i64 56}
!106 = !{!105, !12, i64 52}
!107 = !{!105, !59, i64 56}
!108 = !{!105, !12, i64 8}
!109 = !{!105, !104, i64 0}
!110 = !{!"p1 int", !61, i64 0}
!111 = !{!"_ZTS9rcContour", !110, i64 0, !12, i64 8, !110, i64 16, !12, i64 24, !67, i64 28, !11, i64 30}
!112 = !{!111, !12, i64 8}
!113 = !{!111, !110, i64 0}
!114 = !{!"branch_weights", i32 4, i32 12}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = !{!111, !67, i64 28}
!117 = !{!111, !11, i64 30}
!118 = !{!105, !12, i64 44}
!119 = !{!105, !12, i64 48}
!120 = distinct !{!120, !79, !80}
!121 = distinct !{!121, !79, !80}
!122 = distinct !{!122, !79, !80}
!123 = distinct !{!123, !79, !80}
!124 = distinct !{!124, !79}
!125 = distinct !{!125, !79}
!126 = !{!"p1 _ZTS10rcPolyMesh", !61, i64 0}
!127 = !{!126, !126, i64 0}
end_hunk_1
