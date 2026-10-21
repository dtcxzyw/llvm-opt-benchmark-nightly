Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuPgsConstraintSolver?download=true
inline.NumInlined: 714
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN24b3GpuPgsConstraintSolver17averageVelocitiesEv:bb.a
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_ZN24b3GpuPgsConstraintSolver33solveGroupCacheFriendlyIterationsEP13b3OpenCLArrayI22b3GpuGenericConstraintEiRK19b3ContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(84) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca [3 x i64], align 16               ; 6 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 9 uses
  %4 = alloca %class.b3LauncherCL, align 8        ; 21 uses
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.16)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 356
  %i.h = load i32, ptr %i.g, align 4, !tbaa !69
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN13b3ProfileZoneD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !99
  invoke void @_ZNK13b3OpenCLArrayI17b3BatchConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.k, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.ba

bb.c:                                             ; preds = %bb.b
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.17)
          to label %_ZN13b3ProfileZoneC2EPKc.exit unwind label %bb.ba

_ZN13b3ProfileZoneC2EPKc.exit:                    ; preds = %bb.c
  %i.l = add nsw i32 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16batchConstraints, i64 16), align 8, !tbaa !120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !126
  %i.r = invoke noundef i32 @_ZN24b3GpuPgsConstraintSolver22sortConstraintByBatch3EP17b3BatchConstraintiiii(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef nonnull %i.o, i32 noundef %2, i32 noundef %i.l, i32 noundef %i.q, i32 noundef %i.n)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %_ZN13b3ProfileZoneC2EPKc.exit
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !99
  invoke void @_ZN13b3OpenCLArrayI17b3BatchConstraintE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.u, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #25
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN13b3ProfileZoneC2EPKc.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit73 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.e, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !182 ; 2 uses
  %i.ac = load i8, ptr @useGpuSolveJointConstraintRows, align 1, !tbaa !129, !range !115, !noundef !128
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN13b3ProfileZoneD2Ev.exit76, label %bb.i

bb.i:                                             ; preds = %_ZN13b3ProfileZoneD2Ev.exit
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.18)
          to label %_ZN13b3ProfileZoneC2EPKc.exit75 unwind label %bb.ba

_ZN13b3ProfileZoneC2EPKc.exit75:                  ; preds = %bb.i
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNK13b3OpenCLArrayI15b3GpuSolverBodyE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.ag, ptr noundef nonnull align 8 dereferenceable(25) %i.ah, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %_ZN13b3ProfileZoneC2EPKc.exit75
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !99
  invoke void @_ZNK13b3OpenCLArrayI17b3BatchConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.ak, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !104
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZNK13b3OpenCLArrayI21b3GpuSolverConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.an, ptr noundef nonnull align 8 dereferenceable(25) %i.ao, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  invoke void @_ZNK13b3OpenCLArrayIjE10copyToHostER20b3AlignedObjectArrayIjEb(ptr noundef nonnull align 8 dereferenceable(50) %i.ar, ptr noundef nonnull align 8 dereferenceable(25) %i.as, i1 noundef zeroext true)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !89
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  invoke void @_ZNK13b3OpenCLArrayIjE10copyToHostER20b3AlignedObjectArrayIjEb(ptr noundef nonnull align 8 dereferenceable(50) %i.av, ptr noundef nonnull align 8 dereferenceable(25) %i.aw, i1 noundef zeroext true)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 320
  invoke void @_ZNK13b3OpenCLArrayI22b3GpuGenericConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef nonnull align 8 dereferenceable(25) %i.ay, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit76 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          catch ptr null
  %i.ba = extractvalue { ptr, i32 } %i.az, 0
  tail call void @__clang_call_terminate(ptr %i.ba) #25
  unreachable

bb.q:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN13b3ProfileZoneC2EPKc.exit75
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit73 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  tail call void @__clang_call_terminate(ptr %i.bd) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit76:                    ; preds = %bb.o, %_ZN13b3ProfileZoneD2Ev.exit
  %i.be = icmp sgt i32 %i.ab, 0
  br i1 %i.be, label %.lr.ph145, label %._crit_edge146

.lr.ph145:                                        ; preds = %_ZN13b3ProfileZoneD2Ev.exit76
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 12 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 12 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 356
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph145.split, label %._crit_edge146

