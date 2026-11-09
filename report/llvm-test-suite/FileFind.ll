Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FileFind?download=true
inline.NumInlined: 271
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKcS5_:bb.a
  %min.iters.check1 = icmp ult i32 %.pre4.i, 32
  br i1 %min.iters.check1, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !24
  %wide.load2 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %wide.load, ptr %i.af, align 1, !tbaa !24
  store <16 x i8> %wide.load2, ptr %i.ag, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index4 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next6, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index4
  %wide.load5 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 %index4
  store <4 x i8> %wide.load5, ptr %i.aj, align 1, !tbaa !24
  %index.next6 = add nuw i64 %index4, 4           ; 2 uses
  %i.ak = icmp eq i64 %index.next6, %n.vec3
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n7 = icmp eq i64 %n.vec3, %wide.trip.count.i.i
  br i1 %cmp.n7, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec3, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.al = icmp eq ptr %.pre.i.i, null
  br i1 %i.al, label %bb.g, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.an = load i8, ptr %i.am, align 1, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !105

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #19
  %.pre.i = load i32, ptr %i.q, align 8, !tbaa !22
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.f
  %i.ap = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.f ]
  store ptr %i.y, ptr %i.p, align 8, !tbaa !23
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.y, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !24
  store i32 %i.t, ptr %i.u, align 4, !tbaa !26
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader: ; preds = %bb.g, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %.04.i.i.ph = phi ptr [ %i.y, %bb.g ], [ %.pre5.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ]
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.au, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %.04.i.i.ph, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.as, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %2, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.at = load i8, ptr %.0.i.i, align 1, !tbaa !24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.at, ptr %.04.i.i, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEaSEPKc.exit, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIcEaSEPKc.exit:                   ; preds = %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  store i32 %i.s, ptr %i.q, align 8, !tbaa !22
  %i.av = call fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a)
  %.not24 = icmp eq i32 %i.av, 0
  br i1 %.not24, label %bb.r, label %bb.h

bb.h:                                             ; preds = %_ZN11CStringBaseIcEaSEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN11CStringBaseIcEC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.4)
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %i.a)
          to label %bb.i unwind label %bb.n       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.5)
          to label %bb.j unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ay = tail call ptr @__errno_location() #21
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !11
  %i.ba = call ptr @strerror(i32 noundef %i.az) #20
  %i.bb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.ba)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bc = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIcEpLEPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.6)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bd = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN11CStringBaseIcEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI11CStringBaseIcE, ptr nonnull @_ZN11CStringBaseIcED2Ev) #23
          to label %bb.s unwind label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bd) #20
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.be, %bb.n ], [ %i.bf, %bb.o ]
  %i.bg = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #19
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %_ZN11CStringBaseIcEaSEPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void

bb.s:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind9CFindFile9FindFirstEPKwRNS1_10CFileInfoWE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !113 {
bb.a:
  %3 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 16 ; 11 uses
  %4 = alloca %class.CStringBase, align 8         ; 7 uses
  %5 = alloca %class.CStringBase.0, align 8       ; 11 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @closedir(ptr noundef nonnull %i.a)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN8NWindows5NFile5NFind9CFindFile5CloseEv.exit

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %0, align 8, !tbaa !44
  br label %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit

_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit:      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 16
  %i.g = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 52
  store ptr %i.g, ptr %i.e, align 8, !tbaa !23
  store i8 0, ptr %i.g, align 1, !tbaa !24
  store i32 4, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %1)
  %i.k = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.l = add nsw i32 %i.k, 1                      ; 3 uses
  %i.m = icmp ne i32 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = zext nneg i32 %i.l to i64
  %i.o = icmp slt i32 %i.k, -1
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = select i1 %i.o, i64 -1, i64 %i.p
  %i.r = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #18
          to label %.noexc unwind label %bb.o     ; 10 uses

.noexc:                                           ; preds = %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = load i32, ptr %i.j, align 4, !tbaa !45
  %i.u = icmp sgt i32 %i.t, 0
  %.pre4.i = load i32, ptr %i.i, align 8, !tbaa !38 ; 4 uses
  br i1 %i.u, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %.noexc
  %i.v = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i23 = load ptr, ptr %5, align 8, !tbaa !39 ; 9 uses
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i2357 = ptrtoaddr ptr %.pre.i.i23 to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  %i.w = sub i64 %.pre.i.i2357, %i.s
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i23, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x i32>, ptr %i.x, align 4, !tbaa !41
  %wide.load58 = load <4 x i32>, ptr %i.y, align 4, !tbaa !41
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %wide.load, ptr %i.z, align 4, !tbaa !41
  store <4 x i32> %wide.load58, ptr %i.aa, align 4, !tbaa !41
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i23, i64 %indvars.iv.i.i.prol
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i.prol
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !41
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !109

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.af = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.ag = icmp ugt i64 %i.af, -4
  br i1 %i.ag, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.ah = icmp eq ptr %.pre.i.i23, null
  br i1 %i.ah, label %bb.d, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i23, i64 %indvars.iv.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !41
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !41
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i23, i64 %indvars.iv.next.i.i
  %i.am = load i32, ptr %i.al, align 4, !tbaa !41
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i
  store i32 %i.am, ptr %i.an, align 4, !tbaa !41
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i23, i64 %indvars.iv.next.i.i.1
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !41
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.1
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !41
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i23, i64 %indvars.iv.next.i.i.2
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.i.i.2
  store i32 %i.as, ptr %i.at, align 4, !tbaa !41
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !110

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i23) #19
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc
  store ptr %i.r, ptr %5, align 8, !tbaa !39
  %i.au = sext i32 %.pre4.i to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.au
  store i32 0, ptr %i.av, align 4, !tbaa !41
  store i32 %i.l, ptr %i.j, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ay, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.r, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aw, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %1, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.ax = load i32, ptr %.0.i.i, align 4, !tbaa !41 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.ax, ptr %.04.i.i, align 4, !tbaa !41
  %.not.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !1

bb.e:                                             ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.k, ptr %i.i, align 8, !tbaa !38
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef 0)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.az = load ptr, ptr %5, align 8, !tbaa !39    ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.az) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.bb = load ptr, ptr %4, align 8, !tbaa !23
  %i.bc = invoke noundef zeroext i1 @_ZN8NWindows5NFile5NFind9CFindFile9FindFirstEPKcRNS1_9CFileInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.bb, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.h unwind label %bb.r       ; 2 uses

bb.h:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  br i1 %i.bc, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.be = load i32, ptr %i.bd, align 16, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load <2 x i64>, ptr %i.bg, align 16, !tbaa !11
  store <2 x i64> %i.bi, ptr %i.bh, align 8, !tbaa !11
  %i.bj = load <2 x i64>, ptr %3, align 16, !tbaa !24
  store <2 x i64> %i.bj, ptr %2, align 8, !tbaa !24
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bl = load i8, ptr %i.bk, align 4, !tbaa !46, !range !47, !noundef !48
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i8 %i.bl, ptr %i.bm, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_Z24MultiByteToUnicodeStringRK11CStringBaseIcEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase.0) align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i32 noundef 0)
          to label %_Z16GetUnicodeStringRK11CStringBaseIcEj.exit unwind label %bb.s

_Z16GetUnicodeStringRK11CStringBaseIcEj.exit:     ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !38
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  store i32 0, ptr %i.bp, align 4, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !38 ; 2 uses
  %i.bs = add nsw i32 %i.br, 1                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !45
  %i.bv = icmp eq i32 %i.bs, %i.bu
  br i1 %i.bv, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i25, label %bb.j

bb.j:                                             ; preds = %_Z16GetUnicodeStringRK11CStringBaseIcEj.exit
  %i.bw = zext nneg i32 %i.bs to i64
  %i.bx = icmp slt i32 %i.br, -1
  %i.by = shl nuw nsw i64 %i.bw, 2
  %i.bz = select i1 %i.bx, i64 -1, i64 %i.by
  %i.ca = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #18
          to label %.noexc39 unwind label %bb.t   ; 5 uses

.noexc39:                                         ; preds = %bb.j
  %i.cb = load i32, ptr %i.bt, align 4, !tbaa !45
  %i.cc = icmp sgt i32 %i.cb, 0
  %.pre7.i = load i32, ptr %i.bo, align 8, !tbaa !38 ; 5 uses
  br i1 %i.cc, label %.preheader.i.i29, label %bb.k

.preheader.i.i29:                                 ; preds = %.noexc39
end_hunk_0
begin_hunk_1_@_ZN8NWindows5NFile5NFind8FindFileEPKcRNS1_9CFileInfoE:_ZN11CStringBaseIcEC2Ev.exit
vec.epilog.scalar.ph88:                           ; preds = %vec.epilog.scalar.ph88.preheader, %vec.epilog.scalar.ph88
  %indvars.iv.i.i47 = phi i64 [ %indvars.iv.next.i.i48, %vec.epilog.scalar.ph88 ], [ %indvars.iv.i.i47.ph, %vec.epilog.scalar.ph88.preheader ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre.i.i41, i64 %indvars.iv.i.i47
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.i.i47
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !24
  %indvars.iv.next.i.i48 = add nuw nsw i64 %indvars.iv.i.i47, 1 ; 2 uses
  %exitcond.not.i.i49 = icmp eq i64 %indvars.iv.next.i.i48, %wide.trip.count.i.i46
  br i1 %exitcond.not.i.i49, label %._crit_edge.thread.i.i43, label %vec.epilog.scalar.ph88, !llvm.loop !134

._crit_edge.thread.i.i43:                         ; preds = %vec.epilog.scalar.ph88, %middle.block84, %vec.epilog.middle.block97, %._crit_edge.i.i42
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i41) #19
  %.pre.i44 = load i32, ptr %i.bi, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i43, %._crit_edge.i.i42, %.noexc50
  %i.ch = phi i32 [ %.pre.i44, %._crit_edge.thread.i.i43 ], [ %.pre7.i, %._crit_edge.i.i42 ], [ %.pre7.i, %.noexc50 ]
  store ptr %i.bq, ptr %i.bh, align 8, !tbaa !23
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.bq, i64 %i.ci
  store i8 0, ptr %i.cj, align 1, !tbaa !24
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !26
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36

