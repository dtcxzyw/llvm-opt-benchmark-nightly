inline.NumInlined: 1014
inline.NumDeleted: 526
begin_hunk_0_@_ZNK17SparkLineDelegate5paintEP8QPainterRK20QStyleOptionViewItemRK11QModelIndex:bb.a
  %i.aa = fmul nnan double %i.w, 6.000000e-01     ; 2 uses
  %i.ab = fmul nnan double %i.x, 4.000000e+00     ; 2 uses
  %i.ac = fcmp olt double %i.aa, %i.ab
  %.sroa.speculated = select i1 %i.ac, double %i.ab, double %i.aa ; 2 uses
  invoke void @_ZNK19QStyledItemDelegate5paintEP8QPainterRK20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(208) %2, ptr noundef align 8 dereferenceable(24) %3)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = fcmp olt double %i.z, 1.000000e+00
  %or.cond = or i1 %i.ag, %i.af
  %i.ah = icmp slt i32 %i.v, 1
  %or.cond3 = or i1 %i.ah, %or.cond
  br i1 %or.cond3, label %bb.cw, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ai = sitofp i64 %i.ae to double
  %i.aj = fcmp olt double %i.z, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.r

bb.k:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %_ZN5QListIiED2Ev.exit274

bb.l:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit159
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %10) #21
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.m ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %_ZN5QListIiED2Ev.exit270

bb.o:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.p:                                             ; preds = %bb.h
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.q:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.r:                                             ; preds = %.lr.ph, %bb.v
  %i.at = phi i64 [ %i.ae, %.lr.ph ], [ %i.bo, %bb.v ]
  %i.au = load ptr, ptr %7, align 8               ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i: ; preds = %bb.r
  %i.av = load atomic i32, ptr %i.au monotonic, align 4
  %i.aw = icmp sgt i32 %i.av, 1
  br i1 %i.aw, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i, label %_ZN5QListIiE11removeFirstEv.exit

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i, %bb.r
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i._ZN5QListIiE11removeFirstEv.exit_crit_edge unwind label %bb.s

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i._ZN5QListIiE11removeFirstEv.exit_crit_edge: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i
  %.pre = load i64, ptr %i.ad, align 8
  br label %_ZN5QListIiE11removeFirstEv.exit

bb.s:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #22
  unreachable

_ZN5QListIiE11removeFirstEv.exit:                 ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i._ZN5QListIiE11removeFirstEv.exit_crit_edge, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i
  %i.az = phi i64 [ %.pre, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i._ZN5QListIiE11removeFirstEv.exit_crit_edge ], [ %i.at, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i ]
  %i.ba = load ptr, ptr %i.ak, align 8
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  store ptr %i.bb, ptr %i.ak, align 8
  %i.bc = add i64 %i.az, -1                       ; 3 uses
  store i64 %i.bc, ptr %i.ad, align 8
  %i.bd = load i64, ptr %i.al, align 8            ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.v, label %bb.t

bb.t:                                             ; preds = %_ZN5QListIiE11removeFirstEv.exit
  %i.bf = load ptr, ptr %9, align 8               ; 2 uses
  %.not.i.i.i160 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i160, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i161

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i161: ; preds = %bb.t
  %i.bg = load atomic i32, ptr %i.bf monotonic, align 4
  %i.bh = icmp sgt i32 %i.bg, 1
  br i1 %i.bh, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162, label %_ZN5QListIiE11removeFirstEv.exit163

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i161, %bb.t
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162._ZN5QListIiE11removeFirstEv.exit163_crit_edge unwind label %bb.u

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162._ZN5QListIiE11removeFirstEv.exit163_crit_edge: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162
  %.pre330 = load i64, ptr %i.al, align 8
  %.pre331.pre = load i64, ptr %i.ad, align 8
  br label %_ZN5QListIiE11removeFirstEv.exit163

bb.u:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #22
  unreachable

