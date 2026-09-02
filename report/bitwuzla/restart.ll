Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/restart?download=true
inline.NumInlined: 24
inline.NumDeleted: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal11stabilizingEv:bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 3740
  %i.av = load i32, ptr %i.au, align 4, !tbaa !172
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fmul nnan double %i.aw, 1.000000e-02
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3064 ; 3 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !173
  %i.ba = sitofp i64 %i.az to double
  %i.bb = fmul double %i.ax, %i.ba
  %i.bc = fptosi double %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3748
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !174
  %i.bf = sext i32 %i.be to i64
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %i.bc, i64 %i.bf) ; 2 uses
  store i64 %spec.store.select, ptr %i.ay, align 8
  %i.bg = load i64, ptr %i.h, align 8, !tbaa !158
  %storemerge.v = tail call i64 @llvm.smax.i64(i64 %spec.store.select, i64 1)
  %storemerge = add nsw i64 %storemerge.v, %i.bg
  store i64 %storemerge, ptr %i.j, align 8, !tbaa !168
  tail call void @_ZN7CaDiCaL8Internal13swap_averagesEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  %i.bh = load ptr, ptr %i.ao, align 8, !tbaa !159 ; 2 uses
  %.not12 = icmp eq ptr %i.bh, null
  br i1 %.not12, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4536
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !171
  %i.bk = load i64, ptr %i.j, align 8, !tbaa !168
  %i.bl = load i64, ptr %i.ay, align 8, !tbaa !173
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.bh, ptr noundef nonnull @.str, i64 noundef %i.bj, ptr noundef nonnull @.str.2, i64 noundef %i.bk, i64 noundef %i.bl)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bm = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = select i1 %i.bn, i8 91, i8 123
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext %i.bo, i32 noundef 0)
  %i.bp = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157
  %i.bq = trunc nuw i8 %i.bp to i1
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !159 ; 13 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 3608
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !160 ; 2 uses
  br i1 %i.bq, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 6800
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !169
  %.not14 = icmp sgt i32 %i.bv, %i.bt
  br i1 %.not14, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 6768
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 3620
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !161
  %.not.i19 = icmp eq i32 %i.by, 0
  br i1 %.not.i19, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
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
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !170
  %.not13 = icmp sgt i32 %i.cd, %i.bt
  br i1 %.not13, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %i.br, i64 7008
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 3620
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !161
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
  %i.ck = load i8, ptr %i.c, align 4, !tbaa !155, !range !156, !noundef !157
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !175
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN7CaDiCaL9ReluctantcvbEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.d = load i32, ptr %i.c, align 4, !tbaa !162
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !163
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !164
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
  %i.r = load i8, ptr %i.q, align 8, !tbaa !176, !range !156, !noundef !157
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.q, align 8, !tbaa !176
  br label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.f:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.u = load i64, ptr %i.t, align 8, !tbaa !158
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2904
  %i.w = load i64, ptr %i.v, align 8, !tbaa !165
  %.not6 = icmp sgt i64 %i.u, %i.w
  br i1 %.not6, label %bb.g, label %_ZN7CaDiCaL9ReluctantcvbEv.exit

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.y = load double, ptr %i.x, align 8, !tbaa !177
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3680
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !178
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fadd nnan double %i.ab, 1.000000e+02
  %i.ad = fdiv nnan double %i.ac, 1.000000e+02
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2280
  %i.af = load double, ptr %i.ae, align 8, !tbaa !177
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !163
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !164
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !179
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.h
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !182
  %.not = icmp eq i32 %i.m, 0
  %1 = zext i1 %.not to i32
  %2 = trunc i64 %i.h to i32
  %3 = add i32 %2, %1                             ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3684
  %i.o = load i32, ptr %i.n, align 4, !tbaa !183
  %.not29 = icmp eq i32 %i.o, 0
  br i1 %.not29, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3700
  %i.r = load i32, ptr %i.q, align 4, !tbaa !184
  %.not.i = icmp ne i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.t = load i8, ptr %i.s, align 4, !range !156
  %i.u = trunc nuw i8 %i.t to i1                  ; 2 uses
  %i.v = select i1 %.not.i, i1 %i.u, i1 false
  br i1 %i.v, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.x = load i32, ptr %i.w, align 4, !tbaa !162  ; 3 uses
  %4 = icmp slt i32 %3, %i.x
  br i1 %4, label %.lr.ph42, label %.thread