._crit_edge146:                                   ; preds = %._crit_edge, %.lr.ph145, %_ZN13b3ProfileZoneD2Ev.exit76
  %i.bx = load i8, ptr @useGpuSolveJointConstraintRows, align 1, !tbaa !129, !range !115, !noundef !128
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %_ZN13b3ProfileZoneD2Ev.exit90, label %bb.av

.lr.ph145.split:                                  ; preds = %.lr.ph145, %._crit_edge
  %.049144 = phi i32 [ %i.cd, %._crit_edge ], [ 0, %.lr.ph145 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4, !tbaa !106
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 356
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !69 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph143.preheader, label %._crit_edge

.lr.ph143.preheader:                              ; preds = %.lr.ph145.split
  %wide.trip.count153 = zext nneg i32 %i.cb to i64
  br label %.lr.ph143

._crit_edge:                                      ; preds = %_ZN13b3ProfileZoneD2Ev.exit86, %.lr.ph145.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.cd = add nuw nsw i32 %.049144, 1             ; 2 uses
  %exitcond155.not = icmp eq i32 %i.cd, %i.ab
  br i1 %exitcond155.not, label %._crit_edge146, label %.lr.ph145.split, !llvm.loop !285

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %_ZN13b3ProfileZoneD2Ev.exit86
  %.pre156 = phi i32 [ 0, %.lr.ph143.preheader ], [ %i.jd, %_ZN13b3ProfileZoneD2Ev.exit86 ] ; 2 uses
  %indvars.iv150 = phi i64 [ 0, %.lr.ph143.preheader ], [ %indvars.iv.next151, %_ZN13b3ProfileZoneD2Ev.exit86 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 368
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !116
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv150
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !106 ; 4 uses
  store i32 %i.ci, ptr %i.d, align 4, !tbaa !106
  %i.cj = load i8, ptr @useGpuSolveJointConstraintRows, align 1, !tbaa !129, !range !115, !noundef !128
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.s, label %.preheader

.preheader:                                       ; preds = %.lr.ph143
  %i.cl = icmp sgt i32 %i.ci, 0
  br i1 %i.cl, label %.lr.ph141.preheader, label %_ZN13b3ProfileZoneD2Ev.exit86

.lr.ph141.preheader:                              ; preds = %.preheader
  %.pre158 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16batchConstraints, i64 16), align 8, !tbaa !120
  br label %.lr.ph141

bb.s:                                             ; preds = %.lr.ph143
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.19)
          to label %_ZN13b3ProfileZoneC2EPKc.exit79 unwind label %bb.ap

_ZN13b3ProfileZoneC2EPKc.exit79:                  ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !70  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !107
  invoke void @_ZN12b3LauncherCLC1EP17_cl_command_queueP10_cl_kernelPKc(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.co, ptr noundef %i.cq, ptr noundef nonnull @.str.20)
          to label %bb.t unwind label %bb.aq

bb.t:                                             ; preds = %_ZN13b3ProfileZoneC2EPKc.exit79
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 96
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !94
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !130
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.cv)
          to label %bb.u unwind label %bb.ar

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !99
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !166
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.da)
          to label %bb.v unwind label %bb.ar

bb.v:                                             ; preds = %bb.u
  %i.db = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !104
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !171
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.df)
          to label %bb.w unwind label %bb.ar

bb.w:                                             ; preds = %bb.v
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 120
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !105
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !162
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.dk)
          to label %bb.x unwind label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.dl = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 88
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !89
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !162
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.dp)
          to label %bb.y unwind label %bb.ar

bb.y:                                             ; preds = %bb.x
  %i.dq = load ptr, ptr %i.bh, align 8, !tbaa !164
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %i.dq)
          to label %bb.z unwind label %bb.ar

bb.z:                                             ; preds = %bb.y
  %i.dr = load i8, ptr %i.bi, align 4, !tbaa !142, !range !115, !noundef !128
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.dt = load i32, ptr %i.bj, align 8, !tbaa !143
  %i.du = load i32, ptr %i.c, align 4, !tbaa !106
  %i.dv = load i32, ptr %i.bk, align 4, !tbaa !144 ; 6 uses
  %i.dw = load i32, ptr %i.bl, align 8, !tbaa !145
  %i.dx = icmp eq i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ab, label %.noexc80

