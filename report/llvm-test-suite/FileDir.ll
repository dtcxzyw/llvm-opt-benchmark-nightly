Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/FileDir?download=true
inline.NumInlined: 242
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN8NWindows5NFile10NDirectory9CTempFile6CreateEPKwS4_R11CStringBaseIwE:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13   ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.j, align 4, !tbaa !15
  %.not6.i.i = icmp eq i32 %i.k, 0
  br i1 %.not6.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = tail call ptr @__errno_location() #26
  store i32 2, ptr %i.l, align 4, !tbaa !9
  br label %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_Z17nameWindowToUnix2PKw(ptr dead_on_unwind nonnull writable sret(%class.CStringBase) align 8 %4, ptr noundef nonnull readonly %i.j)
  %i.m = load ptr, ptr %4, align 8, !tbaa !21     ; 3 uses
  %i.n = tail call i32 @remove(ptr noundef %i.m) #22
  %i.o = icmp ne i32 %i.n, 0
  %i.p = icmp eq ptr %i.m, null
  br i1 %i.p, label %_ZN11CStringBaseIcED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #24
  br label %_ZN11CStringBaseIcED2Ev.exit.i.i

_ZN11CStringBaseIcED2Ev.exit.i.i:                 ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.q = zext i1 %i.o to i8
  br label %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i

_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i: ; preds = %_ZN11CStringBaseIcED2Ev.exit.i.i, %bb.d
  %.04.i.i = phi i8 [ %i.q, %_ZN11CStringBaseIcED2Ev.exit.i.i ], [ 1, %bb.d ]
  store i8 %.04.i.i, ptr %0, align 8, !tbaa !40
  br label %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit

_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit: ; preds = %bb.a, %_ZN8NWindows5NFile10NDirectory16DeleteFileAlwaysEPKw.exit.i
  %i.r = tail call i32 @getpid() #22              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i32 0, ptr %i.s, align 8, !tbaa !18
  %i.t = load ptr, ptr %3, align 8, !tbaa !13     ; 2 uses
  store i32 0, ptr %i.t, align 4, !tbaa !15
  %wcslen.i.i = tail call i64 @wcslen(ptr %1)
  %i.u = trunc i64 %wcslen.i.i to i32             ; 3 uses
  %i.v = add nsw i32 %i.u, 1                      ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, label %bb.g

bb.g:                                             ; preds = %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit
  %i.z = zext nneg i32 %i.v to i64
  %i.aa = icmp slt i32 %i.u, -1
  %i.ab = shl nuw nsw i64 %i.z, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23 ; 10 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64
  %i.af = load i32, ptr %i.w, align 4, !tbaa !16
  %i.ag = icmp sgt i32 %i.af, 0
  %.pre4.i = load i32, ptr %i.s, align 8, !tbaa !18 ; 5 uses
  br i1 %i.ag, label %.preheader.i.i, label %bb.h

.preheader.i.i:                                   ; preds = %bb.g
  %i.ah = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !13 ; 9 uses
  br i1 %i.ah, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.pre.i.i54 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 8
  %i.ai = sub i64 %.pre.i.i54, %i.ae
  %diff.check = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <4 x i32>, ptr %i.aj, align 4, !tbaa !15
  %wide.load55 = load <4 x i32>, ptr %i.ak, align 4, !tbaa !15
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <4 x i32> %wide.load, ptr %i.al, align 4, !tbaa !15
  store <4 x i32> %wide.load55, ptr %i.am, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !116

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
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !15
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i.prol
  store i32 %i.ap, ptr %i.aq, align 4, !tbaa !15
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !117

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %._crit_edge.thread.i.i, label %scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.at = icmp eq ptr %.pre.i.i, null
  br i1 %i.at, label %bb.h, label %._crit_edge.thread.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !15
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.i
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !15
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !15
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !15
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.1
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !15
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.2
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !15
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %scalar.ph, !llvm.loop !118

