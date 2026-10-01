Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3BoundSearchCL?download=true
inline.NumInlined: 101
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE:bb.a
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = zext nneg i32 %2 to i64                  ; 2 uses
  %.not.a = icmp eq i32 %2, 1
  br i1 %.not.a, label %.loopexit.loopexit208.peel.begin, label %.lr.ph150.split

.lr.ph150.split:                                  ; preds = %.lr.ph150
  %i.f = zext nneg i32 %2 to i64
  br label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.cont, label %.loopexit

.cont:                                            ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %wide.trip.count175 = zext nneg i32 %2 to i64
  %.sroa.speculate.load.116.peel = load i32, ptr %i.i, align 4, !tbaa !35 ; 2 uses
  %.not78.peel = icmp eq i32 %.sroa.speculate.load.116.peel, -1
  br i1 %.not78.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.cont
  %i.l = sext i32 %.sroa.speculate.load.116.peel to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.cont
  %exitcond176.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond176.peel.not, label %.loopexit, label %.peel.next178.preheader

.peel.next178.preheader:                          ; preds = %bb.c
  %i.n = add nsw i64 %wide.trip.count175, -1      ; 3 uses
  %xtraiter219 = and i64 %i.n, 1
  %i.o = icmp eq i32 %2, 2
  br i1 %i.o, label %.peel.next178.epil.preheader, label %.peel.next178.preheader.new

.peel.next178.preheader.new:                      ; preds = %.peel.next178.preheader
  %unroll_iter222 = and i64 %i.n, -2
  br label %.peel.next178

.peel.next178:                                    ; preds = %bb.f, %.peel.next178.preheader.new
  %indvars.iv172 = phi i64 [ 1, %.peel.next178.preheader.new ], [ %indvars.iv.next173.1, %bb.f ] ; 4 uses
  %niter223 = phi i64 [ 0, %.peel.next178.preheader.new ], [ %niter223.next.1, %bb.f ]
  %i.p = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv172 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.speculate.load.116 = load i32, ptr %i.p, align 4, !tbaa !35 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !35
  %.not78 = icmp eq i32 %i.r, %.sroa.speculate.load.116
  br i1 %.not78, label %.peel.next178.1, label %bb.d

bb.d:                                             ; preds = %.peel.next178
  %i.s = sext i32 %.sroa.speculate.load.116 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.s
  %i.u = trunc nuw nsw i64 %indvars.iv172 to i32
  store i32 %i.u, ptr %i.t, align 4, !tbaa !32
  br label %.peel.next178.1

.peel.next178.1:                                  ; preds = %bb.d, %.peel.next178
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.next173 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %.sroa.speculate.load.116.1 = load i32, ptr %i.v, align 4, !tbaa !35 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %.not78.1 = icmp eq i32 %i.x, %.sroa.speculate.load.116.1
  br i1 %.not78.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.next178.1
  %i.y = sext i32 %.sroa.speculate.load.116.1 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.y
  %i.aa = trunc nuw nsw i64 %indvars.iv.next173 to i32
  store i32 %i.aa, ptr %i.z, align 4, !tbaa !32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.peel.next178.1
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %niter223.next.1 = add i64 %niter223, 2         ; 2 uses
  %niter223.ncmp.1 = icmp eq i64 %niter223.next.1, %unroll_iter222
  br i1 %niter223.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.peel.next178, !llvm.loop !82

bb.g:                                             ; preds = %.lr.ph150.split, %bb.k
  %indvars.iv167 = phi i64 [ 1, %.lr.ph150.split ], [ %indvars.iv.next168, %bb.k ] ; 4 uses
  %i.ab = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv167 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = icmp eq i64 %indvars.iv167, %i.e
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.speculate.load. = load i32, ptr %i.ab, align 4, !tbaa !35
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.speculated = phi i32 [ %.sroa.speculate.load., %bb.h ], [ %4, %bb.g ]
  %i.ae = load i32, ptr %i.ac, align 4, !tbaa !35 ; 2 uses
  %.not77 = icmp eq i32 %i.ae, %.sroa.speculated
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.af
  %i.ah = trunc nuw nsw i64 %indvars.iv167 to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 3 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.f
  br i1 %exitcond171.not, label %.loopexit.loopexit208.peel.begin, label %bb.g, !llvm.loop !83

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 1, ptr %i.ai, align 8, !tbaa !94
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store i32 0, ptr %i.ak, align 4, !tbaa !95
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.al, align 8, !tbaa !96
  %i.am = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.am, label %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i, label %.loopexit139