bb.ab:                                            ; preds = %bb.aa
  %.not.i.i94 = icmp eq i32 %i.dv, 0
  %i.dy = shl nsw i32 %i.dv, 1
  %i.dz = select i1 %.not.i.i94, i32 1, i32 %i.dy ; 6 uses
  %i.ea = icmp slt i32 %i.dv, %i.dz
  br i1 %i.ea, label %bb.ac, label %.noexc80

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i: ; preds = %bb.ac
  %i.eb = sext i32 %i.dz to i64
  %i.ec = shl nsw i64 %i.eb, 5
  %i.ed = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ec, i32 noundef 16)
          to label %.noexc97 unwind label %bb.ar  ; 7 uses

.noexc97:                                         ; preds = %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc97
  %i.ef = load i32, ptr %i.bk, align 4, !tbaa !144 ; 4 uses
  %i.eg = icmp sgt i32 %i.ef, 0
  br i1 %i.eg, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ef to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.eh = icmp eq i32 %i.ef, 1
  br i1 %i.eh, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.ad ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.ad ]
  %i.ei = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i
  %i.ej = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.ek = getelementptr inbounds nuw [32 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ei, ptr noundef nonnull align 16 dereferenceable(32) %i.ek, i64 32, i1 false), !tbaa.struct !147
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %indvars.iv.next.i.i.i
  %i.em = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.en = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %indvars.iv.next.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.el, ptr noundef nonnull align 16 dereferenceable(32) %i.en, i64 32, i1 false), !tbaa.struct !147
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.ad, !llvm.loop !4

.split7.i.i:                                      ; preds = %.noexc97, %bb.ac
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 301)
          to label %.noexc98 unwind label %bb.ar

.noexc98:                                         ; preds = %.split7.i.i
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
          to label %.noexc99 unwind label %bb.ar

.noexc99:                                         ; preds = %.noexc98
  store i32 0, ptr %i.bk, align 4, !tbaa !144
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.ad
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod179 = trunc i32 %i.ef to i1
  call void @llvm.assume(i1 %lcmp.mod179)
  %i.eo = getelementptr inbounds nuw [32 x i8], ptr %i.ed, i64 %indvars.iv.i.i.i.epil.init
  %i.ep = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %i.ep, i64 %indvars.iv.i.i.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.eo, ptr noundef nonnull align 16 dereferenceable(32) %i.eq, i64 32, i1 false), !tbaa.struct !147
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.noexc99, %.split.i.i
  %.0.i12.i.i = phi ptr [ null, %.noexc99 ], [ %i.ed, %.split.i.i ], [ %i.ed, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.ed, %.epil.preheader ]
  %.0.i.i = phi i32 [ 0, %.noexc99 ], [ %i.dz, %.split.i.i ], [ %i.dz, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.dz, %.epil.preheader ]
  %i.er = load ptr, ptr %i.bm, align 8, !tbaa !146 ; 2 uses
  %.not.i10.i.i95 = icmp ne ptr %i.er, null
  %i.es = load i8, ptr %i.bn, align 8, !range !115
  %i.et = trunc nuw i8 %i.es to i1
  %or.cond = select i1 %.not.i10.i.i95, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.ae, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i

bb.ae:                                            ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.er)
          to label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i unwind label %bb.ar

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i: ; preds = %bb.ae, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.bn, align 8, !tbaa !148
  store ptr %.0.i12.i.i, ptr %i.bm, align 8, !tbaa !146
  store i32 %.0.i.i, ptr %i.bl, align 8, !tbaa !145
  %.pre.i96 = load i32, ptr %i.bk, align 4, !tbaa !144
  br label %.noexc80

.noexc80:                                         ; preds = %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i, %bb.ab, %bb.aa
  %i.eu = phi i32 [ %.pre.i96, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i ], [ %i.dv, %bb.ab ], [ %i.dv, %bb.aa ]
  %i.ev = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.ew = sext i32 %i.eu to i64
  %i.ex = getelementptr inbounds [32 x i8], ptr %i.ev, i64 %i.ew ; 4 uses
  store i32 0, ptr %i.ex, align 16, !tbaa !106
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 %i.dt, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !106
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store i32 4, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !106
  %.sroa.6127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i32 %i.du, ptr %.sroa.6127.0..sroa_idx, align 16
  %i.ey = load i32, ptr %i.bk, align 4, !tbaa !144
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.bk, align 4, !tbaa !144
  %i.fa = load i32, ptr %i.bo, align 8, !tbaa !149
  %i.fb = add i32 %i.fa, 32
  store i32 %i.fb, ptr %i.bo, align 8, !tbaa !149
  br label %bb.af

