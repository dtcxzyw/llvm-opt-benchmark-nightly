Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3BoundSearchCL?download=true
inline.NumInlined: 101
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE:bb.a

.lr.ph150.split:                                  ; preds = %.lr.ph150
  %i.f = zext nneg i32 %2 to i64
  br label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %wide.trip.count175 = zext nneg i32 %2 to i64
  %.sroa.speculate.load.116.peel = load i32, ptr %i.i, align 4, !tbaa !35 ; 2 uses
  %.not78.peel = icmp eq i32 %.sroa.speculate.load.116.peel, -1
  br i1 %.not78.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.l = sext i32 %.sroa.speculate.load.116.peel to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond176.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond176.peel.not, label %.loopexit, label %.peel.next178.preheader

.peel.next178.preheader:                          ; preds = %bb.d
  %i.n = add nsw i64 %wide.trip.count175, -1      ; 3 uses
  %xtraiter227 = and i64 %i.n, 1
  %i.o = icmp eq i32 %2, 2
  br i1 %i.o, label %.peel.next178.epil.preheader, label %.peel.next178.preheader.new

.peel.next178.preheader.new:                      ; preds = %.peel.next178.preheader
  %unroll_iter230 = and i64 %i.n, -2
  br label %.peel.next178

.peel.next178:                                    ; preds = %bb.g, %.peel.next178.preheader.new
  %indvars.iv172 = phi i64 [ 1, %.peel.next178.preheader.new ], [ %indvars.iv.next173.1, %bb.g ] ; 5 uses
  %niter231 = phi i64 [ 0, %.peel.next178.preheader.new ], [ %niter231.next.1, %bb.g ]
  %i.p = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv172
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.speculate.load.184 = load i32, ptr %i.q, align 4, !tbaa !35
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv172
  %.sroa.speculate.load.116 = load i32, ptr %i.r, align 4, !tbaa !35 ; 2 uses
  %.not78 = icmp eq i32 %.sroa.speculate.load.184, %.sroa.speculate.load.116
  br i1 %.not78, label %.peel.next178.1, label %bb.e

bb.e:                                             ; preds = %.peel.next178
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.t = sext i32 %.sroa.speculate.load.116 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = trunc nuw nsw i64 %indvars.iv172 to i32
  store i32 %i.v, ptr %i.u, align 4, !tbaa !32
  br label %.peel.next178.1

.peel.next178.1:                                  ; preds = %bb.e, %.peel.next178
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv.next173
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %.sroa.speculate.load.184.1 = load i32, ptr %i.x, align 4, !tbaa !35
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next173
  %.sroa.speculate.load.116.1 = load i32, ptr %i.y, align 4, !tbaa !35 ; 2 uses
  %.not78.1 = icmp eq i32 %.sroa.speculate.load.184.1, %.sroa.speculate.load.116.1
  br i1 %.not78.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.peel.next178.1
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.aa = sext i32 %.sroa.speculate.load.116.1 to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.aa
  %i.ac = trunc nuw nsw i64 %indvars.iv.next173 to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.peel.next178.1
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %niter231.next.1 = add i64 %niter231, 2         ; 2 uses
  %niter231.ncmp.1 = icmp eq i64 %niter231.next.1, %unroll_iter230
  br i1 %niter231.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.peel.next178, !llvm.loop !82

bb.h:                                             ; preds = %.lr.ph150.split, %bb.l
  %indvars.iv167 = phi i64 [ 1, %.lr.ph150.split ], [ %indvars.iv.next168, %bb.l ] ; 4 uses
  %i.ad = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv167 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 -8
  %i.af = icmp eq i64 %indvars.iv167, %i.d
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.speculate.load. = load i32, ptr %i.ad, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.speculated = phi i32 [ %.sroa.speculate.load., %bb.i ], [ %4, %bb.h ]
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !35 ; 2 uses
  %.not77 = icmp eq i32 %i.ag, %.sroa.speculated
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ah
  %i.aj = trunc nuw nsw i64 %indvars.iv167 to i32
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 3 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.f
  br i1 %exitcond171.not, label %.loopexit.loopexit216.peel.begin, label %bb.h, !llvm.loop !83

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 1, ptr %i.ak, align 8, !tbaa !94
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.al, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store i32 0, ptr %i.am, align 4, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.an, align 8, !tbaa !96
  %i.ao = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.ao, label %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i, label %.loopexit139

