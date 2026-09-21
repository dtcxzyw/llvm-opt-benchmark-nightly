Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3BoundSearchCL?download=true
inline.NumInlined: 101
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN15b3BoundSearchCL7executeER13b3OpenCLArrayI10b3SortDataEiRS0_IjEiNS_6OptionE:bb.a
.split.i.i136:                                    ; preds = %.noexc149
  %i.mx = load i32, ptr %i.ml, align 4, !tbaa !73 ; 4 uses
  %i.my = icmp sgt i32 %i.mx, 0
  br i1 %i.my, label %.lr.ph.i.i.i143, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137

.lr.ph.i.i.i143:                                  ; preds = %.split.i.i136
  %i.mz = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 3 uses
  %wide.trip.count.i.i.i144 = zext nneg i32 %i.mx to i64 ; 2 uses
  %xtraiter241 = and i64 %wide.trip.count.i.i.i144, 1
  %i.na = icmp eq i32 %i.mx, 1
  br i1 %i.na, label %.epil.preheader240, label %.lr.ph.i.i.i143.new

.lr.ph.i.i.i143.new:                              ; preds = %.lr.ph.i.i.i143
  %unroll_iter244 = and i64 %wide.trip.count.i.i.i144, 2147483646
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.lr.ph.i.i.i143.new
  %indvars.iv.i.i.i145 = phi i64 [ 0, %.lr.ph.i.i.i143.new ], [ %indvars.iv.next.i.i.i146.1, %bb.au ] ; 4 uses
  %niter245 = phi i64 [ 0, %.lr.ph.i.i.i143.new ], [ %niter245.next.1, %bb.au ]
  %i.nb = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %indvars.iv.i.i.i145
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !75
  %i.nd = getelementptr inbounds nuw [32 x i8], ptr %i.nc, i64 %indvars.iv.i.i.i145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.nb, ptr noundef nonnull align 16 dereferenceable(32) %i.nd, i64 32, i1 false), !tbaa.struct !76
  %indvars.iv.next.i.i.i146 = or disjoint i64 %indvars.iv.i.i.i145, 1 ; 2 uses
  %i.ne = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %indvars.iv.next.i.i.i146
  %i.nf = load ptr, ptr %i.mz, align 8, !tbaa !75
  %i.ng = getelementptr inbounds nuw [32 x i8], ptr %i.nf, i64 %indvars.iv.next.i.i.i146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ne, ptr noundef nonnull align 16 dereferenceable(32) %i.ng, i64 32, i1 false), !tbaa.struct !76
  %indvars.iv.next.i.i.i146.1 = add nuw nsw i64 %indvars.iv.i.i.i145, 2 ; 2 uses
  %niter245.next.1 = add i64 %niter245, 2         ; 2 uses
  %niter245.ncmp.1 = icmp eq i64 %niter245.next.1, %unroll_iter244
  br i1 %niter245.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137.loopexit.unr-lcssa, label %bb.au, !llvm.loop !53

.split7.i.i148:                                   ; preds = %.noexc149, %bb.at
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 301)
          to label %.noexc150 unwind label %bb.az

.noexc150:                                        ; preds = %.split7.i.i148
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
          to label %.noexc151 unwind label %bb.az

.noexc151:                                        ; preds = %.noexc150
  store i32 0, ptr %i.ml, align 4, !tbaa !73
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137.loopexit.unr-lcssa: ; preds = %bb.au
  %lcmp.mod242.not = icmp eq i64 %xtraiter241, 0
  br i1 %lcmp.mod242.not, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137, label %.epil.preheader240

