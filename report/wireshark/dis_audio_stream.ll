Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/dis_audio_stream?download=true
inline.NumInlined: 326
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN14DisAudioStream15buildVisualDataEPK15_disstream_info:bb.a
  br i1 %i.cn, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i87
  %i.co = getelementptr i8, ptr %i.cl, i64 8
  %i.cp = load i64, ptr %i.co, align 8
  br label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i88

_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i88: ; preds = %bb.w, %bb.v
  %i.cq = phi i64 [ %i.cp, %bb.w ], [ 0, %bb.v ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.cr = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.k, i64 noundef 8, i64 noundef 8, i64 noundef %i.cq, i32 noundef 1) #19 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cr, i64 8) ]
  %i.cs = load ptr, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  %i.ct = load ptr, ptr %i.ci, align 8            ; 3 uses
  store ptr %i.cs, ptr %i.ci, align 8
  %i.cu = getelementptr i8, ptr %0, i64 232
  store ptr %i.cr, ptr %i.cu, align 8
  store i64 0, ptr %i.cj, align 8
  %.not.i.i.i89 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i89, label %_ZN5QListIdE5clearEv.exit92, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i90

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i90:     ; preds = %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i88
  %i.cv = atomicrmw sub ptr %i.ct, i32 1 acq_rel, align 4
  %.not.i2.i91 = icmp eq i32 %i.cv, 1
  br i1 %.not.i2.i91, label %bb.x, label %_ZN5QListIdE5clearEv.exit92

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i90
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.ct, i64 noundef 8, i64 noundef 8) #19
  br label %_ZN5QListIdE5clearEv.exit92

bb.y:                                             ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i87
  store i64 0, ptr %i.cj, align 8
  br label %_ZN5QListIdE5clearEv.exit92

_ZN5QListIdE5clearEv.exit92:                      ; preds = %_ZN5QListIdE5clearEv.exit84, %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i88, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i90, %bb.x, %bb.y
  %i.cw = getelementptr i8, ptr %0, i64 248       ; 6 uses
  %i.cx = getelementptr i8, ptr %0, i64 264       ; 4 uses
  %i.cy = load i64, ptr %i.cx, align 8
  %.not.i93 = icmp eq i64 %i.cy, 0
  br i1 %.not.i93, label %_ZN5QListIdE5clearEv.exit100, label %bb.z

bb.z:                                             ; preds = %_ZN5QListIdE5clearEv.exit92
  %i.cz = load ptr, ptr %i.cw, align 8            ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i94, label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i96, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i95

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i95: ; preds = %bb.z
  %i.da = load atomic i32, ptr %i.cz monotonic, align 4
  %i.db = icmp sgt i32 %i.da, 1
  br i1 %i.db, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i95
  %i.dc = getelementptr i8, ptr %i.cz, i64 8
  %i.dd = load i64, ptr %i.dc, align 8
  br label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i96

_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i96: ; preds = %bb.aa, %bb.z
  %i.de = phi i64 [ %i.dd, %bb.aa ], [ 0, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  %i.df = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.j, i64 noundef 8, i64 noundef 8, i64 noundef %i.de, i32 noundef 1) #19 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.df, i64 8) ]
  %i.dg = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  %i.dh = load ptr, ptr %i.cw, align 8            ; 3 uses
  store ptr %i.dg, ptr %i.cw, align 8
  %i.di = getelementptr i8, ptr %0, i64 256
  store ptr %i.df, ptr %i.di, align 8
  store i64 0, ptr %i.cx, align 8
  %.not.i.i.i97 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i97, label %_ZN5QListIdE5clearEv.exit100, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i98

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i98:     ; preds = %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i96
  %i.dj = atomicrmw sub ptr %i.dh, i32 1 acq_rel, align 4
  %.not.i2.i99 = icmp eq i32 %i.dj, 1
  br i1 %.not.i2.i99, label %bb.ab, label %_ZN5QListIdE5clearEv.exit100

