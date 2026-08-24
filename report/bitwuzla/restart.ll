Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/restart?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal11stabilizingEv:bb.a
  %i.bz = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.br)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit20

bb.w:                                             ; preds = %bb.u
  %i.ca = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.br)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit20

_ZN7CaDiCaL8Internal4timeEv.exit20:               ; preds = %bb.v, %bb.w
  %i.cb = phi double [ %i.bz, %bb.v ], [ %i.ca, %bb.w ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.br, ptr noundef nonnull align 8 dereferenceable(36) %i.bw, double noundef %i.cb)
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 7040
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !165
  %.not13 = icmp sgt i32 %i.cd, %i.bt
  br i1 %.not13, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 7008
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 3620
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !164
  %.not.i21 = icmp eq i32 %i.cg, 0
  br i1 %.not.i21, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.br)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit22

bb.aa:                                            ; preds = %bb.y
  %i.ci = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.br)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit22

_ZN7CaDiCaL8Internal4timeEv.exit22:               ; preds = %bb.z, %bb.aa
  %i.cj = phi double [ %i.ch, %bb.z ], [ %i.ci, %bb.aa ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.br, ptr noundef nonnull align 8 dereferenceable(36) %i.ce, double noundef %i.cj)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.t, %_ZN7CaDiCaL8Internal4timeEv.exit20, %bb.x, %_ZN7CaDiCaL8Internal4timeEv.exit22, %bb.c
  %i.ck = load i8, ptr %i.c, align 4, !tbaa !156, !range !157, !noundef !158
  %i.cl = trunc nuw i8 %i.ck to i1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %bb.a, %bb.ab
  %.0 = phi i1 [ false, %bb.a ], [ %i.cl, %bb.ab ], [ true, %bb.b ]
  ret i1 %.0
}

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal13swap_averagesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL8Internal10restartingEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3672
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN7CaDiCaL9ReluctantcvbEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.d = load i32, ptr %i.c, align 4, !tbaa !171
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !172
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !173
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2
  %i.n = add nsw i64 %i.m, 2
  %i.o = icmp ugt i64 %i.n, %i.e
  br i1 %i.o, label %_ZN7CaDiCaL9ReluctantcvbEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal11stabilizingEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !174, !range !157, !noundef !158
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.q, align 8, !tbaa !174
  br label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.u = load i64, ptr %i.t, align 8, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.w = load i64, ptr %i.v, align 8, !tbaa !175
  %.not6 = icmp sgt i64 %i.u, %i.w
  br i1 %.not6, label %bb.g, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.y = load double, ptr %i.x, align 8, !tbaa !176
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !177
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fadd nnan double %i.ab, 1.000000e+02
  %i.ad = fdiv nnan double %i.ac, 1.000000e+02
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.af = load double, ptr %i.ae, align 8, !tbaa !176
  %i.ag = fmul double %i.af, %i.ad
  %i.ah = fcmp ole double %i.ag, %i.y
  br label %_ZN7CaDiCaL9ReluctantcvbEv.exit