_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i: ; preds = %bb.m
  %i.ap = zext nneg i32 %4 to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 4 uses
  %i.ar = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.aq, i32 noundef 16)
          to label %.noexc unwind label %bb.t     ; 5 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.split7.i.i, label %.lr.ph.i

.split7.i.i:                                      ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 301)
          to label %.noexc79 unwind label %bb.t

.noexc79:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
          to label %.lr.ph.i unwind label %bb.t

.lr.ph.i:                                         ; preds = %.noexc79, %.noexc
  %.0.i.i = phi i32 [ %4, %.noexc ], [ 0, %.noexc79 ]
  store i8 1, ptr %i.ak, align 8, !tbaa !94
  store ptr %i.ar, ptr %i.al, align 8, !tbaa !40
  store i32 %.0.i.i, ptr %i.an, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.aq, i1 false), !tbaa !32
  store i32 %4, ptr %i.am, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 1, ptr %i.at, align 8, !tbaa !94
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.au, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !95
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !96
  %i.ax = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.aq, i32 noundef 16)
          to label %.noexc102 unwind label %bb.u  ; 5 uses

.noexc102:                                        ; preds = %.lr.ph.i
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %.split7.i.i101, label %.lr.ph

.split7.i.i101:                                   ; preds = %.noexc102
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 301)
          to label %.noexc103 unwind label %bb.u

.noexc103:                                        ; preds = %.split7.i.i101
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
          to label %.lr.ph unwind label %bb.u

.loopexit139:                                     ; preds = %bb.m
  store i32 %4, ptr %i.am, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.az, align 8, !tbaa !94
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.bc, align 8, !tbaa !96
  store i32 %4, ptr %i.bb, align 4, !tbaa !95
  br label %.preheader138

.lr.ph:                                           ; preds = %.noexc103, %.noexc102
  %.0.i.i93 = phi i32 [ %4, %.noexc102 ], [ 0, %.noexc103 ]
  store i8 1, ptr %i.at, align 8, !tbaa !94
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !40
  store i32 %.0.i.i93, ptr %i.aw, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.aq, i1 false), !tbaa !32
  store i32 %4, ptr %i.av, align 4, !tbaa !95
  %i.bd = zext nneg i32 %4 to i64
  %i.be = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ax, i8 0, i64 %i.be, i1 false), !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ar, i8 0, i64 %i.be, i1 false), !tbaa !32
  br label %.preheader138

.preheader138:                                    ; preds = %.loopexit139, %.lr.ph
  %i.bf = phi ptr [ %i.ax, %.lr.ph ], [ null, %.loopexit139 ] ; 11 uses
  %i.bg = phi ptr [ %i.ar, %.lr.ph ], [ null, %.loopexit139 ] ; 13 uses
  %i.bh = ptrtoaddr ptr %i.bf to i64
  %i.bi = ptrtoaddr ptr %i.bg to i64
  %i.bj = icmp sgt i32 %2, 0
  br i1 %i.bj, label %bb.n, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader

bb.n:                                             ; preds = %.preheader138
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.sroa.speculate.load.122.peel = load i32, ptr %i.bl, align 4, !tbaa !35 ; 2 uses
  %.not78.i.peel = icmp eq i32 %.sroa.speculate.load.122.peel, -1
  br i1 %.not78.i.peel, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = sext i32 %.sroa.speculate.load.122.peel to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bm
  store i32 0, ptr %i.bn, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %exitcond.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond.peel.not, label %.lr.ph145, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.p
  %i.bo = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.bo, 1
  %i.bp = icmp eq i32 %2, 2
  br i1 %i.bp, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter = and i64 %i.bo, -2
  br label %.peel.next