bb.ab:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i98
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dh, i64 noundef 8, i64 noundef 8) #19
  br label %_ZN5QListIdE5clearEv.exit100

bb.ac:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i95
  store i64 0, ptr %i.cx, align 8
  br label %_ZN5QListIdE5clearEv.exit100

_ZN5QListIdE5clearEv.exit100:                     ; preds = %_ZN5QListIdE5clearEv.exit92, %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i96, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i98, %bb.ab, %bb.ac
  %i.dk = getelementptr i8, ptr %0, i64 272       ; 6 uses
  %i.dl = getelementptr i8, ptr %0, i64 288       ; 4 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %.not.i101 = icmp eq i64 %i.dm, 0
  br i1 %.not.i101, label %_ZN5QListIdE5clearEv.exit108, label %bb.ad

bb.ad:                                            ; preds = %_ZN5QListIdE5clearEv.exit100
  %i.dn = load ptr, ptr %i.dk, align 8            ; 3 uses
  %.not.i.i102 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i102, label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i104, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i103

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i103: ; preds = %bb.ad
  %i.do = load atomic i32, ptr %i.dn monotonic, align 4
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i103
  %i.dq = getelementptr i8, ptr %i.dn, i64 8
  %i.dr = load i64, ptr %i.dq, align 8
  br label %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i104

_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i104: ; preds = %bb.ae, %bb.ad
  %i.ds = phi i64 [ %i.dr, %bb.ae ], [ 0, %bb.ad ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.dt = call noalias noundef ptr @_ZN10QArrayData8allocateEPPS_xxxNS_16AllocationOptionE(ptr noundef nonnull %i.i, i64 noundef 8, i64 noundef 8, i64 noundef %i.ds, i32 noundef 1) #19 ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dt, i64 8) ]
  %i.du = load ptr, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  %i.dv = load ptr, ptr %i.dk, align 8            ; 3 uses
  store ptr %i.du, ptr %i.dk, align 8
  %i.dw = getelementptr i8, ptr %0, i64 280
  store ptr %i.dt, ptr %i.dw, align 8
  store i64 0, ptr %i.dl, align 8
  %.not.i.i.i105 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i105, label %_ZN5QListIdE5clearEv.exit108, label %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i106

_ZN17QArrayDataPointerIdE5derefEv.exit.i.i106:    ; preds = %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i104
  %i.dx = atomicrmw sub ptr %i.dv, i32 1 acq_rel, align 4
  %.not.i2.i107 = icmp eq i32 %i.dx, 1
  br i1 %.not.i2.i107, label %bb.af, label %_ZN5QListIdE5clearEv.exit108

bb.af:                                            ; preds = %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i106
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef nonnull %i.dv, i64 noundef 8, i64 noundef 8) #19
  br label %_ZN5QListIdE5clearEv.exit108

bb.ag:                                            ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i103
  store i64 0, ptr %i.dl, align 8
  br label %_ZN5QListIdE5clearEv.exit108

_ZN5QListIdE5clearEv.exit108:                     ; preds = %_ZN5QListIdE5clearEv.exit100, %_ZN17QArrayDataPointerIdE17allocatedCapacityEv.exit.i104, %_ZN17QArrayDataPointerIdE5derefEv.exit.i.i106, %bb.af, %bb.ag
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.critedge, label %bb.ah