_ZN11CStringBaseIcE11SetCapacityEi.exit.i36:      ; preds = %bb.h, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.ck = phi ptr [ %.pre8.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.bq, %bb.h ]
  %i.cl = load ptr, ptr %3, align 8, !tbaa !23    ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36
  %.04.i.i37 = phi ptr [ %i.ck, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36 ], [ %i.co, %bb.i ] ; 2 uses
  %.0.i.i38 = phi ptr [ %i.cl, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i36 ], [ %i.cm, %bb.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i38, i64 1
  %i.cn = load i8, ptr %.0.i.i38, align 1, !tbaa !24 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.04.i.i37, i64 1
  store i8 %i.cn, ptr %.04.i.i37, align 1, !tbaa !24
  %.not.i.i39 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i39, label %bb.j, label %bb.i, !llvm.loop !0

bb.j:                                             ; preds = %bb.i
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !22
  %i.cp = icmp eq ptr %i.cl, null
  br i1 %i.cp, label %_ZN11CStringBaseIcED2Ev.exit51, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #19
  br label %_ZN11CStringBaseIcED2Ev.exit51

_ZN11CStringBaseIcED2Ev.exit51:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.cq = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN11CStringBaseIcED2Ev.exit52, label %bb.l

bb.l:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit51
  call void @_ZdaPv(ptr noundef nonnull %i.cq) #19
  br label %_ZN11CStringBaseIcED2Ev.exit52

_ZN11CStringBaseIcED2Ev.exit52:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit51, %bb.l
  %i.cs = icmp eq i32 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i1 %i.cs

bb.m:                                             ; preds = %_ZN11CStringBaseIcEC2Ev.exit
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit54

bb.n:                                             ; preds = %.noexc
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit53

bb.o:                                             ; preds = %bb.b
  %i.cv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cw = load ptr, ptr %4, align 8, !tbaa !23    ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %_ZN11CStringBaseIcED2Ev.exit53, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.cw) #19
  br label %_ZN11CStringBaseIcED2Ev.exit53

_ZN11CStringBaseIcED2Ev.exit53:                   ; preds = %bb.p, %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cu, %bb.n ], [ %i.cv, %bb.o ], [ %i.cv, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.r

bb.q:                                             ; preds = %bb.g, %_ZL16nameWindowToUnixPKc.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11CStringBaseIcED2Ev.exit53
  %.pn10 = phi { ptr, i32 } [ %i.cy, %bb.q ], [ %.pn, %_ZN11CStringBaseIcED2Ev.exit53 ] ; 2 uses
  %i.cz = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN11CStringBaseIcED2Ev.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.cz) #19
  br label %_ZN11CStringBaseIcED2Ev.exit54

