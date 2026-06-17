inline.NumInlined: 260
inline.NumDeleted: 100
begin_hunk_0_@_ZN8NArchive3N7z8CHandler20SetCompressionMethodERNS0_22CCompressionMethodModeER13CObjectVectorINS_14COneMethodInfoEEj:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.h, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %4, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.j = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.d unwind label %bb.c       ; 3 uses

common.resume:                                    ; preds = %bb.j, %.body, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.c ], [ %eh.lpad-body, %.body ], [ %i.y, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @_ZN13CObjectVectorI5CPropED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18
  br label %common.resume

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !27
  store i32 4, ptr %i.l, align 4, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !31
  store i32 0, ptr %i.j, align 4, !tbaa !32
  %i.n = invoke noalias noundef nonnull dereferenceable(20) ptr @_Znam(i64 noundef 20) #19
          to label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i unwind label %bb.j ; 3 uses

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d
  %i.o = icmp eq i32 %i.c, 0
  %i.p = select i1 %i.o, ptr @.str.2, ptr @.str
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #20
  store ptr %i.n, ptr %i.i, align 8, !tbaa !27
  store i32 0, ptr %i.n, align 4, !tbaa !32
  store i32 5, ptr %i.l, align 4, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.q, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.s, %bb.e ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.r = load i32, ptr %.04.i.i, align 4, !tbaa !32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.r, ptr %.0.i.i, align 4, !tbaa !32
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e, !llvm.loop !45

bb.f:                                             ; preds = %bb.e
  store i32 4, ptr %i.m, align 8, !tbaa !31
  %i.t = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.g unwind label %bb.j       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN11CStringBaseIwED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.u) #20
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.h, %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %4, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %_ZN8NArchive14COneMethodInfoD2Ev.exit unwind label %bb.i, !inline_history !42

bb.i:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #21, !inline_history !42
  unreachable

_ZN8NArchive14COneMethodInfoD2Ev.exit:            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #18, !inline_history !42
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.pre = load i32, ptr %i.d, align 4, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.d, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8NArchive14COneMethodInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %common.resume

bb.k:                                             ; preds = %_ZN8NArchive14COneMethodInfoD2Ev.exit, %bb.a
  %i.z = phi i32 [ %.pre, %_ZN8NArchive14COneMethodInfoD2Ev.exit ], [ %i.e, %bb.a ]
  %.not65 = icmp sgt i32 %i.z, 0
  br i1 %.not65, label %.lr.ph68, label %.critedge69

.lr.ph68:                                         ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph68, %_ZN7CMethodD2Ev.exit
  %indvars.iv82 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next83, %_ZN7CMethodD2Ev.exit ] ; 2 uses
  %.03766 = phi i1 [ false, %.lr.ph68 ], [ %spec.select, %_ZN7CMethodD2Ev.exit ]
  %i.am = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv82
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41 ; 3 uses
  call void @_ZN8NArchive11COutHandler21SetCompressionMethod2ERNS_14COneMethodInfoEj(ptr noundef nonnull align 8 dereferenceable(100) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.ao, i32 noundef %3)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %.val = load ptr, ptr %i.ap, align 8, !tbaa !27
  %i.aq = call noundef i32 @_Z21MyStringCompareNoCasePKwS0_(ptr noundef %.val, ptr noundef nonnull @.str.2)
  %i.ar = icmp ne i32 %i.aq, 0
  %spec.select = select i1 %i.ar, i1 true, i1 %.03766 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ad, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.ab, align 8, !tbaa !25
  %i.as = invoke noundef zeroext i1 @_Z10FindMethodRK11CStringBaseIwERyRjS4_(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, ptr noundef nonnull align 4 dereferenceable(4) %i.af)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.as, label %bb.o, label %.critedge44

bb.n:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.bb, %.body.i ]
  call void @_ZN7CMethodD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.o:                                             ; preds = %bb.m
  %i.au = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %bb.p unwind label %bb.n       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.av = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19
          to label %.noexc45 unwind label %bb.n   ; 7 uses

.noexc45:                                         ; preds = %bb.p
  %i.aw = load i64, ptr %5, align 8, !tbaa !46
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !46
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.az, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.ax, align 8, !tbaa !25
  %i.ba = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.q unwind label %.body.i    ; 0 uses

.body.i:                                          ; preds = %.noexc45
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ax) #18
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 48) #20
  br label %.body

bb.q:                                             ; preds = %.noexc45
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.bd = load i64, ptr %i.ae, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.r unwind label %bb.n

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.ag, align 8, !tbaa !18
  %i.bf = load i32, ptr %i.ah, align 4, !tbaa !17 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bg
  store ptr %i.av, ptr %i.bh, align 8, !tbaa !41
  %i.bi = add nsw i32 %i.bf, 1
  store i32 %i.bi, ptr %i.ah, align 4, !tbaa !17
  %i.bj = load i8, ptr %i.ai, align 8, !tbaa !49, !range !22, !noundef !23
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.bl = load i32, ptr %i.aj, align 4, !tbaa !17 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bn = load ptr, ptr %i.ak, align 8, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.bl to i64
  br label %bb.s

6:                                                ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !50

bb.s:                                             ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !41 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !38
  %.off = add i32 %i.bq, -1
  %switch = icmp ult i32 %.off, 2
  %7 = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %8 = load i16, ptr %7, align 8
  %9 = icmp eq i16 %8, 19
  %or.cond = select i1 %switch, i1 %9, i1 false
  br i1 %or.cond, label %.critedge, label %6

.critedge:                                        ; preds = %bb.s
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !51 ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = shl nuw nsw i64 %i.bt, 7
  %i.bv = icmp ult i32 %i.bs, 131072
  %spec.select42 = select i1 %i.bv, i64 16777216, i64 %i.bu
  store i64 %spec.select42, ptr %i.al, align 8, !tbaa !52
  store i8 1, ptr %i.ai, align 8, !tbaa !49
  br label %.loopexit

.loopexit:                                        ; preds = %6, %.preheader, %bb.r, %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.ab, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %_ZN7CMethodD2Ev.exit unwind label %bb.t, !inline_history !42

bb.t:                                             ; preds = %.loopexit
  %i.bw = landingpad { ptr, i32 }
          catch ptr null
  %i.bx = extractvalue { ptr, i32 } %i.bw, 0
  call void @__clang_call_terminate(ptr %i.bx) #21, !inline_history !42
  unreachable

_ZN7CMethodD2Ev.exit:                             ; preds = %.loopexit
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #18, !inline_history !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.by = load i32, ptr %i.d, align 4, !tbaa !17
  %i.bz = sext i32 %i.by to i64
  %.not = icmp slt i64 %indvars.iv.next83, %i.bz
  br i1 %.not, label %bb.l, label %.thread49, !llvm.loop !53

.critedge44:                                      ; preds = %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.ab, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %.thread unwind label %bb.u, !inline_history !42

bb.u:                                             ; preds = %.critedge44
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #21, !inline_history !42
  unreachable