bb.af:                                            ; preds = %.noexc80, %bb.z
  %i.fc = load ptr, ptr @__clewSetKernelArg, align 8, !tbaa !114
  %i.fd = load ptr, ptr %i.bp, align 8, !tbaa !150
  %i.fe = load i32, ptr %i.bj, align 8, !tbaa !143 ; 2 uses
  %i.ff = add nsw i32 %i.fe, 1
  store i32 %i.ff, ptr %i.bj, align 8, !tbaa !143
  %i.fg = invoke i32 %i.fc(ptr noundef %i.fd, i32 noundef %i.fe, i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit unwind label %bb.ar, !inline_history !5 ; 0 uses

_ZN12b3LauncherCL8setConstIiEEvRKT_.exit:         ; preds = %bb.af
  %i.fh = load i8, ptr %i.bi, align 4, !tbaa !142, !range !115, !noundef !128
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit
  %i.fj = load i32, ptr %i.bj, align 8, !tbaa !143
  %i.fk = load i32, ptr %i.d, align 4, !tbaa !106
  %i.fl = load i32, ptr %i.bk, align 4, !tbaa !144 ; 6 uses
  %i.fm = load i32, ptr %i.bl, align 8, !tbaa !145
  %i.fn = icmp eq i32 %i.fl, %i.fm
  br i1 %i.fn, label %bb.ah, label %.noexc82

bb.ah:                                            ; preds = %bb.ag
  %.not.i.i101 = icmp eq i32 %i.fl, 0
  %i.fo = shl nsw i32 %i.fl, 1
  %i.fp = select i1 %.not.i.i101, i32 1, i32 %i.fo ; 6 uses
  %i.fq = icmp slt i32 %i.fl, %i.fp
  br i1 %i.fq, label %bb.ai, label %.noexc82

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i102 = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i.i102, label %.split7.i.i116, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i103

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i103: ; preds = %bb.ai
  %i.fr = sext i32 %i.fp to i64
  %i.fs = shl nsw i64 %i.fr, 5
  %i.ft = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.fs, i32 noundef 16)
          to label %.noexc117 unwind label %bb.ar ; 7 uses

.noexc117:                                        ; preds = %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i103
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %.split7.i.i116, label %.split.i.i104

.split.i.i104:                                    ; preds = %.noexc117
  %i.fv = load i32, ptr %i.bk, align 4, !tbaa !144 ; 4 uses
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.i.i.i111, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105

.lr.ph.i.i.i111:                                  ; preds = %.split.i.i104
  %wide.trip.count.i.i.i112 = zext nneg i32 %i.fv to i64 ; 2 uses
  %xtraiter181 = and i64 %wide.trip.count.i.i.i112, 1
  %i.fx = icmp eq i32 %i.fv, 1
  br i1 %i.fx, label %.epil.preheader180, label %.lr.ph.i.i.i111.new

.lr.ph.i.i.i111.new:                              ; preds = %.lr.ph.i.i.i111
  %unroll_iter184 = and i64 %wide.trip.count.i.i.i112, 2147483646
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i.i.i111.new
  %indvars.iv.i.i.i113 = phi i64 [ 0, %.lr.ph.i.i.i111.new ], [ %indvars.iv.next.i.i.i114.1, %bb.aj ] ; 4 uses
  %niter185 = phi i64 [ 0, %.lr.ph.i.i.i111.new ], [ %niter185.next.1, %bb.aj ]
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %indvars.iv.i.i.i113
  %i.fz = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %i.fz, i64 %indvars.iv.i.i.i113
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.fy, ptr noundef nonnull align 16 dereferenceable(32) %i.ga, i64 32, i1 false), !tbaa.struct !147
  %indvars.iv.next.i.i.i114 = or disjoint i64 %indvars.iv.i.i.i113, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %indvars.iv.next.i.i.i114
  %i.gc = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.gd = getelementptr inbounds nuw [32 x i8], ptr %i.gc, i64 %indvars.iv.next.i.i.i114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gb, ptr noundef nonnull align 16 dereferenceable(32) %i.gd, i64 32, i1 false), !tbaa.struct !147
  %indvars.iv.next.i.i.i114.1 = add nuw nsw i64 %indvars.iv.i.i.i113, 2 ; 2 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !4

.split7.i.i116:                                   ; preds = %.noexc117, %bb.ai
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef 301)
          to label %.noexc118 unwind label %bb.ar

.noexc118:                                        ; preds = %.split7.i.i116
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.36)
          to label %.noexc119 unwind label %bb.ar