_ZN11CStringBaseIcED2Ev.exit54:                   ; preds = %bb.s, %bb.r, %bb.m
  %.pn10.pn = phi { ptr, i32 } [ %i.ct, %bb.m ], [ %.pn10, %bb.r ], [ %.pn10, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.db = load ptr, ptr %2, align 8, !tbaa !23    ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_ZN11CStringBaseIcED2Ev.exit55, label %bb.t

bb.t:                                             ; preds = %_ZN11CStringBaseIcED2Ev.exit54
  call void @_ZdaPv(ptr noundef nonnull %i.db) #19
  br label %_ZN11CStringBaseIcED2Ev.exit55

_ZN11CStringBaseIcED2Ev.exit55:                   ; preds = %_ZN11CStringBaseIcED2Ev.exit54, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 !guid !136 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.a = load i32, ptr @global_use_lstat, align 4, !tbaa !11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call i32 @lstat64(ptr noundef %1, ptr noundef nonnull %2) #20
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @stat64(ptr noundef %1, ptr noundef nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]  ; 2 uses
  %.not15 = icmp eq i32 %.0, 0
  br i1 %.not15, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !140  ; 3 uses
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 16384                  ; 2 uses
  %spec.select = select i1 %i.g, i32 16, i32 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = lshr i32 %i.e, 7
  %i.j = and i32 %i.i, 1
  %i.k = or disjoint i32 %i.j, %spec.select
  %i.l = shl i32 %i.e, 16
  %i.m = or disjoint i32 %i.l, 32768
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = xor i32 %i.n, 1
  store i32 %i.o, ptr %i.h, align 8, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.q = load i64, ptr %i.p, align 8, !tbaa !141
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME(i32 noundef %i.r, ptr noundef nonnull %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.u = load i64, ptr %i.t, align 8, !tbaa !142
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME(i32 noundef %i.v, ptr noundef nonnull %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.y = load i64, ptr %i.x, align 8, !tbaa !143
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_Z29RtlSecondsSince1970ToFileTimejP9_FILETIME(i32 noundef %i.z, ptr noundef nonnull %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.ab, align 4, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ad = load i64, ptr %i.ac, align 8
  %storemerge = select i1 %i.g, i64 0, i64 %i.ad
  store i64 %storemerge, ptr %0, align 8, !tbaa !144
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind8FindFileEPKwRNS1_10CFileInfoWE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !158 {
bb.a:
  %2 = alloca %class.CStringBase, align 8         ; 7 uses
  %3 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %4 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 16 ; 11 uses
  %5 = alloca %class.CStringBase, align 8         ; 12 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 8 uses
  %7 = alloca %class.CStringBase.0, align 8       ; 9 uses
  %8 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %9 = alloca %class.CStringBase.0, align 8       ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.b = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.f = zext nneg i32 %i.c to i64
  %i.g = icmp slt i32 %i.b, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #18 ; 3 uses
  store ptr %i.j, ptr %3, align 8, !tbaa !39
  store i32 0, ptr %i.j, align 4, !tbaa !41
  store i32 %i.c, ptr %i.e, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !41
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !1

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !38
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.s = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc unwind label %bb.s     ; 10 uses

.noexc:                                           ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = load i32, ptr %i.r, align 4, !tbaa !26
  %i.v = icmp sgt i32 %i.u, 0
  %.pre1.i.i = load i32, ptr %i.q, align 16, !tbaa !22 ; 6 uses
  br i1 %i.v, label %.preheader.i.i.i, label %bb.d

.preheader.i.i.i:                                 ; preds = %.noexc
  %i.w = icmp sgt i32 %.pre1.i.i, 0
  %.pre.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !23 ; 10 uses
  br i1 %i.w, label %iter.check, label %._crit_edge.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %.pre.i.i.i179 = ptrtoaddr ptr %.pre.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %.pre1.i.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre1.i.i, 4
  %i.x = sub i64 %.pre.i.i.i179, %i.t
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check180 = icmp ult i32 %.pre1.i.i, 32
  br i1 %min.iters.check180, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %wide.trip.count.i.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !24
  %wide.load181 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <16 x i8> %wide.load, ptr %i.ab, align 1, !tbaa !24
  store <16 x i8> %wide.load181, ptr %i.ac, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !145

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec182 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index183 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next185, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %index183
  %wide.load184 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 %index183
  store <4 x i8> %wide.load184, ptr %i.af, align 1, !tbaa !24
  %index.next185 = add nuw i64 %index183, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next185, %n.vec182
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n186 = icmp eq i64 %n.vec182, %wide.trip.count.i.i.i
  br i1 %cmp.n186, label %._crit_edge.thread.i.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec182, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i.i.i.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !24
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !147

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ak = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.thread.i.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i.i:                                ; preds = %.preheader.i.i.i
  %i.am = icmp eq ptr %.pre.i.i.i, null
  br i1 %i.am, label %bb.d, label %._crit_edge.thread.i.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.i.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i.i.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !24
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !24
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv.next.i.i.i.2
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !24
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.thread.i.i.i, label %vec.epilog.scalar.ph, !llvm.loop !148

._crit_edge.thread.i.i.i:                         ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i.i) #19
  %.pre.i.i41 = load i32, ptr %i.q, align 16, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i.i, %._crit_edge.i.i.i, %.noexc
  %i.az = phi i32 [ %.pre1.i.i, %.noexc ], [ %.pre1.i.i, %._crit_edge.i.i.i ], [ %.pre.i.i41, %._crit_edge.thread.i.i.i ]
  store ptr %i.s, ptr %i.p, align 8, !tbaa !23
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.s, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !24
  store i32 4, ptr %i.r, align 4, !tbaa !26
  %i.bc = load ptr, ptr %2, align 8, !tbaa !23    ; 4 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !24
  %i.be = icmp eq i8 %i.bd, 99
  br i1 %i.be, label %bb.e, label %_ZL16nameWindowToUnixPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !24
  %i.bh = icmp eq i8 %i.bg, 58
  %spec.select.idx.i = select i1 %i.bh, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %bb.d, %bb.e
  %.0.i = phi ptr [ %i.bc, %bb.d ], [ %spec.select.i, %bb.e ]
  %i.bi = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %.0.i)
          to label %bb.f unwind label %bb.t

bb.f:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %.not = icmp eq i32 %i.bi, 0
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bl = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc52 unwind label %bb.u   ; 10 uses

.noexc52:                                         ; preds = %bb.g
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load i32, ptr %i.bk, align 4, !tbaa !26
  %i.bo = icmp sgt i32 %i.bn, 0
  %.pre1.i = load i32, ptr %i.bj, align 8, !tbaa !22 ; 6 uses
  br i1 %i.bo, label %.preheader.i.i42, label %bb.h

.preheader.i.i42:                                 ; preds = %.noexc52
  %i.bp = icmp sgt i32 %.pre1.i, 0
  %.pre.i.i43 = load ptr, ptr %5, align 8, !tbaa !23 ; 10 uses
  br i1 %i.bp, label %iter.check205, label %._crit_edge.i.i44

iter.check205:                                    ; preds = %.preheader.i.i42
  %.pre.i.i43190 = ptrtoaddr ptr %.pre.i.i43 to i64
  %wide.trip.count.i.i48 = zext nneg i32 %.pre1.i to i64 ; 8 uses
  %min.iters.check191 = icmp ult i32 %.pre1.i, 4
  %i.bq = sub i64 %.pre.i.i43190, %i.bm
  %diff.check193 = icmp ugt i64 %i.bq, -32
  %or.cond248 = select i1 %min.iters.check191, i1 true, i1 %diff.check193
  br i1 %or.cond248, label %vec.epilog.scalar.ph207.preheader, label %vector.main.loop.iter.check194

vector.main.loop.iter.check194:                   ; preds = %iter.check205
  %min.iters.check195 = icmp ult i32 %.pre1.i, 32
  br i1 %min.iters.check195, label %vec.epilog.ph209, label %vector.ph196

vector.ph196:                                     ; preds = %vector.main.loop.iter.check194
  %i.br = and i64 %wide.trip.count.i.i48, 28
  %n.vec197 = and i64 %wide.trip.count.i.i48, 2147483616 ; 4 uses
  br label %vector.body198

vector.body198:                                   ; preds = %vector.ph196, %vector.body198
  %index199 = phi i64 [ 0, %vector.ph196 ], [ %index.next202, %vector.body198 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i.i43, i64 %index199 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load200 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !24
  %wide.load201 = load <16 x i8>, ptr %i.bt, align 1, !tbaa !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index199 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <16 x i8> %wide.load200, ptr %i.bu, align 1, !tbaa !24
  store <16 x i8> %wide.load201, ptr %i.bv, align 1, !tbaa !24
  %index.next202 = add nuw i64 %index199, 32      ; 2 uses
  %i.bw = icmp eq i64 %index.next202, %n.vec197
  br i1 %i.bw, label %middle.block203, label %vector.body198, !llvm.loop !149

middle.block203:                                  ; preds = %vector.body198
  %cmp.n204 = icmp eq i64 %n.vec197, %wide.trip.count.i.i48
  br i1 %cmp.n204, label %._crit_edge.thread.i.i45, label %vec.epilog.iter.check206

vec.epilog.iter.check206:                         ; preds = %middle.block203
  %min.epilog.iters.check208 = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check208, label %vec.epilog.scalar.ph207.preheader, label %vec.epilog.ph209, !prof !29

vec.epilog.ph209:                                 ; preds = %vector.main.loop.iter.check194, %vec.epilog.iter.check206
  %vec.epilog.resume.val210 = phi i64 [ %n.vec197, %vec.epilog.iter.check206 ], [ 0, %vector.main.loop.iter.check194 ]
  %n.vec211 = and i64 %wide.trip.count.i.i48, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body212

vec.epilog.vector.body212:                        ; preds = %vec.epilog.vector.body212, %vec.epilog.ph209
  %index213 = phi i64 [ %vec.epilog.resume.val210, %vec.epilog.ph209 ], [ %index.next215, %vec.epilog.vector.body212 ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.pre.i.i43, i64 %index213
  %wide.load214 = load <4 x i8>, ptr %i.bx, align 1, !tbaa !24
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index213
  store <4 x i8> %wide.load214, ptr %i.by, align 1, !tbaa !24
  %index.next215 = add nuw i64 %index213, 4       ; 2 uses
  %i.bz = icmp eq i64 %index.next215, %n.vec211
  br i1 %i.bz, label %vec.epilog.middle.block216, label %vec.epilog.vector.body212, !llvm.loop !150

vec.epilog.middle.block216:                       ; preds = %vec.epilog.vector.body212
  %cmp.n217 = icmp eq i64 %n.vec211, %wide.trip.count.i.i48
  br i1 %cmp.n217, label %._crit_edge.thread.i.i45, label %vec.epilog.scalar.ph207.preheader

vec.epilog.scalar.ph207.preheader:                ; preds = %iter.check205, %vec.epilog.iter.check206, %vec.epilog.middle.block216
  %indvars.iv.i.i49.ph = phi i64 [ 0, %iter.check205 ], [ %n.vec197, %vec.epilog.iter.check206 ], [ %n.vec211, %vec.epilog.middle.block216 ] ; 3 uses
  %xtraiter250 = and i64 %wide.trip.count.i.i48, 3 ; 2 uses
  %lcmp.mod251.not = icmp eq i64 %xtraiter250, 0
  br i1 %lcmp.mod251.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol

vec.epilog.scalar.ph207.prol:                     ; preds = %vec.epilog.scalar.ph207.preheader, %vec.epilog.scalar.ph207.prol
  %indvars.iv.i.i49.prol = phi i64 [ %indvars.iv.next.i.i50.prol, %vec.epilog.scalar.ph207.prol ], [ %indvars.iv.i.i49.ph, %vec.epilog.scalar.ph207.preheader ] ; 3 uses
  %prol.iter252 = phi i64 [ %prol.iter252.next, %vec.epilog.scalar.ph207.prol ], [ 0, %vec.epilog.scalar.ph207.preheader ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre.i.i43, i64 %indvars.iv.i.i49.prol
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.i.i49.prol
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !24
  %indvars.iv.next.i.i50.prol = add nuw nsw i64 %indvars.iv.i.i49.prol, 1 ; 2 uses
  %prol.iter252.next = add i64 %prol.iter252, 1   ; 2 uses
  %prol.iter252.cmp.not = icmp eq i64 %prol.iter252.next, %xtraiter250
  br i1 %prol.iter252.cmp.not, label %vec.epilog.scalar.ph207.prol.loopexit, label %vec.epilog.scalar.ph207.prol, !llvm.loop !151

vec.epilog.scalar.ph207.prol.loopexit:            ; preds = %vec.epilog.scalar.ph207.prol, %vec.epilog.scalar.ph207.preheader
  %indvars.iv.i.i49.unr = phi i64 [ %indvars.iv.i.i49.ph, %vec.epilog.scalar.ph207.preheader ], [ %indvars.iv.next.i.i50.prol, %vec.epilog.scalar.ph207.prol ]
  %i.cd = sub nsw i64 %indvars.iv.i.i49.ph, %wide.trip.count.i.i48
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %._crit_edge.thread.i.i45, label %vec.epilog.scalar.ph207

._crit_edge.i.i44:                                ; preds = %.preheader.i.i42
  %i.cf = icmp eq ptr %.pre.i.i43, null
  br i1 %i.cf, label %bb.h, label %._crit_edge.thread.i.i45

vec.epilog.scalar.ph207:                          ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207
  %indvars.iv.i.i49 = phi i64 [ %indvars.iv.next.i.i50.3, %vec.epilog.scalar.ph207 ], [ %indvars.iv.i.i49.unr, %vec.epilog.scalar.ph207.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre.i.i43, i64 %indvars.iv.i.i49
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.i.i49
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !24
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i49, 1 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.pre.i.i43, i64 %indvars.iv.next.i.i50
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !24
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.i.i50
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !24
  %indvars.iv.next.i.i50.1 = add nuw nsw i64 %indvars.iv.i.i49, 2 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre.i.i43, i64 %indvars.iv.next.i.i50.1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.i.i50.1
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !24
  %indvars.iv.next.i.i50.2 = add nuw nsw i64 %indvars.iv.i.i49, 3 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre.i.i43, i64 %indvars.iv.next.i.i50.2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.i.i50.2
  store i8 %i.cq, ptr %i.cr, align 1, !tbaa !24
  %indvars.iv.next.i.i50.3 = add nuw nsw i64 %indvars.iv.i.i49, 4 ; 2 uses
  %exitcond.not.i.i51.3 = icmp eq i64 %indvars.iv.next.i.i50.3, %wide.trip.count.i.i48
  br i1 %exitcond.not.i.i51.3, label %._crit_edge.thread.i.i45, label %vec.epilog.scalar.ph207, !llvm.loop !152

._crit_edge.thread.i.i45:                         ; preds = %vec.epilog.scalar.ph207.prol.loopexit, %vec.epilog.scalar.ph207, %middle.block203, %vec.epilog.middle.block216, %._crit_edge.i.i44
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i43) #19
  %.pre.i46 = load i32, ptr %i.bj, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i45, %._crit_edge.i.i44, %.noexc52
  %i.cs = phi i32 [ %.pre1.i, %.noexc52 ], [ %.pre1.i, %._crit_edge.i.i44 ], [ %.pre.i46, %._crit_edge.thread.i.i45 ]
  store ptr %i.bl, ptr %5, align 8, !tbaa !23
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds i8, ptr %i.bl, i64 %i.ct
  store i8 0, ptr %i.cu, align 1, !tbaa !24
  store i32 4, ptr %i.bk, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i53 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.cx = trunc i64 %wcslen.i.i53 to i32          ; 3 uses
  %i.cy = add nsw i32 %i.cx, 1                    ; 3 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = icmp slt i32 %i.cx, -1
  %i.dc = shl nuw nsw i64 %i.da, 2
  %i.dd = select i1 %i.db, i64 -1, i64 %i.dc
  %i.de = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dd) #18
          to label %.noexc69 unwind label %bb.v   ; 3 uses

.noexc69:                                         ; preds = %bb.i
  store ptr %i.de, ptr %6, align 8, !tbaa !39
  store i32 0, ptr %i.de, align 4, !tbaa !41
  store i32 %i.cy, ptr %i.cw, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i55

_ZN11CStringBaseIwE11SetCapacityEi.exit.i55:      ; preds = %.noexc69, %bb.h
  %i.df = phi ptr [ null, %bb.h ], [ %i.de, %.noexc69 ] ; 5 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i55
  %.04.i.i56 = phi ptr [ %i.df, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i55 ], [ %i.di, %bb.j ] ; 2 uses
  %.0.i.i57 = phi ptr [ %0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i55 ], [ %i.dg, %bb.j ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i57, i64 4
  %i.dh = load i32, ptr %.0.i.i57, align 4, !tbaa !41 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.04.i.i56, i64 4
  store i32 %i.dh, ptr %.04.i.i56, align 4, !tbaa !41
  %.not.i.i58 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i58, label %bb.k, label %bb.j, !llvm.loop !1

bb.k:                                             ; preds = %bb.j
  store i32 %i.cx, ptr %i.cv, align 8, !tbaa !38
  %i.dj = invoke fastcc noundef zeroext i1 @_ZN8NWindows5NFile5NFindL16originalFilenameERK11CStringBaseIwERS2_IcE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.l unwind label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.dk = icmp eq ptr %i.df, null
  br i1 %i.dk, label %_ZN11CStringBaseIwED2Ev.exit71, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.df) #19
  br label %_ZN11CStringBaseIwED2Ev.exit71

_ZN11CStringBaseIwED2Ev.exit71:                   ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.dj, label %bb.n, label %bb.z

bb.n:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit71
  %i.dl = load ptr, ptr %5, align 8, !tbaa !23    ; 4 uses
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !24
  %i.dn = icmp eq i8 %i.dm, 99
  br i1 %i.dn, label %bb.o, label %_ZL16nameWindowToUnixPKc.exit75

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !24
  %i.dq = icmp eq i8 %i.dp, 58
  %spec.select.idx.i73 = select i1 %i.dq, i64 2, i64 0
  %spec.select.i74 = getelementptr inbounds nuw i8, ptr %i.dl, i64 %spec.select.idx.i73
  br label %_ZL16nameWindowToUnixPKc.exit75

_ZL16nameWindowToUnixPKc.exit75:                  ; preds = %bb.n, %bb.o
  %.0.i72 = phi ptr [ %i.dl, %bb.n ], [ %spec.select.i74, %bb.o ]
  %i.dr = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %.0.i72)
          to label %bb.p unwind label %bb.y

bb.p:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit75
  %i.ds = icmp eq i32 %i.dr, 0
  br label %bb.z

bb.q:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  %i.du = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %_ZN11CStringBaseIwED2Ev.exit76, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.du) #19
  br label %_ZN11CStringBaseIwED2Ev.exit76

_ZN11CStringBaseIwED2Ev.exit76:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN11CStringBaseIcED2Ev.exit147

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit146

bb.t:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.u:                                             ; preds = %bb.g
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit78

bb.v:                                             ; preds = %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit77

bb.w:                                             ; preds = %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eb = icmp eq ptr %i.df, null
  br i1 %i.eb, label %_ZN11CStringBaseIwED2Ev.exit77, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.df) #19
  br label %_ZN11CStringBaseIwED2Ev.exit77

_ZN11CStringBaseIwED2Ev.exit77:                   ; preds = %bb.x, %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.v ], [ %i.ea, %bb.w ], [ %i.ea, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.ab

bb.y:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit75
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.z:                                             ; preds = %bb.p, %_ZN11CStringBaseIwED2Ev.exit71
  %.0 = phi i1 [ %i.ds, %bb.p ], [ false, %_ZN11CStringBaseIwED2Ev.exit71 ]
  %i.ed = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.ed) #19
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y, %_ZN11CStringBaseIwED2Ev.exit77
  %.pn29 = phi { ptr, i32 } [ %i.ec, %bb.y ], [ %.pn, %_ZN11CStringBaseIwED2Ev.exit77 ] ; 2 uses
  %i.ef = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %_ZN11CStringBaseIcED2Ev.exit78, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.ef) #19
  br label %_ZN11CStringBaseIcED2Ev.exit78