.epil.preheader240:                               ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137.loopexit.unr-lcssa, %.lr.ph.i.i.i143
  %indvars.iv.i.i.i145.epil.init = phi i64 [ 0, %.lr.ph.i.i.i143 ], [ %indvars.iv.next.i.i.i146.1, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod243 = trunc i32 %i.mx to i1
  call void @llvm.assume(i1 %lcmp.mod243)
  %i.nh = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %indvars.iv.i.i.i145.epil.init
  %i.ni = load ptr, ptr %i.mz, align 8, !tbaa !75
  %i.nj = getelementptr inbounds nuw [32 x i8], ptr %i.ni, i64 %indvars.iv.i.i.i145.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.nh, ptr noundef nonnull align 16 dereferenceable(32) %i.nj, i64 32, i1 false), !tbaa.struct !76
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137: ; preds = %.epil.preheader240, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137.loopexit.unr-lcssa, %.noexc151, %.split.i.i136
  %.0.i12.i.i138 = phi ptr [ null, %.noexc151 ], [ %i.mv, %.split.i.i136 ], [ %i.mv, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137.loopexit.unr-lcssa ], [ %i.mv, %.epil.preheader240 ]
  %.0.i.i139 = phi i32 [ 0, %.noexc151 ], [ %i.mr, %.split.i.i136 ], [ %i.mr, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137.loopexit.unr-lcssa ], [ %i.mr, %.epil.preheader240 ]
  %i.nk = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !75 ; 2 uses
  %.not.i10.i.i140 = icmp ne ptr %i.nl, null
  %i.nm = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 8, !range !34
  %i.no = trunc nuw i8 %i.nn to i1
  %or.cond201 = select i1 %.not.i10.i.i140, i1 %i.no, i1 false
  br i1 %or.cond201, label %bb.av, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i141

bb.av:                                            ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.nl)
          to label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i141 unwind label %bb.az

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i141: ; preds = %bb.av, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i137
  store i8 1, ptr %i.nm, align 8, !tbaa !77
  store ptr %.0.i12.i.i138, ptr %i.nk, align 8, !tbaa !75
  store i32 %.0.i.i139, ptr %i.mn, align 8, !tbaa !74
  %.pre.i142 = load i32, ptr %i.ml, align 4, !tbaa !73
  br label %.noexc36

.noexc36:                                         ; preds = %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i141, %bb.as, %bb.ar
  %i.np = phi i32 [ %.pre.i142, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i141 ], [ %i.mm, %bb.as ], [ %i.mm, %bb.ar ]
  %i.nq = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !75
  %i.ns = sext i32 %i.np to i64
  %i.nt = getelementptr inbounds [32 x i8], ptr %i.nr, i64 %i.ns ; 4 uses
  store i32 0, ptr %i.nt, align 16, !tbaa !32
  %.sroa.4180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nt, i64 4
  store i32 %i.mj, ptr %.sroa.4180.0..sroa_idx, align 4, !tbaa !32
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  store i32 4, ptr %.sroa.5181.0..sroa_idx, align 8, !tbaa !32
  %.sroa.6183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  store i32 %i.mk, ptr %.sroa.6183.0..sroa_idx, align 16
  %i.nu = load i32, ptr %i.ml, align 4, !tbaa !73
  %i.nv = add nsw i32 %i.nu, 1
  store i32 %i.nv, ptr %i.ml, align 4, !tbaa !73
  %i.nw = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !78
  %i.ny = add i32 %i.nx, 32
  store i32 %i.ny, ptr %i.nw, align 8, !tbaa !78
  br label %bb.aw