._crit_edge.thread.i.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  %.pre.i = load i32, ptr %i.s, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.g
  %i.bg = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.g ]
  store ptr %i.ad, ptr %3, align 8, !tbaa !13
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ad, i64 %i.bh
  store i32 0, ptr %i.bi, align 4, !tbaa !15
  store i32 %i.v, ptr %i.w, align 4, !tbaa !16
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader: ; preds = %bb.h, %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit
  %.04.i.i17.ph = phi ptr [ %i.ad, %bb.h ], [ %i.t, %_ZN8NWindows5NFile10NDirectory9CTempFile6RemoveEv.exit ]
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i:        ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  %.04.i.i17 = phi ptr [ %i.bl, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %.04.i.i17.ph, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bj, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i ], [ %1, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.preheader ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.bk = load i32, ptr %.0.i.i, align 4, !tbaa !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04.i.i17, i64 4
  store i32 %i.bk, ptr %.04.i.i17, align 4, !tbaa !15
  %.not.i.i18 = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i18, label %_ZN11CStringBaseIwEaSEPKw.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i, !llvm.loop !0

_ZN11CStringBaseIwEaSEPKw.exit:                   ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i
  store i32 %i.u, ptr %i.s, align 8, !tbaa !18
  %i.bm = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2) ; 0 uses
  %i.bn = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEw(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef signext 35) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22, !noalias !126
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %i.r, ptr noundef nonnull %i.b), !noalias !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false), !alias.scope !126
  %wcslen.i.i.i = call i64 @wcslen(ptr nonnull %i.b), !noalias !126
  %i.bo = trunc i64 %wcslen.i.i.i to i32          ; 3 uses
  %i.bp = add nsw i32 %i.bo, 1                    ; 3 uses
  %i.bq = icmp ne i32 %i.bp, 0
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = icmp slt i32 %i.bo, -1
  %i.bu = shl nuw nsw i64 %i.bs, 2
  %i.bv = select i1 %i.bt, i64 -1, i64 %i.bu
  %i.bw = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #23, !noalias !126 ; 3 uses
  store ptr %i.bw, ptr %5, align 8, !tbaa !13, !alias.scope !126
  store i32 0, ptr %i.bw, align 4, !tbaa !15, !noalias !126
  store i32 %i.bp, ptr %i.br, align 4, !tbaa !16, !alias.scope !126
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %_ZN11CStringBaseIwEaSEPKw.exit, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.bz, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.bw, %_ZN11CStringBaseIwEaSEPKw.exit ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bx, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.b, %_ZN11CStringBaseIwEaSEPKw.exit ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.by = load i32, ptr %.0.i.i.i, align 4, !tbaa !15, !noalias !126 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  store i32 %i.by, ptr %.04.i.i.i, align 4, !tbaa !15, !noalias !126
  %.not.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i, label %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, !llvm.loop !0

_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.bo, ptr %i.ca, align 8, !tbaa !18, !alias.scope !126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22, !noalias !126
  %i.cb = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.i unwind label %bb.q       ; 0 uses

bb.i:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit
  %i.cc = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN11CStringBaseIwED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #24
  br label %_ZN11CStringBaseIwED2Ev.exit

_ZN11CStringBaseIwED2Ev.exit:                     ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.ce = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEw(ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef signext 64) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !127
  call void @_Z21ConvertUInt32ToStringjPw(i32 noundef %i.d, ptr noundef nonnull %i.a), !noalias !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !alias.scope !127
  %wcslen.i.i.i19 = call i64 @wcslen(ptr nonnull %i.a), !noalias !127
  %i.cf = trunc i64 %wcslen.i.i.i19 to i32        ; 3 uses
  %i.cg = add nsw i32 %i.cf, 1                    ; 3 uses
  %i.ch = icmp ne i32 %i.cg, 0
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cj = zext nneg i32 %i.cg to i64
  %i.ck = icmp slt i32 %i.cf, -1
  %i.cl = shl nuw nsw i64 %i.cj, 2
  %i.cm = select i1 %i.ck, i64 -1, i64 %i.cl
  %i.cn = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cm) #23, !noalias !127 ; 3 uses
  store ptr %i.cn, ptr %6, align 8, !tbaa !13, !alias.scope !127
  store i32 0, ptr %i.cn, align 4, !tbaa !15, !noalias !127
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !16, !alias.scope !127
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21:    ; preds = %_ZN11CStringBaseIwED2Ev.exit, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21
  %.04.i.i.i22 = phi ptr [ %i.cq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21 ], [ %i.cn, %_ZN11CStringBaseIwED2Ev.exit ] ; 2 uses
  %.0.i.i.i23 = phi ptr [ %i.co, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21 ], [ %i.a, %_ZN11CStringBaseIwED2Ev.exit ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i23, i64 4
  %i.cp = load i32, ptr %.0.i.i.i23, align 4, !tbaa !15, !noalias !127 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04.i.i.i22, i64 4
  store i32 %i.cp, ptr %.04.i.i.i22, align 4, !tbaa !15, !noalias !127
  %.not.i.i.i24 = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i24, label %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit25, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21, !llvm.loop !0

_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit25: ; preds = %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i21
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %i.cf, ptr %i.cr, align 8, !tbaa !18, !alias.scope !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !127
  %i.cs = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.k unwind label %bb.s       ; 0 uses

bb.k:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit25
  %i.ct = load ptr, ptr %6, align 8, !tbaa !13    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN11CStringBaseIwED2Ev.exit26, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.ct) #24
  br label %_ZN11CStringBaseIwED2Ev.exit26