.noexc119:                                        ; preds = %.noexc118
  store i32 0, ptr %i.bk, align 4, !tbaa !144
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105.loopexit.unr-lcssa: ; preds = %bb.aj
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105, label %.epil.preheader180

.epil.preheader180:                               ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105.loopexit.unr-lcssa, %.lr.ph.i.i.i111
  %indvars.iv.i.i.i113.epil.init = phi i64 [ 0, %.lr.ph.i.i.i111 ], [ %indvars.iv.next.i.i.i114.1, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod183 = trunc i32 %i.fv to i1
  call void @llvm.assume(i1 %lcmp.mod183)
  %i.ge = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %indvars.iv.i.i.i113.epil.init
  %i.gf = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.gg = getelementptr inbounds nuw [32 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i113.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ge, ptr noundef nonnull align 16 dereferenceable(32) %i.gg, i64 32, i1 false), !tbaa.struct !147
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105: ; preds = %.epil.preheader180, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105.loopexit.unr-lcssa, %.noexc119, %.split.i.i104
  %.0.i12.i.i106 = phi ptr [ null, %.noexc119 ], [ %i.ft, %.split.i.i104 ], [ %i.ft, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105.loopexit.unr-lcssa ], [ %i.ft, %.epil.preheader180 ]
  %.0.i.i107 = phi i32 [ 0, %.noexc119 ], [ %i.fp, %.split.i.i104 ], [ %i.fp, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105.loopexit.unr-lcssa ], [ %i.fp, %.epil.preheader180 ]
  %i.gh = load ptr, ptr %i.bm, align 8, !tbaa !146 ; 2 uses
  %.not.i10.i.i108 = icmp ne ptr %i.gh, null
  %i.gi = load i8, ptr %i.bn, align 8, !range !115
  %i.gj = trunc nuw i8 %i.gi to i1
  %or.cond138 = select i1 %.not.i10.i.i108, i1 %i.gj, i1 false
  br i1 %or.cond138, label %bb.ak, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i109

bb.ak:                                            ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.gh)
          to label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i109 unwind label %bb.ar

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i109: ; preds = %bb.ak, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i105
  store i8 1, ptr %i.bn, align 8, !tbaa !148
  store ptr %.0.i12.i.i106, ptr %i.bm, align 8, !tbaa !146
  store i32 %.0.i.i107, ptr %i.bl, align 8, !tbaa !145
  %.pre.i110 = load i32, ptr %i.bk, align 4, !tbaa !144
  br label %.noexc82

.noexc82:                                         ; preds = %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i109, %bb.ah, %bb.ag
  %i.gk = phi i32 [ %.pre.i110, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE10deallocateEv.exit.i.i109 ], [ %i.fl, %bb.ah ], [ %i.fl, %bb.ag ]
  %i.gl = load ptr, ptr %i.bm, align 8, !tbaa !146
  %i.gm = sext i32 %i.gk to i64
  %i.gn = getelementptr inbounds [32 x i8], ptr %i.gl, i64 %i.gm ; 4 uses
  store i32 0, ptr %i.gn, align 16, !tbaa !106
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  store i32 %i.fj, ptr %.sroa.4129.0..sroa_idx, align 4, !tbaa !106
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 4, ptr %.sroa.5130.0..sroa_idx, align 8, !tbaa !106
  %.sroa.6132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  store i32 %i.fk, ptr %.sroa.6132.0..sroa_idx, align 16
  %i.go = load i32, ptr %i.bk, align 4, !tbaa !144
  %i.gp = add nsw i32 %i.go, 1
  store i32 %i.gp, ptr %i.bk, align 4, !tbaa !144
  %i.gq = load i32, ptr %i.bo, align 8, !tbaa !149
  %i.gr = add i32 %i.gq, 32
  store i32 %i.gr, ptr %i.bo, align 8, !tbaa !149
  br label %bb.al

