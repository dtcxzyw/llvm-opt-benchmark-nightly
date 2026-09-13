Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN28QCPColorScaleAxisRectPrivate19updateGradientImageEv:bb.a
.lr.ph102:                                        ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.h

._crit_edge103:                                   ; preds = %bb.j, %bb.f
  %i.an = load ptr, ptr %i.f, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 200
  %i.ap = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.aq = add i32 %i.i, -1
  %i.ar = sitofp i32 %i.aq to double
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef 0.000000e+00, double noundef %i.ar)
          to label %bb.l unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %bb.ah

bb.h:                                             ; preds = %.lr.ph102, %bb.j
  %.040100 = phi i32 [ 0, %.lr.ph102 ], [ %i.ay, %bb.j ] ; 3 uses
  %i.at = invoke noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %i.af, i32 noundef %.040100)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.at, ptr %i.a, align 8
  %i.au = load i64, ptr %i.am, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIPjE7emplaceIJRS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc62 unwind label %bb.k

.noexc62:                                         ; preds = %bb.i
  %i.av = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc62
  %i.aw = load atomic i32, ptr %i.av monotonic, align 4
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.j

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i, %.noexc62
  invoke void @_ZN17QArrayDataPointerIPjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = add nuw nsw i32 %.040100, 1
  %exitcond117.not = icmp eq i32 %.040100, %reass.sub
  br i1 %exitcond117.not, label %._crit_edge103, label %bb.h, !llvm.loop !1082

bb.k:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i.i, %bb.i, %bb.h
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.l:                                             ; preds = %._crit_edge103
  %i.ba = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i64 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i64, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = icmp sgt i32 %i.bb, 1
  br i1 %i.bc, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i, label %bb.m

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i, %bb.l
  invoke void @_ZN17QArrayDataPointerIPjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void @_ZN16QCPColorGradient8colorizeEPKdRK8QCPRangePjiib(ptr noundef align 8 dereferenceable_or_null(73) %i.ao, ptr noundef %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.bf, i32 noundef %i.i, i32 noundef 1, i1 noundef zeroext false)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %i.bg = icmp sgt i32 %i.ae, 1
  br i1 %i.bg, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %bb.n
  %i.bh = shl nsw i64 %i.j, 2
  %wide.trip.count121 = zext nneg i32 %i.ae to i64
  br label %bb.q

._crit_edge107:                                   ; preds = %bb.r, %bb.n
  %i.bi = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZN5QListIPjED2Ev.exit, label %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i

_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i:      ; preds = %._crit_edge107
  %i.bj = atomicrmw sub ptr %i.bi, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.bj, 1
  br i1 %.not.i.i, label %bb.o, label %_ZN5QListIPjED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i
  %i.bk = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bk, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIPjED2Ev.exit

_ZN5QListIPjED2Ev.exit:                           ; preds = %._crit_edge107, %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.loopexit

bb.p:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i, %bb.m, %._crit_edge103
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %bb.t

bb.q:                                             ; preds = %.lr.ph106, %bb.r
  %indvars.iv118 = phi i64 [ 1, %.lr.ph106 ], [ %indvars.iv.next119, %bb.r ] ; 2 uses
  %i.bm = load ptr, ptr %i.bd, align 8            ; 2 uses
  %i.bn = getelementptr [8 x i8], ptr %i.bm, i64 %indvars.iv118
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i.i.i66 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i66, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67: ; preds = %bb.q
  %i.bq = load atomic i32, ptr %i.bp monotonic, align 4
  %i.br = icmp sgt i32 %i.bq, 1
  br i1 %i.br, label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68, label %bb.r

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67, %bb.q
  invoke void @_ZN17QArrayDataPointerIPjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge unwind label %bb.s

_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge: ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68
  %.pre = load ptr, ptr %i.bd, align 8
  br label %bb.r

bb.r:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67
  %i.bs = phi ptr [ %.pre, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68._crit_edge ], [ %i.bm, %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.i.i.i.i67 ]
  %i.bt = load ptr, ptr %i.bs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bo, ptr noundef align 1 %i.bt, i64 noundef %i.bh, i1 noundef false) #51
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge107, label %bb.q, !llvm.loop !1083

bb.s:                                             ; preds = %_ZNK17QArrayDataPointerIPjE11needsDetachEv.exit.thread.i.i.i.i68
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p, %bb.k
  %.pn52 = phi { ptr, i32 } [ %i.az, %bb.k ], [ %i.bu, %bb.s ], [ %i.bl, %bb.p ]
  %i.bv = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i71, label %_ZN5QListIPjED2Ev.exit74, label %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72