_ZN11CStringBaseIcED2Ev.exit78:                   ; preds = %bb.ac, %bb.ab, %bb.u
  %.pn29.pn = phi { ptr, i32 } [ %i.dy, %bb.u ], [ %.pn29, %bb.ab ], [ %.pn29, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ba

bb.ad:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.0, label %.thread, label %bb.ax

.thread:                                          ; preds = %bb.f, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  %i.eh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.eh, align 8
  %i.ei = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %.noexc91 unwind label %bb.ao  ; 2 uses

.noexc91:                                         ; preds = %.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %7, i64 12
  store ptr %i.ei, ptr %7, align 8, !tbaa !39
  store i32 0, ptr %i.ei, align 4, !tbaa !41
  store i32 4, ptr %i.ej, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  %i.ek = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.el, align 8
  %i.em = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znam(i64 noundef 16) #18
          to label %.noexc104 unwind label %bb.ap ; 2 uses

.noexc104:                                        ; preds = %.noexc91
  %i.en = getelementptr inbounds nuw i8, ptr %8, i64 12
  store ptr %i.em, ptr %8, align 8, !tbaa !39
  store i32 0, ptr %i.em, align 4, !tbaa !41
  store i32 4, ptr %i.en, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.eo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %wcslen.i.i106 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.eq = trunc i64 %wcslen.i.i106 to i32         ; 3 uses
  %i.er = add nsw i32 %i.eq, 1                    ; 3 uses
  %i.es = icmp ne i32 %i.er, 0
  call void @llvm.assume(i1 %i.es)
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = icmp slt i32 %i.eq, -1
  %i.ev = shl nuw nsw i64 %i.et, 2
  %i.ew = select i1 %i.eu, i64 -1, i64 %i.ev
  %i.ex = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ew) #18
          to label %.noexc122 unwind label %bb.aq ; 10 uses

.noexc122:                                        ; preds = %.noexc104
  %i.ey = ptrtoaddr ptr %i.ex to i64
  %i.ez = load i32, ptr %i.ep, align 4, !tbaa !45
  %i.fa = icmp sgt i32 %i.ez, 0
  %.pre4.i107 = load i32, ptr %i.eo, align 8, !tbaa !38 ; 5 uses
  br i1 %i.fa, label %.preheader.i.i112, label %bb.ae

.preheader.i.i112:                                ; preds = %.noexc122
  %i.fb = icmp sgt i32 %.pre4.i107, 0
  %.pre.i.i113 = load ptr, ptr %9, align 8, !tbaa !39 ; 9 uses
  br i1 %i.fb, label %.lr.ph.i.i117, label %._crit_edge.i.i114

.lr.ph.i.i117:                                    ; preds = %.preheader.i.i112
  %.pre.i.i113222 = ptrtoaddr ptr %.pre.i.i113 to i64
  %wide.trip.count.i.i118 = zext nneg i32 %.pre4.i107 to i64 ; 5 uses
  %min.iters.check223 = icmp ult i32 %.pre4.i107, 8
  %i.fc = sub i64 %.pre.i.i113222, %i.ey
  %diff.check225 = icmp ugt i64 %i.fc, -32
  %or.cond249 = select i1 %min.iters.check223, i1 true, i1 %diff.check225
  br i1 %or.cond249, label %scalar.ph.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %.lr.ph.i.i117
  %n.vec227 = and i64 %wide.trip.count.i.i118, 2147483640 ; 3 uses
  br label %vector.body228