_ZN5QListIiE11removeFirstEv.exit163:              ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162._ZN5QListIiE11removeFirstEv.exit163_crit_edge, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i161
  %.pre331 = phi i64 [ %.pre331.pre, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162._ZN5QListIiE11removeFirstEv.exit163_crit_edge ], [ %i.bc, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i161 ]
  %i.bk = phi i64 [ %.pre330, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i162._ZN5QListIiE11removeFirstEv.exit163_crit_edge ], [ %i.bd, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i161 ]
  %i.bl = load ptr, ptr %i.am, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 4
  store ptr %i.bm, ptr %i.am, align 8
  %i.bn = add i64 %i.bk, -1
  store i64 %i.bn, ptr %i.al, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZN5QListIiE11removeFirstEv.exit163, %_ZN5QListIiE11removeFirstEv.exit
  %i.bo = phi i64 [ %.pre331, %_ZN5QListIiE11removeFirstEv.exit163 ], [ %i.bc, %_ZN5QListIiE11removeFirstEv.exit ] ; 2 uses
  %i.bp = sitofp i64 %i.bo to double
  %i.bq = fcmp olt double %i.z, %i.bp
  br i1 %i.bq, label %bb.r, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.v, %.preheader
  %i.br = load ptr, ptr %7, align 8               ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i: ; preds = %._crit_edge
  %i.bs = load atomic i32, ptr %i.br monotonic, align 4
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i, label %.thread392

.thread392:                                       ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  br label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i, %._crit_edge
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i
  %.pre332 = load ptr, ptr %7, align 8            ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not.i.i.i.i165 = icmp eq ptr %.pre332, null
  br i1 %.not.i.i.i.i165, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166: ; preds = %.thread392, %bb.w
  %i.by = phi ptr [ %i.bv, %.thread392 ], [ %i.bx, %bb.w ] ; 3 uses
  %i.bz = phi ptr [ %i.bu, %.thread392 ], [ %i.bw, %bb.w ] ; 2 uses
  %i.ca = phi ptr [ %i.br, %.thread392 ], [ %.pre332, %bb.w ]
  %i.cb = load atomic i32, ptr %i.ca monotonic, align 4
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167, label %_ZN5QListIiE3endEv.exit

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166, %bb.w
  %i.cd = phi ptr [ %i.by, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166 ], [ %i.bx, %bb.w ]
  %i.ce = phi ptr [ %i.bz, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166 ], [ %i.bw, %bb.w ] ; 2 uses
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %7, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167._ZN5QListIiE3endEv.exit_crit_edge unwind label %bb.y

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167._ZN5QListIiE3endEv.exit_crit_edge: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167
  %.pre333 = load ptr, ptr %i.ce, align 8
  br label %_ZN5QListIiE3endEv.exit

_ZN5QListIiE3endEv.exit:                          ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167._ZN5QListIiE3endEv.exit_crit_edge, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166
  %i.cf = phi ptr [ %i.cd, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167._ZN5QListIiE3endEv.exit_crit_edge ], [ %i.by, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166 ] ; 5 uses
  %i.cg = phi ptr [ %i.ce, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167._ZN5QListIiE3endEv.exit_crit_edge ], [ %i.bz, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166 ]
  %i.ch = phi ptr [ %.pre333, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167._ZN5QListIiE3endEv.exit_crit_edge ], [ %i.by, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i166 ] ; 2 uses
  %i.ci = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %.not294305 = icmp eq ptr %i.cf, %i.cj
  br i1 %.not294305, label %._crit_edge309, label %.lr.ph308.preheader

