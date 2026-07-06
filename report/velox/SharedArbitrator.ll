inline.NumInlined: 7736
inline.NumDeleted: 3261
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN8facebook5velox6memory16SharedArbitrator18findAbortCandidateEb:bb.a

.critedge.thread:                                 ; preds = %bb.h, %.critedge
  %i.ae = phi ptr [ %i.bl, %.critedge ], [ %i.ai, %bb.h ]
  %i.af = phi ptr [ %.pre152, %.critedge ], [ %i.ai, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0106.0127, i64 8 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.ab
  br i1 %i.ah, label %.critedge77, label %bb.h

bb.h:                                             ; preds = %.lr.ph129, %.critedge.thread
  %i.ai = phi ptr [ %.pre151, %.lr.ph129 ], [ %i.af, %.critedge.thread ] ; 4 uses
  %i.aj = phi ptr [ %.pre150, %.lr.ph129 ], [ %i.ae, %.critedge.thread ]
  %.sroa.0106.0127 = phi ptr [ %i.aa, %.lr.ph129 ], [ %i.ag, %.critedge.thread ] ; 2 uses
  %i.ak = load i64, ptr %.sroa.0106.0127, align 8, !tbaa !173
  %.not138 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not138, label %.critedge.thread, label %.lr.ph124

.critedge:                                        ; preds = %bb.o
  %.not = icmp eq i32 %.151, -1
  br i1 %.not, label %.critedge.thread, label %bb.p

.lr.ph124:                                        ; preds = %bb.h, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.h ] ; 4 uses
  %i.al = phi ptr [ %.pre152, %bb.o ], [ %i.ai, %bb.h ]
  %.050121 = phi i32 [ %.151, %bb.o ], [ -1, %bb.h ] ; 5 uses
  %i.am = getelementptr inbounds nuw [56 x i8], ptr %i.al, i64 %indvars.iv
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !204 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72 ; 2 uses
  %i.ap = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #28 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph124
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ap) #41
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.lr.ph124
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 112
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !480, !range !157, !noundef !158
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ao) #28 ; 0 uses
  %.pre152 = load ptr, ptr %.sroa.0110.0130, align 8, !tbaa !440 ; 6 uses
  br i1 %i.as, label %bb.o, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw [56 x i8], ptr %.pre152, i64 %indvars.iv ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !477 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.ak
  %i.az = icmp eq i64 %i.ax, 0
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ba = icmp eq i32 %.050121, -1
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %i.ba, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = sext i32 %.050121 to i64
  %i.bd = getelementptr inbounds nuw [56 x i8], ptr %.pre152, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !204
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !373
  %i.bh = load ptr, ptr %i.av, align 8, !tbaa !204
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !373
  %i.bk = icmp ult i64 %i.bg, %i.bj
  %spec.select = select i1 %i.bk, i32 %i.bb, i32 %.050121
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j
  %.151 = phi i32 [ %.050121, %bb.j ], [ %.050121, %bb.l ], [ %i.bb, %bb.m ], [ %spec.select, %bb.n ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bl = load ptr, ptr %i.ad, align 8, !tbaa !441 ; 2 uses
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %.pre152 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = sdiv exact i64 %i.bo, 56
  %i.bq = icmp ugt i64 %i.bp, %indvars.iv.next
  br i1 %i.bq, label %.lr.ph124, label %.critedge, !llvm.loop !481

bb.p:                                             ; preds = %.critedge
  %i.br = sext i32 %.151 to i64
  %i.bs = getelementptr inbounds nuw [56 x i8], ptr %.pre152, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !118 ; 2 uses
  %i.bv = load <2 x ptr>, ptr %i.bs, align 8, !tbaa !97
  store <2 x ptr> %i.bv, ptr %0, align 8, !tbaa !97
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 3 uses
  %i.bx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %i.bw, align 4, !tbaa !3
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ca = atomicrmw volatile add ptr %i.bw, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r, %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !118 ; 2 uses
  %i.cf = load <2 x ptr>, ptr %i.cc, align 8, !tbaa !97
  store <2 x ptr> %i.cf, ptr %i.cb, align 8, !tbaa !97
  %.not.i.i.i3.i.i.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i.i.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 3 uses
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i4.i.i.i.i.i.i.i.i = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i.i4.i.i.i.i.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !3
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ck = atomicrmw volatile add ptr %i.cg, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.w

.critedge77:                                      ; preds = %.critedge.thread, %.lr.ph132.split
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0110.0130, i64 24 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.s
  br i1 %i.cm, label %.critedge79, label %.lr.ph132.split, !llvm.loop !482

bb.w:                                             ; preds = %bb.v, %bb.u, %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  br label %bb.ba

.critedge79:                                      ; preds = %.critedge77, %.lr.ph132, %bb.f
  br i1 %2, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %.critedge79
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str, i32 noundef 732, i32 noundef 1)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.z unwind label %bb.ab      ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.12, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.z
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef nonnull @.str.67, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85 unwind label %bb.ab ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit85: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ba