.lr.ph42:                                         ; preds = %.preheader
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !179
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.aa = zext i32 %i.p to i64
  %5 = sext i32 %3 to i64
  %wide.trip.count52 = sext i32 %i.x to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph42, %bb.e
  %indvars.iv49 = phi i64 [ %5, %.lr.ph42 ], [ %indvars.iv.next50, %bb.e ] ; 2 uses
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %indvars.iv.next50
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !182 ; 2 uses
  %.not31 = icmp eq i32 %i.ac, 0
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true) ; 2 uses
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !185 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !186 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aa
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !186 ; 2 uses
  %i.ak = fcmp olt double %i.ah, %i.aj
  %i.al = fcmp ule double %i.ah, %i.aj
  %i.am = icmp ugt i32 %i.ad, %i.p
  %spec.select.i = and i1 %i.am, %i.al
  %.0.i = or i1 %i.ak, %spec.select.i
  br i1 %.0.i, label %.thread.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.thread, label %bb.c

bb.f:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ao = tail call noundef i32 @llvm.abs.i32(i32 %i.p, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !187 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !166
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.au = load i32, ptr %i.at, align 4, !tbaa !162 ; 3 uses
  %6 = icmp slt i32 %3, %i.au
  br i1 %6, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.f
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !179
  %7 = sext i32 %3 to i64
  %wide.trip.count = sext i32 %i.au to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %7, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !182 ; 2 uses
  %.not30 = icmp eq i32 %i.ax, 0
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = tail call noundef i32 @llvm.abs.i32(i32 %i.ax, i1 true)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !166
  %i.bc = icmp slt i64 %i.bb, %i.as
  br i1 %i.bc, label %.thread.loopexit60.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.g

.thread.loopexit.split.loop.exit:                 ; preds = %bb.d
  %i.bd = trunc nsw i64 %indvars.iv49 to i32
  br label %.thread

.thread.loopexit60.split.loop.exit:               ; preds = %bb.h
  %i.be = trunc nsw i64 %indvars.iv to i32
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.e, %.thread.loopexit60.split.loop.exit, %.thread.loopexit.split.loop.exit, %bb.f, %.preheader
  %.5 = phi i32 [ %3, %bb.f ], [ %3, %.preheader ], [ %i.x, %bb.e ], [ %i.bd, %.thread.loopexit.split.loop.exit ], [ %i.be, %.thread.loopexit60.split.loop.exit ], [ %i.au, %bb.i ] ; 4 uses
  %i.bf = sub nsw i32 %.5, %3                     ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 4560 ; 2 uses
  %i.bi = zext nneg i32 %i.bf to i64
  %i.bj = load <2 x i64>, ptr %i.bh, align 8, !tbaa !166
  %i.bk = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.bi, i64 1
  %i.bl = add nsw <2 x i64> %i.bj, %i.bk
  store <2 x i64> %i.bl, ptr %i.bh, align 8, !tbaa !166
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !188
  %i.bo = add nsw i64 %i.bn, 1
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !188
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k, %bb.j, %bb.a
  %.025 = phi i32 [ %3, %bb.a ], [ %.5, %bb.j ], [ %.5, %bb.k ], [ %.5, %.thread ]
  ret i32 %.025
}

declare noundef i32 @_ZN7CaDiCaL8Internal22next_decision_variableEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal7restartEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !159  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6640
  %i.d = load i32, ptr %i.c, align 8, !tbaa !189
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !160
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6608
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !161
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
  %i.o = load i32, ptr %i.n, align 4, !tbaa !162
  %i.p = sext i32 %i.o to i64
  %i.q = load <2 x i64>, ptr %i.m, align 8, !tbaa !166
  %i.r = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.p, i64 1
  %i.s = add nsw <2 x i64> %i.q, %i.r
  store <2 x i64> %i.s, ptr %i.m, align 8, !tbaa !166
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !155, !range !156, !noundef !157
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
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !158
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3676
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2904
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !165
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 82, i32 noundef 2)
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !159 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 6640
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !189
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 3608
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !160
  %.not1 = icmp sgt i32 %i.aj, %i.al
  br i1 %.not1, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 6608
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 3620
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !161
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
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"bool", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_ZTSN7CaDiCaL9ReluctantE", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !8, i64 40, !8, i64 41}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseImSaImEE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorImSaImEE", !15, i64 0}
!17 = !{!"any p2 pointer", !11, i64 0}
!18 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !17, i64 0}
end_hunk_0