.lr.ph308.preheader:                              ; preds = %_ZN5QListIiE3endEv.exit
  %i.ck = ptrtoaddr ptr %i.ch to i64
  %22 = ptrtoaddr ptr %i.cf to i64
  %i.cl = shl i64 %i.ci, 2
  %23 = sub i64 %i.ck, %22
  %i.cm = add i64 %23, %i.cl
  %i.cn = add i64 %i.cm, -4                       ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cn, 28
  br i1 %min.iters.check, label %.lr.ph308.preheader428, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph308.preheader
  %n.vec = and i64 %i.cp, 9223372036854775800     ; 3 uses
  %i.cq = shl i64 %n.vec, 2
  %i.cr = getelementptr i8, ptr %i.cf, i64 %i.cq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cu, %vector.body ]
  %vec.phi402 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.cv, %vector.body ]
  %i.cs = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.cf, i64 %i.cs ; 2 uses
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4
  %wide.load403 = load <4 x i32>, ptr %i.ct, align 4
  %i.cu = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.cv = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load403, <4 x i32> %vec.phi402) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cu, <4 x i32> %i.cv)
  %i.cx = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.cp, %n.vec
  br i1 %cmp.n, label %._crit_edge309, label %.lr.ph308.preheader428

.lr.ph308.preheader428:                           ; preds = %.lr.ph308.preheader, %middle.block
  %.0112307.ph = phi i32 [ 1, %.lr.ph308.preheader ], [ %i.cx, %middle.block ]
  %.sroa.0290.0306.ph = phi ptr [ %i.cf, %.lr.ph308.preheader ], [ %i.cr, %middle.block ]
  br label %.lr.ph308

._crit_edge309:                                   ; preds = %.lr.ph308, %middle.block, %_ZN5QListIiE3endEv.exit
  %.0112.lcssa = phi i32 [ 1, %_ZN5QListIiE3endEv.exit ], [ %i.cx, %middle.block ], [ %spec.select, %.lr.ph308 ] ; 3 uses
  %i.cy = load ptr, ptr %9, align 8               ; 3 uses
  %.not.i.i.i.i169 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i169, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i171, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i170

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i170: ; preds = %._crit_edge309
  %i.cz = load atomic i32, ptr %i.cy monotonic, align 4
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i171, label %.thread394

.thread394:                                       ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i170
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  br label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i171: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i170, %._crit_edge309
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.z unwind label %bb.aa

bb.x:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.y:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i167
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.lr.ph308:                                        ; preds = %.lr.ph308.preheader428, %.lr.ph308
  %.0112307 = phi i32 [ %spec.select, %.lr.ph308 ], [ %.0112307.ph, %.lr.ph308.preheader428 ]
  %.sroa.0290.0306 = phi ptr [ %i.dg, %.lr.ph308 ], [ %.sroa.0290.0306.ph, %.lr.ph308.preheader428 ] ; 2 uses
  %i.df = load i32, ptr %.sroa.0290.0306, align 4
  %spec.select = call i32 @llvm.smax.i32(i32 %i.df, i32 %.0112307) ; 2 uses
  %i.dg = getelementptr i8, ptr %.sroa.0290.0306, i64 4 ; 2 uses
  %.not294 = icmp eq ptr %i.dg, %i.cj
  br i1 %.not294, label %._crit_edge309, label %.lr.ph308, !llvm.loop !18

bb.z:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i171
  %.pre334 = load ptr, ptr %9, align 8            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8            ; 2 uses
  %.not.i.i.i.i174 = icmp eq ptr %.pre334, null
  br i1 %.not.i.i.i.i174, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175: ; preds = %.thread394, %bb.z
  %i.dj = phi ptr [ %i.dc, %.thread394 ], [ %i.di, %bb.z ] ; 3 uses
  %i.dk = phi ptr [ %i.db, %.thread394 ], [ %i.dh, %bb.z ] ; 2 uses
  %i.dl = phi ptr [ %i.cy, %.thread394 ], [ %.pre334, %bb.z ]
  %i.dm = load atomic i32, ptr %i.dl monotonic, align 4
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176, label %_ZN5QListIiE3endEv.exit178

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175, %bb.z
  %i.do = phi ptr [ %i.dj, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175 ], [ %i.di, %bb.z ]
  %i.dp = phi ptr [ %i.dk, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175 ], [ %i.dh, %bb.z ] ; 2 uses
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %9, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176._ZN5QListIiE3endEv.exit178_crit_edge unwind label %bb.ab

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176._ZN5QListIiE3endEv.exit178_crit_edge: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176
  %.pre335 = load ptr, ptr %i.dp, align 8
  br label %_ZN5QListIiE3endEv.exit178