bb.aw:                                            ; preds = %.noexc36, %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit35
  %i.nz = load ptr, ptr @__clewSetKernelArg, align 8, !tbaa !31
  %i.oa = load ptr, ptr %i.mb, align 8, !tbaa !79
  %i.ob = load i32, ptr %i.md, align 8, !tbaa !72 ; 2 uses
  %i.oc = add nsw i32 %i.ob, 1
  store i32 %i.oc, ptr %i.md, align 8, !tbaa !72
  %i.od = invoke i32 %i.nz(ptr noundef %i.oa, i32 noundef %i.ob, i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
          to label %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit38 unwind label %bb.az, !inline_history !54 ; 0 uses

_ZN12b3LauncherCL8setConstIiEEvRKT_.exit38:       ; preds = %bb.aw
  %i.oe = load i32, ptr %i.h, align 4, !tbaa !32  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN12b3LauncherCL8launch2DEiiii.lRange, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN12b3LauncherCL8launch2DEiiii.lRange, i64 24, i1 false)
  store i64 64, ptr %i.b, align 16, !tbaa !80
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.of, align 8, !tbaa !80
  %i.og = sext i32 %i.oe to i64
  %i.oh = lshr i64 %i.og, 6
  %i.oi = and i32 %i.oe, 63
  %.not.i.i39 = icmp ne i32 %i.oi, 0
  %i.oj = zext i1 %.not.i.i39 to i64
  %i.ok = add nuw nsw i64 %i.oh, %i.oj
  %.sroa.speculated13.i.i40 = call i64 @llvm.umax.i64(i64 %i.ok, i64 1)
  %i.ol = shl i64 %.sroa.speculated13.i.i40, 6
  store i64 %i.ol, ptr %i.a, align 16, !tbaa !80
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.om, align 8, !tbaa !80
  %i.on = load ptr, ptr @__clewEnqueueNDRangeKernel, align 8, !tbaa !31
  %i.oo = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !81
  %i.oq = load ptr, ptr %i.mb, align 8, !tbaa !79
  %i.or = invoke i32 %i.on(ptr noundef %i.op, ptr noundef %i.oq, i32 noundef 2, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %.noexc42 unwind label %bb.az, !inline_history !55 ; 2 uses

.noexc42:                                         ; preds = %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit38
  %.not9.i.i41 = icmp eq i32 %i.or, 0
  br i1 %.not9.i.i41, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.noexc42
  %i.os = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.or) ; 0 uses
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.ba

bb.az:                                            ; preds = %bb.av, %.noexc150, %.split7.i.i148, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i135, %bb.ap, %.noexc129, %.split7.i.i127, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i114, %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit38, %bb.aw, %bb.aq, %bb.aj
  %i.ot = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.bb

bb.ba:                                            ; preds = %bb.a, %bb.ah, %bb.ay, %bb.q
  ret void

bb.bb:                                            ; preds = %bb.az, %bb.ai, %bb.r
  %.pn = phi { ptr, i32 } [ %i.eg, %bb.r ], [ %i.jf, %bb.ai ], [ %i.ot, %bb.az ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN12b3LauncherCLC1EP17_cl_command_queueP10_cl_kernelPKc(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN12b3LauncherCL10setBuffersEP14b3BufferInfoCLi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112)) unnamed_addr #8

declare void @_ZN8b3FillCL7executeER13b3OpenCLArrayIjEjii(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.b3AlignedObjectArray.9, align 8 ; 8 uses
  %7 = alloca %class.b3AlignedObjectArray.9, align 8 ; 13 uses
  switch i32 %5, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader135
    i32 2, label %bb.m
  ]

.preheader135:                                    ; preds = %bb.a
  %.not148 = icmp slt i32 %2, 1
  br i1 %.not148, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %.preheader135
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %8 = load ptr, ptr %i.c, align 8                ; 2 uses
  %9 = zext nneg i32 %2 to i64                    ; 2 uses
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %.loopexit.loopexit216.peel.begin, label %.lr.ph150.split

.lr.ph150.split:                                  ; preds = %.lr.ph150
  %i.d = zext nneg i32 %2 to i64
  br label %bb.h

.preheader:                                       ; preds = %bb.a
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %10 = load ptr, ptr %i.h, align 8               ; 4 uses
  %wide.trip.count175 = zext nneg i32 %2 to i64
  %.sroa.speculate.load.116.peel = load i32, ptr %i.g, align 4, !tbaa !35 ; 2 uses
  %.not78.peel = icmp eq i32 %.sroa.speculate.load.116.peel, -1
  br i1 %.not78.peel, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = sext i32 %.sroa.speculate.load.116.peel to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %10, i64 %i.i
  store i32 0, ptr %i.j, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond176.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond176.peel.not, label %.loopexit, label %.peel.next178.preheader

.peel.next178.preheader:                          ; preds = %bb.d
  %i.k = add nsw i64 %wide.trip.count175, -1      ; 3 uses
  %xtraiter227 = and i64 %i.k, 1
  %i.l = icmp eq i32 %2, 2
  br i1 %i.l, label %.peel.next178.epil.preheader, label %.peel.next178.preheader.new