.thread:                                          ; preds = %.critedge44
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ab) #18, !inline_history !42
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.w

.thread49:                                        ; preds = %_ZN7CMethodD2Ev.exit
  br i1 %spec.select, label %bb.w, label %.critedge69

.critedge69:                                      ; preds = %bb.k, %.thread49
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !49, !range !22, !noundef !23
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.critedge69
  store i8 1, ptr %i.cc, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.cf, align 8, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %.thread, %.thread49, %.critedge69, %bb.v
  %.3 = phi i32 [ -2147024809, %.thread ], [ 0, %bb.v ], [ 0, %.critedge69 ], [ 0, %.thread49 ]
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEPKw(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN8NWindows4NCOM12CPropVariantaSEj(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.c, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.d = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %_ZN13CObjectVectorI5CPropEC2ERKS1_.exit.i unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #18
  br label %.body

_ZN13CObjectVectorI5CPropEC2ERKS1_.exit.i:        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 3 uses
  %i.j = add nsw i32 %i.i, 1                      ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN13CObjectVectorI5CPropEC2ERKS1_.exit.i
  %i.l = zext nneg i32 %i.j to i64
  %i.m = icmp slt i32 %i.i, -1
  %i.n = shl nuw nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #19
          to label %.noexc.i unwind label %bb.e   ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store ptr %i.p, ptr %i.f, align 8, !tbaa !27
  store i32 0, ptr %i.p, align 4, !tbaa !32
  store i32 %i.j, ptr %i.q, align 4, !tbaa !30
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc.i, %_ZN13CObjectVectorI5CPropEC2ERKS1_.exit.i
  %i.r = phi ptr [ null, %_ZN13CObjectVectorI5CPropEC2ERKS1_.exit.i ], [ %i.p, %.noexc.i ]
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.r, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.v, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.u = load i32, ptr %.04.i.i.i, align 4, !tbaa !32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.u, ptr %.0.i.i.i, align 4, !tbaa !32
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.d, !llvm.loop !45

bb.e:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN13CObjectVectorI5CPropED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.a) #18
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 %i.i, ptr %i.x, align 8, !tbaa !31
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !17 ; 3 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ac
  store ptr %i.a, ptr %i.ad, align 8, !tbaa !41
  %i.ae = add nsw i32 %i.ab, 1
  store i32 %i.ae, ptr %i.aa, align 4, !tbaa !17
  ret i32 %i.ab

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.e, %bb.b ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #20
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive14COneMethodInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %0, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorI5CPropED2Ev.exit unwind label %bb.c, !inline_history !42

bb.c:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #21, !inline_history !42
  unreachable

_ZN13CObjectVectorI5CPropED2Ev.exit:              ; preds = %_ZN11CStringBaseIwED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18, !inline_history !42
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive14COneMethodInfoEE, i64 16), ptr %0, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21
  unreachable
}

declare void @_ZN8NArchive11COutHandler21SetCompressionMethod2ERNS_14COneMethodInfoEj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z10FindMethodRK11CStringBaseIwERyRjS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorI5CPropEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e)
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph.i, label %_ZN13CObjectVectorI5CPropEpLERKS1_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN13CObjectVectorI5CPropE3AddERKS0_.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN13CObjectVectorI5CPropE3AddERKS0_.exit.i ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 2 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19 ; 4 uses
  %i.m = load i32, ptr %i.k, align 8, !tbaa !38
  store i32 %i.m, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke void @_ZN8NWindows4NCOM12CPropVariantC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZN13CObjectVectorI5CPropE3AddERKS0_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 24) #20
  resume { ptr, i32 } %i.p