_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i: ; preds = %bb.l
  %i.an = zext nneg i32 %4 to i64
  %i.ao = shl nuw nsw i64 %i.an, 2                ; 4 uses
  %i.ap = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ao, i32 noundef 16)
          to label %.noexc unwind label %bb.s     ; 5 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %.split7.i.i, label %.lr.ph.i

.split7.i.i:                                      ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 301)
          to label %.noexc79 unwind label %bb.s

.noexc79:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
          to label %.lr.ph.i unwind label %bb.s

.lr.ph.i:                                         ; preds = %.noexc79, %.noexc
  %.0.i.i = phi i32 [ %4, %.noexc ], [ 0, %.noexc79 ]
  store i8 1, ptr %i.ai, align 8, !tbaa !94
  store ptr %i.ap, ptr %i.aj, align 8, !tbaa !40
  store i32 %.0.i.i, ptr %i.al, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.ao, i1 false), !tbaa !32
  store i32 %4, ptr %i.ak, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 1, ptr %i.ar, align 8, !tbaa !94
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 0, ptr %i.at, align 4, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.au, align 8, !tbaa !96
  %i.av = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ao, i32 noundef 16)
          to label %.noexc102 unwind label %bb.t  ; 5 uses

.noexc102:                                        ; preds = %.lr.ph.i
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.split7.i.i101, label %.lr.ph

.split7.i.i101:                                   ; preds = %.noexc102
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 301)
          to label %.noexc103 unwind label %bb.t

.noexc103:                                        ; preds = %.split7.i.i101
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
          to label %.lr.ph unwind label %bb.t

.loopexit139:                                     ; preds = %bb.l
  store i32 %4, ptr %i.ak, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.ax, align 8, !tbaa !94
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.ay, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.ba, align 8, !tbaa !96
  store i32 %4, ptr %i.az, align 4, !tbaa !95
  br label %.preheader138

.lr.ph:                                           ; preds = %.noexc103, %.noexc102
  %.0.i.i93 = phi i32 [ %4, %.noexc102 ], [ 0, %.noexc103 ]
  store i8 1, ptr %i.ar, align 8, !tbaa !94
  store ptr %i.av, ptr %i.as, align 8, !tbaa !40
  store i32 %.0.i.i93, ptr %i.au, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.ao, i1 false), !tbaa !32
  store i32 %4, ptr %i.at, align 4, !tbaa !95
  %i.bb = zext nneg i32 %4 to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.av, i8 0, i64 %i.bc, i1 false), !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.bc, i1 false), !tbaa !32
  br label %.preheader138

.preheader138:                                    ; preds = %.loopexit139, %.lr.ph
  %i.bd = phi ptr [ %i.av, %.lr.ph ], [ null, %.loopexit139 ] ; 12 uses
  %i.be = phi ptr [ %i.ap, %.lr.ph ], [ null, %.loopexit139 ] ; 13 uses
  %i.bf = ptrtoaddr ptr %i.bd to i64
  %i.bg = ptrtoaddr ptr %i.be to i64
  %i.bh = icmp sgt i32 %2, 0
  br i1 %i.bh, label %bb.m, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader

bb.m:                                             ; preds = %.preheader138
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.sroa.speculate.load.122.peel = load i32, ptr %i.bj, align 4, !tbaa !35 ; 2 uses
  %.not78.i.peel = icmp eq i32 %.sroa.speculate.load.122.peel, -1
  br i1 %.not78.i.peel, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = sext i32 %.sroa.speculate.load.122.peel to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bk
  store i32 0, ptr %i.bl, align 4, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %exitcond.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond.peel.not, label %.lr.ph145, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.o
  %i.bm = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.bm, 1
  %i.bn = icmp eq i32 %2, 2
  br i1 %i.bn, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter = and i64 %i.bm, -2
  br label %.peel.next