.peel.next178.preheader.new:                      ; preds = %.peel.next178.preheader
  %unroll_iter230 = and i64 %i.k, -2
  br label %.peel.next178

.peel.next178:                                    ; preds = %bb.g, %.peel.next178.preheader.new
  %indvars.iv172 = phi i64 [ 1, %.peel.next178.preheader.new ], [ %indvars.iv.next173.1, %bb.g ] ; 4 uses
  %niter231 = phi i64 [ 0, %.peel.next178.preheader.new ], [ %niter231.next.1, %bb.g ]
  %i.m = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv172 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8
  %.sroa.speculate.load.184.a = load i32, ptr %i.m, align 4, !tbaa !35 ; 2 uses
  %.sroa.speculate.load.116 = load i32, ptr %i.n, align 4, !tbaa !35
  %.not78 = icmp eq i32 %.sroa.speculate.load.116, %.sroa.speculate.load.184.a
  br i1 %.not78, label %.peel.next178.1, label %bb.e

bb.e:                                             ; preds = %.peel.next178
  %i.o = sext i32 %.sroa.speculate.load.184.a to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %10, i64 %i.o
  %i.q = trunc nuw nsw i64 %indvars.iv172 to i32
  store i32 %i.q, ptr %i.p, align 4, !tbaa !32
  br label %.peel.next178.1

.peel.next178.1:                                  ; preds = %bb.e, %.peel.next178
  %indvars.iv.next173 = add nuw nsw i64 %indvars.iv172, 1 ; 2 uses
  %i.r = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv.next173 ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %.sroa.speculate.load.184.1.a = load i32, ptr %i.r, align 4, !tbaa !35 ; 2 uses
  %.sroa.speculate.load.116.1 = load i32, ptr %i.s, align 4, !tbaa !35
  %.not78.1 = icmp eq i32 %.sroa.speculate.load.116.1, %.sroa.speculate.load.184.1.a
  br i1 %.not78.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.peel.next178.1
  %i.t = sext i32 %.sroa.speculate.load.184.1.a to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %10, i64 %i.t
  %i.v = trunc nuw nsw i64 %indvars.iv.next173 to i32
  store i32 %i.v, ptr %i.u, align 4, !tbaa !32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.peel.next178.1
  %indvars.iv.next173.1 = add nuw nsw i64 %indvars.iv172, 2 ; 2 uses
  %niter231.next.1 = add i64 %niter231, 2         ; 2 uses
  %niter231.ncmp.1 = icmp eq i64 %niter231.next.1, %unroll_iter230
  br i1 %niter231.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.peel.next178, !llvm.loop !82

bb.h:                                             ; preds = %.lr.ph150.split, %bb.l
  %indvars.iv167 = phi i64 [ 1, %.lr.ph150.split ], [ %indvars.iv.next168, %bb.l ] ; 4 uses
  %i.w = getelementptr [8 x i8], ptr %i.b, i64 %indvars.iv167 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 -8
  %i.y = icmp eq i64 %indvars.iv167, %9
  br i1 %i.y, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.speculate.load. = load i32, ptr %i.w, align 4, !tbaa !35
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.speculated = phi i32 [ %.sroa.speculate.load., %bb.i ], [ %4, %bb.h ]
  %i.z = load i32, ptr %i.x, align 4, !tbaa !35   ; 2 uses
  %.not77 = icmp eq i32 %i.z, %.sroa.speculated
  br i1 %.not77, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %8, i64 %i.aa
  %i.ac = trunc nuw nsw i64 %indvars.iv167 to i32
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 3 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next168, %i.d
  br i1 %exitcond171.not, label %.loopexit.loopexit216.peel.begin, label %bb.h, !llvm.loop !83

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 1, ptr %i.ad, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store i32 0, ptr %i.af, align 4, !tbaa !95
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !96
  %i.ah = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.ah, label %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i, label %.loopexit139

_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i: ; preds = %bb.m
  %i.ai = zext nneg i32 %4 to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 4 uses
  %i.ak = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.aj, i32 noundef 16)
          to label %.noexc unwind label %bb.t     ; 5 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %.split7.i.i, label %.lr.ph.i