vector.body228:                                   ; preds = %vector.body228, %vector.ph226
  %index229 = phi i64 [ 0, %vector.ph226 ], [ %index.next232, %vector.body228 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i113, i64 %index229 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %wide.load230 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !41
  %wide.load231 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !41
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %index229 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  store <4 x i32> %wide.load230, ptr %i.ff, align 4, !tbaa !41
  store <4 x i32> %wide.load231, ptr %i.fg, align 4, !tbaa !41
  %index.next232 = add nuw i64 %index229, 8       ; 2 uses
  %i.fh = icmp eq i64 %index.next232, %n.vec227
  br i1 %i.fh, label %middle.block233, label %vector.body228, !llvm.loop !153

middle.block233:                                  ; preds = %vector.body228
  %cmp.n234 = icmp eq i64 %n.vec227, %wide.trip.count.i.i118
  br i1 %cmp.n234, label %._crit_edge.thread.i.i115, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i117, %middle.block233
  %indvars.iv.i.i119.ph = phi i64 [ 0, %.lr.ph.i.i117 ], [ %n.vec227, %middle.block233 ] ; 3 uses
  %xtraiter253 = and i64 %wide.trip.count.i.i118, 3 ; 2 uses
  %lcmp.mod254.not = icmp eq i64 %xtraiter253, 0
  br i1 %lcmp.mod254.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i119.prol = phi i64 [ %indvars.iv.next.i.i120.prol, %scalar.ph.prol ], [ %indvars.iv.i.i119.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter255 = phi i64 [ %prol.iter255.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i113, i64 %indvars.iv.i.i119.prol
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !41
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i.i119.prol
  store i32 %i.fj, ptr %i.fk, align 4, !tbaa !41
  %indvars.iv.next.i.i120.prol = add nuw nsw i64 %indvars.iv.i.i119.prol, 1 ; 2 uses
  %prol.iter255.next = add i64 %prol.iter255, 1   ; 2 uses
  %prol.iter255.cmp.not = icmp eq i64 %prol.iter255.next, %xtraiter253
  br i1 %prol.iter255.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !154

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i119.unr = phi i64 [ %indvars.iv.i.i119.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i120.prol, %scalar.ph.prol ]
  %i.fl = sub nsw i64 %indvars.iv.i.i119.ph, %wide.trip.count.i.i118
  %i.fm = icmp ugt i64 %i.fl, -4
  br i1 %i.fm, label %._crit_edge.thread.i.i115, label %scalar.ph

._crit_edge.i.i114:                               ; preds = %.preheader.i.i112
  %i.fn = icmp eq ptr %.pre.i.i113, null
  br i1 %i.fn, label %bb.ae, label %._crit_edge.thread.i.i115

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i119 = phi i64 [ %indvars.iv.next.i.i120.3, %scalar.ph ], [ %indvars.iv.i.i119.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i113, i64 %indvars.iv.i.i119
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !41
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i.i119
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !41
  %indvars.iv.next.i.i120 = add nuw nsw i64 %indvars.iv.i.i119, 1 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i113, i64 %indvars.iv.next.i.i120
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !41
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i120
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !41
  %indvars.iv.next.i.i120.1 = add nuw nsw i64 %indvars.iv.i.i119, 2 ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i113, i64 %indvars.iv.next.i.i120.1
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !41
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i120.1
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !41
  %indvars.iv.next.i.i120.2 = add nuw nsw i64 %indvars.iv.i.i119, 3 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i113, i64 %indvars.iv.next.i.i120.2
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !41
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.next.i.i120.2
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !41
  %indvars.iv.next.i.i120.3 = add nuw nsw i64 %indvars.iv.i.i119, 4 ; 2 uses
  %exitcond.not.i.i121.3 = icmp eq i64 %indvars.iv.next.i.i120.3, %wide.trip.count.i.i118
  br i1 %exitcond.not.i.i121.3, label %._crit_edge.thread.i.i115, label %scalar.ph, !llvm.loop !155

._crit_edge.thread.i.i115:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block233, %._crit_edge.i.i114
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i113) #19
  %.pre.i116 = load i32, ptr %i.eo, align 8, !tbaa !38
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge.thread.i.i115, %._crit_edge.i.i114, %.noexc122
  %i.ga = phi i32 [ %.pre.i116, %._crit_edge.thread.i.i115 ], [ %.pre4.i107, %._crit_edge.i.i114 ], [ %.pre4.i107, %.noexc122 ]
  store ptr %i.ex, ptr %9, align 8, !tbaa !39
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.gb
  store i32 0, ptr %i.gc, align 4, !tbaa !41
  store i32 %i.er, ptr %i.ep, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i108

_ZN11CStringBaseIwE11SetCapacityEi.exit.i108:     ; preds = %bb.ae, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i108
  %.04.i.i109 = phi ptr [ %i.gf, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i108 ], [ %i.ex, %bb.ae ] ; 2 uses
  %.0.i.i110 = phi ptr [ %i.gd, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i108 ], [ %0, %bb.ae ] ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i110, i64 4
  %i.ge = load i32, ptr %.0.i.i110, align 4, !tbaa !41 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.04.i.i109, i64 4
  store i32 %i.ge, ptr %.04.i.i109, align 4, !tbaa !41
  %.not.i.i111 = icmp eq i32 %i.ge, 0
  br i1 %.not.i.i111, label %bb.af, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i108, !llvm.loop !1

bb.af:                                            ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i108
  store i32 %i.eq, ptr %i.eo, align 8, !tbaa !38
  invoke fastcc void @_ZL21my_windows_split_pathRK11CStringBaseIwERS0_S3_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.ag unwind label %bb.ar

bb.ag:                                            ; preds = %bb.af
  %i.gg = load ptr, ptr %9, align 8, !tbaa !39    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %_ZN11CStringBaseIwED2Ev.exit124, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.gg) #19
  br label %_ZN11CStringBaseIwED2Ev.exit124

_ZN11CStringBaseIwED2Ev.exit124:                  ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.gi = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.gj = load i32, ptr %i.gi, align 16, !tbaa !35
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.gj, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gn = load <2 x i64>, ptr %i.gl, align 16, !tbaa !11
  store <2 x i64> %i.gn, ptr %i.gm, align 8, !tbaa !11
  %i.go = load <2 x i64>, ptr %4, align 16, !tbaa !24
  store <2 x i64> %i.go, ptr %1, align 8, !tbaa !24
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store i32 0, ptr %i.gq, align 8, !tbaa !38
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !39 ; 2 uses
  store i32 0, ptr %i.gr, align 4, !tbaa !41
  %i.gs = load i32, ptr %i.ek, align 8, !tbaa !38 ; 3 uses
  %i.gt = add nsw i32 %i.gs, 1                    ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !45
  %i.gw = icmp eq i32 %i.gt, %i.gv
  br i1 %i.gw, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i125, label %bb.ai

bb.ai:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit124
  %i.gx = zext nneg i32 %i.gt to i64
  %i.gy = icmp slt i32 %i.gs, -1
  %i.gz = shl nuw nsw i64 %i.gx, 2
  %i.ha = select i1 %i.gy, i64 -1, i64 %i.gz
  %i.hb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ha) #18
          to label %.noexc139 unwind label %bb.at ; 5 uses

.noexc139:                                        ; preds = %bb.ai
  %i.hc = load i32, ptr %i.gu, align 4, !tbaa !45
  %i.hd = icmp sgt i32 %i.hc, 0
  %.pre7.i = load i32, ptr %i.gq, align 8, !tbaa !38 ; 5 uses
  br i1 %i.hd, label %.preheader.i.i129, label %bb.aj

.preheader.i.i129:                                ; preds = %.noexc139
  %i.he = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i130 = load ptr, ptr %i.gp, align 8, !tbaa !39 ; 4 uses
  br i1 %i.he, label %.lr.ph.i.i134, label %._crit_edge.i.i131

.lr.ph.i.i134:                                    ; preds = %.preheader.i.i129
  %wide.trip.count.i.i135 = zext nneg i32 %.pre7.i to i64 ; 3 uses
  %min.iters.check237 = icmp ult i32 %.pre7.i, 8
  br i1 %min.iters.check237, label %scalar.ph236.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %.lr.ph.i.i134
  %n.vec239 = and i64 %wide.trip.count.i.i135, 2147483640 ; 3 uses
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph238
  %index241 = phi i64 [ 0, %vector.ph238 ], [ %index.next244, %vector.body240 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i130, i64 %index241 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN8NWindows5NFile5NFind13DoesFileExistEPKc:_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit
  %1 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  store ptr %i.c, ptr %i.a, align 8, !tbaa !23
  store i8 0, ptr %i.c, align 1, !tbaa !24
  store i32 4, ptr %i.d, align 4, !tbaa !26
  %i.e = load i8, ptr %0, align 1, !tbaa !24
  %i.f = icmp eq i8 %i.e, 99
  br i1 %i.f, label %bb.a, label %_ZL16nameWindowToUnixPKc.exit

bb.a:                                             ; preds = %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = icmp eq i8 %i.h, 58
  %spec.select.idx.i = select i1 %i.i, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit, %bb.a
  %.0.i = phi ptr [ %0, %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit ], [ %spec.select.i, %bb.a ]
  %i.j = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.0.i)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.m) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit:      ; preds = %bb.b, %bb.c
  %i.o = icmp eq i32 %i.j, 0
  %i.p = and i32 %i.l, 16
  %.not = icmp eq i32 %i.p, 0
  %i.q = select i1 %i.o, i1 %.not, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %i.q

bb.d:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.s) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3:     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind12DoesDirExistEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !181 {
_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit:
  %1 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  store ptr %i.c, ptr %i.a, align 8, !tbaa !23
  store i8 0, ptr %i.c, align 1, !tbaa !24
  store i32 4, ptr %i.d, align 4, !tbaa !26
  %i.e = load i8, ptr %0, align 1, !tbaa !24
  %i.f = icmp eq i8 %i.e, 99
  br i1 %i.f, label %bb.a, label %_ZL16nameWindowToUnixPKc.exit

bb.a:                                             ; preds = %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = icmp eq i8 %i.h, 58
  %spec.select.idx.i = select i1 %i.i, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit, %bb.a
  %.0.i = phi ptr [ %0, %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit ], [ %spec.select.i, %bb.a ]
  %i.j = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.0.i)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load i32, ptr %i.k, align 8
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.m) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit:      ; preds = %bb.b, %bb.c
  %i.o = icmp eq i32 %i.j, 0
  %i.p = and i32 %i.l, 16
  %i.q = icmp ne i32 %i.p, 0
  %i.r = select i1 %i.o, i1 %i.q, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %i.r

bb.d:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.t) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3:     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !182 {
_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit:
  %1 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 52
  store ptr %i.c, ptr %i.a, align 8, !tbaa !23
  store i8 0, ptr %i.c, align 1, !tbaa !24
  store i32 4, ptr %i.d, align 4, !tbaa !26
  %i.e = load i8, ptr %0, align 1, !tbaa !24
  %i.f = icmp eq i8 %i.e, 99
  br i1 %i.f, label %bb.a, label %_ZL16nameWindowToUnixPKc.exit

bb.a:                                             ; preds = %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !24
  %i.i = icmp eq i8 %i.h, 58
  %spec.select.idx.i = select i1 %i.i, i64 2, i64 0
  %spec.select.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.idx.i
  br label %_ZL16nameWindowToUnixPKc.exit

_ZL16nameWindowToUnixPKc.exit:                    ; preds = %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit, %bb.a
  %.0.i = phi ptr [ %0, %_ZN8NWindows5NFile5NFind9CFileInfoC2Ev.exit ], [ %spec.select.i, %bb.a ]
  %i.j = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.0.i)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.k) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit:      ; preds = %bb.b, %bb.c
  %i.m = icmp eq i32 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %i.m