_ZN7CaDiCaL9ReluctantcvbEv.exit:                  ; preds = %bb.e, %bb.d, %bb.f, %bb.b, %bb.a, %bb.g
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.f ], [ false, %bb.b ], [ %i.ah, %bb.g ], [ false, %bb.d ], [ true, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal11reuse_trailEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !172
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !173
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !179
  %.not = icmp eq i32 %i.m, 0
  %i.n = zext i1 %.not to i64
  %i.o = add nsw i64 %i.h, %i.n                   ; 3 uses
  %i.p = trunc i64 %i.o to i32                    ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3684
  %i.r = load i32, ptr %i.q, align 4, !tbaa !182
  %.not29 = icmp eq i32 %i.r, 0
  br i1 %.not29, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = tail call noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3700
  %i.u = load i32, ptr %i.t, align 4, !tbaa !183
  %.not.i = icmp ne i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = load i8, ptr %i.v, align 4, !range !157
  %i.x = trunc nuw i8 %i.w to i1                  ; 2 uses
  %i.y = select i1 %.not.i, i1 %i.x, i1 false
  br i1 %i.y, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !171 ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, %i.p
  br i1 %i.ab, label %.lr.ph45, label %.thread

.lr.ph45:                                         ; preds = %.preheader
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !178
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.ae = zext i32 %i.s to i64
  %sext64 = shl i64 %i.o, 32
  %i.af = ashr exact i64 %sext64, 32
  %i.ag = sext i32 %i.aa to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph45, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33
  %indvars.iv54 = phi i64 [ %i.af, %.lr.ph45 ], [ %indvars.iv.next55, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33 ] ; 3 uses
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1 ; 3 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv.next55
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !179 ; 2 uses
  %.not31 = icmp eq i32 %i.ai, 0
  br i1 %.not31, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call i32 @llvm.abs.i32(i32 %i.ai, i1 true) ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = load ptr, ptr %i.ad, align 8, !tbaa !184 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load double, ptr %i.am, align 8, !tbaa !185 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ae
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !185 ; 2 uses
  %i.aq = fcmp olt double %i.an, %i.ap
  br i1 %i.aq, label %.thread.loopexit.split.loop.exit69, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = fcmp ule double %i.an, %i.ap
  %i.as = icmp ugt i32 %i.aj, %i.s
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %.thread.loopexit.split.loop.exit, label %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33

_ZN7CaDiCaL13score_smallerclEjj.exit.thread33:    ; preds = %bb.e, %bb.c
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %i.ag
  br i1 %exitcond58.not, label %.thread, label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.au = tail call noundef i32 @llvm.abs.i32(i32 %i.s, i1 true)
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !186 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !187
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !171 ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, %i.p
  br i1 %i.bb, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.f
  %i.bc = load ptr, ptr %i.i, align 8, !tbaa !178
  %sext = shl i64 %i.o, 32
  %i.bd = ashr exact i64 %sext, 32
  %i.be = sext i32 %i.ba to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !179 ; 2 uses
  %.not30 = icmp eq i32 %i.bg, 0
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = tail call noundef i32 @llvm.abs.i32(i32 %i.bg, i1 true)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !187
  %i.bl = icmp slt i64 %i.bk, %i.ay
  br i1 %i.bl, label %.thread.loopexit65.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.be
  br i1 %exitcond.not, label %.thread, label %bb.g

.thread.loopexit.split.loop.exit:                 ; preds = %bb.e
  %i.bm = trunc nsw i64 %indvars.iv54 to i32
  br label %.thread

.thread.loopexit.split.loop.exit69:               ; preds = %bb.d
  %i.bn = trunc nsw i64 %indvars.iv54 to i32
  br label %.thread

.thread.loopexit65.split.loop.exit:               ; preds = %bb.h
  %i.bo = trunc nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.i, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33, %.thread.loopexit65.split.loop.exit, %.thread.loopexit.split.loop.exit, %.thread.loopexit.split.loop.exit69, %bb.f, %.preheader
  %.5 = phi i32 [ %i.p, %bb.f ], [ %i.p, %.preheader ], [ %i.aa, %_ZN7CaDiCaL13score_smallerclEjj.exit.thread33 ], [ %i.bn, %.thread.loopexit.split.loop.exit69 ], [ %i.bm, %.thread.loopexit.split.loop.exit ], [ %i.bo, %.thread.loopexit65.split.loop.exit ], [ %i.ba, %bb.i ] ; 4 uses
  %i.bp = sub nsw i32 %.5, %i.p                   ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 4560 ; 2 uses
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = load <2 x i64>, ptr %i.br, align 8, !tbaa !187
  %i.bu = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bs, i64 1
  %i.bv = add nsw <2 x i64> %i.bt, %i.bu
  store <2 x i64> %i.bv, ptr %i.br, align 8, !tbaa !187
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !188
  %i.by = add nsw i64 %i.bx, 1
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !188
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j, %bb.a
  %.025 = phi i32 [ %i.p, %bb.a ], [ %.5, %bb.j ], [ %.5, %bb.k ], [ %.5, %.thread ]
  ret i32 %.025
}