.peel.next:                                       ; preds = %bb.r, %.peel.next.preheader.new
  %indvars.iv = phi i64 [ 1, %.peel.next.preheader.new ], [ %indvars.iv.next.1, %bb.r ] ; 5 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %bb.r ]
  %i.bo = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 -8
  %.sroa.speculate.load.184 = load i32, ptr %i.bp, align 4, !tbaa !35
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv
  %.sroa.speculate.load.122 = load i32, ptr %i.bq, align 4, !tbaa !35 ; 2 uses
  %.not78.i = icmp eq i32 %.sroa.speculate.load.184, %.sroa.speculate.load.122
  br i1 %.not78.i, label %.peel.next.1, label %bb.p

bb.p:                                             ; preds = %.peel.next
  %i.br = sext i32 %.sroa.speculate.load.122 to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.br
  %i.bt = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bt, ptr %i.bs, align 4, !tbaa !32
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %bb.p, %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bu = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.next
  %i.bv = getelementptr i8, ptr %i.bu, i64 -8
  %.sroa.speculate.load.184.1 = load i32, ptr %i.bv, align 4, !tbaa !35
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.next
  %.sroa.speculate.load.122.1 = load i32, ptr %i.bw, align 4, !tbaa !35 ; 2 uses
  %.not78.i.1 = icmp eq i32 %.sroa.speculate.load.184.1, %.sroa.speculate.load.122.1
  br i1 %.not78.i.1, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.peel.next.1
  %i.bx = sext i32 %.sroa.speculate.load.122.1 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bx
  %i.bz = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.peel.next.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph145.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !84

bb.s:                                             ; preds = %.noexc79, %.split7.i.i, %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.t:                                             ; preds = %.noexc103, %.split7.i.i101, %.lr.ph.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.ag

.lr.ph145.loopexit.unr-lcssa:                     ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph145, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.lr.ph145.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next.1, %.lr.ph145.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod210 = trunc i64 %i.bm to i1
  tail call void @llvm.assume(i1 %lcmp.mod210)
  %i.cc = getelementptr [8 x i8], ptr %i.bj, i64 %indvars.iv.epil.init
  %i.cd = getelementptr i8, ptr %i.cc, i64 -8
  %.sroa.speculate.load.184.epil = load i32, ptr %i.cd, align 4, !tbaa !35
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.epil.init
  %.sroa.speculate.load.122.epil = load i32, ptr %i.ce, align 4, !tbaa !35 ; 2 uses
  %.not78.i.epil = icmp eq i32 %.sroa.speculate.load.184.epil, %.sroa.speculate.load.122.epil
  br i1 %.not78.i.epil, label %.lr.ph145, label %bb.u

bb.u:                                             ; preds = %.peel.next.epil.preheader
  %i.cf = sext i32 %.sroa.speculate.load.122.epil to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !32
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.loopexit.unr-lcssa, %bb.u, %.peel.next.epil.preheader, %bb.o
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !92 ; 3 uses
  %8 = zext nneg i32 %2 to i64                    ; 3 uses
  %i.ck = zext nneg i32 %2 to i64                 ; 2 uses
  %xtraiter211 = and i64 %i.ck, 1
  %i.cl = icmp eq i32 %2, 1
  br i1 %i.cl, label %.epil.preheader, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %unroll_iter214 = and i64 %i.ck, 2147483646
  br label %bb.y

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader.loopexit.unr-lcssa: ; preds = %bb.ac
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader.loopexit.unr-lcssa, %.lr.ph145
  %indvars.iv157.epil.init = phi i64 [ 1, %.lr.ph145 ], [ %indvars.iv.next158.1, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod213 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod213)
  %i.cm = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv157.epil.init ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 -8
  %i.co = icmp eq i64 %indvars.iv157.epil.init, %8
  br i1 %i.co, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.epil.preheader
  %.sroa.speculate.load.129.epil = load i32, ptr %i.cm, align 4, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.epil.preheader
  %.sroa.speculated128.epil = phi i32 [ %.sroa.speculate.load.129.epil, %bb.v ], [ %4, %.epil.preheader ]
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !35 ; 2 uses
  %.not77.i.epil = icmp eq i32 %i.cp, %.sroa.speculated128.epil
  br i1 %.not77.i.epil, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.cq
  %i.cs = trunc nuw nsw i64 %indvars.iv157.epil.init to i32
  store i32 %i.cs, ptr %i.cr, align 4, !tbaa !32
  br label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader.loopexit.unr-lcssa, %bb.x, %bb.w, %.preheader138
  br i1 %i.am, label %.lr.ph147, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge

.lr.ph147:                                        ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !40 ; 7 uses
  %wide.trip.count165 = zext nneg i32 %4 to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %4, 12
  br i1 %min.iters.check, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph147
  %i.cv = ptrtoaddr ptr %i.cu to i64              ; 2 uses
  %i.cw = sub i64 %i.bf, %i.cv
  %diff.check = icmp ugt i64 %i.cw, -32
  %i.cx = sub i64 %i.bg, %i.cv
  %diff.check204 = icmp ugt i64 %i.cx, -32
  %conflict.rdx = or i1 %diff.check, %diff.check204
  br i1 %conflict.rdx, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count165, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load = load <4 x i32>, ptr %i.cy, align 4, !tbaa !32
  %wide.load205 = load <4 x i32>, ptr %i.cz, align 4, !tbaa !32
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load206 = load <4 x i32>, ptr %i.da, align 4, !tbaa !32
  %wide.load207 = load <4 x i32>, ptr %i.db, align 4, !tbaa !32
  %i.dc = sub <4 x i32> %wide.load, %wide.load206
  %i.dd = sub <4 x i32> %wide.load205, %wide.load207
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x i32> %i.dc, ptr %i.de, align 4, !tbaa !32
  store <4 x i32> %i.dd, ptr %i.df, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count165
  br i1 %cmp.n, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209: ; preds = %vector.memcheck, %.lr.ph147, %middle.block
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph147 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter216 = and i64 %wide.trip.count165, 3   ; 2 uses
  %lcmp.mod217.not.a = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not.a, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol
  %indvars.iv162.prol = phi i64 [ %indvars.iv.next163.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ], [ %indvars.iv162.ph, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ], [ 0, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv162.prol
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !32
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv162.prol
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.dl = sub i32 %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv162.prol
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !32
  %indvars.iv.next163.prol = add nuw nsw i64 %indvars.iv162.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter216
  br i1 %prol.iter.cmp.not, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol, !llvm.loop !86

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader209 ], [ %indvars.iv.next163.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ]
  %i.dn = sub nsw i64 %indvars.iv162.ph, %wide.trip.count165
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108

bb.y:                                             ; preds = %bb.ac, %.lr.ph145.new
  %indvars.iv157 = phi i64 [ 1, %.lr.ph145.new ], [ %indvars.iv.next158.1, %bb.ac ] ; 5 uses
  %niter215 = phi i64 [ 0, %.lr.ph145.new ], [ %niter215.next.1, %bb.ac ]
  %i.dp = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv157 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -8
  %i.dr = icmp eq i64 %indvars.iv157, %8
  br i1 %i.dr, label %10, label %9

9:                                                ; preds = %bb.y
  %.sroa.speculate.load.129 = load i32, ptr %i.dp, align 4, !tbaa !35
  br label %10

10:                                               ; preds = %9, %bb.y
  %.sroa.speculated128 = phi i32 [ %.sroa.speculate.load.129, %9 ], [ %4, %bb.y ]
  %11 = load i32, ptr %i.dq, align 4, !tbaa !35   ; 2 uses
  %.not77.i = icmp eq i32 %11, %.sroa.speculated128
  br i1 %.not77.i, label %16, label %12

12:                                               ; preds = %10
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %13
  %15 = trunc nuw nsw i64 %indvars.iv157 to i32
  store i32 %15, ptr %14, align 4, !tbaa !32
  br label %16