.split7.i.i:                                      ; preds = %.noexc
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 301)
          to label %.noexc79 unwind label %bb.t

.noexc79:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
          to label %.lr.ph.i unwind label %bb.t

.lr.ph.i:                                         ; preds = %.noexc79, %.noexc
  %.0.i.i = phi i32 [ %4, %.noexc ], [ 0, %.noexc79 ]
  store i8 1, ptr %i.ad, align 8, !tbaa !94
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !40
  store i32 %.0.i.i, ptr %i.ag, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.aj, i1 false), !tbaa !32
  store i32 %4, ptr %i.af, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 1, ptr %i.am, align 8, !tbaa !94
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr null, ptr %i.an, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.ap, align 8, !tbaa !96
  %i.aq = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.aj, i32 noundef 16)
          to label %.noexc102 unwind label %bb.u  ; 5 uses

.noexc102:                                        ; preds = %.lr.ph.i
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.split7.i.i101, label %.lr.ph

.split7.i.i101:                                   ; preds = %.noexc102
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.13, i32 noundef 301)
          to label %.noexc103 unwind label %bb.u

.noexc103:                                        ; preds = %.split7.i.i101
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.14)
          to label %.lr.ph unwind label %bb.u

.loopexit139:                                     ; preds = %bb.m
  store i32 %4, ptr %i.af, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i8 1, ptr %i.as, align 8, !tbaa !94
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.at, align 8, !tbaa !40
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.av, align 8, !tbaa !96
  store i32 %4, ptr %i.au, align 4, !tbaa !95
  br label %.preheader138

.lr.ph:                                           ; preds = %.noexc103, %.noexc102
  %.0.i.i93 = phi i32 [ %4, %.noexc102 ], [ 0, %.noexc103 ]
  store i8 1, ptr %i.am, align 8, !tbaa !94
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !40
  store i32 %.0.i.i93, ptr %i.ap, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %i.aj, i1 false), !tbaa !32
  store i32 %4, ptr %i.ao, align 4, !tbaa !95
  %i.aw = zext nneg i32 %4 to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %i.ax, i1 false), !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ak, i8 0, i64 %i.ax, i1 false), !tbaa !32
  br label %.preheader138

.preheader138:                                    ; preds = %.loopexit139, %.lr.ph
  %i.ay = phi ptr [ %i.aq, %.lr.ph ], [ null, %.loopexit139 ] ; 12 uses
  %i.az = phi ptr [ %i.ak, %.lr.ph ], [ null, %.loopexit139 ] ; 13 uses
  %i.ba = ptrtoaddr ptr %i.ay to i64
  %i.bb = ptrtoaddr ptr %i.az to i64
  %i.bc = icmp sgt i32 %2, 0
  br i1 %i.bc, label %bb.n, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader

bb.n:                                             ; preds = %.preheader138
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !92 ; 7 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  %.sroa.speculate.load.122.peel = load i32, ptr %i.be, align 4, !tbaa !35 ; 2 uses
  %.not78.i.peel = icmp eq i32 %.sroa.speculate.load.122.peel, -1
  br i1 %.not78.i.peel, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = sext i32 %.sroa.speculate.load.122.peel to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bf
  store i32 0, ptr %i.bg, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %exitcond.peel.not = icmp eq i32 %2, 1
  br i1 %exitcond.peel.not, label %.lr.ph145, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.p
  %i.bh = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %i.bh, 1
  %i.bi = icmp eq i32 %2, 2
  br i1 %i.bi, label %.peel.next.epil.preheader, label %.peel.next.preheader.new

.peel.next.preheader.new:                         ; preds = %.peel.next.preheader
  %unroll_iter = and i64 %i.bh, -2
  br label %.peel.next