bb.aa:                                            ; preds = %bb.x
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.z, %bb.y
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #28
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.ab ], [ %i.cs, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.be

bb.ad:                                            ; preds = %.critedge79
  %i.cu = load ptr, ptr %4, align 8, !tbaa !460   ; 3 uses
  %i.cv = load ptr, ptr %i.r, align 8, !tbaa !460
  %i.cw = icmp eq ptr %i.cu, %i.cv
  br i1 %i.cw, label %.critedge81, label %bb.ae, !prof !16

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !452 ; 8 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !452 ; 2 uses
  %i.da = icmp eq ptr %i.cx, %i.cz
  br i1 %i.da, label %.critedge81, label %.lr.ph135.preheader, !prof !16

.lr.ph135.preheader:                              ; preds = %bb.ae
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = sub i64 %i.db, %i.dc                    ; 2 uses
  %i.de = sdiv exact i64 %i.dd, 56                ; 3 uses
  %xtraiter = and i64 %i.de, 1
  %i.df = icmp eq i64 %i.dd, 56
  br i1 %i.df, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter = and i64 %i.de, -2
  br label %.lr.ph135

.critedge81:                                      ; preds = %bb.ad, %bb.ae
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox6memory16SharedArbitrator18findAbortCandidateEbE18veloxCheckFailArgs) #41
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %.critedge81
  unreachable

bb.ag:                                            ; preds = %.critedge81
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

._crit_edge136.unr-lcssa:                         ; preds = %.lr.ph135
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge136, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %._crit_edge136.unr-lcssa, %.lr.ph135.preheader
  %indvars.iv146.epil.init = phi i64 [ 0, %.lr.ph135.preheader ], [ %indvars.iv.next147.1, %._crit_edge136.unr-lcssa ] ; 2 uses
  %.048133.epil.init = phi i32 [ 0, %.lr.ph135.preheader ], [ %spec.select82.1, %._crit_edge136.unr-lcssa ] ; 2 uses
  %lcmp.mod199 = trunc i64 %i.de to i1
  call void @llvm.assume(i1 %lcmp.mod199)
  %8 = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %indvars.iv146.epil.init
  %9 = load ptr, ptr %8, align 8, !tbaa !204
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %11 = load i64, ptr %10, align 8, !tbaa !373
  %12 = zext nneg i32 %.048133.epil.init to i64
  %i.dh = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %12
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !204
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !373
  %i.dl = icmp ugt i64 %11, %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv146.epil.init to i32
  %spec.select82.epil = select i1 %i.dl, i32 %i.dm, i32 %.048133.epil.init
  br label %._crit_edge136

._crit_edge136:                                   ; preds = %._crit_edge136.unr-lcssa, %.lr.ph135.epil.preheader
  %spec.select82.lcssa = phi i32 [ %spec.select82.1, %._crit_edge136.unr-lcssa ], [ %spec.select82.epil, %.lr.ph135.epil.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull @.str, i32 noundef 748, i32 noundef 1)
          to label %bb.ah unwind label %bb.au