_ZN5QListIiE3endEv.exit178:                       ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176._ZN5QListIiE3endEv.exit178_crit_edge, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175
  %i.dq = phi ptr [ %i.do, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176._ZN5QListIiE3endEv.exit178_crit_edge ], [ %i.dj, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175 ] ; 5 uses
  %i.dr = phi ptr [ %i.dp, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176._ZN5QListIiE3endEv.exit178_crit_edge ], [ %i.dk, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175 ]
  %i.ds = phi ptr [ %.pre335, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176._ZN5QListIiE3endEv.exit178_crit_edge ], [ %i.dj, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i175 ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8            ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.ds, i64 %i.du ; 2 uses
  %.not295310 = icmp eq ptr %i.dq, %i.dv
  br i1 %.not295310, label %._crit_edge315, label %.lr.ph314.preheader

.lr.ph314.preheader:                              ; preds = %_ZN5QListIiE3endEv.exit178
  %i.dw = ptrtoaddr ptr %i.ds to i64
  %24 = ptrtoaddr ptr %i.dq to i64
  %i.dx = shl i64 %i.du, 2
  %25 = sub i64 %i.dw, %24
  %i.dy = add i64 %25, %i.dx
  %i.dz = add i64 %i.dy, -4                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 2
  %i.eb = add nuw nsw i64 %i.ea, 1                ; 2 uses
  %min.iters.check405 = icmp ult i64 %i.dz, 28
  br i1 %min.iters.check405, label %.lr.ph314.preheader424, label %vector.ph406

vector.ph406:                                     ; preds = %.lr.ph314.preheader
  %n.vec407 = and i64 %i.eb, 9223372036854775800  ; 3 uses
  %i.ec = shl i64 %n.vec407, 2
  %i.ed = getelementptr i8, ptr %i.dq, i64 %i.ec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0112.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body408

vector.body408:                                   ; preds = %vector.body408, %vector.ph406
  %index409 = phi i64 [ 0, %vector.ph406 ], [ %index.next417, %vector.body408 ] ; 2 uses
  %vec.phi410 = phi <4 x i32> [ %broadcast.splat, %vector.ph406 ], [ %i.eg, %vector.body408 ]
  %vec.phi411 = phi <4 x i32> [ %broadcast.splat, %vector.ph406 ], [ %i.eh, %vector.body408 ]
  %vec.phi412 = phi <4 x i1> [ zeroinitializer, %vector.ph406 ], [ %i.ek, %vector.body408 ]
  %vec.phi413 = phi <4 x i1> [ zeroinitializer, %vector.ph406 ], [ %i.el, %vector.body408 ]
  %i.ee = shl i64 %index409, 2
  %next.gep414 = getelementptr i8, ptr %i.dq, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep414, i64 16
  %wide.load415 = load <4 x i32>, ptr %next.gep414, align 4 ; 2 uses
  %wide.load416 = load <4 x i32>, ptr %i.ef, align 4 ; 2 uses
  %i.eg = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load415, <4 x i32> %vec.phi410) ; 2 uses
  %i.eh = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load416, <4 x i32> %vec.phi411) ; 2 uses
  %i.ei = icmp sgt <4 x i32> %wide.load415, zeroinitializer
  %i.ej = icmp sgt <4 x i32> %wide.load416, zeroinitializer
  %i.ek = or <4 x i1> %vec.phi412, %i.ei          ; 2 uses
  %i.el = or <4 x i1> %vec.phi413, %i.ej          ; 2 uses
  %index.next417 = add nuw i64 %index409, 8       ; 2 uses
  %i.em = icmp eq i64 %index.next417, %n.vec407
  br i1 %i.em, label %middle.block418, label %vector.body408, !llvm.loop !19