_ZN13CObjectVectorI5CPropE3AddERKS0_.exit.i:      ; preds = %bb.b
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.r = load i32, ptr %i.c, align 4, !tbaa !17   ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.s
  store ptr %i.l, ptr %i.t, align 8, !tbaa !41
  %i.u = add nsw i32 %i.r, 1
  store i32 %i.u, ptr %i.c, align 4, !tbaa !17
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z8CHandler11UpdateItemsEP20ISequentialOutStreamjP22IArchiveUpdateCallback:bb.a
bb.j:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %i.r, align 8, !tbaa !18
  %i.ca = sext i32 %i.bv to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.j
  br i1 %i.ce, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.s, align 8, !tbaa !31
  store i32 0, ptr %i.bo, align 4, !tbaa !32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !31 ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1                    ; 3 uses
  %i.ci = icmp eq i32 %i.ch, 4
  br i1 %i.ci, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = icmp slt i32 %i.cg, -1
  %i.cl = shl nuw nsw i64 %i.cj, 2
  %i.cm = select i1 %i.ck, i64 -1, i64 %i.cl
  %i.cn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #19
          to label %bb.m unwind label %bb.y       ; 3 uses

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #20
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !31
  %i.co = sext i32 %.pre.i to i64
  store ptr %i.cn, ptr %i.j, align 8, !tbaa !27
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  store i32 0, ptr %i.cp, align 4, !tbaa !32
  store i32 %i.ch, ptr %i.k, align 4, !tbaa !30
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.m, %bb.k
  %i.cq = phi ptr [ %i.bo, %bb.k ], [ %i.cn, %bb.m ]
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.cr, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cs, %bb.n ] ; 2 uses
  %.0.i.i = phi ptr [ %i.cq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.cu, %bb.n ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  %i.ct = load i32, ptr %.04.i.i, align 4, !tbaa !32 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  store i32 %i.ct, ptr %.0.i.i, align 4, !tbaa !32
  %.not.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.n, !llvm.loop !45

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.n
  %i.cv = load i32, ptr %i.cf, align 8, !tbaa !31
  store i32 %i.cv, ptr %i.s, align 8, !tbaa !31
  %.pre = load i32, ptr %8, align 8, !tbaa !62
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, %bb.j
  %i.cw = phi i32 [ %.pre, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i ], [ %i.bv, %bb.j ] ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 33
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !65, !range !22, !noundef !23
  store i8 %i.cy, ptr %i.t, align 1, !tbaa !67
  %i.cz = load i64, ptr %i.cc, align 8, !tbaa !68
  store i64 %i.cz, ptr %i.p, align 8, !tbaa !64
  %i.da = load i32, ptr %i.u, align 4, !tbaa !17
  %i.db = icmp slt i32 %i.cw, %i.da
  br i1 %i.db, label %bb.o, label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit

bb.o:                                             ; preds = %_ZN11CStringBaseIwEaSERKS0_.exit
  %i.dc = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.dd = sext i32 %i.cw to i64
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !69, !range !22, !noundef !23
  br label %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit

_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit: ; preds = %bb.o, %_ZN11CStringBaseIwEaSERKS0_.exit
  %i.dg = phi i8 [ 0, %_ZN11CStringBaseIwEaSERKS0_.exit ], [ %i.df, %bb.o ]
  store i8 %i.dg, ptr %i.l, align 2, !tbaa !70
  %i.dh = load i32, ptr %i.x, align 4, !tbaa !17
  %i.di = icmp slt i32 %i.cw, %i.dh
  br i1 %i.di, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit
  %i.dj = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.dk = sext i32 %i.cw to i64                   ; 2 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dj, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !69, !range !22, !noundef !23
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.do, i64 %i.dk
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !71
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit
  %storemerge.i = phi i64 [ %i.dq, %bb.q ], [ 0, %bb.p ], [ 0, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit ]
  %.0.i = phi i8 [ 1, %bb.q ], [ 0, %bb.p ], [ 0, %_ZNK8NArchive3N7z16CArchiveDatabase10IsItemAntiEi.exit ]
  store i64 %storemerge.i, ptr %i.w, align 8, !tbaa !71
  store i8 %.0.i, ptr %i.aa, align 1, !tbaa !72
  %i.dr = load i32, ptr %i.ac, align 4, !tbaa !17
  %i.ds = icmp slt i32 %i.cw, %i.dr
  br i1 %i.ds, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dt = load ptr, ptr %i.ad, align 8, !tbaa !18
  %i.du = sext i32 %i.cw to i64                   ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !69, !range !22, !noundef !23
  %i.dx = trunc nuw i8 %i.dw to i1
  br i1 %i.dx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dy = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.du
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !71
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %storemerge.i262 = phi i64 [ %i.ea, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ]
  %.0.i263 = phi i8 [ 1, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ]
  store i64 %storemerge.i262, ptr %i.ab, align 8, !tbaa !71
  store i8 %.0.i263, ptr %i.af, align 2, !tbaa !73
  %i.eb = load i32, ptr %i.ah, align 4, !tbaa !17
  %i.ec = icmp slt i32 %i.cw, %i.eb
  br i1 %i.ec, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ed = load ptr, ptr %i.ai, align 8, !tbaa !18
  %i.ee = sext i32 %i.cw to i64                   ; 2 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !69, !range !22, !noundef !23
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ei = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ee
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !71
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %storemerge.i265 = phi i64 [ %i.ek, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ]
  %.0.i266 = phi i8 [ 1, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ]
  store i64 %storemerge.i265, ptr %i.ag, align 8, !tbaa !71
  store i8 %.0.i266, ptr %i.ak, align 1, !tbaa !74
  %.pre416 = load i8, ptr %i.m, align 1, !tbaa !59, !range !22
  %i.el = trunc nuw i8 %.pre416 to i1
  br i1 %i.el, label %bb.aa, label %bb.cz

bb.y:                                             ; preds = %bb.l
  %i.em = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %.body298

bb.z:                                             ; preds = %bb.f
  br i1 %i.bq, label %bb.aa, label %bb.cz

bb.aa:                                            ; preds = %bb.x, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i16 0, ptr %9, align 8, !tbaa !34
  store i16 0, ptr %i.al, align 2, !tbaa !37
  %i.en = load ptr, ptr %3, align 8, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 64
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = invoke noundef i32 %i.ep(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 9, ptr noundef nonnull %9)
          to label %bb.ab unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.aa
  %.not219 = icmp eq i32 %i.eq, 0
  br i1 %.not219, label %bb.ae, label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.er = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.es = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit unwind label %bb.ad ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit:         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body298

bb.ae:                                            ; preds = %bb.ab
  %i.ev = load i16, ptr %9, align 8, !tbaa !34
  switch i16 %i.ev, label %bb.ag [
    i16 0, label %.sink.split
    i16 19, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  %i.ew = load i32, ptr %i.am, align 8, !tbaa !51
  store i32 %i.ew, ptr %i.an, align 8, !tbaa !75
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ae, %bb.af
  %.sink = phi i8 [ 1, %bb.af ], [ 0, %bb.ae ]
  store i8 %.sink, ptr %i.ao, align 8, !tbaa !76
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %bb.ae, %bb.ab
  %cond10 = phi i1 [ false, %bb.ae ], [ false, %bb.ab ], [ true, %.sink.split ]
  %.3 = phi i32 [ -2147024809, %bb.ae ], [ %i.eq, %bb.ab ], [ %.0388, %.sink.split ] ; 2 uses
  %i.ex = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268 unwind label %bb.ah ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ey = landingpad { ptr, i32 }
          catch ptr null
  %i.ez = extractvalue { ptr, i32 } %i.ey, 0
  call void @__clang_call_terminate(ptr %i.ez) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268:      ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br i1 %cond10, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268
  %i.fa = load i8, ptr %i.ap, align 1, !tbaa !77, !range !22, !noundef !23
  %i.fb = trunc nuw i8 %i.fa to i1
  store i64 0, ptr %i.w, align 8, !tbaa !71
  store i8 0, ptr %i.aa, align 1, !tbaa !69
  br i1 %i.fb, label %bb.aj, label %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit.thread

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i16 0, ptr %6, align 8, !tbaa !34
  store i16 0, ptr %i.aq, align 2, !tbaa !37
  %i.fc = load ptr, ptr %3, align 8, !tbaa !25
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 64
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = invoke noundef i32 %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 10, ptr noundef nonnull %6)
          to label %bb.ak unwind label %bb.al     ; 2 uses

bb.ak:                                            ; preds = %bb.aj
  %.not.i = icmp eq i32 %i.ff, 0
  br i1 %.not.i, label %bb.an, label %bb.aq

bb.al:                                            ; preds = %bb.aj
  %i.fg = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.fh = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i unwind label %bb.am ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.fi = landingpad { ptr, i32 }
          catch ptr null
  %i.fj = extractvalue { ptr, i32 } %i.fi, 0
  call void @__clang_call_terminate(ptr %i.fj) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i:       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.body298

bb.an:                                            ; preds = %bb.ak
  %i.fk = load i16, ptr %6, align 8, !tbaa !34
  switch i16 %i.fk, label %bb.aq [
    i16 64, label %bb.ao
    i16 0, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.fl = load i64, ptr %i.ar, align 8
  store i64 %i.fl, ptr %i.w, align 8, !tbaa !71
  store i8 1, ptr %i.aa, align 1, !tbaa !69
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an, %bb.ak
  %.1.i = phi i32 [ 0, %bb.ap ], [ %i.ff, %bb.ak ], [ -2147024809, %bb.an ] ; 2 uses
  %i.fm = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit unwind label %bb.ar ; 0 uses

bb.ar:                                            ; preds = %bb.aq
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #21
  unreachable

_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit: ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not221 = icmp eq i32 %.1.i, 0
  br i1 %.not221, label %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit.thread, label %.thread

_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit.thread: ; preds = %bb.ai, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit
  %i.fp = load i8, ptr %i.as, align 2, !tbaa !78, !range !22, !noundef !23
  %i.fq = trunc nuw i8 %i.fp to i1
  store i64 0, ptr %i.ab, align 8, !tbaa !71
  store i8 0, ptr %i.af, align 2, !tbaa !69
  br i1 %i.fq, label %bb.as, label %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276.thread

bb.as:                                            ; preds = %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store i16 0, ptr %5, align 8, !tbaa !34
  store i16 0, ptr %i.at, align 2, !tbaa !37
  %i.fr = load ptr, ptr %3, align 8, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 64
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = invoke noundef i32 %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 11, ptr noundef nonnull %5)
          to label %bb.at unwind label %bb.au     ; 2 uses

bb.at:                                            ; preds = %bb.as
  %.not.i271 = icmp eq i32 %i.fu, 0
  br i1 %.not.i271, label %bb.aw, label %bb.az

bb.au:                                            ; preds = %bb.as
  %i.fv = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.fw = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i270 unwind label %bb.av ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i270:    ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body298

bb.aw:                                            ; preds = %bb.at
  %i.fz = load i16, ptr %5, align 8, !tbaa !34
  switch i16 %i.fz, label %bb.az [
    i16 64, label %bb.ax
    i16 0, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = load i64, ptr %i.au, align 8
  store i64 %i.ga, ptr %i.ab, align 8, !tbaa !71
  store i8 1, ptr %i.af, align 2, !tbaa !69
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.aw, %bb.at
  %.1.i272 = phi i32 [ 0, %bb.ay ], [ %i.fu, %bb.at ], [ -2147024809, %bb.aw ] ; 2 uses
  %i.gb = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276 unwind label %bb.ba ; 0 uses

bb.ba:                                            ; preds = %bb.az
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #21
  unreachable

_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276: ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %.not222 = icmp eq i32 %.1.i272, 0
  br i1 %.not222, label %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276.thread, label %.thread

_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276.thread: ; preds = %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit.thread, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276
  store i64 0, ptr %i.ag, align 8, !tbaa !71
  store i8 0, ptr %i.ak, align 1, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i16 0, ptr %4, align 8, !tbaa !34
  store i16 0, ptr %i.av, align 2, !tbaa !37
  %i.ge = load ptr, ptr %3, align 8, !tbaa !25
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = invoke noundef i32 %i.gg(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 12, ptr noundef nonnull %4)
          to label %bb.bb unwind label %bb.bc     ; 2 uses

bb.bb:                                            ; preds = %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276.thread
  %.not.i278 = icmp eq i32 %i.gh, 0
  br i1 %.not.i278, label %bb.be, label %bb.bh

bb.bc:                                            ; preds = %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276.thread
  %i.gi = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.gj = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i277 unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gk = landingpad { ptr, i32 }
          catch ptr null
  %i.gl = extractvalue { ptr, i32 } %i.gk, 0
  call void @__clang_call_terminate(ptr %i.gl) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i277:    ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.body298

bb.be:                                            ; preds = %bb.bb
  %i.gm = load i16, ptr %4, align 8, !tbaa !34
  switch i16 %i.gm, label %bb.bh [
    i16 64, label %bb.bf
    i16 0, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %i.gn = load i64, ptr %i.aw, align 8
  store i64 %i.gn, ptr %i.ag, align 8, !tbaa !71
  store i8 1, ptr %i.ak, align 1, !tbaa !69
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.be, %bb.bb
  %.1.i279 = phi i32 [ 0, %bb.bg ], [ %i.gh, %bb.bb ], [ -2147024809, %bb.be ] ; 2 uses
  %i.go = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.bj unwind label %bb.bi     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #21
  unreachable

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %.not223 = icmp eq i32 %.1.i279, 0
  br i1 %.not223, label %bb.bk, label %.thread

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i16 0, ptr %10, align 8, !tbaa !34
  store i16 0, ptr %i.ax, align 2, !tbaa !37
  %i.gr = load ptr, ptr %3, align 8, !tbaa !25
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = invoke noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 3, ptr noundef nonnull %10)
          to label %bb.bl unwind label %bb.bm     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %.not224 = icmp eq i32 %i.gu, 0
  br i1 %.not224, label %bb.bn, label %bb.ca

bb.bm:                                            ; preds = %bb.bk
  %i.gv = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %bb.ce

bb.bn:                                            ; preds = %bb.bl
  %i.gw = load i16, ptr %10, align 8, !tbaa !34
  switch i16 %i.gw, label %bb.ca [
    i16 0, label %bb.bz
    i16 8, label %bb.bo
  ]

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.gx = load ptr, ptr %i.ay, align 8, !tbaa !51
  invoke void @_ZN11CStringBaseIwEC2EPKw(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %i.gx)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  invoke void @_ZN8NArchive9NItemName13MakeLegalNameERK11CStringBaseIwE(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.gy = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %11)
          to label %bb.br unwind label %bb.bw     ; 0 uses

bb.br:                                            ; preds = %bb.bq
  %i.gz = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.ha = icmp eq ptr %i.gz, null
  br i1 %i.ha, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZdaPv(ptr noundef nonnull %i.gz) #20
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.br, %bb.bs
  %i.hb = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %_ZN11CStringBaseIwED2Ev.exit285, label %bb.bt

bb.bt:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.hb) #20
  br label %_ZN11CStringBaseIwED2Ev.exit285

_ZN11CStringBaseIwED2Ev.exit285:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bo
  %i.hd = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit287

bb.bv:                                            ; preds = %bb.bp
  %i.he = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  br label %_ZN11CStringBaseIwED2Ev.exit286

bb.bw:                                            ; preds = %bb.bq
  %i.hf = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null                          ; 2 uses
  %i.hg = load ptr, ptr %11, align 8, !tbaa !27   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN11CStringBaseIwED2Ev.exit286, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #20
  br label %_ZN11CStringBaseIwED2Ev.exit286

_ZN11CStringBaseIwED2Ev.exit286:                  ; preds = %bb.bx, %bb.bw, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.he, %bb.bv ], [ %i.hf, %bb.bw ], [ %i.hf, %bb.bx ] ; 2 uses
  %i.hi = load ptr, ptr %12, align 8, !tbaa !27   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN11CStringBaseIwED2Ev.exit287, label %bb.by