.peel.next:                                       ; preds = %bb.s, %.peel.next.preheader.new
  %indvars.iv = phi i64 [ 1, %.peel.next.preheader.new ], [ %indvars.iv.next.1, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.bq = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %.sroa.speculate.load.191 = load i32, ptr %i.br, align 4, !tbaa !35
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv
  %.sroa.speculate.load.122 = load i32, ptr %i.bs, align 4, !tbaa !35 ; 2 uses
  %.not78.i = icmp eq i32 %.sroa.speculate.load.191, %.sroa.speculate.load.122
  br i1 %.not78.i, label %.peel.next.1, label %bb.q

bb.q:                                             ; preds = %.peel.next
  %i.bt = sext i32 %.sroa.speculate.load.122 to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bt
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !32
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %bb.q, %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bw = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv.next
  %i.bx = getelementptr i8, ptr %i.bw, i64 -8
  %.sroa.speculate.load.191.1 = load i32, ptr %i.bx, align 4, !tbaa !35
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.next
  %.sroa.speculate.load.122.1 = load i32, ptr %i.by, align 4, !tbaa !35 ; 2 uses
  %.not78.i.1 = icmp eq i32 %.sroa.speculate.load.191.1, %.sroa.speculate.load.122.1
  br i1 %.not78.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.peel.next.1
  %i.bz = sext i32 %.sroa.speculate.load.122.1 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bz
  %i.cb = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.cb, ptr %i.ca, align 4, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.peel.next.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph145.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !84

bb.t:                                             ; preds = %.noexc79, %.split7.i.i, %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.u:                                             ; preds = %.noexc103, %.split7.i.i101, %.lr.ph.i
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.ah

.lr.ph145.loopexit.unr-lcssa:                     ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph145, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.lr.ph145.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next.1, %.lr.ph145.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod218 = trunc i64 %i.bo to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.ce = getelementptr [8 x i8], ptr %i.bl, i64 %indvars.iv.epil.init
  %i.cf = getelementptr i8, ptr %i.ce, i64 -8
  %.sroa.speculate.load.191.epil = load i32, ptr %i.cf, align 4, !tbaa !35
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.epil.init
  %.sroa.speculate.load.122.epil = load i32, ptr %i.cg, align 4, !tbaa !35 ; 2 uses
  %.not78.i.epil = icmp eq i32 %.sroa.speculate.load.191.epil, %.sroa.speculate.load.122.epil
  br i1 %.not78.i.epil, label %.lr.ph145, label %bb.v

bb.v:                                             ; preds = %.peel.next.epil.preheader
  %i.ch = sext i32 %.sroa.speculate.load.122.epil to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !32
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.loopexit.unr-lcssa, %bb.v, %.peel.next.epil.preheader, %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !92 ; 2 uses
  %i.cm = zext nneg i32 %2 to i64                 ; 2 uses
  %i.cn = icmp eq i32 %2, 1
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph145.new

.lr.ph145.new:                                    ; preds = %.lr.ph145
  %8 = zext nneg i32 %2 to i64
  br label %bb.z

.epil.preheader:                                  ; preds = %.lr.ph145, %bb.ad
  %indvars.iv157.epil.init = phi i64 [ 1, %.lr.ph145 ], [ %niter223.next.1, %bb.ad ] ; 3 uses
  %i.co = getelementptr [8 x i8], ptr %i.cl, i64 %indvars.iv157.epil.init ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -8
  %i.cq = icmp eq i64 %indvars.iv157.epil.init, %i.cm
  br i1 %i.cq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.epil.preheader
  %.sroa.speculate.load.129.epil = load i32, ptr %i.co, align 4, !tbaa !35
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.epil.preheader
  %.sroa.speculated128.epil = phi i32 [ %.sroa.speculate.load.129.epil, %bb.w ], [ %4, %.epil.preheader ]
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !35 ; 2 uses
  %.not77.i.epil = icmp eq i32 %i.cr, %.sroa.speculated128.epil
  br i1 %.not77.i.epil, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cs
  %i.cu = trunc nuw nsw i64 %indvars.iv157.epil.init to i32
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !32
  br label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader: ; preds = %bb.y, %bb.x, %.preheader138
  br i1 %i.ao, label %.lr.ph147, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge

.lr.ph147:                                        ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !40 ; 7 uses
  %wide.trip.count165 = zext nneg i32 %4 to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %4, 12
  br i1 %min.iters.check, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph147
  %i.cx = ptrtoaddr ptr %i.cw to i64              ; 2 uses
  %i.cy = sub i64 %i.bh, %i.cx
  %diff.check = icmp ugt i64 %i.cy, -32
  %i.cz = sub i64 %i.bi, %i.cx
  %diff.check212 = icmp ugt i64 %i.cz, -32
  %conflict.rdx = or i1 %diff.check, %diff.check212
  br i1 %conflict.rdx, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count165, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <4 x i32>, ptr %i.da, align 4, !tbaa !32
  %wide.load213 = load <4 x i32>, ptr %i.db, align 4, !tbaa !32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load214 = load <4 x i32>, ptr %i.dc, align 4, !tbaa !32
  %wide.load215 = load <4 x i32>, ptr %i.dd, align 4, !tbaa !32
  %i.de = sub <4 x i32> %wide.load, %wide.load214
  %i.df = sub <4 x i32> %wide.load213, %wide.load215
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x i32> %i.de, ptr %i.dg, align 4, !tbaa !32
  store <4 x i32> %i.df, ptr %i.dh, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count165
  br i1 %cmp.n, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217: ; preds = %vector.memcheck, %.lr.ph147, %middle.block
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph147 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter224 = and i64 %wide.trip.count165, 3   ; 2 uses
  %lcmp.mod225.not.a = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not.a, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol
  %indvars.iv162.prol = phi i64 [ %indvars.iv.next163.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ], [ %indvars.iv162.ph, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ], [ 0, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv162.prol
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv162.prol
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !32
  %i.dn = sub i32 %i.dk, %i.dm
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv162.prol
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !32
  %indvars.iv.next163.prol = add nuw nsw i64 %indvars.iv162.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter224
  br i1 %prol.iter.cmp.not, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol, !llvm.loop !86

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217 ], [ %indvars.iv.next163.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ]
  %i.dp = sub nsw i64 %indvars.iv162.ph, %wide.trip.count165
  %i.dq = icmp ugt i64 %i.dp, -4
  br i1 %i.dq, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108

bb.z:                                             ; preds = %.lr.ph145.new, %bb.ad
  %niter223 = phi i64 [ 1, %.lr.ph145.new ], [ %niter223.next.1, %bb.ad ] ; 4 uses
  %i.dr = getelementptr [8 x i8], ptr %i.cl, i64 %niter223 ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 -8
  %i.dt = icmp eq i64 %niter223, %i.cm
  br i1 %i.dt, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.speculate.load.129.1 = load i32, ptr %i.dr, align 4, !tbaa !35
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.speculated128.1 = phi i32 [ %.sroa.speculate.load.129.1, %bb.aa ], [ %4, %bb.z ]
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !35 ; 2 uses
  %.not77.i.1 = icmp eq i32 %i.du, %.sroa.speculated128.1
  br i1 %.not77.i.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.dv
  %i.dx = trunc nuw nsw i64 %niter223 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %niter223.next.1 = add nuw nsw i64 %niter223, 1 ; 3 uses
  %niter223.ncmp.1 = icmp eq i64 %niter223.next.1, %8
  br i1 %niter223.ncmp.1, label %.epil.preheader, label %bb.z, !llvm.loop !87

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader
  %.not.i.i.i109.not = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i109.not, label %_ZN20b3AlignedObjectArrayIjED2Ev.exit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108, %middle.block, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.bf)
          to label %_ZN20b3AlignedObjectArrayIjED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #16
  unreachable