_ZN11CStringBaseIwED2Ev.exit26:                   ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.cv = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEpLEPKw(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.9) ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cx = icmp eq ptr %3, %i.cw
  br i1 %i.cx, label %_ZN11CStringBaseIwEaSERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %_ZN11CStringBaseIwED2Ev.exit26
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i32 0, ptr %i.cy, align 8, !tbaa !18
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  store i32 0, ptr %i.cz, align 4, !tbaa !15
  %i.da = load i32, ptr %i.s, align 8, !tbaa !18  ; 2 uses
  %i.db = add nsw i32 %i.da, 1                    ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.de = icmp eq i32 %i.db, %i.dd
  br i1 %i.de, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.df = zext nneg i32 %i.db to i64
  %i.dg = icmp slt i32 %i.da, -1
  %i.dh = shl nuw nsw i64 %i.df, 2
  %i.di = select i1 %i.dg, i64 -1, i64 %i.dh
  %i.dj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.di) #23 ; 10 uses
  %i.dk = ptrtoaddr ptr %i.dj to i64
  %i.dl = load i32, ptr %i.dc, align 4, !tbaa !16
  %i.dm = icmp sgt i32 %i.dl, 0
  %.pre7.i = load i32, ptr %i.cy, align 8, !tbaa !18 ; 5 uses
  br i1 %i.dm, label %.preheader.i.i31, label %bb.o

.preheader.i.i31:                                 ; preds = %bb.n
  %i.dn = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i32 = load ptr, ptr %i.cw, align 8, !tbaa !13 ; 9 uses
  br i1 %i.dn, label %.lr.ph.i.i36, label %._crit_edge.i.i33

.lr.ph.i.i36:                                     ; preds = %.preheader.i.i31
  %.pre.i.i3257 = ptrtoaddr ptr %.pre.i.i32 to i64
  %wide.trip.count.i.i37 = zext nneg i32 %.pre7.i to i64 ; 5 uses
  %min.iters.check60 = icmp ult i32 %.pre7.i, 8
  %i.do = sub i64 %.pre.i.i3257, %i.dk
  %diff.check58 = icmp ugt i64 %i.do, -32
  %or.cond71 = select i1 %min.iters.check60, i1 true, i1 %diff.check58
  br i1 %or.cond71, label %scalar.ph59.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph.i.i36
  %n.vec62 = and i64 %wide.trip.count.i.i37, 2147483640 ; 3 uses
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body63 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %index64 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load65 = load <4 x i32>, ptr %i.dp, align 4, !tbaa !15
  %wide.load66 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !15
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <4 x i32> %wide.load65, ptr %i.dr, align 4, !tbaa !15
  store <4 x i32> %wide.load66, ptr %i.ds, align 4, !tbaa !15
  %index.next67 = add nuw i64 %index64, 8         ; 2 uses
  %i.dt = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.dt, label %middle.block68, label %vector.body63, !llvm.loop !123

middle.block68:                                   ; preds = %vector.body63
  %cmp.n69 = icmp eq i64 %n.vec62, %wide.trip.count.i.i37
  br i1 %cmp.n69, label %._crit_edge.thread.i.i34, label %scalar.ph59.preheader

scalar.ph59.preheader:                            ; preds = %.lr.ph.i.i36, %middle.block68
  %indvars.iv.i.i38.ph = phi i64 [ 0, %.lr.ph.i.i36 ], [ %n.vec62, %middle.block68 ] ; 3 uses
  %xtraiter72 = and i64 %wide.trip.count.i.i37, 3 ; 2 uses
  %lcmp.mod73.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod73.not, label %scalar.ph59.prol.loopexit, label %scalar.ph59.prol