16:                                               ; preds = %12, %10
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 3 uses
  %17 = getelementptr [8 x i8], ptr %i.cj, i64 %indvars.iv.next158 ; 2 uses
  %18 = getelementptr i8, ptr %17, i64 -8
  %19 = icmp eq i64 %indvars.iv.next158, %8
  br i1 %19, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %16
  %.sroa.speculate.load.129.1 = load i32, ptr %17, align 4, !tbaa !35
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %16
  %.sroa.speculated128.1 = phi i32 [ %.sroa.speculate.load.129.1, %bb.z ], [ %4, %16 ]
  %i.ds = load i32, ptr %18, align 4, !tbaa !35   ; 2 uses
  %.not77.i.1 = icmp eq i32 %i.ds, %.sroa.speculated128.1
  br i1 %.not77.i.1, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.dt
  %i.dv = trunc nuw nsw i64 %indvars.iv.next158 to i32
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %indvars.iv.next158.1 = add nuw nsw i64 %indvars.iv157, 2 ; 2 uses
  %niter215.next.1 = add i64 %niter215, 2         ; 2 uses
  %niter215.ncmp.1 = icmp eq i64 %niter215.next.1, %unroll_iter214
  br i1 %niter215.ncmp.1, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader.loopexit.unr-lcssa, label %bb.y, !llvm.loop !87

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader
  %.not.i.i.i109.not = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i109.not, label %_ZN20b3AlignedObjectArrayIjED2Ev.exit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108, %middle.block, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.bd)
          to label %_ZN20b3AlignedObjectArrayIjED2Ev.exit unwind label %bb.ad

bb.ad:                                            ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  tail call void @__clang_call_terminate(ptr %i.dx) #16
  unreachable

_ZN20b3AlignedObjectArrayIjED2Ev.exit:            ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not.i.i.i110.not = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i110.not, label %_ZN20b3AlignedObjectArrayIjED2Ev.exit112, label %bb.ae

bb.ae:                                            ; preds = %_ZN20b3AlignedObjectArrayIjED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.be)
          to label %_ZN20b3AlignedObjectArrayIjED2Ev.exit112 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #16
  unreachable

_ZN20b3AlignedObjectArrayIjED2Ev.exit112:         ; preds = %_ZN20b3AlignedObjectArrayIjED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.3, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108 ], [ %indvars.iv162.unr, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit ] ; 7 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv162
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !32
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv162
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !32
  %i.ee = sub i32 %i.eb, %i.ed
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv162
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !32
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next163
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !32
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next163
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !32
  %i.ek = sub i32 %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next163
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !32
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next163.1
  %i.en = load i32, ptr %i.em, align 4, !tbaa !32
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next163.1
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !32
  %i.eq = sub i32 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next163.1
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !32
  %indvars.iv.next163.2 = add nuw nsw i64 %indvars.iv162, 3 ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next163.2
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.next163.2
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !32
  %i.ew = sub i32 %i.et, %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next163.2
  store i32 %i.ew, ptr %i.ex, align 4, !tbaa !32
  %indvars.iv.next163.3 = add nuw nsw i64 %indvars.iv162, 4 ; 2 uses
  %exitcond166.not.3 = icmp eq i64 %indvars.iv.next163.3, %wide.trip.count165
  br i1 %exitcond166.not.3, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108, !llvm.loop !88

bb.ag:                                            ; preds = %bb.t, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cb, %bb.t ], [ %i.ca, %bb.s ]
  call void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod220.not = icmp eq i64 %xtraiter219, 0
  br i1 %lcmp.mod220.not, label %.loopexit, label %.peel.next178.epil.preheader

.peel.next178.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.peel.next178.preheader
  %indvars.iv172.epil.init = phi i64 [ 1, %.peel.next178.preheader ], [ %indvars.iv.next173.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod221 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod221)
  %i.ey = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv172.epil.init ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 -8
  %.sroa.speculate.load.116.epil = load i32, ptr %i.ey, align 4, !tbaa !35 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !35
  %.not78.epil = icmp eq i32 %i.fa, %.sroa.speculate.load.116.epil
  br i1 %.not78.epil, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %.peel.next178.epil.preheader
  %i.fb = sext i32 %.sroa.speculate.load.116.epil to i64
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.fb
  %i.fd = trunc nuw nsw i64 %indvars.iv172.epil.init to i32
  store i32 %i.fd, ptr %i.fc, align 4, !tbaa !32
  br label %.loopexit