bb.by:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit286
  call void @_ZdaPv(ptr noundef nonnull %i.hi) #20
  br label %_ZN11CStringBaseIwED2Ev.exit287

_ZN11CStringBaseIwED2Ev.exit287:                  ; preds = %bb.by, %_ZN11CStringBaseIwED2Ev.exit286, %bb.bu
  %.pn.pn = phi { ptr, i32 } [ %i.hd, %bb.bu ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit286 ], [ %.pn, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bn, %_ZN11CStringBaseIwED2Ev.exit285
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bn, %bb.bl, %bb.bz
  %cond16 = phi i1 [ true, %bb.bz ], [ false, %bb.bl ], [ false, %bb.bn ]
  %.8 = phi i32 [ %.3, %bb.bz ], [ %i.gu, %bb.bl ], [ -2147024809, %bb.bn ] ; 3 uses
  %i.hk = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288 unwind label %bb.cb ; 0 uses

bb.cb:                                            ; preds = %bb.ca
  %i.hl = landingpad { ptr, i32 }
          catch ptr null
  %i.hm = extractvalue { ptr, i32 } %i.hl, 0
  call void @__clang_call_terminate(ptr %i.hm) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288:      ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br i1 %cond16, label %bb.cc, label %.thread

bb.cc:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store i16 0, ptr %13, align 8, !tbaa !34
  store i16 0, ptr %i.az, align 2, !tbaa !37
  %i.hn = load ptr, ptr %3, align 8, !tbaa !25
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.hp = load ptr, ptr %i.ho, align 8
  %i.hq = invoke noundef i32 %i.hp(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 6, ptr noundef nonnull %13)
          to label %bb.cd unwind label %bb.cg     ; 2 uses

bb.cd:                                            ; preds = %bb.cc
  %.not229 = icmp eq i32 %i.hq, 0
  br i1 %.not229, label %bb.ci, label %bb.cl

bb.ce:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit287, %bb.bm
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN11CStringBaseIwED2Ev.exit287 ], [ %i.gv, %bb.bm ]
  %i.hr = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit289 unwind label %bb.cf ; 0 uses