.peel.next:                                       ; preds = %bb.s, %.peel.next.preheader.new
  %indvars.iv = phi i64 [ 1, %.peel.next.preheader.new ], [ %indvars.iv.next.1, %bb.s ] ; 5 uses
  %niter = phi i64 [ 0, %.peel.next.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.bj = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %.sroa.speculate.load.191 = load i32, ptr %i.bk, align 4, !tbaa !35
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %.sroa.speculate.load.122 = load i32, ptr %i.bl, align 4, !tbaa !35 ; 2 uses
  %.not78.i = icmp eq i32 %.sroa.speculate.load.191, %.sroa.speculate.load.122
  br i1 %.not78.i, label %.peel.next.1, label %bb.q

bb.q:                                             ; preds = %.peel.next
  %i.bm = sext i32 %.sroa.speculate.load.122 to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bm
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bo, ptr %i.bn, align 4, !tbaa !32
  br label %.peel.next.1

.peel.next.1:                                     ; preds = %bb.q, %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bp = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.next
  %i.bq = getelementptr i8, ptr %i.bp, i64 -8
  %.sroa.speculate.load.191.1 = load i32, ptr %i.bq, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next
  %.sroa.speculate.load.122.1 = load i32, ptr %i.br, align 4, !tbaa !35 ; 2 uses
  %.not78.i.1 = icmp eq i32 %.sroa.speculate.load.191.1, %.sroa.speculate.load.122.1
  br i1 %.not78.i.1, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.peel.next.1
  %i.bs = sext i32 %.sroa.speculate.load.122.1 to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bs
  %i.bu = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.peel.next.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph145.loopexit.unr-lcssa, label %.peel.next, !llvm.loop !84

bb.t:                                             ; preds = %.noexc79, %.split7.i.i, %_ZN20b3AlignedObjectArrayIjE8allocateEi.exit.i.i
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.u:                                             ; preds = %.noexc103, %.split7.i.i101, %.lr.ph.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.al

.lr.ph145.loopexit.unr-lcssa:                     ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph145, label %.peel.next.epil.preheader

.peel.next.epil.preheader:                        ; preds = %.lr.ph145.loopexit.unr-lcssa, %.peel.next.preheader
  %indvars.iv.epil.init = phi i64 [ 1, %.peel.next.preheader ], [ %indvars.iv.next.1, %.lr.ph145.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod218 = trunc i64 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod218)
  %i.bx = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.epil.init
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %.sroa.speculate.load.191.epil = load i32, ptr %i.by, align 4, !tbaa !35
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.epil.init
  %.sroa.speculate.load.122.epil = load i32, ptr %i.bz, align 4, !tbaa !35 ; 2 uses
  %.not78.i.epil = icmp eq i32 %.sroa.speculate.load.191.epil, %.sroa.speculate.load.122.epil
end_hunk_0
begin_hunk_1_@_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE:bb.a
  %i.cs = sub i64 %i.ba, %i.cr
  %diff.check = icmp ugt i64 %i.cs, -32
  %i.ct = sub i64 %i.bb, %i.cr
  %diff.check212 = icmp ugt i64 %i.ct, -32
  %conflict.rdx = or i1 %diff.check, %diff.check212
  br i1 %conflict.rdx, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count165, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x i32>, ptr %i.cu, align 4, !tbaa !32
  %wide.load213 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load214 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !32
  %wide.load215 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !32
  %i.cy = sub <4 x i32> %wide.load, %wide.load214
  %i.cz = sub <4 x i32> %wide.load213, %wide.load215
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !32
  store <4 x i32> %i.cz, ptr %i.db, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count165
  br i1 %cmp.n, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217: ; preds = %vector.memcheck, %.lr.ph147, %middle.block
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph147 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter224 = and i64 %wide.trip.count165, 3   ; 2 uses
  %lcmp.mod225.not = icmp eq i64 %xtraiter224, 0
  br i1 %lcmp.mod225.not, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol
  %indvars.iv162.prol = phi i64 [ %indvars.iv.next163.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ], [ %indvars.iv162.ph, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217 ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ], [ 0, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv162.prol
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !32
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv162.prol
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !32
  %i.dh = sub i32 %i.de, %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv162.prol
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !32
  %indvars.iv.next163.prol = add nuw nsw i64 %indvars.iv162.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter224
  br i1 %prol.iter.cmp.not, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol, !llvm.loop !86

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217
  %indvars.iv162.unr = phi i64 [ %indvars.iv162.ph, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader217 ], [ %indvars.iv.next163.prol, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol ]
  %i.dj = sub nsw i64 %indvars.iv162.ph, %wide.trip.count165
  %i.dk = icmp ugt i64 %i.dj, -4
  br i1 %i.dk, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108

bb.z:                                             ; preds = %bb.ah, %.lr.ph145.new
  %indvars.iv157 = phi i64 [ 1, %.lr.ph145.new ], [ %indvars.iv.next158.1, %bb.ah ] ; 5 uses
  %niter223 = phi i64 [ 0, %.lr.ph145.new ], [ %niter223.next.1, %bb.ah ]
  %i.dl = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv157 ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = icmp eq i64 %indvars.iv157, %i.cf
  br i1 %i.dn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.sroa.speculate.load.129 = load i32, ptr %i.dl, align 4, !tbaa !35
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.speculated128 = phi i32 [ %.sroa.speculate.load.129, %bb.aa ], [ %4, %bb.z ]
  %i.do = load i32, ptr %i.dm, align 4, !tbaa !35 ; 2 uses
  %.not77.i = icmp eq i32 %i.do, %.sroa.speculated128
  br i1 %.not77.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.dp
  %i.dr = trunc nuw nsw i64 %indvars.iv157 to i32
  store i32 %i.dr, ptr %i.dq, align 4, !tbaa !32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 3 uses
  %i.ds = getelementptr [8 x i8], ptr %i.ce, i64 %indvars.iv.next158 ; 2 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  %i.du = icmp eq i64 %indvars.iv.next158, %i.cf
  br i1 %i.du, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.speculate.load.129.1 = load i32, ptr %i.ds, align 4, !tbaa !35
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.speculated128.1 = phi i32 [ %.sroa.speculate.load.129.1, %bb.ae ], [ %4, %bb.ad ]
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !35 ; 2 uses
  %.not77.i.1 = icmp eq i32 %i.dv, %.sroa.speculated128.1
  br i1 %.not77.i.1, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.dw
  %i.dy = trunc nuw nsw i64 %indvars.iv.next158 to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next158.1 = add nuw nsw i64 %indvars.iv157, 2 ; 2 uses
  %niter223.next.1 = add i64 %niter223, 2         ; 2 uses
  %niter223.ncmp.1 = icmp eq i64 %niter223.next.1, %unroll_iter222
  br i1 %niter223.ncmp.1, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader.loopexit.unr-lcssa, label %bb.z, !llvm.loop !87

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.preheader
  %.not.i.i.i109.not = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i109.not, label %_ZN20b3AlignedObjectArrayIjED2Ev.exit, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108, %middle.block, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.ay)
          to label %_ZN20b3AlignedObjectArrayIjED2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread
  %i.dz = landingpad { ptr, i32 }
          catch ptr null
  %i.ea = extractvalue { ptr, i32 } %i.dz, 0
  tail call void @__clang_call_terminate(ptr %i.ea) #16
  unreachable

_ZN20b3AlignedObjectArrayIjED2Ev.exit:            ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %.not.i.i.i110.not = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i110.not, label %_ZN20b3AlignedObjectArrayIjED2Ev.exit112, label %bb.aj

bb.aj:                                            ; preds = %_ZN20b3AlignedObjectArrayIjED2Ev.exit
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.az)
          to label %_ZN20b3AlignedObjectArrayIjED2Ev.exit112 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eb = landingpad { ptr, i32 }
          catch ptr null
  %i.ec = extractvalue { ptr, i32 } %i.eb, 0
  tail call void @__clang_call_terminate(ptr %i.ec) #16
  unreachable