declare noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal7restartEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6640
  %i.d = load i32, ptr %i.c, align 8, !tbaa !189
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !162
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6608
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !164
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4512 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.o = load i32, ptr %i.n, align 4, !tbaa !171
  %i.p = sext i32 %i.o to i64
  %i.q = load <2 x i64>, ptr %i.m, align 8, !tbaa !187
  %i.r = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.p, i64 1
  %i.s = add nsw <2 x i64> %i.q, %i.r
  store <2 x i64> %i.s, ptr %i.m, align 8, !tbaa !187
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !156, !range !157, !noundef !158
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4528 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !190
  %i.y = add nsw i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !190
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = tail call noundef i32 @_ZN7CaDiCaL8Internal11reuse_trailEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !175
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 82, i32 noundef 2)
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !161 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6640
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !189
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 3608
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !162
  %.not1 = icmp sgt i32 %i.aj, %i.al
  br i1 %.not1, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 6608
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 3620
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !164
  %.not.i2 = icmp eq i32 %i.ao, 0
  br i1 %.not.i2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.ah)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit3

bb.j:                                             ; preds = %bb.h
  %i.aq = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.ah)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit3

_ZN7CaDiCaL8Internal4timeEv.exit3:                ; preds = %bb.i, %bb.j
  %i.ar = phi double [ %i.ap, %bb.i ], [ %i.aq, %bb.j ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ah, ptr noundef nonnull align 8 dereferenceable(36) %i.am, double noundef %i.ar)
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %_ZN7CaDiCaL8Internal4timeEv.exit3
  ret void
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #1

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 3736}
!9 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7, !10, i64 8, !10, i64 9, !10, i64 10, !10, i64 11, !10, i64 12, !10, i64 13, !10, i64 14, !10, i64 15, !10, i64 16, !10, i64 17, !10, i64 18, !6, i64 19, !11, i64 24, !12, i64 72, !5, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !10, i64 120, !13, i64 128, !13, i64 152, !13, i64 176, !13, i64 200, !13, i64 224, !13, i64 248, !19, i64 272, !25, i64 296, !10, i64 320, !10, i64 321, !5, i64 324, !30, i64 328, !35, i64 472, !31, i64 480, !36, i64 504, !41, i64 528, !36, i64 552, !45, i64 576, !46, i64 600, !51, i64 624, !52, i64 632, !55, i64 688, !60, i64 712, !41, i64 736, !65, i64 760, !70, i64 784, !70, i64 808, !74, i64 832, !41, i64 856, !70, i64 880, !79, i64 904, !84, i64 928, !89, i64 952, !89, i64 960, !89, i64 968, !89, i64 976, !89, i64 984, !10, i64 992, !10, i64 993, !10, i64 994, !5, i64 996, !12, i64 1000, !89, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !41, i64 1064, !41, i64 1088, !41, i64 1112, !41, i64 1136, !10, i64 1160, !10, i64 1161, !41, i64 1168, !41, i64 1192, !41, i64 1216, !41, i64 1240, !41, i64 1264, !41, i64 1288, !41, i64 1312, !90, i64 1336, !12, i64 2152, !41, i64 2160, !91, i64 2184, !19, i64 2208, !96, i64 2232, !101, i64 2800, !103, i64 2968, !110, i64 3056, !111, i64 3104, !112, i64 3112, !113, i64 3120, !118, i64 3144, !123, i64 3168, !128, i64 3192, !129, i64 3912, !146, i64 5560, !10, i64 7128, !148, i64 7136, !150, i64 7192, !151, i64 7216, !54, i64 7248, !153, i64 7256, !10, i64 7264, !154, i64 7272, !155, i64 7280}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"_ZTSN7CaDiCaL9ReluctantE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !10, i64 40, !10, i64 41}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSSt6vectorImSaImEE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseImSaImEE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 long", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !24, i64 0}
!24 = !{!"any p2 pointer", !18, i64 0}
!25 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !18, i64 0}
!30 = !{!"_ZTSN7CaDiCaL6PhasesE", !31, i64 0, !31, i64 24, !31, i64 48, !31, i64 72, !31, i64 96, !31, i64 120}
!31 = !{!"_ZTSSt6vectorIaSaIaEE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"_ZTSSt6vectorIjSaIjEE", !37, i64 0}
end_hunk_0