_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72:    ; preds = %bb.t
  %i.bw = atomicrmw sub ptr %i.bv, i32 1 acq_rel, align 4
  %.not.i.i73 = icmp eq i32 %i.bw, 1
  br i1 %.not.i.i73, label %bb.u, label %_ZN5QListIPjED2Ev.exit74

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72
  %i.bx = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bx, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIPjED2Ev.exit74

_ZN5QListIPjED2Ev.exit74:                         ; preds = %bb.t, %_ZN17QArrayDataPointerIPjE5derefEv.exit.i.i72, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %bb.ah

bb.v:                                             ; preds = %._crit_edge
  %.sroa.4.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i77 to i32
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i75 to i32
  %reass.sub115 = sub i32 %.sroa.4.8.extract.trunc, %.sroa.0.0.extract.trunc ; 2 uses
  %i.by = add i32 %reass.sub115, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  invoke void @_ZN6QImageC1EiiNS_6FormatE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef %i.by, i32 noundef %i.i, i32 noundef 6)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr i8, ptr %0, i64 440
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %1) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %1, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  store ptr null, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %0, i64 456       ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  store ptr %i.cc, ptr %i.cd, align 8
  store ptr %i.ce, ptr %i.ca, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %1) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #51
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br i1 %i.p, label %.lr.ph114, label %.loopexit

.lr.ph114:                                        ; preds = %bb.w
  %i.cf = add nsw i32 %i.i, -1                    ; 2 uses
  %i.cg = uitofp nneg i32 %i.cf to double
  %i.ch = icmp ult i32 %reass.sub115, 2147483647
  %wide.trip.count131 = zext nneg i32 %i.i to i64
  %wide.trip.count126 = zext i32 %i.by to i64     ; 3 uses
  %min.iters.check = icmp ult i32 %i.by, 8
  %n.vec = and i64 %wide.trip.count126, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count126
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.ah

bb.y:                                             ; preds = %.lr.ph114, %._crit_edge111
  %indvars.iv128 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next129, %._crit_edge111 ] ; 3 uses
  %i.cj = trunc nuw nsw i64 %indvars.iv128 to i32
  %i.ck = invoke noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24) %i.bz, i32 noundef %i.cj)
          to label %bb.z unwind label %bb.ad      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cl = load ptr, ptr %i.f, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 200
  %9 = trunc i64 %indvars.iv128 to i32
  %10 = sub i32 %i.cf, %9
  %11 = zext nneg i32 %10 to i64
  %i.cn = load ptr, ptr %3, align 8               ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i80, label %_ZN5QListIdE6detachEv.exit.i84, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81: ; preds = %bb.z
  %i.co = load atomic i32, ptr %i.cn monotonic, align 4
  %i.cp = icmp sgt i32 %i.co, 1
  br i1 %i.cp, label %_ZN5QListIdE6detachEv.exit.i84, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82

_ZN5QListIdE6detachEv.exit.i84:                   ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81, %bb.z
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %.noexc87 unwind label %bb.ae

.noexc87:                                         ; preds = %_ZN5QListIdE6detachEv.exit.i84
  %.pre.i85 = load ptr, ptr %3, align 8           ; 2 uses
  %.not.i.i.i.i.i86 = icmp eq ptr %.pre.i85, null
  br i1 %.not.i.i.i.i.i86, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82: ; preds = %.noexc87, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81
  %i.cq = phi ptr [ %.pre.i85, %.noexc87 ], [ %i.cn, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i81 ]
  %i.cr = load atomic i32, ptr %i.cq monotonic, align 4
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83, label %bb.aa

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82, %.noexc87
  invoke void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i82, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83
  %i.ct = load ptr, ptr %i.m, align 8
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %11
  %i.cv = load double, ptr %i.cu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %8, double noundef 0.000000e+00, double noundef %i.cg)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cw = invoke noundef i32 @_ZN16QCPColorGradient5colorEdRK8QCPRangeb(ptr noundef align 8 dereferenceable_or_null(73) %i.cm, double noundef %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext false)
          to label %bb.ac unwind label %bb.af     ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br i1 %i.ch, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.ac
  br i1 %min.iters.check, label %.lr.ph110.preheader144, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.ck, i64 %index ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !1084

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader144