bb.d:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.o) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3:     ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind13DoesFileExistEPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !183 {
bb.a:
  %1 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 8 uses
  %2 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 8 uses
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  %4 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %5 = alloca %class.CStringBase, align 8         ; 10 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.b = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = zext nneg i32 %i.c to i64
  %i.g = icmp slt i32 %i.b, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #18 ; 3 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !39
  store i32 0, ptr %i.j, align 4, !tbaa !41
  store i32 %i.c, ptr %i.e, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !41
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !1

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !38
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.p = load ptr, ptr %3, align 8, !tbaa !23     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.r, align 8
  %i.s = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 52
  store ptr %i.s, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 1, !tbaa !24
  store i32 4, ptr %i.t, align 4, !tbaa !26
  %i.u = load i8, ptr %i.p, align 1, !tbaa !24
  %i.v = icmp eq i8 %i.u, 99
  br i1 %i.v, label %bb.d, label %_ZL16nameWindowToUnixPKc.exit.i

bb.d:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = icmp eq i8 %i.x, 58
  %spec.select.idx.i.i = select i1 %i.y, i64 2, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.idx.i.i
  br label %_ZL16nameWindowToUnixPKc.exit.i

_ZL16nameWindowToUnixPKc.exit.i:                  ; preds = %bb.d, %.noexc
  %.0.i.i22 = phi ptr [ %i.p, %.noexc ], [ %spec.select.i.i, %bb.d ]
  %i.z = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %.0.i.i22)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #19
  br label %bb.i

bb.g:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.af) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i:   ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.ah = icmp eq i32 %i.z, 0
  %i.ai = and i32 %i.ab, 16
  %.not.i = icmp eq i32 %i.ai, 0
  %i.aj = select i1 %i.ah, i1 %.not.i, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.aj, label %bb.ag, label %bb.m

bb.j:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %_ZN11CStringBaseIwED2Ev.exit23, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.al) #19
  br label %_ZN11CStringBaseIwED2Ev.exit23

_ZN11CStringBaseIwED2Ev.exit23:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN11CStringBaseIcED2Ev.exit67

bb.l:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ao, align 8
  %i.ap = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc34 unwind label %bb.y   ; 2 uses

.noexc34:                                         ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 12
  store ptr %i.ap, ptr %5, align 8, !tbaa !23
  store i8 0, ptr %i.ap, align 1, !tbaa !24
  store i32 4, ptr %i.aq, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i35 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.at = trunc i64 %wcslen.i.i35 to i32          ; 3 uses
  %i.au = add nsw i32 %i.at, 1                    ; 3 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37, label %bb.n

bb.n:                                             ; preds = %.noexc34
  %i.aw = zext nneg i32 %i.au to i64
  %i.ax = icmp slt i32 %i.at, -1
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = select i1 %i.ax, i64 -1, i64 %i.ay
  %i.ba = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.az) #18
          to label %.noexc51 unwind label %bb.z   ; 3 uses

.noexc51:                                         ; preds = %bb.n
  store ptr %i.ba, ptr %6, align 8, !tbaa !39
  store i32 0, ptr %i.ba, align 4, !tbaa !41
  store i32 %i.au, ptr %i.as, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37

_ZN11CStringBaseIwE11SetCapacityEi.exit.i37:      ; preds = %.noexc51, %.noexc34
  %i.bb = phi ptr [ null, %.noexc34 ], [ %i.ba, %.noexc51 ] ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37
  %.04.i.i38 = phi ptr [ %i.bb, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37 ], [ %i.be, %bb.o ] ; 2 uses
  %.0.i.i39 = phi ptr [ %0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37 ], [ %i.bc, %bb.o ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 4
  %i.bd = load i32, ptr %.0.i.i39, align 4, !tbaa !41 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.04.i.i38, i64 4
  store i32 %i.bd, ptr %.04.i.i38, align 4, !tbaa !41
  %.not.i.i40 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i40, label %bb.p, label %bb.o, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !38
  %i.bf = invoke fastcc noundef zeroext i1 @_ZN8NWindows5NFile5NFindL16originalFilenameERK11CStringBaseIwERS2_IcE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp eq ptr %i.bb, null
  br i1 %i.bg, label %_ZN11CStringBaseIwED2Ev.exit53, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bb) #19
  br label %_ZN11CStringBaseIwED2Ev.exit53

_ZN11CStringBaseIwED2Ev.exit53:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.bf, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit53
  %i.bh = load ptr, ptr %5, align 8, !tbaa !23    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.bj, align 8
  %i.bk = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc60 unwind label %bb.ac  ; 2 uses

.noexc60:                                         ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 52
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !23
  store i8 0, ptr %i.bk, align 1, !tbaa !24
  store i32 4, ptr %i.bl, align 4, !tbaa !26
  %i.bm = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bn = icmp eq i8 %i.bm, 99
  br i1 %i.bn, label %bb.t, label %_ZL16nameWindowToUnixPKc.exit.i54

bb.t:                                             ; preds = %.noexc60
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !24
  %i.bq = icmp eq i8 %i.bp, 58
  %spec.select.idx.i.i58 = select i1 %i.bq, i64 2, i64 0
  %spec.select.i.i59 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %spec.select.idx.i.i58
  br label %_ZL16nameWindowToUnixPKc.exit.i54

_ZL16nameWindowToUnixPKc.exit.i54:                ; preds = %bb.t, %.noexc60
  %.0.i.i55 = phi ptr [ %i.bh, %.noexc60 ], [ %spec.select.i.i59, %bb.t ]
  %i.br = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.0.i.i55)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i54
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN8NWindows5NFile5NFind13DoesFileExistEPKc.exit63, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #19
  br label %_ZN8NWindows5NFile5NFind13DoesFileExistEPKc.exit63

bb.w:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i54
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !23 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.body61

_ZN8NWindows5NFile5NFind13DoesFileExistEPKc.exit63: ; preds = %bb.u, %bb.v
  %i.bz = icmp eq i32 %i.br, 0
  %i.ca = and i32 %i.bt, 16
  %.not.i57 = icmp eq i32 %i.ca, 0
  %i.cb = select i1 %i.bz, i1 %.not.i57, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ad

bb.y:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit65

bb.z:                                             ; preds = %bb.n
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit64

bb.aa:                                            ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cf = icmp eq ptr %i.bb, null
  br i1 %i.cf, label %_ZN11CStringBaseIwED2Ev.exit64, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bb) #19
  br label %_ZN11CStringBaseIwED2Ev.exit64

_ZN11CStringBaseIwED2Ev.exit64:                   ; preds = %bb.ab, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cd, %bb.z ], [ %i.ce, %bb.aa ], [ %i.ce, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body61

bb.ac:                                            ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.ad:                                            ; preds = %_ZN8NWindows5NFile5NFind13DoesFileExistEPKc.exit63, %_ZN11CStringBaseIwED2Ev.exit53
  %.0.in = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit53 ], [ %i.cb, %_ZN8NWindows5NFile5NFind13DoesFileExistEPKc.exit63 ]
  %i.ch = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #19
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ag

.body61:                                          ; preds = %bb.ac, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56, %_ZN11CStringBaseIwED2Ev.exit64
  %.pn17 = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit64 ], [ %i.cg, %bb.ac ], [ %i.bw, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56 ] ; 2 uses
  %i.cj = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN11CStringBaseIcED2Ev.exit65, label %bb.af

bb.af:                                            ; preds = %.body61
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #19
  br label %_ZN11CStringBaseIcED2Ev.exit65

_ZN11CStringBaseIcED2Ev.exit65:                   ; preds = %bb.af, %.body61, %bb.y
  %.pn17.pn = phi { ptr, i32 } [ %i.cc, %bb.y ], [ %.pn17, %.body61 ], [ %.pn17, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.body

bb.ag:                                            ; preds = %bb.i, %_ZN11CStringBaseIcED2Ev.exit
  %.014 = phi i1 [ %.0.in, %_ZN11CStringBaseIcED2Ev.exit ], [ true, %bb.i ]
  %i.cl = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN11CStringBaseIcED2Ev.exit66, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #19
  br label %_ZN11CStringBaseIcED2Ev.exit66

_ZN11CStringBaseIcED2Ev.exit66:                   ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.014

.body:                                            ; preds = %bb.l, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i, %_ZN11CStringBaseIcED2Ev.exit65
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %_ZN11CStringBaseIcED2Ev.exit65 ], [ %i.an, %bb.l ], [ %i.ae, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i ] ; 2 uses
  %i.cn = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN11CStringBaseIcED2Ev.exit67, label %bb.ai

bb.ai:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.cn) #19
  br label %_ZN11CStringBaseIcED2Ev.exit67