bb.cf:                                            ; preds = %bb.ce
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit289:      ; preds = %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  br label %.body298

bb.cg:                                            ; preds = %bb.cc
  %i.hu = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.hv = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit290 unwind label %bb.ch ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  %i.hw = landingpad { ptr, i32 }
          catch ptr null
  %i.hx = extractvalue { ptr, i32 } %i.hw, 0
  call void @__clang_call_terminate(ptr %i.hx) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit290:      ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %.body298

bb.ci:                                            ; preds = %bb.cd
  %i.hy = load i16, ptr %13, align 8, !tbaa !34
  switch i16 %i.hy, label %bb.cl [
    i16 0, label %bb.ck
    i16 11, label %bb.cj
  ]

bb.cj:                                            ; preds = %bb.ci
  %i.hz = load i16, ptr %i.ba, align 8, !tbaa !51
  %i.ia = icmp ne i16 %i.hz, 0
  %i.ib = zext i1 %i.ia to i8
  store i8 %i.ib, ptr %i.t, align 1, !tbaa !67
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.cd, %bb.ck
  %.2191 = phi i1 [ %.0189385, %bb.ci ], [ %.0189385, %bb.cd ], [ true, %bb.cj ], [ false, %bb.ck ] ; 5 uses
  %cond18 = phi i1 [ false, %bb.ci ], [ false, %bb.cd ], [ true, %bb.cj ], [ true, %bb.ck ]
  %.10 = phi i32 [ -2147024809, %bb.ci ], [ %i.hq, %bb.cd ], [ %.8, %bb.cj ], [ %.8, %bb.ck ] ; 2 uses
  %i.ic = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291 unwind label %bb.cm ; 0 uses

bb.cm:                                            ; preds = %bb.cl
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291:      ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br i1 %cond18, label %bb.cn, label %.thread

bb.cn:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  store i16 0, ptr %14, align 8, !tbaa !34
  store i16 0, ptr %i.bb, align 2, !tbaa !37
  %i.if = load ptr, ptr %3, align 8, !tbaa !25
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 64
  %i.ih = load ptr, ptr %i.ig, align 8
  %i.ii = invoke noundef i32 %i.ih(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 21, ptr noundef nonnull %14)
          to label %bb.co unwind label %bb.cp     ; 2 uses

bb.co:                                            ; preds = %bb.cn
  %.not233 = icmp eq i32 %i.ii, 0
  br i1 %.not233, label %bb.cr, label %bb.cu

bb.cp:                                            ; preds = %bb.cn
  %i.ij = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.ik = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit292 unwind label %bb.cq ; 0 uses

bb.cq:                                            ; preds = %bb.cp
  %i.il = landingpad { ptr, i32 }
          catch ptr null
  %i.im = extractvalue { ptr, i32 } %i.il, 0
  call void @__clang_call_terminate(ptr %i.im) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit292:      ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.body298