bb.ah:                                            ; preds = %_ZN5QListIdE5clearEv.exit108
  %i.dy = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8            ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eb = getelementptr i8, ptr %0, i64 32
  %i.ec = load i64, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ee = getelementptr i8, ptr %0, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.ef, null
  %spec.select.i.i = select i1 %.not.i.i109, ptr @_ZN10QByteArray6_emptyE, ptr %i.ef ; 3 uses
  %i.eg = lshr i64 %i.ec, 1
  %i.eh = getelementptr i8, ptr %0, i64 68
  %i.ei = load i32, ptr %i.eh, align 4
  %narrow = call i32 @llvm.umax.i32(i32 %i.ei, i32 1)
  %spec.select = sext i32 %narrow to i64          ; 4 uses
  %i.ej = sdiv i64 %i.eg, %spec.select            ; 4 uses
  %i.ek = uitofp i32 %i.dz to double
  %i.el = fdiv double %i.ek, 1.000000e+03
  %i.em = call i64 @lround(double noundef %i.el) #19
  %i.en = getelementptr i8, ptr %1, i64 136
  %.val51 = load i64, ptr %i.en, align 8
  %i.eo = getelementptr i8, ptr %1, i64 144
  %.val52 = load i32, ptr %i.eo, align 8
  %i.ep = sitofp i64 %.val51 to double
  %i.eq = sitofp i32 %.val52 to double
  %i.er = fdiv double %i.eq, 1.000000e+09
  %i.es = fadd double %i.er, %i.ep
  %i.et = icmp sgt i64 %i.ej, 0
  br i1 %i.et, label %.lr.ph155, label %._crit_edge156

.lr.ph155:                                        ; preds = %bb.aj
  %i.eu = trunc i64 %i.em to i32
  %.sroa.speculated143 = call i32 @llvm.smax.i32(i32 %i.eu, i32 1)
  %i.ev = zext nneg i32 %.sroa.speculated143 to i64 ; 4 uses
  br label %bb.ak

._crit_edge156:                                   ; preds = %_ZN5QListIdE6appendEd.exit113, %bb.aj
  %i.ew = getelementptr i8, ptr %1, i64 192
  %i.ex = load double, ptr %i.ew, align 8
  %i.ey = fmul double %i.ex, 2.000000e+00         ; 2 uses
  %i.ez = fcmp olt double %i.ey, 5.000000e+00
  %.sroa.speculated = select i1 %i.ez, double 5.000000e+00, double %i.ey
  %i.fa = getelementptr i8, ptr %1, i64 208       ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not46157 = icmp eq ptr %i.fb, null
  br i1 %.not46157, label %.critedge, label %.lr.ph160

bb.ak:                                            ; preds = %.lr.ph155, %_ZN5QListIdE6appendEd.exit113
  %indvar = phi i64 [ 0, %.lr.ph155 ], [ %indvar.next, %_ZN5QListIdE6appendEd.exit113 ] ; 2 uses
  %indvars.iv = phi i64 [ %i.ev, %.lr.ph155 ], [ %indvars.iv.next, %_ZN5QListIdE6appendEd.exit113 ] ; 2 uses
  %.040153 = phi i64 [ 0, %.lr.ph155 ], [ %i.fe, %_ZN5QListIdE6appendEd.exit113 ] ; 5 uses
  %smin196 = call i64 @llvm.smin.i64(i64 %i.ej, i64 %indvars.iv) ; 2 uses
  %i.fc = mul i64 %indvar, %i.ev                  ; 2 uses
  %i.fd = sub i64 %smin196, %i.fc                 ; 3 uses
  %i.fe = add i64 %.040153, %i.ev                 ; 3 uses
  %.sroa.speculated139 = call i64 @llvm.smin.i64(i64 %i.ej, i64 %i.fe)
  %2 = icmp slt i64 %.040153, %.sroa.speculated139
  br i1 %2, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.ak
  %.neg = add i64 %i.fc, 1
  %xtraiter = and i64 %i.fd, 1
  %i.ff = icmp eq i64 %smin196, %.neg
  br i1 %i.ff, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.fd, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.038152.epil.init = phi i64 [ %.040153, %.lr.ph.preheader ], [ %i.gr, %._crit_edge.loopexit.unr-lcssa ]
  %.039151.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %spec.select49.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod198 = trunc i64 %i.fd to i1
  call void @llvm.assume(i1 %lcmp.mod198)
  %i.fg = mul i64 %.038152.epil.init, %spec.select
  %i.fh = getelementptr [2 x i8], ptr %spec.select.i.i, i64 %i.fg
  %i.fi = load i16, ptr %i.fh, align 2
  %i.fj = sext i16 %i.fi to i32                   ; 2 uses
  %i.fk = call i32 @llvm.abs.i32(i32 %i.fj, i1 true)
  %i.fl = call i32 @llvm.abs.i32(i32 %.039151.epil.init, i1 false)
  %i.fm = icmp sgt i32 %i.fk, %i.fl
  %spec.select49.epil = select i1 %i.fm, i32 %i.fj, i32 %.039151.epil.init
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %spec.select49.lcssa = phi i32 [ %spec.select49.1, %._crit_edge.loopexit.unr-lcssa ], [ %spec.select49.epil, %.lr.ph.epil.preheader ]
  %i.fn = sitofp i32 %spec.select49.lcssa to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ak
  %.039.lcssa = phi double [ 0.000000e+00, %bb.ak ], [ %i.fn, %._crit_edge.loopexit ]
  %3 = sitofp i64 %.040153 to double
  %i.fo = load i32, ptr %i.dy, align 8
  %i.fp = uitofp i32 %i.fo to double
  %i.fq = fdiv double %3, %i.fp
  %i.fr = fadd double %i.es, %i.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store double %i.fr, ptr %i.h, align 8
  %i.fs = load i64, ptr %i.r, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.q, i64 noundef %i.fs, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.ft = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i: ; preds = %._crit_edge
  %i.fu = load atomic i32, ptr %i.ft monotonic, align 4
  %i.fv = icmp sgt i32 %i.fu, 1
  br i1 %i.fv, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZN5QListIdE6appendEd.exit

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i, %._crit_edge
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.q, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit

_ZN5QListIdE6appendEd.exit:                       ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.fw = fdiv double %.039.lcssa, 3.276700e+04
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store double %i.fw, ptr %i.g, align 8
  %i.fx = load i64, ptr %i.af, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.ae, i64 noundef %i.fx, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.fy = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i.i.i.i.i.i110 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i.i.i.i110, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i112, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i111

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i111: ; preds = %_ZN5QListIdE6appendEd.exit
  %i.fz = load atomic i32, ptr %i.fy monotonic, align 4
  %i.ga = icmp sgt i32 %i.fz, 1
  br i1 %i.ga, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i112, label %_ZN5QListIdE6appendEd.exit113

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i112: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i111, %_ZN5QListIdE6appendEd.exit
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.ae, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit113

_ZN5QListIdE6appendEd.exit113:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i111, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.gb = icmp slt i64 %i.fe, %i.ej
  %indvars.iv.next = add i64 %indvars.iv, %i.ev
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gb, label %bb.ak, label %._crit_edge156, !llvm.loop !13

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.038152 = phi i64 [ %.040153, %.lr.ph.preheader.new ], [ %i.gr, %.lr.ph ] ; 3 uses
  %.039151 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %spec.select49.1, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.gc = mul i64 %.038152, %spec.select
  %i.gd = getelementptr [2 x i8], ptr %spec.select.i.i, i64 %i.gc
  %i.ge = load i16, ptr %i.gd, align 2
  %i.gf = sext i16 %i.ge to i32                   ; 2 uses
  %i.gg = call i32 @llvm.abs.i32(i32 %i.gf, i1 true)
  %i.gh = call i32 @llvm.abs.i32(i32 %.039151, i1 false)
  %i.gi = icmp sgt i32 %i.gg, %i.gh
  %spec.select49 = select i1 %i.gi, i32 %i.gf, i32 %.039151 ; 2 uses
  %i.gj = add nsw i64 %.038152, 1
  %i.gk = mul i64 %i.gj, %spec.select
  %i.gl = getelementptr [2 x i8], ptr %spec.select.i.i, i64 %i.gk
  %i.gm = load i16, ptr %i.gl, align 2
  %i.gn = sext i16 %i.gm to i32                   ; 2 uses
  %i.go = call i32 @llvm.abs.i32(i32 %i.gn, i1 true)
  %i.gp = call i32 @llvm.abs.i32(i32 %spec.select49, i1 false)
  %i.gq = icmp sgt i32 %i.go, %i.gp
  %spec.select49.1 = select i1 %i.gq, i32 %i.gn, i32 %spec.select49 ; 3 uses
  %i.gr = add nsw i64 %.038152, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !14