.loopexit.loopexit208.peel.begin:                 ; preds = %.lr.ph150, %bb.k
  %i.fe = phi i64 [ 1, %.lr.ph150 ], [ %indvars.iv.next168, %bb.k ] ; 3 uses
  %i.ff = getelementptr [8 x i8], ptr %i.b, i64 %i.fe ; 2 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 -8
  %i.fh = icmp eq i64 %i.fe, %i.e
  br i1 %i.fh, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit.loopexit208.peel.begin
  %.sroa.speculate.load..peel = load i32, ptr %i.ff, align 4, !tbaa !35
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit.loopexit208.peel.begin
  %.sroa.speculated.peel = phi i32 [ %.sroa.speculate.load..peel, %bb.ai ], [ %4, %.loopexit.loopexit208.peel.begin ]
  %i.fi = load i32, ptr %i.fg, align 4, !tbaa !35 ; 2 uses
  %.not77.peel = icmp eq i32 %i.fi, %.sroa.speculated.peel
  br i1 %.not77.peel, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.fj
  %i.fl = trunc nuw nsw i64 %i.fe to i32
  store i32 %i.fl, ptr %i.fk, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ak, %bb.aj, %.loopexit.loopexit.unr-lcssa, %bb.ah, %.peel.next178.epil.preheader, %bb.c, %.preheader135, %.preheader, %bb.a, %_ZN20b3AlignedObjectArrayIjED2Ev.exit112
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !34
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #16
  unreachable
}