bb.cr:                                            ; preds = %bb.co
  %i.in = load i16, ptr %14, align 8, !tbaa !34
  switch i16 %i.in, label %bb.cu [
    i16 0, label %bb.ct
    i16 11, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.io = load i16, ptr %i.bc, align 8, !tbaa !51
  %i.ip = icmp ne i16 %i.io, 0
  %i.iq = zext i1 %i.ip to i8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %storemerge = phi i8 [ %i.iq, %bb.cs ], [ 0, %bb.cr ]
  store i8 %storemerge, ptr %i.l, align 2, !tbaa !70
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cr, %bb.co, %bb.ct
  %cond20 = phi i1 [ true, %bb.ct ], [ false, %bb.co ], [ false, %bb.cr ]
  %.12 = phi i32 [ %.10, %bb.ct ], [ %i.ii, %bb.co ], [ -2147024809, %bb.cr ] ; 4 uses
  %i.ir = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293 unwind label %bb.cv ; 0 uses

bb.cv:                                            ; preds = %bb.cu
  %i.is = landingpad { ptr, i32 }
          catch ptr null
  %i.it = extractvalue { ptr, i32 } %i.is, 0
  call void @__clang_call_terminate(ptr %i.it) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293:      ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br i1 %cond20, label %bb.cw, label %.thread

bb.cw:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293
  %i.iu = load i8, ptr %i.l, align 2, !tbaa !70, !range !22, !noundef !23
  %i.iv = trunc nuw i8 %i.iu to i1
  br i1 %i.iv, label %.thread467, label %bb.cx

.thread467:                                       ; preds = %bb.cw
  store i64 0, ptr %i.p, align 8, !tbaa !64
  store i32 0, ptr %i.ao, align 8
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %.pre418 = load i8, ptr %i.ao, align 8, !range !22
  %i.iw = trunc nuw i8 %.pre418 to i1
  %.not = xor i1 %.2191, true
  %or.cond = select i1 %.not, i1 %i.iw, i1 false
  br i1 %or.cond, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.ix = load i32, ptr %i.an, align 8, !tbaa !75
  %i.iy = trunc i32 %i.ix to i8
  %i.iz = lshr i8 %i.iy, 4
  %i.ja = and i8 %i.iz, 1
  store i8 %i.ja, ptr %i.t, align 1, !tbaa !67
  br label %bb.cz

bb.cz:                                            ; preds = %.thread467, %bb.x, %bb.cy, %bb.cx, %bb.z
  %.4193 = phi i1 [ %.0189385, %bb.z ], [ %.2191, %bb.cx ], [ false, %bb.cy ], [ %.0189385, %bb.x ], [ %.2191, %.thread467 ] ; 2 uses
  %.14 = phi i32 [ %.0388, %bb.z ], [ %.12, %bb.cx ], [ %.12, %bb.cy ], [ %.0388, %bb.x ], [ %.12, %.thread467 ] ; 2 uses
  %i.jb = load i8, ptr %i.n, align 4, !tbaa !61, !range !22, !noundef !23
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.da, label %bb.di

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  store i16 0, ptr %15, align 8, !tbaa !34
  store i16 0, ptr %i.bd, align 2, !tbaa !37
  %i.jd = load ptr, ptr %3, align 8, !tbaa !25
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 64
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = invoke noundef i32 %i.jf(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %.0166386, i32 noundef 7, ptr noundef nonnull %15)
          to label %bb.db unwind label %bb.dc     ; 2 uses

bb.db:                                            ; preds = %bb.da
  %.not235 = icmp eq i32 %i.jg, 0
  br i1 %.not235, label %bb.de, label %bb.dg

bb.dc:                                            ; preds = %bb.da
  %i.jh = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  %i.ji = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit294 unwind label %bb.dd ; 0 uses

bb.dd:                                            ; preds = %bb.dc
  %i.jj = landingpad { ptr, i32 }
          catch ptr null
  %i.jk = extractvalue { ptr, i32 } %i.jj, 0
  call void @__clang_call_terminate(ptr %i.jk) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit294:      ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %.body298

bb.de:                                            ; preds = %bb.db
  %i.jl = load i16, ptr %15, align 8, !tbaa !34
  %.not236 = icmp eq i16 %i.jl, 21
  br i1 %.not236, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.jm = load i64, ptr %i.be, align 8, !tbaa !51 ; 2 uses
  store i64 %i.jm, ptr %i.p, align 8, !tbaa !64
  %i.jn = icmp ne i64 %i.jm, 0
  %i.jo = load i8, ptr %i.l, align 2, !range !22
  %i.jp = trunc nuw i8 %i.jo to i1
  %or.cond25 = select i1 %i.jn, i1 %i.jp, i1 false ; 2 uses
  %not.or.cond25 = xor i1 %or.cond25, true
  %..14. = select i1 %or.cond25, i32 -2147024809, i32 %.14
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.db
  %cond8 = phi i1 [ false, %bb.db ], [ %not.or.cond25, %bb.df ], [ false, %bb.de ]
  %.16 = phi i32 [ %i.jg, %bb.db ], [ %..14., %bb.df ], [ -2147024809, %bb.de ] ; 2 uses
  %i.jq = invoke noundef i32 @_ZN8NWindows4NCOM12CPropVariant5ClearEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 unwind label %bb.dh ; 0 uses

bb.dh:                                            ; preds = %bb.dg
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #21
  unreachable

_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295:      ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br i1 %cond8, label %bb.di, label %.thread

bb.di:                                            ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295, %bb.cz
  %.17 = phi i32 [ %.16, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 ], [ %.14, %bb.cz ]
  %i.jt = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #19
          to label %.noexc296 unwind label %bb.i  ; 7 uses

.noexc296:                                        ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.jt, ptr noundef nonnull align 8 dereferenceable(68) %8, i64 40, i1 false)
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i8 0, i64 16, i1 false)
  %i.jv = load i32, ptr %i.s, align 8, !tbaa !31  ; 3 uses
  %i.jw = add nsw i32 %i.jv, 1                    ; 3 uses
  %i.jx = icmp eq i32 %i.jw, 0
  br i1 %i.jx, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %.noexc296
  %i.jy = zext nneg i32 %i.jw to i64
  %i.jz = icmp slt i32 %i.jv, -1
  %i.ka = shl nuw nsw i64 %i.jy, 2
  %i.kb = select i1 %i.jz, i64 -1, i64 %i.ka
  %i.kc = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.kb) #19
          to label %.noexc.i unwind label %bb.dm  ; 3 uses

.noexc.i:                                         ; preds = %bb.dj
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jt, i64 52
  store ptr %i.kc, ptr %i.ju, align 8, !tbaa !27
  store i32 0, ptr %i.kc, align 4, !tbaa !32
  store i32 %i.jw, ptr %i.kd, align 4, !tbaa !30
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i:    ; preds = %.noexc.i, %.noexc296
  %i.ke = phi ptr [ null, %.noexc296 ], [ %i.kc, %.noexc.i ]
  %i.kf = load ptr, ptr %i.j, align 8, !tbaa !27
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dk, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i
  %.04.i.i.i.i = phi ptr [ %i.kf, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.kg, %bb.dk ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.ke, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i.i ], [ %i.ki, %bb.dk ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i, i64 4
  %i.kh = load i32, ptr %.04.i.i.i.i, align 4, !tbaa !32 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 4
  store i32 %i.kh, ptr %.0.i.i.i.i, align 4, !tbaa !32
  %.not.i.i.i.i = icmp eq i32 %i.kh, 0
  br i1 %.not.i.i.i.i, label %bb.dl, label %bb.dk, !llvm.loop !45

bb.dl:                                            ; preds = %bb.dk
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jt, i64 48
  store i32 %i.jv, ptr %i.kj, align 8, !tbaa !31
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.kk, ptr noundef nonnull align 8 dereferenceable(12) %i.an, i64 12, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit unwind label %bb.i

bb.dm:                                            ; preds = %bb.dj
  %i.kl = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZdlPvm(ptr noundef nonnull %i.jt, i64 noundef 72) #20
  br label %.body298

_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit: ; preds = %bb.dl
  %i.km = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.kn = load i32, ptr %i.bg, align 4, !tbaa !17 ; 2 uses
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.ko
  store ptr %i.jt, ptr %i.kp, align 8, !tbaa !41
  %i.kq = add nsw i32 %i.kn, 1
  store i32 %i.kq, ptr %i.bg, align 4, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276, %bb.bj, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268, %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit, %bb.g, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295
  %.5194 = phi i1 [ %.4193, %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit ], [ %.0189385, %bb.g ], [ %.4193, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 ], [ %.0189385, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268 ], [ %.0189385, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit ], [ %.0189385, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276 ], [ %.0189385, %bb.bj ], [ %.0189385, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288 ], [ %.2191, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291 ], [ %.2191, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293 ]
  %i.kr = phi i1 [ true, %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit ], [ false, %bb.g ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268 ], [ false, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit ], [ false, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276 ], [ false, %bb.bj ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288 ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291 ], [ false, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293 ]
  %.18 = phi i32 [ %.17, %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE3AddERKS2_.exit ], [ -2147024809, %bb.g ], [ %.16, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit295 ], [ %.3, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit268 ], [ %.1.i, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit ], [ %.1.i272, %_ZN8NArchive3N7zL7GetTimeEP22IArchiveUpdateCallbackibjRyRb.exit276 ], [ %.1.i279, %bb.bj ], [ %.8, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit288 ], [ %.10, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit291 ], [ %.12, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit293 ] ; 2 uses
  %i.ks = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  %i.kt = icmp eq ptr %i.ks, null
  br i1 %i.kt, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %.thread
  call void @_ZdaPv(ptr noundef nonnull %i.ks) #20
  br label %bb.do

.thread351:                                       ; preds = %bb.c, %.lr.ph.split.us
  %.us-phi = phi i32 [ -2147467259, %.lr.ph.split.us ], [ %i.bm, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread356

bb.do:                                            ; preds = %bb.dn, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %i.kr, label %bb.b, label %.thread356

.body298:                                         ; preds = %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i277, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i270, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i, %bb.i, %bb.dm, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit289, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit290, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit292, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit294, %bb.y
  %.pn237 = phi { ptr, i32 } [ %i.er, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit ], [ %i.jh, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit294 ], [ %i.em, %bb.y ], [ %i.ij, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit292 ], [ %i.hu, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit290 ], [ %.pn.pn.pn, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit289 ], [ %i.fv, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i270 ], [ %i.fg, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i ], [ %i.kl, %bb.dm ], [ %i.by, %bb.i ], [ %i.gi, %_ZN8NWindows4NCOM12CPropVariantD2Ev.exit.i277 ] ; 2 uses
  %i.ku = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %_ZN8NArchive3N7z11CUpdateItemD2Ev.exit300, label %bb.dp

bb.dp:                                            ; preds = %.body298
  call void @_ZdaPv(ptr noundef nonnull %i.ku) #20
  br label %_ZN8NArchive3N7z11CUpdateItemD2Ev.exit300

_ZN8NArchive3N7z11CUpdateItemD2Ev.exit300:        ; preds = %bb.dp, %.body298, %bb.h
  %.pn237.pn = phi { ptr, i32 } [ %i.bx, %bb.h ], [ %.pn237, %.body298 ], [ %.pn237, %bb.dp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.dq

bb.dq:                                            ; preds = %_ZN8NArchive3N7z11CUpdateItemD2Ev.exit300, %bb.d
  %.pn237.pn.pn = phi { ptr, i32 } [ %.pn237.pn, %_ZN8NArchive3N7z11CUpdateItemD2Ev.exit300 ], [ %i.bn, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.gi

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.kw = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %16, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kw, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.kx, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, i64 16), ptr %16, align 8, !tbaa !25
  %i.ky = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 40
  %i.la = getelementptr inbounds nuw i8, ptr %16, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, i8 0, i64 16, i1 false)
  store i64 16, ptr %i.la, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE, i64 16), ptr %i.ky, align 8, !tbaa !25
  %i.lb = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  store i32 1, ptr %i.lb, align 8, !tbaa !79
  %i.lc = getelementptr inbounds nuw i8, ptr %16, i64 68 ; 4 uses
  store i8 0, ptr %i.lc, align 4, !tbaa !83
  %i.ld = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ld, i8 0, i64 16, i1 false)
  %i.le = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.ds unwind label %bb.dr     ; 2 uses