.lr.ph160:                                        ; preds = %._crit_edge156, %bb.as
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.as ], [ 0, %._crit_edge156 ] ; 3 uses
  %i.gs = phi ptr [ %i.im, %bb.as ], [ %i.fb, %._crit_edge156 ] ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 8
  %i.gu = load i32, ptr %i.gt, align 8
  %i.gv = zext i32 %i.gu to i64
  %i.gw = icmp samesign ult i64 %indvars.iv162, %i.gv
  br i1 %i.gw, label %bb.al, label %.critedge

bb.al:                                            ; preds = %.lr.ph160
  %i.gx = load ptr, ptr %i.gs, align 8
  %i.gy = getelementptr [8 x i8], ptr %i.gx, i64 %indvars.iv162
  %i.gz = load ptr, ptr %i.gy, align 8            ; 6 uses
  %.not47 = icmp eq ptr %i.gz, null
  br i1 %.not47, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ha = getelementptr i8, ptr %i.gz, i64 8
  %.val = load i64, ptr %i.ha, align 8
  %i.hb = getelementptr i8, ptr %i.gz, i64 16
  %.val50 = load i32, ptr %i.hb, align 8
  %i.hc = sitofp i64 %.val to double
  %i.hd = sitofp i32 %.val50 to double
  %i.he = fdiv double %i.hd, 1.000000e+09
  %i.hf = fadd double %i.he, %i.hc                ; 3 uses
  %i.hg = getelementptr i8, ptr %i.gz, i64 48
  %i.hh = load double, ptr %i.hg, align 8
  %i.hi = fcmp ult double %i.hh, %.sroa.speculated
  br i1 %i.hi, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store double %i.hf, ptr %i.f, align 8
  %i.hj = load i64, ptr %i.at, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.as, i64 noundef %i.hj, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  %i.hk = load ptr, ptr %i.as, align 8            ; 2 uses
  %.not.i.i.i.i.i.i114 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.i.i.i.i114, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i116, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i115

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i115: ; preds = %bb.an
  %i.hl = load atomic i32, ptr %i.hk monotonic, align 4
  %i.hm = icmp sgt i32 %i.hl, 1
  br i1 %i.hm, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i116, label %_ZN5QListIdE6appendEd.exit117

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i116: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i115, %bb.an
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.as, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit117

_ZN5QListIdE6appendEd.exit117:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i115, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double 1.100000e+00, ptr %i.e, align 8
  %i.hn = load i64, ptr %i.bh, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.bg, i64 noundef %i.hn, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.ho = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not.i.i.i.i.i.i118 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i.i.i.i118, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i120, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i119

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i119: ; preds = %_ZN5QListIdE6appendEd.exit117
  %i.hp = load atomic i32, ptr %i.ho monotonic, align 4
  %i.hq = icmp sgt i32 %i.hp, 1
  br i1 %i.hq, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i120, label %_ZN5QListIdE6appendEd.exit121

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i120: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i119, %_ZN5QListIdE6appendEd.exit117
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.bg, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit121

_ZN5QListIdE6appendEd.exit121:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i119, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN5QListIdE6appendEd.exit121, %bb.am
  %i.hr = getelementptr i8, ptr %i.gz, i64 56
  %i.hs = load i32, ptr %i.hr, align 8
  %.not48 = icmp eq i32 %i.hs, 0
  br i1 %.not48, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.hf, ptr %i.d, align 8
  %i.ht = load i64, ptr %i.bv, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.bu, i64 noundef %i.ht, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.hu = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not.i.i.i.i.i.i122 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i.i.i.i122, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i124, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i123

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i123: ; preds = %bb.ap
  %i.hv = load atomic i32, ptr %i.hu monotonic, align 4
  %i.hw = icmp sgt i32 %i.hv, 1
  br i1 %i.hw, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i124, label %_ZN5QListIdE6appendEd.exit125

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i124: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i123, %bb.ap
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.bu, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit125

