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