scalar.ph59.prol:                                 ; preds = %scalar.ph59.preheader, %scalar.ph59.prol
  %indvars.iv.i.i38.prol = phi i64 [ %indvars.iv.next.i.i39.prol, %scalar.ph59.prol ], [ %indvars.iv.i.i38.ph, %scalar.ph59.preheader ] ; 3 uses
  %prol.iter74 = phi i64 [ %prol.iter74.next, %scalar.ph59.prol ], [ 0, %scalar.ph59.preheader ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %indvars.iv.i.i38.prol
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !15
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i38.prol
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !15
  %indvars.iv.next.i.i39.prol = add nuw nsw i64 %indvars.iv.i.i38.prol, 1 ; 2 uses
  %prol.iter74.next = add i64 %prol.iter74, 1     ; 2 uses
  %prol.iter74.cmp.not = icmp eq i64 %prol.iter74.next, %xtraiter72
  br i1 %prol.iter74.cmp.not, label %scalar.ph59.prol.loopexit, label %scalar.ph59.prol, !llvm.loop !124

scalar.ph59.prol.loopexit:                        ; preds = %scalar.ph59.prol, %scalar.ph59.preheader
  %indvars.iv.i.i38.unr = phi i64 [ %indvars.iv.i.i38.ph, %scalar.ph59.preheader ], [ %indvars.iv.next.i.i39.prol, %scalar.ph59.prol ]
  %i.dx = sub nsw i64 %indvars.iv.i.i38.ph, %wide.trip.count.i.i37
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge.thread.i.i34, label %scalar.ph59

._crit_edge.i.i33:                                ; preds = %.preheader.i.i31
  %i.dz = icmp eq ptr %.pre.i.i32, null
  br i1 %i.dz, label %bb.o, label %._crit_edge.thread.i.i34

scalar.ph59:                                      ; preds = %scalar.ph59.prol.loopexit, %scalar.ph59
  %indvars.iv.i.i38 = phi i64 [ %indvars.iv.next.i.i39.3, %scalar.ph59 ], [ %indvars.iv.i.i38.unr, %scalar.ph59.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %indvars.iv.i.i38
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !15
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.i38
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !15
  %indvars.iv.next.i.i39 = add nuw nsw i64 %indvars.iv.i.i38, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %indvars.iv.next.i.i39
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !15
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i39
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !15
  %indvars.iv.next.i.i39.1 = add nuw nsw i64 %indvars.iv.i.i38, 2 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %indvars.iv.next.i.i39.1
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !15
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i39.1
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !15
  %indvars.iv.next.i.i39.2 = add nuw nsw i64 %indvars.iv.i.i38, 3 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i32, i64 %indvars.iv.next.i.i39.2
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !15
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.next.i.i39.2
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !15
  %indvars.iv.next.i.i39.3 = add nuw nsw i64 %indvars.iv.i.i38, 4 ; 2 uses
  %exitcond.not.i.i40.3 = icmp eq i64 %indvars.iv.next.i.i39.3, %wide.trip.count.i.i37
  br i1 %exitcond.not.i.i40.3, label %._crit_edge.thread.i.i34, label %scalar.ph59, !llvm.loop !125

._crit_edge.thread.i.i34:                         ; preds = %scalar.ph59.prol.loopexit, %scalar.ph59, %middle.block68, %._crit_edge.i.i33
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i32) #24
  %.pre.i35 = load i32, ptr %i.cy, align 8, !tbaa !18
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i34, %._crit_edge.i.i33, %bb.n
  %i.em = phi i32 [ %.pre.i35, %._crit_edge.thread.i.i34 ], [ %.pre7.i, %._crit_edge.i.i33 ], [ %.pre7.i, %bb.n ]
  store ptr %i.dj, ptr %i.cw, align 8, !tbaa !13
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.en
  store i32 0, ptr %i.eo, align 4, !tbaa !15
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !16
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27

_ZN11CStringBaseIwE11SetCapacityEi.exit.i27:      ; preds = %bb.o, %bb.m
  %i.ep = phi ptr [ %i.cz, %bb.m ], [ %i.dj, %bb.o ]
  %i.eq = load ptr, ptr %3, align 8, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27
  %.04.i.i28 = phi ptr [ %i.ep, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.et, %bb.p ] ; 2 uses
  %.0.i.i29 = phi ptr [ %i.eq, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i27 ], [ %i.er, %bb.p ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 4
  %i.es = load i32, ptr %.0.i.i29, align 4, !tbaa !15 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.04.i.i28, i64 4
  store i32 %i.es, ptr %.04.i.i28, align 4, !tbaa !15
  %.not.i.i30 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i30, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i, label %bb.p, !llvm.loop !0

_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i:            ; preds = %bb.p
  %i.eu = load i32, ptr %i.s, align 8, !tbaa !18
  store i32 %i.eu, ptr %i.cy, align 8, !tbaa !18
  br label %_ZN11CStringBaseIwEaSERKS0_.exit

_ZN11CStringBaseIwEaSERKS0_.exit:                 ; preds = %_ZN11CStringBaseIwED2Ev.exit26, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit.i
  store i8 1, ptr %0, align 8, !tbaa !40
  ret i32 %i.r

bb.q:                                             ; preds = %_ZN8NWindows5NFile10NDirectoryL25CSysConvertUInt32ToStringEj.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %5, align 8, !tbaa !13    ; 2 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %_ZN11CStringBaseIwED2Ev.exit41, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #24
  br label %_ZN11CStringBaseIwED2Ev.exit41

_ZN11CStringBaseIwED2Ev.exit41:                   ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
end_hunk_0