bb.dr:                                            ; preds = %._crit_edge
  %i.lf = landingpad { ptr, i32 }
          catch ptr @_ZTIPKc
          catch ptr null
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ky) #18
  call void @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %16) #18
  br label %.body301

bb.ds:                                            ; preds = %._crit_edge
  %i.lg = getelementptr inbounds nuw i8, ptr %16, i64 84 ; 3 uses
  store ptr %i.le, ptr %i.ld, align 8, !tbaa !27
  store i32 0, ptr %i.le, align 4, !tbaa !32
  store i32 4, ptr %i.lg, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.lh = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.li = getelementptr inbounds nuw i8, ptr %17, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lh, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.li, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CMethodFullEE, i64 16), ptr %17, align 8, !tbaa !25
  %i.lj = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.ll = getelementptr inbounds nuw i8, ptr %17, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lk, i8 0, i64 16, i1 false)
  store i64 16, ptr %i.ll, align 8, !tbaa !24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIN8NArchive3N7z5CBindEE, i64 16), ptr %i.lj, align 8, !tbaa !25
  %i.lm = getelementptr inbounds nuw i8, ptr %17, i64 64 ; 2 uses
  store i32 1, ptr %i.lm, align 8, !tbaa !79
  %i.ln = getelementptr inbounds nuw i8, ptr %17, i64 68 ; 2 uses
  store i8 0, ptr %i.ln, align 4, !tbaa !83
  %i.lo = getelementptr inbounds nuw i8, ptr %17, i64 72 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lo, i8 0, i64 16, i1 false)
  %i.lp = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #19
          to label %bb.du unwind label %bb.dt     ; 2 uses

bb.dt:                                            ; preds = %bb.ds
end_hunk_1
begin_hunk_2_@_ZN13CObjectVectorIN8NArchive14COneMethodInfoEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  br label %_ZN11CStringBaseIwED2Ev.exit.i

_ZN11CStringBaseIwED2Ev.exit.i:                   ; preds = %bb.c, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI5CPropE, i64 16), ptr %i.m, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
          to label %_ZN8NArchive14COneMethodInfoD2Ev.exit unwind label %bb.d, !inline_history !42

bb.d:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #21, !inline_history !42
  unreachable

_ZN8NArchive14COneMethodInfoD2Ev.exit:            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.m) #18, !inline_history !42
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 48) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN8NArchive14COneMethodInfoD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.t, label %bb.a, label %._crit_edge, !llvm.loop !138
}

declare void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN8NWindows4NCOM12CPropVariantC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z11CUpdateItemEE, i64 16), ptr %0, align 8, !tbaa !25
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEED2Ev.exit unwind label %bb.b, !inline_history !123

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #21, !inline_history !123
  unreachable

_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18, !inline_history !123
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !17   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZN8NArchive3N7z11CUpdateItemD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #20
  br label %_ZN8NArchive3N7z11CUpdateItemD2Ev.exit