_ZN20b3AlignedObjectArrayIjED2Ev.exit:            ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not.i.i.i110.not = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i110.not, label %_ZN20b3AlignedObjectArrayIjED2Ev.exit112, label %bb.af

bb.af:                                            ; preds = %_ZN20b3AlignedObjectArrayIjED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.bg)
          to label %_ZN20b3AlignedObjectArrayIjED2Ev.exit112 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  tail call void @__clang_call_terminate(ptr %i.eb) #16
  unreachable

_ZN20b3AlignedObjectArrayIjED2Ev.exit112:         ; preds = %_ZN20b3AlignedObjectArrayIjED2Ev.exit, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.3, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108 ], [ %indvars.iv162.unr, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit ] ; 7 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv162
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !32
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv162
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !32
  %i.eg = sub i32 %i.ed, %i.ef
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv162
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !32
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next163
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !32
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next163
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !32
  %i.em = sub i32 %i.ej, %i.el
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next163
  store i32 %i.em, ptr %i.en, align 4, !tbaa !32
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next163.1
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !32
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next163.1
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !32
  %i.es = sub i32 %i.ep, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next163.1
  store i32 %i.es, ptr %i.et, align 4, !tbaa !32
  %indvars.iv.next163.2 = add nuw nsw i64 %indvars.iv162, 3 ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.next163.2
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !32
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next163.2
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !32
  %i.ey = sub i32 %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.next163.2
  store i32 %i.ey, ptr %i.ez, align 4, !tbaa !32
  %indvars.iv.next163.3 = add nuw nsw i64 %indvars.iv162, 4 ; 2 uses
  %exitcond166.not.3 = icmp eq i64 %indvars.iv.next163.3, %wide.trip.count165
  br i1 %exitcond166.not.3, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108, !llvm.loop !88