.lr.ph110.preheader144:                           ; preds = %.lr.ph110.preheader, %middle.block
  %indvars.iv123.ph = phi i64 [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110, %middle.block, %bb.ac
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.loopexit, label %bb.y, !llvm.loop !1085

bb.ad:                                            ; preds = %bb.y
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i83, %_ZN5QListIdE6detachEv.exit.i84
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab, %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  br label %bb.ah

.lr.ph110:                                        ; preds = %.lr.ph110.preheader144, %.lr.ph110
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %.lr.ph110 ], [ %indvars.iv123.ph, %.lr.ph110.preheader144 ] ; 2 uses
  %i.dd = getelementptr [4 x i8], ptr %i.ck, i64 %indvars.iv123
  store i32 %i.cw, ptr %i.dd, align 4
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge111, label %.lr.ph110, !llvm.loop !1086

.loopexit:                                        ; preds = %._crit_edge111, %bb.w, %_ZN5QListIPjED2Ev.exit
  %i.de = getelementptr i8, ptr %0, i64 464
  store i8 0, ptr %i.de, align 8
  %i.df = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i90, label %_ZN5QListIdED2Ev.exit, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i:       ; preds = %.loopexit
  %i.dg = atomicrmw sub ptr %i.df, i32 1 acq_rel, align 4
  %.not.i.i91 = icmp eq i32 %i.dg, 1
  br i1 %.not.i.i91, label %bb.ag, label %_ZN5QListIdED2Ev.exit

bb.ag:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i
  %i.dh = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dh, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit

_ZN5QListIdED2Ev.exit:                            ; preds = %.loopexit, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %_ZNK5QRect7isEmptyEv.exit.thread

_ZNK5QRect7isEmptyEv.exit.thread:                 ; preds = %bb.a, %_ZNK5QRect7isEmptyEv.exit, %_ZN5QListIdED2Ev.exit
  ret void

bb.ah:                                            ; preds = %bb.ad, %bb.af, %bb.ae, %bb.x, %_ZN5QListIPjED2Ev.exit74, %bb.g, %bb.d
  %.pn54 = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn52, %_ZN5QListIPjED2Ev.exit74 ], [ %i.as, %bb.g ], [ %i.ci, %bb.x ], [ %i.da, %bb.ad ], [ %i.dc, %bb.af ], [ %i.db, %bb.ae ]
  %i.di = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i92 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i92, label %_ZN5QListIdED2Ev.exit95, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93:     ; preds = %bb.ah
  %i.dj = atomicrmw sub ptr %i.di, i32 1 acq_rel, align 4
  %.not.i.i94 = icmp eq i32 %i.dj, 1
  br i1 %.not.i.i94, label %bb.ai, label %_ZN5QListIdED2Ev.exit95

bb.ai:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93
  %i.dk = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.dk, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIdED2Ev.exit95