middle.block418:                                  ; preds = %vector.body408
  %rdx.minmax419 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eg, <4 x i32> %i.eh)
  %i.en = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax419) ; 2 uses
  %bin.rdx = or <4 x i1> %i.el, %i.ek
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.eo = bitcast <4 x i1> %bin.rdx.fr to i4
  %i.ep = icmp ne i4 %i.eo, 0                     ; 2 uses
  %cmp.n420 = icmp eq i64 %i.eb, %n.vec407
  br i1 %cmp.n420, label %._crit_edge315, label %.lr.ph314.preheader424

.lr.ph314.preheader424:                           ; preds = %.lr.ph314.preheader, %middle.block418
  %.2114313.ph = phi i32 [ %.0112.lcssa, %.lr.ph314.preheader ], [ %i.en, %middle.block418 ]
  %.0116312.ph = phi i1 [ false, %.lr.ph314.preheader ], [ %i.ep, %middle.block418 ]
  %.sroa.0287.0311.ph = phi ptr [ %i.dq, %.lr.ph314.preheader ], [ %i.ed, %middle.block418 ]
  br label %.lr.ph314

._crit_edge315:                                   ; preds = %.lr.ph314, %middle.block418, %_ZN5QListIiE3endEv.exit178
  %.0116.lcssa = phi i1 [ false, %_ZN5QListIiE3endEv.exit178 ], [ %i.ep, %middle.block418 ], [ %.1117, %.lr.ph314 ]
  %.2114.lcssa = phi i32 [ %.0112.lcssa, %_ZN5QListIiE3endEv.exit178 ], [ %i.en, %middle.block418 ], [ %spec.select153, %.lr.ph314 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %12, i8 0, i64 24, i1 false)
  %i.eq = uitofp nneg i32 %i.v to double          ; 2 uses
  %.val156 = load ptr, ptr %i.cg, align 8
  %.val157 = load i64, ptr %i.ad, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_118buildSparkSegmentsERK5QListIiEdddiRS0_I9QPolygonFERS0_I6QLineFE(ptr %.val156, i64 %.val157, double noundef %i.x, double noundef %.sroa.speculated, double noundef %i.eq, i32 noundef %.2114.lcssa, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.ac unwind label %bb.ap

bb.aa:                                            ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i171
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ab:                                            ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i176
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.lr.ph314:                                        ; preds = %.lr.ph314.preheader424, %.lr.ph314
  %.2114313 = phi i32 [ %spec.select153, %.lr.ph314 ], [ %.2114313.ph, %.lr.ph314.preheader424 ]
  %.0116312 = phi i1 [ %.1117, %.lr.ph314 ], [ %.0116312.ph, %.lr.ph314.preheader424 ]
  %.sroa.0287.0311 = phi ptr [ %i.ev, %.lr.ph314 ], [ %.sroa.0287.0311.ph, %.lr.ph314.preheader424 ] ; 2 uses
  %i.et = load i32, ptr %.sroa.0287.0311, align 4 ; 2 uses
  %spec.select153 = call i32 @llvm.smax.i32(i32 %i.et, i32 %.2114313) ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  %.1117 = select i1 %i.eu, i1 true, i1 %.0116312 ; 2 uses
  %i.ev = getelementptr i8, ptr %.sroa.0287.0311, i64 4 ; 2 uses
  %.not295 = icmp eq ptr %i.ev, %i.dv
  br i1 %.not295, label %._crit_edge315, label %.lr.ph314, !llvm.loop !20

bb.ac:                                            ; preds = %._crit_edge315
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZN20QStyleOptionViewItemC2ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(208) %13, ptr noundef align 8 dereferenceable(208) %2)
          to label %bb.ad unwind label %bb.aq

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZNK19QStyledItemDelegate15initStyleOptionEP20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef nonnull %13, ptr noundef align 8 dereferenceable(24) %3)
          to label %bb.ae unwind label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN8QPainter4saveEv(ptr noundef align 8 dereferenceable_or_null(8) %1)
          to label %bb.af unwind label %bb.ar

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ew = invoke noundef ptr @_ZN12QApplication5styleEv()
          to label %bb.ag unwind label %bb.as

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZNK7QObject10objectNameEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %14, ptr noundef align 8 dereferenceable_or_null(16) %i.ew)
          to label %bb.ah unwind label %bb.as

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %6, i64 5, ptr nonnull @.str)
          to label %bb.ai unwind label %bb.at