_ZN11CStringBaseIcED2Ev.exit67:                   ; preds = %bb.ai, %.body, %_ZN11CStringBaseIwED2Ev.exit23
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %_ZN11CStringBaseIwED2Ev.exit23 ], [ %.pn17.pn.pn, %.body ], [ %.pn17.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn17.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind12DoesDirExistEPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !184 {
bb.a:
  %1 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 8 uses
  %2 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 8 uses
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  %4 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %5 = alloca %class.CStringBase, align 8         ; 10 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.b = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = zext nneg i32 %i.c to i64
  %i.g = icmp slt i32 %i.b, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #18 ; 3 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !39
  store i32 0, ptr %i.j, align 4, !tbaa !41
  store i32 %i.c, ptr %i.e, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !41
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !1

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !38
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.p = load ptr, ptr %3, align 8, !tbaa !23     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.r, align 8
  %i.s = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 52
  store ptr %i.s, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 1, !tbaa !24
  store i32 4, ptr %i.t, align 4, !tbaa !26
  %i.u = load i8, ptr %i.p, align 1, !tbaa !24
  %i.v = icmp eq i8 %i.u, 99
  br i1 %i.v, label %bb.d, label %_ZL16nameWindowToUnixPKc.exit.i

bb.d:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = icmp eq i8 %i.x, 58
  %spec.select.idx.i.i = select i1 %i.y, i64 2, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.idx.i.i
  br label %_ZL16nameWindowToUnixPKc.exit.i

_ZL16nameWindowToUnixPKc.exit.i:                  ; preds = %bb.d, %.noexc
  %.0.i.i22 = phi ptr [ %i.p, %.noexc ], [ %spec.select.i.i, %bb.d ]
  %i.z = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %.0.i.i22)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.ac) #19
  br label %bb.i

bb.g:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.af) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i:   ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.ah = icmp eq i32 %i.z, 0
  %i.ai = and i32 %i.ab, 16
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = select i1 %i.ah, i1 %i.aj, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.ak, label %bb.ag, label %bb.m

bb.j:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZN11CStringBaseIwED2Ev.exit23, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.am) #19
  br label %_ZN11CStringBaseIwED2Ev.exit23

_ZN11CStringBaseIwED2Ev.exit23:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN11CStringBaseIcED2Ev.exit66

bb.l:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ap, align 8
  %i.aq = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc34 unwind label %bb.y   ; 2 uses

.noexc34:                                         ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 12
  store ptr %i.aq, ptr %5, align 8, !tbaa !23
  store i8 0, ptr %i.aq, align 1, !tbaa !24
  store i32 4, ptr %i.ar, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i35 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.au = trunc i64 %wcslen.i.i35 to i32          ; 3 uses
  %i.av = add nsw i32 %i.au, 1                    ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37, label %bb.n

bb.n:                                             ; preds = %.noexc34
  %i.ax = zext nneg i32 %i.av to i64
  %i.ay = icmp slt i32 %i.au, -1
  %i.az = shl nuw nsw i64 %i.ax, 2
  %i.ba = select i1 %i.ay, i64 -1, i64 %i.az
  %i.bb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #18
          to label %.noexc51 unwind label %bb.z   ; 3 uses

.noexc51:                                         ; preds = %bb.n
  store ptr %i.bb, ptr %6, align 8, !tbaa !39
  store i32 0, ptr %i.bb, align 4, !tbaa !41
  store i32 %i.av, ptr %i.at, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37

_ZN11CStringBaseIwE11SetCapacityEi.exit.i37:      ; preds = %.noexc51, %.noexc34
  %i.bc = phi ptr [ null, %.noexc34 ], [ %i.bb, %.noexc51 ] ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37
  %.04.i.i38 = phi ptr [ %i.bc, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37 ], [ %i.bf, %bb.o ] ; 2 uses
  %.0.i.i39 = phi ptr [ %0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37 ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 4
  %i.be = load i32, ptr %.0.i.i39, align 4, !tbaa !41 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.04.i.i38, i64 4
  store i32 %i.be, ptr %.04.i.i38, align 4, !tbaa !41
  %.not.i.i40 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i40, label %bb.p, label %bb.o, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  store i32 %i.au, ptr %i.as, align 8, !tbaa !38
  %i.bg = invoke fastcc noundef zeroext i1 @_ZN8NWindows5NFile5NFindL16originalFilenameERK11CStringBaseIwERS2_IcE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.bh = icmp eq ptr %i.bc, null
  br i1 %i.bh, label %_ZN11CStringBaseIwED2Ev.exit53, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #19
  br label %_ZN11CStringBaseIwED2Ev.exit53

_ZN11CStringBaseIwED2Ev.exit53:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.bg, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit53
  %i.bi = load ptr, ptr %5, align 8, !tbaa !23    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.bk, align 8
  %i.bl = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc59 unwind label %bb.ac  ; 2 uses

.noexc59:                                         ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 52
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !23
  store i8 0, ptr %i.bl, align 1, !tbaa !24
  store i32 4, ptr %i.bm, align 4, !tbaa !26
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !24
  %i.bo = icmp eq i8 %i.bn, 99
  br i1 %i.bo, label %bb.t, label %_ZL16nameWindowToUnixPKc.exit.i54

bb.t:                                             ; preds = %.noexc59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !24
  %i.br = icmp eq i8 %i.bq, 58
  %spec.select.idx.i.i57 = select i1 %i.br, i64 2, i64 0
  %spec.select.i.i58 = getelementptr inbounds nuw i8, ptr %i.bi, i64 %spec.select.idx.i.i57
  br label %_ZL16nameWindowToUnixPKc.exit.i54

_ZL16nameWindowToUnixPKc.exit.i54:                ; preds = %bb.t, %.noexc59
  %.0.i.i55 = phi ptr [ %i.bi, %.noexc59 ], [ %spec.select.i.i58, %bb.t ]
  %i.bs = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.0.i.i55)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i54
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bu = load i32, ptr %i.bt, align 8
  %i.bv = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %_ZN8NWindows5NFile5NFind12DoesDirExistEPKc.exit62, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bv) #19
  br label %_ZN8NWindows5NFile5NFind12DoesDirExistEPKc.exit62

bb.w:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i54
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.by) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.body60

_ZN8NWindows5NFile5NFind12DoesDirExistEPKc.exit62: ; preds = %bb.u, %bb.v
  %i.ca = icmp eq i32 %i.bs, 0
  %i.cb = and i32 %i.bu, 16
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = select i1 %i.ca, i1 %i.cc, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ad

bb.y:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit64

bb.z:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit63

bb.aa:                                            ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = icmp eq ptr %i.bc, null
  br i1 %i.ch, label %_ZN11CStringBaseIwED2Ev.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.bc) #19
  br label %_ZN11CStringBaseIwED2Ev.exit63

_ZN11CStringBaseIwED2Ev.exit63:                   ; preds = %bb.ab, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cf, %bb.z ], [ %i.cg, %bb.aa ], [ %i.cg, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body60

bb.ac:                                            ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.ad:                                            ; preds = %_ZN8NWindows5NFile5NFind12DoesDirExistEPKc.exit62, %_ZN11CStringBaseIwED2Ev.exit53
  %.0.in = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit53 ], [ %i.cd, %_ZN8NWindows5NFile5NFind12DoesDirExistEPKc.exit62 ]
  %i.cj = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #19
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ag

.body60:                                          ; preds = %bb.ac, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56, %_ZN11CStringBaseIwED2Ev.exit63
  %.pn17 = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit63 ], [ %i.ci, %bb.ac ], [ %i.bx, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56 ] ; 2 uses
  %i.cl = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN11CStringBaseIcED2Ev.exit64, label %bb.af

bb.af:                                            ; preds = %.body60
  call void @_ZdaPv(ptr noundef nonnull %i.cl) #19
  br label %_ZN11CStringBaseIcED2Ev.exit64

_ZN11CStringBaseIcED2Ev.exit64:                   ; preds = %bb.af, %.body60, %bb.y
  %.pn17.pn = phi { ptr, i32 } [ %i.ce, %bb.y ], [ %.pn17, %.body60 ], [ %.pn17, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.body

bb.ag:                                            ; preds = %bb.i, %_ZN11CStringBaseIcED2Ev.exit
  %.014 = phi i1 [ %.0.in, %_ZN11CStringBaseIcED2Ev.exit ], [ true, %bb.i ]
  %i.cn = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %_ZN11CStringBaseIcED2Ev.exit65, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.cn) #19
  br label %_ZN11CStringBaseIcED2Ev.exit65

_ZN11CStringBaseIcED2Ev.exit65:                   ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.014

.body:                                            ; preds = %bb.l, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i, %_ZN11CStringBaseIcED2Ev.exit64
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %_ZN11CStringBaseIcED2Ev.exit64 ], [ %i.ao, %bb.l ], [ %i.ae, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i ] ; 2 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN11CStringBaseIcED2Ev.exit66, label %bb.ai

bb.ai:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.cp) #19
  br label %_ZN11CStringBaseIcED2Ev.exit66