bb.al:                                            ; preds = %.noexc82, %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit
  %i.gs = load ptr, ptr @__clewSetKernelArg, align 8, !tbaa !114
  %i.gt = load ptr, ptr %i.bp, align 8, !tbaa !150
  %i.gu = load i32, ptr %i.bj, align 8, !tbaa !143 ; 2 uses
  %i.gv = add nsw i32 %i.gu, 1
  store i32 %i.gv, ptr %i.bj, align 8, !tbaa !143
  %i.gw = invoke i32 %i.gs(ptr noundef %i.gt, i32 noundef %i.gu, i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit84 unwind label %bb.ar, !inline_history !5 ; 0 uses

_ZN12b3LauncherCL8setConstIiEEvRKT_.exit84:       ; preds = %bb.al
  %i.gx = load i32, ptr %i.d, align 4, !tbaa !106 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN12b3LauncherCL8launch2DEiiii.lRange, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) @__const._ZN12b3LauncherCL8launch2DEiiii.lRange, i64 24, i1 false)
  store i64 64, ptr %i.b, align 16, !tbaa !151
  store i64 1, ptr %i.bq, align 8, !tbaa !151
  %i.gy = sext i32 %i.gx to i64
  %i.gz = lshr i64 %i.gy, 6
  %i.ha = and i32 %i.gx, 63
  %.not.i.i = icmp ne i32 %i.ha, 0
  %i.hb = zext i1 %.not.i.i to i64
  %i.hc = add nuw nsw i64 %i.gz, %i.hb
  %.sroa.speculated13.i.i = call i64 @llvm.umax.i64(i64 %i.hc, i64 1)
  %i.hd = shl i64 %.sroa.speculated13.i.i, 6
  store i64 %i.hd, ptr %i.a, align 16, !tbaa !151
  store i64 1, ptr %i.br, align 8, !tbaa !151
  %i.he = load ptr, ptr @__clewEnqueueNDRangeKernel, align 8, !tbaa !114
  %i.hf = load ptr, ptr %i.bs, align 8, !tbaa !152
  %i.hg = load ptr, ptr %i.bp, align 8, !tbaa !150
  %i.hh = invoke i32 %i.he(ptr noundef %i.hf, ptr noundef %i.hg, i32 noundef 2, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %.noexc85 unwind label %bb.ar, !inline_history !6 ; 2 uses

.noexc85:                                         ; preds = %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit84
  %.not9.i.i = icmp eq i32 %i.hh, 0
  br i1 %.not9.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.noexc85
  %i.hi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.hh) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.noexc85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @b3LeaveProfileZone()
          to label %._ZN13b3ProfileZoneD2Ev.exit86_crit_edge unwind label %bb.ao

._ZN13b3ProfileZoneD2Ev.exit86_crit_edge:         ; preds = %bb.an
  %.pre156.a = load i32, ptr %i.d, align 4, !tbaa !106
  %.pre161 = load i32, ptr %i.c, align 4, !tbaa !106
  br label %_ZN13b3ProfileZoneD2Ev.exit86

bb.ao:                                            ; preds = %bb.an
  %i.hj = landingpad { ptr, i32 }
          catch ptr null
  %i.hk = extractvalue { ptr, i32 } %i.hj, 0
  call void @__clang_call_terminate(ptr %i.hk) #25
  unreachable

bb.ap:                                            ; preds = %bb.s
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit87