_ZN20b3AlignedObjectArrayIjED2Ev.exit112:         ; preds = %_ZN20b3AlignedObjectArrayIjED2Ev.exit, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.loopexit

_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108: ; preds = %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108
  %indvars.iv162 = phi i64 [ %indvars.iv.next163.3, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108 ], [ %indvars.iv162.unr, %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108.prol.loopexit ] ; 7 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv162
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !32
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv162
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !32
  %i.eh = sub i32 %i.ee, %i.eg
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv162
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !32
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 3 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next163
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !32
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next163
  %i.em = load i32, ptr %i.el, align 4, !tbaa !32
  %i.en = sub i32 %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next163
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !32
  %indvars.iv.next163.1 = add nuw nsw i64 %indvars.iv162, 2 ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next163.1
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !32
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next163.1
  %i.es = load i32, ptr %i.er, align 4, !tbaa !32
  %i.et = sub i32 %i.eq, %i.es
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next163.1
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !32
  %indvars.iv.next163.2 = add nuw nsw i64 %indvars.iv162, 3 ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next163.2
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !32
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next163.2
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !32
  %i.ez = sub i32 %i.ew, %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.next163.2
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !32
  %indvars.iv.next163.3 = add nuw nsw i64 %indvars.iv162, 4 ; 2 uses
  %exitcond166.not.3 = icmp eq i64 %indvars.iv.next163.3, %wide.trip.count165
  br i1 %exitcond166.not.3, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108._crit_edge.thread, label %_ZN15b3BoundSearchCL11executeHostER20b3AlignedObjectArrayI10b3SortDataEiRS0_IjEiNS_6OptionE.exit108, !llvm.loop !88