_ZN11CStringBaseIcED2Ev.exit66:                   ; preds = %bb.ai, %.body, %_ZN11CStringBaseIwED2Ev.exit23
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %i.al, %_ZN11CStringBaseIwED2Ev.exit23 ], [ %.pn17.pn.pn, %.body ], [ %.pn17.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn17.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKw(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 !guid !185 {
bb.a:
  %1 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 7 uses
  %2 = alloca %"class.NWindows::NFile::NFind::CFileInfo", align 8 ; 7 uses
  %3 = alloca %class.CStringBase, align 8         ; 7 uses
  %4 = alloca %class.CStringBase.0, align 8       ; 10 uses
  %5 = alloca %class.CStringBase, align 8         ; 10 uses
  %6 = alloca %class.CStringBase.0, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.b = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 3 uses
  %i.d = icmp ne i32 %i.c, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.f = zext nneg i32 %i.c to i64
  %i.g = icmp slt i32 %i.b, -1
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #18 ; 3 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !39
  store i32 0, ptr %i.j, align 4, !tbaa !41
  store i32 %i.c, ptr %i.e, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %bb.a, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.m, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %i.j, %bb.a ] ; 2 uses
  %.0.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.l = load i32, ptr %.0.i.i, align 4, !tbaa !41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 4
  store i32 %i.l, ptr %.04.i.i, align 4, !tbaa !41
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIwEC2EPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !1

_ZN11CStringBaseIwEC2EPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.b, ptr %i.a, align 8, !tbaa !38
  invoke void @_Z24UnicodeStringToMultiByteRK11CStringBaseIwEj(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.n = load ptr, ptr %4, align 8, !tbaa !39     ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %i.n) #19
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.p = load ptr, ptr %3, align 8, !tbaa !23     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 0, ptr %i.r, align 8
  %i.s = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 52
  store ptr %i.s, ptr %i.q, align 8, !tbaa !23
  store i8 0, ptr %i.s, align 1, !tbaa !24
  store i32 4, ptr %i.t, align 4, !tbaa !26
  %i.u = load i8, ptr %i.p, align 1, !tbaa !24
  %i.v = icmp eq i8 %i.u, 99
  br i1 %i.v, label %bb.d, label %_ZL16nameWindowToUnixPKc.exit.i

bb.d:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !24
  %i.y = icmp eq i8 %i.x, 58
  %spec.select.idx.i.i = select i1 %i.y, i64 2, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 %spec.select.idx.i.i
  br label %_ZL16nameWindowToUnixPKc.exit.i

_ZL16nameWindowToUnixPKc.exit.i:                  ; preds = %bb.d, %.noexc
  %.0.i.i22 = phi ptr [ %i.p, %.noexc ], [ %spec.select.i.i, %bb.d ]
  %i.z = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull %.0.i.i22)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #19
  br label %bb.i

bb.g:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.q, align 8, !tbaa !23  ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i:   ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.af = icmp eq i32 %i.z, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br i1 %i.af, label %bb.ag, label %bb.m

bb.j:                                             ; preds = %_ZN11CStringBaseIwEC2EPKw.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %4, align 8, !tbaa !39    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN11CStringBaseIwED2Ev.exit23, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ah) #19
  br label %_ZN11CStringBaseIwED2Ev.exit23

_ZN11CStringBaseIwED2Ev.exit23:                   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN11CStringBaseIcED2Ev.exit66

bb.l:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.ak, align 8
  %i.al = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc34 unwind label %bb.y   ; 2 uses

.noexc34:                                         ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 12
  store ptr %i.al, ptr %5, align 8, !tbaa !23
  store i8 0, ptr %i.al, align 1, !tbaa !24
  store i32 4, ptr %i.am, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %wcslen.i.i35 = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0)
  %i.ap = trunc i64 %wcslen.i.i35 to i32          ; 3 uses
  %i.aq = add nsw i32 %i.ap, 1                    ; 3 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37, label %bb.n

bb.n:                                             ; preds = %.noexc34
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = icmp slt i32 %i.ap, -1
  %i.au = shl nuw nsw i64 %i.as, 2
  %i.av = select i1 %i.at, i64 -1, i64 %i.au
  %i.aw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.av) #18
          to label %.noexc51 unwind label %bb.z   ; 3 uses

.noexc51:                                         ; preds = %bb.n
  store ptr %i.aw, ptr %6, align 8, !tbaa !39
  store i32 0, ptr %i.aw, align 4, !tbaa !41
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !45
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37

_ZN11CStringBaseIwE11SetCapacityEi.exit.i37:      ; preds = %.noexc51, %.noexc34
  %i.ax = phi ptr [ null, %.noexc34 ], [ %i.aw, %.noexc51 ] ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37
  %.04.i.i38 = phi ptr [ %i.ax, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37 ], [ %i.ba, %bb.o ] ; 2 uses
  %.0.i.i39 = phi ptr [ %0, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i37 ], [ %i.ay, %bb.o ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i39, i64 4
  %i.az = load i32, ptr %.0.i.i39, align 4, !tbaa !41 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.04.i.i38, i64 4
  store i32 %i.az, ptr %.04.i.i38, align 4, !tbaa !41
  %.not.i.i40 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i40, label %bb.p, label %bb.o, !llvm.loop !1

bb.p:                                             ; preds = %bb.o
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !38
  %i.bb = invoke fastcc noundef zeroext i1 @_ZN8NWindows5NFile5NFindL16originalFilenameERK11CStringBaseIwERS2_IcE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.q unwind label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.bc = icmp eq ptr %i.ax, null
  br i1 %i.bc, label %_ZN11CStringBaseIwED2Ev.exit53, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #19
  br label %_ZN11CStringBaseIwED2Ev.exit53

_ZN11CStringBaseIwED2Ev.exit53:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br i1 %i.bb, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit53
  %i.bd = load ptr, ptr %5, align 8, !tbaa !23    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 0, ptr %i.bf, align 8
  %i.bg = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #18
          to label %.noexc59 unwind label %bb.ac  ; 2 uses

.noexc59:                                         ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 52
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !23
  store i8 0, ptr %i.bg, align 1, !tbaa !24
  store i32 4, ptr %i.bh, align 4, !tbaa !26
  %i.bi = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bj = icmp eq i8 %i.bi, 99
  br i1 %i.bj, label %bb.t, label %_ZL16nameWindowToUnixPKc.exit.i54

bb.t:                                             ; preds = %.noexc59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bm = icmp eq i8 %i.bl, 58
  %spec.select.idx.i.i57 = select i1 %i.bm, i64 2, i64 0
  %spec.select.i.i58 = getelementptr inbounds nuw i8, ptr %i.bd, i64 %spec.select.idx.i.i57
  br label %_ZL16nameWindowToUnixPKc.exit.i54

_ZL16nameWindowToUnixPKc.exit.i54:                ; preds = %bb.t, %.noexc59
  %.0.i.i55 = phi ptr [ %i.bd, %.noexc59 ], [ %spec.select.i.i58, %bb.t ]
  %i.bn = invoke fastcc noundef i32 @_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %.0.i.i55)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i54
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKc.exit62, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #19
  br label %_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKc.exit62

bb.w:                                             ; preds = %_ZL16nameWindowToUnixPKc.exit.i54
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !23 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.br) #19
  br label %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56

_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56: ; preds = %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %.body60

_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKc.exit62: ; preds = %bb.u, %bb.v
  %i.bt = icmp eq i32 %i.bn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ad

bb.y:                                             ; preds = %bb.m
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIcED2Ev.exit64

bb.z:                                             ; preds = %bb.n
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN11CStringBaseIwED2Ev.exit63

bb.aa:                                            ; preds = %bb.p
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bx = icmp eq ptr %i.ax, null
  br i1 %i.bx, label %_ZN11CStringBaseIwED2Ev.exit63, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #19
  br label %_ZN11CStringBaseIwED2Ev.exit63

_ZN11CStringBaseIwED2Ev.exit63:                   ; preds = %bb.ab, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.bv, %bb.z ], [ %i.bw, %bb.aa ], [ %i.bw, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %.body60

bb.ac:                                            ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body60

bb.ad:                                            ; preds = %_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKc.exit62, %_ZN11CStringBaseIwED2Ev.exit53
  %.0.in = phi i1 [ false, %_ZN11CStringBaseIwED2Ev.exit53 ], [ %i.bt, %_ZN8NWindows5NFile5NFind18DoesFileOrDirExistEPKc.exit62 ]
  %i.bz = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.bz) #19
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ag

.body60:                                          ; preds = %bb.ac, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56, %_ZN11CStringBaseIwED2Ev.exit63
  %.pn17 = phi { ptr, i32 } [ %.pn, %_ZN11CStringBaseIwED2Ev.exit63 ], [ %i.by, %bb.ac ], [ %i.bq, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i56 ] ; 2 uses
  %i.cb = load ptr, ptr %5, align 8, !tbaa !23    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN11CStringBaseIcED2Ev.exit64, label %bb.af

bb.af:                                            ; preds = %.body60
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #19
  br label %_ZN11CStringBaseIcED2Ev.exit64

_ZN11CStringBaseIcED2Ev.exit64:                   ; preds = %bb.af, %.body60, %bb.y
  %.pn17.pn = phi { ptr, i32 } [ %i.bu, %bb.y ], [ %.pn17, %.body60 ], [ %.pn17, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.body

bb.ag:                                            ; preds = %bb.i, %_ZN11CStringBaseIcED2Ev.exit
  %.014 = phi i1 [ %.0.in, %_ZN11CStringBaseIcED2Ev.exit ], [ true, %bb.i ]
  %i.cd = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZN11CStringBaseIcED2Ev.exit65, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #19
  br label %_ZN11CStringBaseIcED2Ev.exit65

_ZN11CStringBaseIcED2Ev.exit65:                   ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i1 %.014

.body:                                            ; preds = %bb.l, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i, %_ZN11CStringBaseIcED2Ev.exit64
  %.pn17.pn.pn = phi { ptr, i32 } [ %.pn17.pn, %_ZN11CStringBaseIcED2Ev.exit64 ], [ %i.aj, %bb.l ], [ %i.ac, %_ZN8NWindows5NFile5NFind9CFileInfoD2Ev.exit3.i ] ; 2 uses
  %i.cf = load ptr, ptr %3, align 8, !tbaa !23    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN11CStringBaseIcED2Ev.exit66, label %bb.ai

bb.ai:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.cf) #19
  br label %_ZN11CStringBaseIcED2Ev.exit66

_ZN11CStringBaseIcED2Ev.exit66:                   ; preds = %bb.ai, %.body, %_ZN11CStringBaseIwED2Ev.exit23
  %.pn17.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %_ZN11CStringBaseIwED2Ev.exit23 ], [ %.pn17.pn.pn, %.body ], [ %.pn17.pn.pn, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn17.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
end_hunk_2