bb.ai:                                            ; preds = %bb.ah
  %i.ex = load <2 x ptr>, ptr %6, align 16
  store <2 x ptr> %i.ex, ptr %15, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fa = load i64, ptr %i.ez, align 16
  store i64 %i.fa, ptr %i.ey, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.fb = invoke noundef i64 @_ZNK7QString7indexOfERKS_xN2Qt15CaseSensitivityE(ptr noundef nonnull align 8 dereferenceable_or_null(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 noundef 0, i32 noundef 1)
          to label %bb.aj unwind label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %.not296 = icmp eq i64 %i.fb, -1
  %i.fc = load ptr, ptr %15, align 16             ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i181, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.aj
  %i.fd = atomicrmw sub ptr %i.fc, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.fd, 1
  br i1 %.not.i.i, label %bb.ak, label %_ZN7QStringD2Ev.exit

bb.ak:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.fe = load ptr, ptr %15, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fe, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.aj, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  %i.ff = load ptr, ptr %14, align 8              ; 2 uses
  %.not.i.i.i182 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i182, label %_ZN7QStringD2Ev.exit185, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183:   ; preds = %_ZN7QStringD2Ev.exit
  %i.fg = atomicrmw sub ptr %i.ff, i32 1 acq_rel, align 4
  %.not.i.i184 = icmp eq i32 %i.fg, 1
  br i1 %.not.i.i184, label %bb.al, label %_ZN7QStringD2Ev.exit185

bb.al:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183
  %i.fh = load ptr, ptr %14, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.fh, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit185

_ZN7QStringD2Ev.exit185:                          ; preds = %_ZN7QStringD2Ev.exit, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i183, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br i1 %.not296, label %.critedge, label %bb.am

bb.am:                                            ; preds = %_ZN7QStringD2Ev.exit185
  %i.fi = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  %i.fj = invoke noundef align 8 dereferenceable(8) ptr @_ZNK8QPalette5brushENS_10ColorGroupENS_9ColorRoleE(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fi, i32 noundef 0, i32 noundef 6)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = getelementptr i8, ptr %i.fk, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN6QBrushC1ERK6QColorN2Qt10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %5, ptr noundef align 4 dereferenceable(14) %i.fl, i32 noundef 1)
          to label %.noexc187 unwind label %bb.ar

.noexc187:                                        ; preds = %bb.an
  invoke void @_ZN8QPalette8setBrushENS_10ColorGroupENS_9ColorRoleERK6QBrush(ptr noundef nonnull align 8 dereferenceable_or_null(12) %i.fi, i32 noundef 5, i32 noundef 13, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %_ZN8QPalette8setColorENS_10ColorGroupENS_9ColorRoleERK6QColor.exit unwind label %bb.ao

bb.ao:                                            ; preds = %.noexc187
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.body

_ZN8QPalette8setColorENS_10ColorGroupENS_9ColorRoleERK6QColor.exit: ; preds = %.noexc187
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %.critedge

bb.ap:                                            ; preds = %._crit_edge315
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.aq:                                            ; preds = %bb.ac
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.ar:                                            ; preds = %bb.an, %bb.am, %bb.ae, %bb.ad
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %.body

end_hunk_0