bb.al:                                            ; preds = %bb.u, %bb.t
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.u ], [ %i.bv, %bb.t ]
  call void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  resume { ptr, i32 } %.pn.pn.pn

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %.loopexit, label %.peel.next178.epil.preheader

.peel.next178.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.peel.next178.preheader
  %indvars.iv172.epil.init = phi i64 [ 1, %.peel.next178.preheader ], [ %indvars.iv.next173.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod229 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %i.fb = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv172.epil.init ; 2 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8
  %.sroa.speculate.load.184.epil = load i32, ptr %i.fb, align 4, !tbaa !35 ; 2 uses
  %.sroa.speculate.load.116.epil = load i32, ptr %i.fc, align 4, !tbaa !35
  %.not78.epil = icmp eq i32 %.sroa.speculate.load.116.epil, %.sroa.speculate.load.184.epil
  br i1 %.not78.epil, label %.loopexit, label %bb.am

bb.am:                                            ; preds = %.peel.next178.epil.preheader
  %i.fd = sext i32 %.sroa.speculate.load.184.epil to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %10, i64 %i.fd
  %i.ff = trunc nuw nsw i64 %indvars.iv172.epil.init to i32
  store i32 %i.ff, ptr %i.fe, align 4, !tbaa !32
  br label %.loopexit

.loopexit.loopexit216.peel.begin:                 ; preds = %.lr.ph150, %bb.l
  %i.fg = phi i64 [ 1, %.lr.ph150 ], [ %indvars.iv.next168, %bb.l ] ; 3 uses
  %i.fh = getelementptr [8 x i8], ptr %i.b, i64 %i.fg ; 2 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = icmp eq i64 %i.fg, %9
  br i1 %i.fj, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.loopexit.loopexit216.peel.begin
  %.sroa.speculate.load..peel = load i32, ptr %i.fh, align 4, !tbaa !35
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit.loopexit216.peel.begin
  %.sroa.speculated.peel = phi i32 [ %.sroa.speculate.load..peel, %bb.an ], [ %4, %.loopexit.loopexit216.peel.begin ]
  %i.fk = load i32, ptr %i.fi, align 4, !tbaa !35 ; 2 uses
  %.not77.peel = icmp eq i32 %i.fk, %.sroa.speculated.peel
  br i1 %.not77.peel, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %8, i64 %i.fl
  %i.fn = trunc nuw nsw i64 %i.fg to i32
  store i32 %i.fn, ptr %i.fm, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ap, %bb.ao, %.loopexit.loopexit.unr-lcssa, %bb.am, %.peel.next178.epil.preheader, %bb.d, %.preheader135, %.preheader, %bb.a, %_ZN20b3AlignedObjectArrayIjED2Ev.exit112
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
end_hunk_1