_ZN5QListIdE6appendEd.exit125:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i123, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store double 1.200000e+00, ptr %i.c, align 8
  %i.hx = load i64, ptr %i.cj, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.ci, i64 noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.hy = load ptr, ptr %i.ci, align 8            ; 2 uses
  %.not.i.i.i.i.i.i126 = icmp eq ptr %i.hy, null
  br i1 %.not.i.i.i.i.i.i126, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i128, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i127

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i127: ; preds = %_ZN5QListIdE6appendEd.exit125
  %i.hz = load atomic i32, ptr %i.hy monotonic, align 4
  %i.ia = icmp sgt i32 %i.hz, 1
  br i1 %i.ia, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i128, label %_ZN5QListIdE6appendEd.exit129

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i128: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i127, %_ZN5QListIdE6appendEd.exit125
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.ci, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit129

_ZN5QListIdE6appendEd.exit129:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i127, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN5QListIdE6appendEd.exit129, %bb.ao
  %i.ib = getelementptr i8, ptr %i.gz, i64 60
  %i.ic = load i8, ptr %i.ib, align 4, !range !9, !noundef !10
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.hf, ptr %i.b, align 8
  %i.ie = load i64, ptr %i.cx, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.cw, i64 noundef %i.ie, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.if = load ptr, ptr %i.cw, align 8            ; 2 uses
  %.not.i.i.i.i.i.i130 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i.i.i.i130, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i132, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i131

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i131: ; preds = %bb.ar
  %i.ig = load atomic i32, ptr %i.if monotonic, align 4
  %i.ih = icmp sgt i32 %i.ig, 1
  br i1 %i.ih, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i132, label %_ZN5QListIdE6appendEd.exit133

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i132: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i131, %bb.ar
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.cw, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit133

_ZN5QListIdE6appendEd.exit133:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i131, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double 1.300000e+00, ptr %i.a, align 8
  %i.ii = load i64, ptr %i.dl, align 8
  call void @_ZN9QtPrivate12QPodArrayOpsIdE7emplaceIJRdEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %i.dk, i64 noundef %i.ii, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ij = load ptr, ptr %i.dk, align 8            ; 2 uses
  %.not.i.i.i.i.i.i134 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i.i.i.i134, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i136, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i135

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i135: ; preds = %_ZN5QListIdE6appendEd.exit133
  %i.ik = load atomic i32, ptr %i.ij monotonic, align 4
  %i.il = icmp sgt i32 %i.ik, 1
  br i1 %i.il, label %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i136, label %_ZN5QListIdE6appendEd.exit137

_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i136: ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i135, %_ZN5QListIdE6appendEd.exit133
  call void @_ZN17QArrayDataPointerIdE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %i.dk, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListIdE6appendEd.exit137

_ZN5QListIdE6appendEd.exit137:                    ; preds = %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.i.i.i.i.i135, %_ZNK17QArrayDataPointerIdE11needsDetachEv.exit.thread.i.i.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %_ZN5QListIdE6appendEd.exit137, %bb.al
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  %i.im = load ptr, ptr %i.fa, align 8            ; 2 uses
  %.not46 = icmp eq ptr %i.im, null
  br i1 %.not46, label %.critedge, label %.lr.ph160, !llvm.loop !15

.critedge:                                        ; preds = %bb.as, %.lr.ph160, %._crit_edge156, %_ZN5QListIdE5clearEv.exit108, %bb.ah, %bb.ai
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @lround(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @_ZN14DisAudioStream17prepareVisualDataEPK15_disstream_infoR7QString(ptr noundef align 8 dereferenceable_or_null(296) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
end_hunk_0