bb.aq:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit79
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.ak, %.noexc118, %.split7.i.i116, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i103, %bb.ae, %.noexc98, %.split7.i.i, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i, %_ZN12b3LauncherCL8setConstIiEEvRKT_.exit84, %bb.al, %bb.af, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  %i.hn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %4) #23
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn64 = phi { ptr, i32 } [ %i.hn, %bb.ar ], [ %i.hm, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit87 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #25
  unreachable

.lr.ph141:                                        ; preds = %.lr.ph141.preheader, %.loopexit
  %i.hq = phi i32 [ %i.iz, %.loopexit ], [ %i.ci, %.lr.ph141.preheader ] ; 2 uses
  %5 = phi ptr [ %8, %.loopexit ], [ %.pre158, %.lr.ph141.preheader ] ; 3 uses
  %6 = phi i32 [ %9, %.loopexit ], [ %.pre156, %.lr.ph141.preheader ] ; 3 uses
  %.046140 = phi i32 [ %i.ja, %.loopexit ], [ 0, %.lr.ph141.preheader ] ; 2 uses
  %7 = add nsw i32 %6, %.046140
  %i.hr = sext i32 %7 to i64
  %i.hs = getelementptr inbounds [16 x i8], ptr %5, i64 %i.hr
  %i.ht = load ptr, ptr %i.e, align 8, !tbaa !70  ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !173
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 336
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !117
  %i.hy = sext i32 %i.hv to i64                   ; 3 uses
  %i.hz = getelementptr inbounds [80 x i8], ptr %i.hx, i64 %i.hy
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ib = load i32, ptr %i.ia, align 16, !tbaa !168
  %i.ic = and i32 %i.ib, 1
  %.not = icmp eq i32 %i.ic, 0
  br i1 %.not, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %.lr.ph141
  %i.id = getelementptr inbounds nuw i8, ptr %i.ht, i64 208
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !40
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ie, i64 %i.hy
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !106 ; 2 uses
  %i.ih = icmp sgt i32 %i.ig, 0
  br i1 %i.ih, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.au
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 240
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !40
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.hy
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !106
  %i.im = sext i32 %i.il to i64
  %wide.trip.count = zext nneg i32 %i.ig to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.in = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.io = getelementptr [160 x i8], ptr %i.in, i64 %indvars.iv
  %i.ip = getelementptr [160 x i8], ptr %i.io, i64 %i.im ; 3 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 144
  %i.ir = load i32, ptr %i.iq, align 16, !tbaa !177
  %i.is = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.it = sext i32 %i.ir to i64
  %i.iu = getelementptr inbounds [176 x i8], ptr %i.is, i64 %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 148
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !178
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds [176 x i8], ptr %i.is, i64 %i.ix
  call void @_Z34resolveSingleConstraintRowGeneric2P15b3GpuSolverBodyS0_P21b3GpuSolverConstraint(ptr noundef nonnull %i.iu, ptr noundef nonnull %i.iy, ptr noundef nonnull %i.ip)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond149.not, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !286

.loopexit.loopexit:                               ; preds = %.lr.ph
  %.pre = load i32, ptr %i.c, align 4, !tbaa !106
  %.pre157 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL16batchConstraints, i64 16), align 8, !tbaa !120
  %.pre.a = load i32, ptr %i.d, align 4, !tbaa !106
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.au, %.lr.ph141
  %i.iz = phi i32 [ %.pre.a, %.loopexit.loopexit ], [ %i.hq, %bb.au ], [ %i.hq, %.lr.ph141 ] ; 3 uses
  %8 = phi ptr [ %.pre157, %.loopexit.loopexit ], [ %5, %bb.au ], [ %5, %.lr.ph141 ]
  %9 = phi i32 [ %.pre, %.loopexit.loopexit ], [ %6, %bb.au ], [ %6, %.lr.ph141 ] ; 2 uses
  %i.ja = add nuw nsw i32 %.046140, 1             ; 2 uses
  %i.jb = icmp slt i32 %i.ja, %i.iz
  br i1 %i.jb, label %.lr.ph141, label %_ZN13b3ProfileZoneD2Ev.exit86, !llvm.loop !287

_ZN13b3ProfileZoneD2Ev.exit86:                    ; preds = %.loopexit, %._ZN13b3ProfileZoneD2Ev.exit86_crit_edge, %.preheader
  %i.jc = phi i32 [ %.pre161, %._ZN13b3ProfileZoneD2Ev.exit86_crit_edge ], [ %.pre156, %.preheader ], [ %9, %.loopexit ]
  %10 = phi i32 [ %.pre156.a, %._ZN13b3ProfileZoneD2Ev.exit86_crit_edge ], [ %i.ci, %.preheader ], [ %i.iz, %.loopexit ]
  %i.jd = add nsw i32 %i.jc, %10                  ; 2 uses
  store i32 %i.jd, ptr %i.c, align 4, !tbaa !106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge, label %.lr.ph143, !llvm.loop !288

_ZN13b3ProfileZoneD2Ev.exit87:                    ; preds = %bb.ap, %bb.as
  %.pn64.pn.pn = phi { ptr, i32 } [ %.pn64, %bb.as ], [ %i.hl, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %_ZN13b3ProfileZoneD2Ev.exit73

bb.av:                                            ; preds = %._crit_edge146
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.21)
          to label %_ZN13b3ProfileZoneC2EPKc.exit89 unwind label %bb.ba

_ZN13b3ProfileZoneC2EPKc.exit89:                  ; preds = %bb.av
  %i.je = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 96
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !94
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZN13b3OpenCLArrayI15b3GpuSolverBodyE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.jg, ptr noundef nonnull align 8 dereferenceable(25) %i.jh, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit89
  %i.ji = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 104
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !99
  invoke void @_ZN13b3OpenCLArrayI17b3BatchConstraintE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.jk, ptr noundef nonnull align 8 dereferenceable(25) @_ZL16batchConstraints, i1 noundef zeroext true)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.jl = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 112
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !104
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 88
  invoke void @_ZN13b3OpenCLArrayI21b3GpuSolverConstraintE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.jn, ptr noundef nonnull align 8 dereferenceable(25) %i.jo, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit90 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jp = landingpad { ptr, i32 }
          catch ptr null
  %i.jq = extractvalue { ptr, i32 } %i.jp, 0
  call void @__clang_call_terminate(ptr %i.jq) #25
  unreachable

