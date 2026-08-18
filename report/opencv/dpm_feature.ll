inline.NumInlined: 288
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK2cv3dpm19ParalComputePyramidclERKNS_5RangeE:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = sext i32 %i.a to i64
  br label %bb.b

._crit_edge67:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph66, %._crit_edge
  %indvars.iv = phi i64 [ %i.t, %.lr.ph66 ], [ %indvars.iv.next, %._crit_edge ] ; 5 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !43, !align !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !9
  %i.x = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.y = sitofp i32 %i.x to double
  %i.z = call noundef double @pow(double noundef %i.w, double noundef %i.y) #18
  %i.aa = fdiv double 1.000000e+00, %i.z          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !52, !nonnull !43, !align !44
  store i32 0, ptr %i.f, align 8, !tbaa !66
  store i32 0, ptr %i.g, align 4, !tbaa !68
  store i32 16842752, ptr %5, align 8, !tbaa !69
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  store i64 0, ptr %i.j, align 8
  store i32 33619968, ptr %6, align 8, !tbaa !69
  store ptr %4, ptr %i.i, align 8, !tbaa !71
  %i.ac = load <2 x double>, ptr %i.k, align 8, !tbaa !25
  %i.ad = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = fmul <2 x double> %i.ae, %i.ac          ; 2 uses
  %i.ag = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.af)
  %i.ah = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ai = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.ah)
  %.sroa.2.0.insert.ext.i = zext i32 %i.ai to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ag to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %.sroa.0.0.insert.insert.i, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.aj = fmul double %i.aa, 2.000000e+00
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !43, !align !44 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  store double %i.aj, ptr %i.an, align 8, !tbaa !25
  %i.ao = load ptr, ptr %i.l, align 8, !tbaa !57, !nonnull !43, !align !44
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.aq = getelementptr inbounds nuw [208 x i8], ptr %i.ap, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !56
  %i.at = sdiv i32 %i.as, 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !72
  %i.aw = add nsw i32 %i.av, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !73
  %i.az = add nsw i32 %i.ay, 1
  invoke void @_ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.aq, i32 noundef %i.at, i32 noundef %i.aw, i32 noundef %i.az)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !43, !align !44 ; 6 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !45 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = add nsw i64 %indvars.iv, %i.bc          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %.not33.wide = icmp sgt i64 %i.bd, %i.bg
  br i1 %.not33.wide, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = load ptr, ptr %i.l, align 8, !tbaa !57, !nonnull !43, !align !44
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw [208 x i8], ptr %i.bi, i64 %i.bd
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !56
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !72
  %i.bo = add nsw i32 %i.bn, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73
  %i.br = add nsw i32 %i.bq, 1
  invoke void @_ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.bj, i32 noundef %i.bl, i32 noundef %i.bo, i32 noundef %i.br)
          to label %._crit_edge69 unwind label %bb.g

._crit_edge69:                                    ; preds = %bb.e
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !39  ; 3 uses
  %.pre70 = load i32, ptr %.pre, align 8, !tbaa !45
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre71 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.v

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.h:                                             ; preds = %._crit_edge69, %bb.d
  %i.bu = phi i32 [ %.pre71, %._crit_edge69 ], [ %i.bf, %bb.d ]
  %i.bv = phi i32 [ %.pre70, %._crit_edge69 ], [ %i.bb, %bb.d ]
  %i.bw = phi ptr [ %.pre, %._crit_edge69 ], [ %i.ba, %bb.d ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = add nsw i32 %i.bv, %i.x                 ; 3 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.bz
  store double %i.aa, ptr %i.cb, align 8, !tbaa !25
  %i.cc = icmp slt i32 %i.by, %i.bu
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.h
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cd = load i32, ptr %i.b, align 4, !tbaa !38
  %i.ce = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.cd, %i.ce
  br i1 %.not, label %._crit_edge67, label %bb.b, !llvm.loop !74

.lr.ph:                                           ; preds = %bb.h, %bb.r
  %.02262 = phi i32 [ %i.ec, %bb.r ], [ %i.by, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %7) #18
  %i.cf = load i32, ptr %i.m, align 8, !tbaa !53  ; 6 uses
  %i.cg = icmp slt i32 %i.cf, 3
  br i1 %i.cg, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.9, i32 noundef 109) #16
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.noexc
  unreachable

bb.k:                                             ; preds = %.noexc
  %i.ch = landingpad { ptr, i32 }
          cleanup
  %i.ci = load ptr, ptr %2, align 8, !tbaa !46    ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.k
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !51
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.body

bb.l:                                             ; preds = %.lr.ph
  %i.cn = icmp sgt i32 %i.cf, 0
  br i1 %i.cn, label %bb.m, label %.thread.i