_ZN5QListIdED2Ev.exit95:                          ; preds = %bb.ah, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i93, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  resume { ptr, i32 } %.pn54
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN6QImageC1EiiNS_6FormatE(ptr noundef align 8 dereferenceable_or_null(24), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef align 8 dereferenceable(24) ptr @_ZN6QImageaSEOS_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %class.QImage, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @_ZN12QPaintDeviceC2Ev(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2) #51
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV6QImage, i64 16), ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  store ptr null, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  store ptr %i.c, ptr %i.d, align 8
  store ptr %i.e, ptr %i.a, align 8
  call void @_ZN6QImageD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable_or_null(24) %2) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZN6QImage8scanLineEi(ptr noundef align 8 dereferenceable_or_null(24), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN28QCPColorScaleAxisRectPrivate20axisSelectionChangedE6QFlagsIN7QCPAxis14SelectablePartEE(ptr noundef align 8 dereferenceable_or_null(465) %0, i32 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %2 = alloca %class.QList.211, align 8           ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 8, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN7QCPAxis8AxisTypeEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = icmp sgt i32 %i.g, 1
  br i1 %i.h, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %bb.b

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 4, ptr %i.c, align 4
  %i.i = load i64, ptr %i.e, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN7QCPAxis8AxisTypeEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %.noexc23 unwind label %bb.q

.noexc23:                                         ; preds = %bb.b
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  %.not.i.i.i.i.i.i.i20 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i20, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21: ; preds = %.noexc23
  %i.k = load atomic i32, ptr %i.j monotonic, align 4
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22, label %bb.c

_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22: ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21, %.noexc23
  invoke void @_ZN17QArrayDataPointerIN7QCPAxis8AxisTypeEE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS2_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.c unwind label %bb.q

bb.c:                                             ; preds = %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.i.i.i.i.i.i21, %_ZNK17QArrayDataPointerIN7QCPAxis8AxisTypeEE11needsDetachEv.exit.thread.i.i.i.i.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 1, ptr %i.b, align 4
  %i.m = load i64, ptr %i.e, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIN7QCPAxis8AxisTypeEE7emplaceIJRS2_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %2, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc29 unwind label %bb.q

.noexc29:                                         ; preds = %bb.c
  %i.n = load ptr, ptr %2, align 8                ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12QCPBarsGroup14unregisterBarsEP7QCPBars:bb.a
_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit17: ; preds = %bb.e
  %i.ai = getelementptr i8, ptr %.sroa.034.051.i.i.i.i.i, i64 24
  br label %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i

_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i: ; preds = %bb.b, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit15, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit17, %._crit_edge._crit_edge57.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i, %bb.g
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i = phi ptr [ %.sroa.034.1.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i.i ], [ %.sroa.034.0.lcssa.i.i.i.i.i, %bb.g ], [ %i.ai, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit17 ], [ %i.ah, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit15 ], [ %i.ag, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.034.051.i.i.i.i.i, %bb.b ] ; 3 uses
  %i.aj = icmp eq ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, %i.f
  br i1 %i.aj, label %_ZN5QListIP7QCPBarsE9removeOneIS1_EEbRKT_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i
  %i.ak = getelementptr i8, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, i64 8
  %i.al = tail call ptr @_ZN5QListIP7QCPBarsE5eraseENS2_14const_iteratorES3_(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %i.a, ptr %.sroa.010.0.in.sroa.speculated.i.i.i.i.i, ptr %i.ak) ; 0 uses
  br label %_ZN5QListIP7QCPBarsE9removeOneIS1_EEbRKT_.exit

_ZN5QListIP7QCPBarsE9removeOneIS1_EEbRKT_.exit:   ; preds = %._crit_edge.i.i.i.i.i, %_ZSt4findIN5QListIP7QCPBarsE14const_iteratorES2_ET_S5_S5_RKT0_.exit.i.i, %bb.j
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef double @_ZN12QCPBarsGroup14keyPixelOffsetEPK7QCPBarsd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(64) %0, ptr nofree noundef readonly captures(address) %1, double noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %class.QList.256, align 8           ; 15 uses
  %i.b = alloca double, align 8                   ; 10 uses
  %i.c = alloca double, align 8                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %3, i8 0, i64 24, i1 false)
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !noalias !1207 ; 6 uses
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1207 ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = load i64, ptr %i.h, align 8, !noalias !1207
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null        ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = atomicrmw add ptr %i.e, i32 1 acq_rel, align 4, !noalias !1207 ; 0 uses
  br label %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit

_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit: ; preds = %bb.a, %bb.b
  %.idx = shl i64 %i.i, 3                         ; 2 uses
  %i.k = getelementptr i8, ptr %i.g, i64 %.idx
  %.not8797 = icmp eq i64 %.idx, 0
  br i1 %.not8797, label %._crit_edge, label %.lr.ph99

.lr.ph99:                                         ; preds = %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %bb.i, %_ZN9QtPrivate21qMakeForeachContainerIR5QListIP7QCPBarsEEENS_17QForeachContainerINSt5decayIT_E4typeEEEOS8_.exit
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit, label %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i: ; preds = %._crit_edge
  %i.n = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.n, 1
  br i1 %.not.i.i.i, label %bb.c, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit

bb.c:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit

_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit: ; preds = %._crit_edge, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i, %bb.c
  %i.o = getelementptr i8, ptr %1, i64 248
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %.lr.ph101

bb.d:                                             ; preds = %.lr.ph99, %bb.i
  %.sroa.10.098 = phi ptr [ %i.g, %.lr.ph99 ], [ %i.aw, %bb.i ] ; 2 uses
  %i.r = load ptr, ptr %.sroa.10.098, align 8     ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 248
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZNK7QCPBars8barBelowEv.exit55
  %i.v = phi ptr [ %i.ae, %_ZNK7QCPBars8barBelowEv.exit55 ], [ %i.t, %bb.d ]
  %storemerge5093 = phi ptr [ %spec.select, %_ZNK7QCPBars8barBelowEv.exit55 ], [ %i.r, %bb.d ] ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 2 uses
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %_ZNK7QCPBars8barBelowEv.exit

_ZNK7QCPBars8barBelowEv.exit:                     ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %storemerge5093, i64 256
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not51 = icmp eq ptr %i.aa, null
  br i1 %.not51, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %_ZNK7QCPBars8barBelowEv.exit55

_ZNK7QCPBars8barBelowEv.exit55:                   ; preds = %_ZNK7QCPBars8barBelowEv.exit
  %i.ab = load atomic i32, ptr %i.w monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  %spec.select = select i1 %i.ac, ptr null, ptr %i.aa ; 3 uses
  %i.ad = getelementptr i8, ptr %spec.select, i64 248
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK7QCPBars8barBelowEv.exit.thread, label %.lr.ph

bb.e:                                             ; preds = %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59, label %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57

_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57: ; preds = %bb.e
  %i.ah = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i.i58 = icmp eq i32 %i.ah, 1
  br i1 %.not.i.i.i58, label %bb.f, label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.e, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59

_ZNK7QCPBars8barBelowEv.exit.thread:              ; preds = %_ZNK7QCPBars8barBelowEv.exit, %.lr.ph, %_ZNK7QCPBars8barBelowEv.exit55, %bb.d
  %storemerge50.lcssa = phi ptr [ %i.r, %bb.d ], [ %spec.select, %_ZNK7QCPBars8barBelowEv.exit55 ], [ %storemerge5093, %.lr.ph ], [ %storemerge5093, %_ZNK7QCPBars8barBelowEv.exit ] ; 2 uses
  %i.ai = load i64, ptr %i.l, align 8             ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread

bb.g:                                             ; preds = %_ZNK7QCPBars8barBelowEv.exit.thread
  %i.ak = load ptr, ptr %i.m, align 8             ; 3 uses
  %.idx159 = shl i64 %i.ai, 3                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 %.idx159
  %.not.i.i.i60153 = icmp eq i64 %.idx159, 0
  br i1 %.not.i.i.i60153, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread, label %.lr.ph155

bb.h:                                             ; preds = %.lr.ph155
  %i.am = getelementptr i8, ptr %i.an, i64 8      ; 2 uses
  %.not.i.i.i60 = icmp eq ptr %i.am, %i.al
  br i1 %.not.i.i.i60, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread, label %.lr.ph155, !llvm.loop !1204

.lr.ph155:                                        ; preds = %bb.g, %bb.h
  %i.an = phi ptr [ %i.am, %bb.h ], [ %i.ak, %bb.g ] ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.ao, %storemerge50.lcssa
  br i1 %i.ap, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit, label %bb.h, !llvm.loop !1204

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit: ; preds = %.lr.ph155
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ak to i64
  %i.as = sub i64 %i.aq, %i.ar
  %.not89 = icmp eq i64 %i.as, -8
  br i1 %.not89, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread, label %bb.i

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread: ; preds = %bb.h, %bb.g, %_ZNK7QCPBars8barBelowEv.exit.thread, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %storemerge50.lcssa, ptr %i.a, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIPK7QCPBarsE7emplaceIJRS3_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit.thread
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = icmp sgt i32 %i.au, 1
  br i1 %i.av, label %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIPK7QCPBarsE6appendES2_.exit

_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIPK7QCPBarsE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS3_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN5QListIPK7QCPBarsE6appendES2_.exit unwind label %bb.e

_ZN5QListIPK7QCPBarsE6appendES2_.exit:            ; preds = %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK17QArrayDataPointerIPK7QCPBarsE11needsDetachEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %_ZN5QListIPK7QCPBarsE6appendES2_.exit, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE8containsIS2_EEbRKT_.exit
  %i.aw = getelementptr i8, ptr %.sroa.10.098, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.aw, %i.k
  br i1 %.not87, label %._crit_edge, label %bb.d, !llvm.loop !1205

.lr.ph101:                                        ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit, %_ZNK7QCPBars8barBelowEv.exit63
  %i.ax = phi ptr [ %i.bg, %_ZNK7QCPBars8barBelowEv.exit63 ], [ %i.p, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit ]
  %storemerge100 = phi ptr [ %spec.select148, %_ZNK7QCPBars8barBelowEv.exit63 ], [ %1, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit ] ; 3 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 4      ; 2 uses
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %_ZNK7QCPBars8barBelowEv.exit62

_ZNK7QCPBars8barBelowEv.exit62:                   ; preds = %.lr.ph101
  %i.bb = getelementptr i8, ptr %storemerge100, i64 256
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %_ZNK7QCPBars8barBelowEv.exit63

_ZNK7QCPBars8barBelowEv.exit63:                   ; preds = %_ZNK7QCPBars8barBelowEv.exit62
  %i.bd = load atomic i32, ptr %i.ay monotonic, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %spec.select148 = select i1 %i.be, ptr null, ptr %i.bc ; 3 uses
  %i.bf = getelementptr i8, ptr %spec.select148, i64 248
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK7QCPBars8barBelowEv.exit62.thread, label %.lr.ph101

_ZNK7QCPBars8barBelowEv.exit62.thread:            ; preds = %_ZNK7QCPBars8barBelowEv.exit62, %.lr.ph101, %_ZNK7QCPBars8barBelowEv.exit63, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit
  %storemerge.lcssa = phi ptr [ %1, %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit ], [ %spec.select148, %_ZNK7QCPBars8barBelowEv.exit63 ], [ %storemerge100, %.lr.ph101 ], [ %storemerge100, %_ZNK7QCPBars8barBelowEv.exit62 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8            ; 6 uses
  %i.bk = icmp sgt i64 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread

bb.j:                                             ; preds = %_ZNK7QCPBars8barBelowEv.exit62.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 5 uses
  %.idx160 = shl i64 %i.bj, 3                     ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 %.idx160
  %.not.i.i156 = icmp eq i64 %.idx160, 0
  br i1 %.not.i.i156, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, label %.lr.ph158

bb.k:                                             ; preds = %.lr.ph158
  %i.bo = getelementptr i8, ptr %i.bp, i64 8      ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, %i.bn
  br i1 %.not.i.i, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, label %.lr.ph158, !llvm.loop !1204

.lr.ph158:                                        ; preds = %bb.j, %bb.k
  %i.bp = phi ptr [ %i.bo, %bb.k ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp eq ptr %i.bq, %storemerge.lcssa
  br i1 %i.br, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit, label %bb.k, !llvm.loop !1204

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit: ; preds = %.lr.ph158
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = ptrtoint ptr %i.bm to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = ashr exact i64 %i.bu, 3                 ; 2 uses
  %i.bw = trunc i64 %i.bv to i32                  ; 3 uses
  %i.bx = icmp sgt i32 %i.bw, -1
  br i1 %i.bx, label %bb.l, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread

bb.l:                                             ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit
  %i.by = and i64 %i.bj, 1
  %.not88 = icmp eq i64 %i.by, 0
  %.pre = and i64 %i.bv, 2147483647               ; 4 uses
  %.pre118 = add nsw i64 %i.bj, -1                ; 3 uses
  br i1 %.not88, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = lshr exact i64 %.pre118, 1
  %i.ca = icmp eq i64 %.pre, %i.bz
  br i1 %i.ca, label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  %4 = lshr i64 %.pre118, 1
  %.not45140 = icmp samesign ule i64 %.pre, %4    ; 2 uses
  %i.cb = select i1 %.not45140, i32 -1, i32 1
  %i.cc = trunc i64 %i.bj to i32
  %i.cd = ashr exact i32 %i.cc, 1
  %i.ce = sext i1 %.not45140 to i32
  %i.cf = add nsw i32 %i.cd, %i.ce                ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr [8 x i8], ptr %i.bm, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr noundef align 8 dereferenceable_or_null(64) %0, ptr noundef %i.ci, double noundef %2)
  %i.ck = call double @llvm.fmuladd.f64(double %i.cj, double 5.000000e-01, double 0.000000e+00)
  br label %bb.r

bb.o:                                             ; preds = %._crit_edge111, %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #51
  %5 = lshr exact i64 %.pre118, 1                 ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.bm, i64 %5
  %i.cn = load ptr, ptr %i.cm, align 8
  invoke void @_ZNK7QCPBars13getPixelWidthEdRdS0_(ptr noundef align 8 dereferenceable_or_null(280) %i.cn, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  %.not45.not = icmp samesign ugt i64 %.pre, %5
  %i.co = select i1 %.not45.not, i32 1, i32 -1    ; 2 uses
  %i.cp = trunc i64 %i.bj to i32
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = ashr exact i32 %i.cq, 1
  %i.cs = add nsw i32 %i.co, %i.cr
  %i.ct = load double, ptr %i.c, align 8
  %i.cu = load double, ptr %i.b, align 8
  %i.cv = fsub double %i.ct, %i.cu                ; 3 uses
  %i.cw = fcmp ult double %i.cv, 0.000000e+00
  %i.cx = fneg double %i.cv
  %i.cy = select i1 %i.cw, double %i.cx, double %i.cv
  %i.cz = load i64, ptr %i.bi, align 8
  %i.da = add i64 %i.cz, -1
  %i.db = sdiv i64 %i.da, 2
  %i.dc = load ptr, ptr %i.bl, align 8
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.db
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = call noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr noundef align 8 dereferenceable_or_null(64) %0, ptr noundef %i.de, double noundef %2)
  %i.dg = call double @llvm.fmuladd.f64(double %i.cy, double 5.000000e-01, double 0.000000e+00)
  %i.dh = fadd double %i.dg, %i.df
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %i.di = phi i32 [ %i.cb, %bb.n ], [ %i.co, %bb.q ] ; 3 uses
  %.035 = phi double [ %i.ck, %bb.n ], [ %i.dh, %bb.q ] ; 2 uses
  %.034 = phi i32 [ %i.cf, %bb.n ], [ %i.cs, %bb.q ] ; 2 uses
  %.not46106 = icmp eq i32 %.034, %i.bw
  br i1 %.not46106, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %bb.s, %bb.r
  %.1.lcssa = phi double [ %.035, %bb.r ], [ %i.eb, %bb.s ]
  %i.dj = load ptr, ptr %i.bl, align 8
  %i.dk = getelementptr [8 x i8], ptr %i.dj, i64 %.pre
  %i.dl = load ptr, ptr %i.dk, align 8
  invoke void @_ZNK7QCPBars13getPixelWidthEdRdS0_(ptr noundef align 8 dereferenceable_or_null(280) %i.dl, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.u unwind label %bb.o

.lr.ph110:                                        ; preds = %bb.r, %bb.s
  %.0108 = phi i32 [ %i.ec, %bb.s ], [ %.034, %bb.r ] ; 2 uses
  %.1107 = phi double [ %i.eb, %bb.s ], [ %.035, %bb.r ]
  %i.dm = sext i32 %.0108 to i64                  ; 2 uses
  %i.dn = load ptr, ptr %i.bl, align 8
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dm
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void @_ZNK7QCPBars13getPixelWidthEdRdS0_(ptr noundef align 8 dereferenceable_or_null(280) %i.dp, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.lr.ph110
  %i.dq = load double, ptr %i.c, align 8
  %i.dr = load double, ptr %i.b, align 8
  %i.ds = fsub double %i.dq, %i.dr                ; 3 uses
  %i.dt = fcmp ult double %i.ds, 0.000000e+00
  %i.du = fneg double %i.ds
  %i.dv = select i1 %i.dt, double %i.du, double %i.ds
  %i.dw = load ptr, ptr %i.bl, align 8
  %i.dx = getelementptr [8 x i8], ptr %i.dw, i64 %i.dm
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = call noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr noundef align 8 dereferenceable_or_null(64) %0, ptr noundef %i.dy, double noundef %2)
  %i.ea = fadd double %.1107, %i.dv
  %i.eb = fadd double %i.dz, %i.ea                ; 2 uses
  %i.ec = add i32 %.0108, %i.di                   ; 2 uses
  %.not46 = icmp eq i32 %i.ec, %i.bw
  br i1 %.not46, label %._crit_edge111, label %.lr.ph110, !llvm.loop !1206

bb.t:                                             ; preds = %.lr.ph110
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.u:                                             ; preds = %._crit_edge111
  %i.ee = load double, ptr %i.c, align 8
  %i.ef = load double, ptr %i.b, align 8
  %i.eg = fsub double %i.ee, %i.ef                ; 3 uses
  %i.eh = fcmp ult double %i.eg, 0.000000e+00
  %i.ei = fneg double %i.eg
  %i.ej = select i1 %i.eh, double %i.ei, double %i.eg
  %i.ek = getelementptr i8, ptr %storemerge.lcssa, i64 112
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.en = getelementptr i8, ptr %i.el, i64 4
  %i.eo = load atomic i32, ptr %i.en monotonic, align 4
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eq = getelementptr i8, ptr %storemerge.lcssa, i64 120
  %i.er = load ptr, ptr %i.eq, align 8
  br label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit

_ZNK20QCPAbstractPlottable7keyAxisEv.exit:        ; preds = %bb.w, %bb.v, %bb.u
  %i.es = phi ptr [ %i.er, %bb.w ], [ null, %bb.v ], [ null, %bb.u ] ; 2 uses
  %i.et = call double @llvm.fmuladd.f64(double %i.ej, double 5.000000e-01, double %.1.lcssa)
  %i.eu = getelementptr i8, ptr %i.es, i64 320
  %i.ev = load i8, ptr %i.eu, align 8, !range !175, !noundef !176
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = getelementptr i8, ptr %i.es, i64 76
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = icmp ne i32 %i.ey, 2
  %.not.i = xor i1 %i.ez, %i.ew
  %i.fa = sub nsw i32 0, %i.di
  %i.fb = select i1 %.not.i, i32 %i.di, i32 %i.fa
  %i.fc = sitofp i32 %i.fb to double
  %i.fd = fmul double %i.et, %i.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  br label %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread

bb.x:                                             ; preds = %bb.t, %bb.o
  %.pn = phi { ptr, i32 } [ %i.ed, %bb.t ], [ %i.cl, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #51
  br label %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59

_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread: ; preds = %bb.k, %bb.j, %_ZNK7QCPBars8barBelowEv.exit62.thread, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, %bb.m
  %.036 = phi double [ 0.000000e+00, %bb.m ], [ %i.fd, %_ZNK20QCPAbstractPlottable7keyAxisEv.exit ], [ 0.000000e+00, %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit ], [ 0.000000e+00, %_ZNK7QCPBars8barBelowEv.exit62.thread ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ]
  %i.fe = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i64 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i64, label %_ZN5QListIPK7QCPBarsED2Ev.exit, label %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i: ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread
  %i.ff = atomicrmw sub ptr %i.fe, i32 1 acq_rel, align 4
  %.not.i.i65 = icmp eq i32 %i.ff, 1
  br i1 %.not.i.i65, label %bb.y, label %_ZN5QListIPK7QCPBarsED2Ev.exit

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i
  %i.fg = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fg, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIPK7QCPBarsED2Ev.exit

_ZN5QListIPK7QCPBarsED2Ev.exit:                   ; preds = %_ZNK23QListSpecialMethodsBaseIPK7QCPBarsE7indexOfIS2_EExRKT_x.exit.thread, %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  ret double %.036

_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59: ; preds = %bb.x, %bb.e, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57, %bb.f
  %.pn52.pn = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %.pn, %bb.x ], [ %i.ag, %bb.e ], [ %i.ag, %_ZN17QArrayDataPointerIP7QCPBarsE5derefEv.exit.i.i.i57 ]
  %i.fh = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i.i66, label %_ZN5QListIPK7QCPBarsED2Ev.exit69, label %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67

_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67: ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59
  %i.fi = atomicrmw sub ptr %i.fh, i32 1 acq_rel, align 4
  %.not.i.i68 = icmp eq i32 %i.fi, 1
  br i1 %.not.i.i68, label %bb.z, label %_ZN5QListIPK7QCPBarsED2Ev.exit69

bb.z:                                             ; preds = %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67
  %i.fj = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fj, i64 noundef 8, i64 noundef 8) #51
  br label %_ZN5QListIPK7QCPBarsED2Ev.exit69

_ZN5QListIPK7QCPBarsED2Ev.exit69:                 ; preds = %_ZN9QtPrivate17QForeachContainerI5QListIP7QCPBarsEED2Ev.exit59, %_ZN17QArrayDataPointerIPK7QCPBarsE5derefEv.exit.i.i67, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  resume { ptr, i32 } %.pn52.pn
}

; Function Attrs: mustprogress norecurse nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef double @_ZN12QCPBarsGroup15getPixelSpacingEPK7QCPBarsd(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(64) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2) local_unnamed_addr #36 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.o [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 32
  %i.d = load double, ptr %i.c, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 112
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 4        ; 2 uses
  %i.i = load atomic i32, ptr %i.h monotonic, align 4
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %1, i64 120
  %i.l = load ptr, ptr %i.k, align 8
  br label %_ZNK20QCPAbstractPlottable7keyAxisEv.exit

_ZNK20QCPAbstractPlottable7keyAxisEv.exit:        ; preds = %bb.d, %bb.e
  %i.m = phi ptr [ %i.l, %bb.e ], [ null, %bb.d ]
  %i.n = getelementptr i8, ptr %i.m, i64 76
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, 1
  %i.q = load atomic i32, ptr %i.h monotonic, align 4
  %i.r = icmp eq i32 %i.q, 0                      ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.h

_ZNK20QCPAbstractPlottable7keyAxisEv.exit.thread: ; preds = %bb.c
end_hunk_1