bb.ba:                                            ; preds = %bb.i, %bb.c, %bb.b, %_ZN13b3ProfileZoneD2Ev.exit90, %bb.av
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit73

bb.bb:                                            ; preds = %bb.ax, %bb.aw, %_ZN13b3ProfileZoneC2EPKc.exit89
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit73 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jt = landingpad { ptr, i32 }
          catch ptr null
  %i.ju = extractvalue { ptr, i32 } %i.jt, 0
  call void @__clang_call_terminate(ptr %i.ju) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit90:                    ; preds = %bb.ay, %._crit_edge146
  %i.jv = load ptr, ptr @__clewFinish, align 8, !tbaa !114
  %i.jw = load ptr, ptr %i.e, align 8, !tbaa !70
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !81
  %i.jz = invoke i32 %i.jv(ptr noundef %i.jy)
          to label %bb.bd unwind label %bb.ba     ; 0 uses

bb.bd:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit90
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit92 unwind label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ka = landingpad { ptr, i32 }
          catch ptr null
  %i.kb = extractvalue { ptr, i32 } %i.ka, 0
  call void @__clang_call_terminate(ptr %i.kb) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit92:                    ; preds = %bb.bd
  ret float 0.000000e+00

_ZN13b3ProfileZoneD2Ev.exit73:                    ; preds = %bb.ba, %bb.bb, %bb.q, %bb.g, %_ZN13b3ProfileZoneD2Ev.exit87
  %.pn64.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.g ], [ %i.js, %bb.bb ], [ %i.bb, %bb.q ], [ %.pn64.pn.pn, %_ZN13b3ProfileZoneD2Ev.exit87 ], [ %i.jr, %bb.ba ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit93 unwind label %bb.bf

bb.bf:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit73
  %i.kc = landingpad { ptr, i32 }
          catch ptr null
  %i.kd = extractvalue { ptr, i32 } %i.kc, 0
  call void @__clang_call_terminate(ptr %i.kd) #25
  unreachable

_ZN13b3ProfileZoneD2Ev.exit93:                    ; preds = %_ZN13b3ProfileZoneD2Ev.exit73
  resume { ptr, i32 } %.pn64.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN24b3GpuPgsConstraintSolver22sortConstraintByBatch3EP17b3BatchConstraintiiii(ptr noundef nonnull align 8 dereferenceable(228) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.32)
  %i.a = shl nsw i32 %3, 1                        ; 9 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 4), align 4, !tbaa !69 ; 2 uses
  %i.c = icmp sgt i32 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %.loopexit170

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 8), align 8, !tbaa !121
  %i.e = icmp slt i32 %i.d, %i.a
  br i1 %i.e, label %bb.c, label %..lr.ph.i_crit_edge

..lr.ph.i_crit_edge:                              ; preds = %bb.b
  %.pre210 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 16), align 8, !tbaa !116
  br label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i.i, label %.split7.i.i, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i: ; preds = %bb.c
  %i.f = sext i32 %i.a to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.g, i32 noundef 16)
          to label %.noexc unwind label %bb.j     ; 12 uses

.noexc:                                           ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i.i
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %.noexc
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 4), align 4, !tbaa !69 ; 3 uses
  %i.l = icmp sgt i32 %i.k, 0
  %.pre209 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7curUsed, i64 16), align 8, !tbaa !116 ; 11 uses
  br i1 %i.l, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %.pre209235 = ptrtoaddr ptr %.pre209 to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.k to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  %i.m = sub i64 %.pre209235, %i.i
  %diff.check = icmp ugt i64 %i.m, -32
  %or.cond269 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond269, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.pre209, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <4 x i32>, ptr %i.o, align 4, !tbaa !106
  %wide.load236 = load <4 x i32>, ptr %i.p, align 4, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %wide.load, ptr %i.n, align 4, !tbaa !106
  store <4 x i32> %wide.load236, ptr %i.q, align 4, !tbaa !106
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !290

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.i.prol
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre209, i64 %indvars.iv.i.i.i.prol
  %i.u = load i32, ptr %i.t, align 4, !tbaa !106
  store i32 %i.u, ptr %i.s, align 4, !tbaa !106
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !291

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.v = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i.i, label %scalar.ph

end_hunk_0