.lr.ph135:                                        ; preds = %.lr.ph135, %.lr.ph135.preheader.new
  %indvars.iv146.a = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %indvars.iv.next147.1, %.lr.ph135 ] ; 4 uses
  %.048133 = phi i32 [ 0, %.lr.ph135.preheader.new ], [ %spec.select82.1, %.lr.ph135 ] ; 2 uses
  %niter.a = phi i64 [ 0, %.lr.ph135.preheader.new ], [ %niter.next.1, %.lr.ph135 ]
  %13 = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %indvars.iv146.a
  %14 = load ptr, ptr %13, align 8, !tbaa !204
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = load i64, ptr %15, align 8, !tbaa !373
  %17 = zext nneg i32 %.048133 to i64
  %i.dn = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %17
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !204
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !373
  %i.dr = icmp ugt i64 %16, %i.dq
  %i.ds = trunc nuw nsw i64 %indvars.iv146.a to i32
  %spec.select82 = select i1 %i.dr, i32 %i.ds, i32 %.048133 ; 2 uses
  %indvars.iv.next147 = or disjoint i64 %indvars.iv146.a, 1 ; 2 uses
  %18 = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %indvars.iv.next147
  %19 = load ptr, ptr %18, align 8, !tbaa !204
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 16
  %21 = load i64, ptr %20, align 8, !tbaa !373
  %22 = zext nneg i32 %spec.select82 to i64
  %i.dt = getelementptr inbounds nuw [56 x i8], ptr %i.cx, i64 %22
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !204
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !373
  %i.dx = icmp ugt i64 %21, %i.dw
  %i.dy = trunc nuw nsw i64 %indvars.iv.next147 to i32
  %spec.select82.1 = select i1 %i.dx, i32 %i.dy, i32 %spec.select82 ; 3 uses
  %indvars.iv.next147.1 = add nuw nsw i64 %indvars.iv146.a, 2 ; 2 uses
  %niter.next.1 = add i64 %niter.a, 2             ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge136.unr-lcssa, label %.lr.ph135, !llvm.loop !484

bb.ah:                                            ; preds = %._crit_edge136
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %bb.ai unwind label %bb.av     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.12, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87: ; preds = %bb.ai
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull @.str.70, i64 noundef 80)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89 unwind label %bb.av ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ec = load ptr, ptr %4, align 8, !tbaa !455
  %i.ed = zext nneg i32 %spec.select82.lcssa to i64 ; 2 uses
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !440
  %i.ef = getelementptr inbounds nuw [56 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !204
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !210, !noalias !485 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !17, !noalias !485
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !485
  %i.em = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.el(ptr noundef nonnull align 8 dereferenceable(264) %i.ei)
          to label %.noexc90 unwind label %bb.aw, !inline_history !229 ; 2 uses

.noexc90:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.en = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.en, ptr %7, align 8, !tbaa !7, !alias.scope !485
  %i.eo = load ptr, ptr %i.em, align 8, !tbaa !15 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !11 ; 8 uses
  %i.er = icmp ugt i64 %i.eq, 15
  br i1 %i.er, label %bb.aj, label %._crit_edge.i.i.i

bb.aj:                                            ; preds = %.noexc90
  %i.es = icmp slt i64 %i.eq, 0
  br i1 %i.es, label %.noexc.i.i, label %bb.ak

.noexc.i.i:                                       ; preds = %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.156) #41
          to label %.noexc91 unwind label %bb.aw

.noexc91:                                         ; preds = %.noexc.i.i
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.et = add nuw i64 %i.eq, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, 0
  br i1 %i.eu, label %.noexc6.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !16

.noexc6.i.i:                                      ; preds = %bb.ak
  invoke void @_ZSt17__throw_bad_allocv() #41
          to label %.noexc92 unwind label %bb.aw

.noexc92:                                         ; preds = %.noexc6.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.ak
  %i.ev = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.et) #42
          to label %.noexc93 unwind label %bb.aw  ; 2 uses

.noexc93:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i
  store ptr %i.ev, ptr %7, align 8, !tbaa !15, !alias.scope !485
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !14, !alias.scope !485
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc93, %.noexc90
  %i.ew = phi ptr [ %i.ev, %.noexc93 ], [ %i.en, %.noexc90 ] ; 3 uses
  switch i64 %i.eq, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %bb.an
  ]

bb.al:                                            ; preds = %._crit_edge.i.i.i
  %i.ex = load i8, ptr %i.eo, align 1, !tbaa !14
  store i8 %i.ex, ptr %i.ew, align 1, !tbaa !14
  br label %bb.an