_ZN8NArchive3N7z11CUpdateItemD2Ev.exit:           ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 72) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN8NArchive3N7z11CUpdateItemD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.r, label %bb.a, label %._crit_edge, !llvm.loop !139
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare noundef ptr @_Z13MyStringUpperPw(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr captures(none)) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(none) }
attributes #7 = { cold noreturn }
attributes #8 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN8NArchive11COutHandlerE", !5, i64 0, !5, i64 4, !10, i64 8, !15, i64 40, !16, i64 48, !16, i64 56, !15, i64 64, !15, i64 65, !15, i64 66, !15, i64 67, !15, i64 68, !15, i64 69, !15, i64 70, !15, i64 71, !15, i64 72, !5, i64 76, !15, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96}
!10 = !{!"_ZTS13CObjectVectorIN8NArchive14COneMethodInfoEE", !11, i64 0}
!11 = !{!"_ZTS13CRecordVectorIPvE", !12, i64 0}
!12 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !13, i64 16, !14, i64 24}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"bool", !6, i64 0}
!16 = !{!"long long", !6, i64 0}
!17 = !{!12, !5, i64 12}
!18 = !{!12, !13, i64 16}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!9, !15, i64 66}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{!12, !14, i64 24}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !7, i64 0}
!27 = !{!28, !29, i64 0}
!28 = !{!"_ZTS11CStringBaseIwE", !29, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 wchar_t", !13, i64 0}
!30 = !{!28, !5, i64 12}
!31 = !{!28, !5, i64 8}
!32 = !{!33, !33, i64 0}
!33 = !{!"wchar_t", !6, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTS14tagPROPVARIANT", !36, i64 0, !36, i64 2, !36, i64 4, !36, i64 6, !6, i64 8}
!36 = !{!"short", !6, i64 0}
!37 = !{!35, !36, i64 2}
!38 = !{!39, !5, i64 0}
!39 = !{!"_ZTS5CProp", !5, i64 0, !40, i64 8}
!40 = !{!"_ZTSN8NWindows4NCOM12CPropVariantE", !35, i64 0}
!41 = !{!13, !13, i64 0}
!42 = !{ptr @_ZN13CObjectVectorI5CPropED2Ev}
!43 = !{ptr @_ZN13CObjectVectorIN8NArchive14COneMethodInfoEED2Ev}
!44 = !{!9, !5, i64 76}
!45 = distinct !{!45, !20}
!46 = !{!47, !16, i64 0}
!47 = !{!"_ZTS7CMethod", !16, i64 0, !48, i64 8}
!48 = !{!"_ZTS13CObjectVectorI5CPropE", !11, i64 0}
!49 = !{!9, !15, i64 64}
!50 = distinct !{!50, !20}
!51 = !{!6, !6, i64 0}
!52 = !{!9, !16, i64 56}
!53 = distinct !{!53, !20}
!54 = distinct !{!54, !20}
!55 = !{!56, !57, i64 0}
!56 = !{!"_ZTS9CMyComPtrI9IInStreamE", !57, i64 0}
!57 = !{!"p1 _ZTS9IInStream", !13, i64 0}
!58 = distinct !{!58, !20}
!59 = !{!60, !15, i64 61}
!60 = !{!"_ZTSN8NArchive3N7z11CUpdateItemE", !5, i64 0, !5, i64 4, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !28, i64 40, !5, i64 56, !15, i64 60, !15, i64 61, !15, i64 62, !15, i64 63, !15, i64 64, !15, i64 65, !15, i64 66, !15, i64 67}
!61 = !{!60, !15, i64 60}
!62 = !{!60, !5, i64 0}
!63 = !{!60, !5, i64 4}
!64 = !{!60, !16, i64 32}
!65 = !{!66, !15, i64 33}
!66 = !{!"_ZTSN8NArchive3N7z9CFileItemE", !16, i64 0, !5, i64 8, !5, i64 12, !28, i64 16, !15, i64 32, !15, i64 33, !15, i64 34, !15, i64 35}
!67 = !{!60, !15, i64 63}
!68 = !{!66, !16, i64 0}
!69 = !{!15, !15, i64 0}
!70 = !{!60, !15, i64 62}
!71 = !{!16, !16, i64 0}
!72 = !{!60, !15, i64 65}
!73 = !{!60, !15, i64 66}
!74 = !{!60, !15, i64 67}
!75 = !{!60, !5, i64 56}
!76 = !{!60, !15, i64 64}
!77 = !{!9, !15, i64 69}
!78 = !{!9, !15, i64 70}
!79 = !{!80, !5, i64 64}
!80 = !{!"_ZTSN8NArchive3N7z22CCompressionMethodModeE", !81, i64 0, !82, i64 32, !5, i64 64, !15, i64 68, !28, i64 72}
!81 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z11CMethodFullEE", !11, i64 0}
!82 = !{!"_ZTS13CRecordVectorIN8NArchive3N7z5CBindEE", !12, i64 0}
!83 = !{!80, !15, i64 68}
!84 = !{!85, !86, i64 0}
!85 = !{!"_ZTS9CMyComPtrI23ICryptoGetTextPassword2E", !86, i64 0}
!86 = !{!"p1 _ZTS23ICryptoGetTextPassword2", !13, i64 0}
!87 = !{!88, !29, i64 0}
!88 = !{!"_ZTS10CMyComBSTR", !29, i64 0}
!89 = !{!9, !15, i64 67}
!90 = !{!91, !92, i64 0}
!91 = !{!"_ZTSN8NArchive3N7z14CUpdateOptionsE", !92, i64 0, !92, i64 8, !15, i64 16, !15, i64 17, !93, i64 18, !16, i64 24, !16, i64 32, !15, i64 40, !15, i64 41, !15, i64 42}
!92 = !{!"p1 _ZTSN8NArchive3N7z22CCompressionMethodModeE", !13, i64 0}
!93 = !{!"_ZTSN8NArchive3N7z14CHeaderOptionsE", !15, i64 0, !15, i64 1, !15, i64 2, !15, i64 3}
!94 = !{!91, !92, i64 8}
!95 = !{!91, !15, i64 16}
!96 = !{!91, !15, i64 17}
!97 = !{!91, !15, i64 18}
!98 = !{!91, !15, i64 19}
!99 = !{!91, !15, i64 20}
!100 = !{!9, !15, i64 71}
!101 = !{!91, !15, i64 21}
!102 = !{!9, !15, i64 65}
!103 = !{!91, !15, i64 40}
!104 = !{!9, !15, i64 40}
!105 = !{!91, !15, i64 41}
!106 = !{!9, !15, i64 80}
!107 = !{!91, !15, i64 42}
!108 = !{!109, !110, i64 0}
!109 = !{!"_ZTS10COutBuffer", !110, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !111, i64 24, !16, i64 32, !110, i64 40, !15, i64 48}
!110 = !{!"p1 omnipotent char", !13, i64 0}
!111 = !{!"_ZTS9CMyComPtrI20ISequentialOutStreamE", !112, i64 0}
!112 = !{!"p1 _ZTS20ISequentialOutStream", !13, i64 0}
!113 = !{!109, !5, i64 8}
!114 = !{!111, !112, i64 0}
!115 = !{!109, !110, i64 40}
!116 = !{!117, !118, i64 0}
!117 = !{!"_ZTS9CMyComPtrI10IOutStreamE", !118, i64 0}
!118 = !{!"p1 _ZTS10IOutStream", !13, i64 0}
!119 = !{!120, !121, i64 0}
!120 = !{!"_ZTS9CMyComPtrI22ICryptoGetTextPasswordE", !121, i64 0}
!121 = !{!"p1 _ZTS22ICryptoGetTextPassword", !13, i64 0}
!122 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z11CMethodFullEED2Ev}
!123 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z11CUpdateItemEED2Ev}
!124 = !{!110, !110, i64 0}
!125 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z9CFileItemEED2Ev}
!126 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev}
!127 = !{!29, !29, i64 0}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !20}
!130 = distinct !{!130, !20}
!131 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev}
!132 = distinct !{!132, !20}
!133 = !{!134, !110, i64 16}
!134 = !{!"_ZTS7CBufferIhE", !14, i64 8, !110, i64 16}
!135 = !{ptr @_ZN7CBufferIhED2Ev}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
end_hunk_2