bb.ah:                                            ; preds = %bb.u, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.u ], [ %i.cc, %bb.t ]
  call void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.loopexit, label %.peel.next178.epil.preheader

.peel.next178.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.peel.next178.preheader
  %indvars.iv172.epil.init = phi i64 [ 1, %.peel.next178.preheader ], [ %indvars.iv.next173.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod229 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.fa = getelementptr [8 x i8], ptr %i.i, i64 %indvars.iv172.epil.init
  %i.fb = getelementptr i8, ptr %i.fa, i64 -8
  %.sroa.speculate.load.184.epil = load i32, ptr %i.fb, align 4, !tbaa !35
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv172.epil.init
  %.sroa.speculate.load.116.epil = load i32, ptr %i.fc, align 4, !tbaa !35 ; 2 uses
  %.not78.epil = icmp eq i32 %.sroa.speculate.load.184.epil, %.sroa.speculate.load.116.epil
  br i1 %.not78.epil, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.peel.next178.epil.preheader
  %i.fd = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.fe = sext i32 %.sroa.speculate.load.116.epil to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.fe
  %i.fg = trunc nuw nsw i64 %indvars.iv172.epil.init to i32
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !32
  br label %.loopexit

.loopexit.loopexit216.peel.begin:                 ; preds = %.lr.ph150, %bb.l
  %i.fh = phi i64 [ 1, %.lr.ph150 ], [ %indvars.iv.next168, %bb.l ] ; 3 uses
  %i.fi = getelementptr [8 x i8], ptr %i.b, i64 %i.fh ; 2 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 -8
  %i.fk = icmp eq i64 %i.fh, %i.d
  br i1 %i.fk, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.loopexit216.peel.begin
  %.sroa.speculate.load..peel = load i32, ptr %i.fi, align 4, !tbaa !35
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit.loopexit216.peel.begin
  %.sroa.speculated.peel = phi i32 [ %.sroa.speculate.load..peel, %bb.aj ], [ %4, %.loopexit.loopexit216.peel.begin ]
  %i.fl = load i32, ptr %i.fj, align 4, !tbaa !35 ; 2 uses
  %.not77.peel = icmp eq i32 %i.fl, %.sroa.speculated.peel
  br i1 %.not77.peel, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.fm
  %i.fo = trunc nuw nsw i64 %i.fh to i32
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.ak, %.loopexit.loopexit.unr-lcssa, %bb.ai, %.peel.next178.epil.preheader, %bb.d, %.preheader135, %.preheader, %bb.a, %_ZN20b3AlignedObjectArrayIjED2Ev.exit112
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
!87 = distinct !{!87, !36, !93}
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