bb.am:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr align 1 %i.eo, i64 %i.eq, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %._crit_edge.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %i.eq, ptr %i.ey, align 8, !tbaa !11, !alias.scope !485
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eq
  store i8 0, ptr %i.ez, align 1, !tbaa !14
  %i.fa = load ptr, ptr %7, align 8, !tbaa !15
  %i.fb = load i64, ptr %i.ey, align 8, !tbaa !11
  %i.fc = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef %i.fa, i64 noundef %i.fb)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ax ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.an
  %i.fd = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.en
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ff = load i64, ptr %i.en, align 8, !tbaa !14
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.fh = load ptr, ptr %4, align 8, !tbaa !455
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !440
  %i.fj = getelementptr inbounds nuw [56 x i8], ptr %i.fi, i64 %i.ed ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !118 ; 2 uses
  %i.fm = load <2 x ptr>, ptr %i.fj, align 8, !tbaa !97
  store <2 x ptr> %i.fm, ptr %0, align 8, !tbaa !97
  %.not.i.i.i.i.i.i.i.i.i.i.i95 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i95, label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i97, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 3 uses
  %i.fo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i.i.i96 = icmp eq i8 %i.fo, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i96, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !3
  %i.fq = add nsw i32 %i.fp, 1
  store i32 %i.fq, ptr %i.fn, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i97

bb.aq:                                            ; preds = %bb.ao
  %i.fr = atomicrmw volatile add ptr %i.fn, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i97

_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i97: ; preds = %bb.aq, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !118 ; 2 uses
  %i.fw = load <2 x ptr>, ptr %i.ft, align 8, !tbaa !97
  store <2 x ptr> %i.fw, ptr %i.fs, align 8, !tbaa !97
  %.not.i.i.i3.i.i.i.i.i.i.i.i98 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i.i.i98, label %_ZNSt8optionalIN8facebook5velox6memory20ArbitrationCandidateEEC2IRS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_IS9_ISt10in_place_tSG_EESt16is_constructibleIS3_JSC_EESt14is_convertibleISC_S3_EEEbE4typeELb1EEEOSC_.exit100, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i97
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i4.i.i.i.i.i.i.i.i99 = icmp eq i8 %i.fy, 0
  br i1 %.not.i.i.i.i4.i.i.i.i.i.i.i.i99, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fz = load i32, ptr %i.fx, align 4, !tbaa !3
  %i.ga = add nsw i32 %i.fz, 1
  store i32 %i.ga, ptr %i.fx, align 4, !tbaa !3
  br label %_ZNSt8optionalIN8facebook5velox6memory20ArbitrationCandidateEEC2IRS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_IS9_ISt10in_place_tSG_EESt16is_constructibleIS3_JSC_EESt14is_convertibleISC_S3_EEEbE4typeELb1EEEOSC_.exit100

bb.at:                                            ; preds = %bb.ar
  %i.gb = atomicrmw volatile add ptr %i.fx, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt8optionalIN8facebook5velox6memory20ArbitrationCandidateEEC2IRS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_IS9_ISt10in_place_tSG_EESt16is_constructibleIS3_JSC_EESt14is_convertibleISC_S3_EEEbE4typeELb1EEEOSC_.exit100

_ZNSt8optionalIN8facebook5velox6memory20ArbitrationCandidateEEC2IRS3_TnNSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS4_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES8_IS9_ISt10in_place_tSG_EESt16is_constructibleIS3_JSC_EESt14is_convertibleISC_S3_EEEbE4typeELb1EEEOSC_.exit100: ; preds = %_ZNSt10shared_ptrIN8facebook5velox6memory22ArbitrationParticipantEEC2ERKS4_.exit.i.i.i.i.i.i.i.i97, %bb.as, %bb.at
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gc, ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i64 24, i1 false)
  br label %bb.ba

bb.au:                                            ; preds = %._crit_edge136
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.av:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87, %bb.ai, %bb.ah
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit89
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

bb.ax:                                            ; preds = %bb.an
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gi = load ptr, ptr %7, align 8, !tbaa !15    ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.en
  br i1 %i.gj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %bb.ax
  %i.gk = load i64, ptr %i.en, align 8, !tbaa !14
  %i.gl = add i64 %i.gk, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gl) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101, %bb.aw
end_hunk_0