.thread.i:                                        ; preds = %bb.l
  %i.co = icmp eq i32 %i.cf, 0
  %i.cp = zext i1 %i.co to i32
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cq = icmp eq i32 %i.cf, 2
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.n, align 4             ; 2 uses
  %i.cr = select i1 %i.cq, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i = icmp eq i32 %i.cf, 1
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %.thread.i
  %i.cs = phi i32 [ %i.cp, %.thread.i ], [ %i.cr, %bb.m ]
  %i.ct = icmp sgt i32 %i.cf, -1
  %i.cu = zext i1 %i.ct to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cv = phi i32 [ %i.cs, %bb.n ], [ %i.cr, %bb.m ]
  %i.cw = phi i32 [ %i.cu, %bb.n ], [ %.val, %bb.m ]
  %10 = sitofp i32 %i.cv to double
  %11 = sitofp i32 %i.cw to double
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store i32 0, ptr %i.o, align 8, !tbaa !66
  store i32 0, ptr %i.p, align 4, !tbaa !68
  store i32 16842752, ptr %8, align 8, !tbaa !69
  store ptr %4, ptr %i.q, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store i64 0, ptr %i.s, align 8
  store i32 33619968, ptr %9, align 8, !tbaa !69
  store ptr %7, ptr %i.r, align 8, !tbaa !71
  %12 = fmul nnan double %10, 5.000000e-01
  %13 = fmul nnan double %11, 5.000000e-01
  %.sroa.0.0.vec.insert = insertelement <2 x double> poison, double %12, i64 0
  %i.cx = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %.sroa.0.0.vec.insert)
  %14 = insertelement <2 x double> poison, double %13, i64 0
  %i.cy = call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %14)
  %.sroa.2.0.insert.ext.i51 = zext i32 %i.cy to i64
  %.sroa.2.0.insert.shift.i52 = shl nuw i64 %.sroa.2.0.insert.ext.i51, 32
  %.sroa.0.0.insert.ext.i53 = zext i32 %i.cx to i64
  %.sroa.0.0.insert.insert.i54 = or disjoint i64 %.sroa.2.0.insert.shift.i52, %.sroa.0.0.insert.ext.i53
  invoke void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 %.sroa.0.0.insert.insert.i54, double noundef 0.000000e+00, double noundef 0.000000e+00, i32 noundef 1)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.cz = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.q unwind label %bb.u       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.da = load ptr, ptr %i.l, align 8, !tbaa !57, !nonnull !43, !align !44
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !43, !align !44 ; 4 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !45
  %i.dd = add nsw i32 %i.dc, %.02262
  %i.de = sext i32 %i.dd to i64
  %i.df = load ptr, ptr %i.da, align 8, !tbaa !60
  %i.dg = getelementptr inbounds nuw [208 x i8], ptr %i.df, i64 %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !56
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !72
  %i.dl = add nsw i32 %i.dk, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !73
  %i.do = add nsw i32 %i.dn, 1
  invoke void @_ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.dg, i32 noundef %i.di, i32 noundef %i.dl, i32 noundef %i.do)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !43, !align !44 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = sext i32 %.02262 to i64
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !20 ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dr
  %i.du = load double, ptr %i.dt, align 8, !tbaa !25
  %i.dv = fmul double %i.du, 5.000000e-01
  %i.dw = load i32, ptr %i.dp, align 8, !tbaa !45
  %i.dx = add nsw i32 %i.dw, %.02262
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.dy
  store double %i.dv, ptr %i.dz, align 8, !tbaa !25
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !39, !nonnull !43, !align !44 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !45
  %i.ec = add nsw i32 %i.eb, %.02262              ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !18
  %i.ef = icmp slt i32 %i.ec, %i.ee
  br i1 %i.ef, label %.lr.ph, label %._crit_edge, !llvm.loop !75

bb.s:                                             ; preds = %bb.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.o
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.body

bb.u:                                             ; preds = %bb.q, %bb.p
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.u, %bb.t
  %.pn37 = phi { ptr, i32 } [ %i.ei, %bb.u ], [ %i.eh, %bb.t ], [ %i.eg, %bb.s ], [ %i.ch, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.g, %bb.f
  %.pn37.pn = phi { ptr, i32 } [ %.pn37, %.body ], [ %i.bt, %bb.g ], [ %i.bs, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #4

declare void @_ZN2cv6resizeERKNS_11_InputArrayERKNS_12_OutputArrayENS_5Size_IiEEddi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i64, double noundef, double noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %16 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %18 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %19 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %i.a = icmp sgt i32 %3, -1
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii, ptr noundef nonnull @.str.1, i32 noundef 129) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %7, align 8, !tbaa !46     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.g = load i64, ptr %i.e, align 8, !tbaa !51
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.b, %bb.e ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.c, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.i = icmp sgt i32 %4, -1
  br i1 %i.i, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii, ptr noundef nonnull @.str.1, i32 noundef 130) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

bb.l:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %9, align 8, !tbaa !46     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386: ; preds = %bb.l
  %i.o = load i64, ptr %i.m, align 8, !tbaa !51
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386, %bb.k
  %.pn363 = phi { ptr, i32 } [ %i.j, %bb.k ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i386 ], [ %i.k, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %common.resume

bb.m:                                             ; preds = %bb.g
  %i.q = load i32, ptr %0, align 8, !tbaa !76     ; 2 uses
  %i.r = and i32 %i.q, 4064
  %i.s = icmp eq i32 %i.r, 64
  br i1 %i.s, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
end_hunk_0