declare ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !34
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !31
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !100 ; 0 uses

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #16
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayIjED0Ev(ptr noundef nonnull align 8 dereferenceable(50) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i8, ptr %i.c, align 8, !range !34
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN13b3OpenCLArrayIjED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !31
  %i.g = invoke i32 %i.f(ptr noundef nonnull %i.b)
          to label %_ZN13b3OpenCLArrayIjED2Ev.exit unwind label %bb.c, !inline_history !101 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #16, !inline_history !102
  unreachable

_ZN13b3OpenCLArrayIjED2Ev.exit:                   ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #15
  ret void
}

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #4

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS11_cl_context", !11, i64 0}
!13 = !{!"p1 _ZTS13_cl_device_id", !11, i64 0}
!14 = !{!"p1 _ZTS17_cl_command_queue", !11, i64 0}
!15 = !{!"p1 _ZTS10_cl_kernel", !11, i64 0}
!16 = !{!"p1 _ZTS13b3OpenCLArrayI6b3Int4E", !11, i64 0}
!17 = !{!"p1 _ZTS13b3OpenCLArrayIjE", !11, i64 0}
!18 = !{!"p1 _ZTS8b3FillCL", !11, i64 0}
!19 = !{!"_ZTS15b3BoundSearchCL", !12, i64 8, !13, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !16, i64 56, !17, i64 64, !17, i64 72, !18, i64 80}
!20 = !{!19, !14, i64 24}
!21 = !{!19, !15, i64 32}
!22 = !{!19, !15, i64 40}
!23 = !{!19, !15, i64 48}
!24 = !{!19, !17, i64 64}
!25 = !{!19, !17, i64 72}
!26 = !{!19, !18, i64 80}
!27 = !{!"long", !5, i64 0}
!28 = !{!"p1 _ZTS7_cl_mem", !11, i64 0}
!29 = !{!"bool", !5, i64 0}
!30 = !{!"_ZTS13b3OpenCLArrayIjE", !27, i64 8, !27, i64 16, !28, i64 24, !12, i64 32, !14, i64 40, !29, i64 48, !29, i64 49}
!31 = !{!11, !11, i64 0}
!32 = !{!6, !6, i64 0}
!33 = !{!30, !28, i64 24}
!34 = !{i8 0, i8 2}
!35 = !{!5, !5, i64 0}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"_ZTS18b3AlignedAllocatorIjLj16EE"}
!38 = !{!"p1 int", !11, i64 0}
!39 = !{!"_ZTS20b3AlignedObjectArrayIjE", !37, i64 0, !6, i64 4, !6, i64 8, !38, i64 16, !29, i64 24}
!40 = !{!39, !38, i64 16}
!41 = !{!19, !12, i64 8}
!42 = !{!19, !13, i64 16}
!43 = distinct !{null}
!44 = distinct !{null, null}
!45 = distinct !{null, null}
!46 = !{!30, !12, i64 32}
!47 = !{!30, !14, i64 40}
!48 = !{!30, !29, i64 48}
!49 = !{!30, !29, i64 49}
!50 = !{!30, !27, i64 8}
!51 = !{!30, !27, i64 16}
!52 = !{ptr @_ZN15b3BoundSearchCLD2Ev}
!53 = distinct !{!53, !36}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = !{!"_ZTS13b3OpenCLArrayI10b3SortDataE", !27, i64 8, !27, i64 16, !28, i64 24, !12, i64 32, !14, i64 40, !29, i64 48, !29, i64 49}
!57 = !{!56, !28, i64 24}
!58 = !{!"_ZTS14b3BufferInfoCL", !28, i64 0, !29, i64 8}
!59 = !{!58, !28, i64 0}
!60 = !{!58, !29, i64 8}
!61 = !{!"_ZTS18b3AlignedAllocatorI15b3KernelArgDataLj16EE"}
!62 = !{!"p1 _ZTS15b3KernelArgData", !11, i64 0}
!63 = !{!"_ZTS20b3AlignedObjectArrayI15b3KernelArgDataE", !61, i64 0, !6, i64 4, !6, i64 8, !62, i64 16, !29, i64 24}
!64 = !{!"p1 omnipotent char", !11, i64 0}
!65 = !{!"_ZTS18b3AlignedAllocatorIP13b3OpenCLArrayIhELj16EE"}
!66 = !{!"any p2 pointer", !11, i64 0}
!67 = !{!"p2 _ZTS13b3OpenCLArrayIhE", !66, i64 0}
!68 = !{!"_ZTS20b3AlignedObjectArrayIP13b3OpenCLArrayIhEE", !65, i64 0, !6, i64 4, !6, i64 8, !67, i64 16, !29, i64 24}
!69 = !{!"_ZTS12b3LauncherCL", !14, i64 8, !15, i64 16, !6, i64 24, !63, i64 32, !6, i64 64, !29, i64 68, !64, i64 72, !68, i64 80}
!70 = !{!69, !29, i64 68}
!71 = !{}
!72 = !{!69, !6, i64 24}
!73 = !{!63, !6, i64 4}
!74 = !{!63, !6, i64 8}
!75 = !{!63, !62, i64 16}
!76 = !{i64 0, i64 4, !32, i64 4, i64 4, !32, i64 8, i64 4, !32, i64 12, i64 4, !32, i64 16, i64 16, !35}
!77 = !{!63, !29, i64 24}
!78 = !{!69, !6, i64 64}
!79 = !{!69, !15, i64 16}
!80 = !{!27, !27, i64 0}
!81 = !{!69, !14, i64 8}
!82 = distinct !{!82, !36, !93}
!83 = distinct !{!83, !36, !93}
!84 = distinct !{!84, !36, !93}
!85 = distinct !{!85, !36, !97, !98}
!86 = distinct !{!86, !99}
!87 = distinct !{!87, !36}
!88 = distinct !{!88, !36, !97}
!89 = !{!"_ZTS18b3AlignedAllocatorI10b3SortDataLj16EE"}
!90 = !{!"p1 _ZTS10b3SortData", !11, i64 0}
!91 = !{!"_ZTS20b3AlignedObjectArrayI10b3SortDataE", !89, i64 0, !6, i64 4, !6, i64 8, !90, i64 16, !29, i64 24}
!92 = !{!91, !90, i64 16}
!93 = !{!"llvm.loop.peeled.count", i32 1}
!94 = !{!39, !29, i64 24}
!95 = !{!39, !6, i64 4}
!96 = !{!39, !6, i64 8}
!97 = !{!"llvm.loop.isvectorized", i32 1}
!98 = !{!"llvm.loop.unroll.runtime.disable"}
!99 = !{!"llvm.loop.unroll.disable"}
!100 = distinct !{null}
!101 = distinct !{ptr @_ZN13b3OpenCLArrayIjED2Ev, null}
!102 = !{ptr @_ZN13b3OpenCLArrayIjED2Ev}
end_hunk_0
