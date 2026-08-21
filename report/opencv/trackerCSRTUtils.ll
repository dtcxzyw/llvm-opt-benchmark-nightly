inline.NumInlined: 438
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv16get_features_hogERKNS_3MatEi:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i, %bb.l
  %.pn363.i = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i ], [ %i.p, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %.body

bb.n:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.w = load i32, ptr %i.v, align 8, !tbaa !137  ; 6 uses
  %i.x = icmp slt i32 %i.w, 3
  br i1 %i.x, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.cr

.noexc:                                           ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #19
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc
  unreachable

bb.q:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !72     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !98
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.ae = icmp sgt i32 %i.w, 0
  br i1 %i.ae, label %bb.s, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.r
  %i.af = icmp eq i32 %i.w, 0
  %i.ag = zext i1 %i.af to i32
  br label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %17, i64 84
  %i.ai = icmp eq i32 %i.w, 2
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %17, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.aj = select i1 %i.ai, i32 %.sroa.gep.val, i32 %.val ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 1
  br i1 %.not.i.i, label %bb.t, label %_ZNK2cv8MatShapeclEv.exit.i

bb.t:                                             ; preds = %bb.s, %.thread.i.i
  %i.ak = phi i32 [ %i.ag, %.thread.i.i ], [ %i.aj, %bb.s ]
  %i.al = icmp sgt i32 %i.w, -1
  %i.am = zext i1 %i.al to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i

_ZNK2cv8MatShapeclEv.exit.i:                      ; preds = %bb.s, %bb.t
  %i.an = phi i32 [ %i.ak, %bb.t ], [ %i.aj, %bb.s ]
  %i.ao = phi i32 [ %i.am, %bb.t ], [ %.val, %bb.s ]
  %i.ap = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %i.aq = insertelement <2 x i32> %i.ap, i32 %i.ao, i64 1
  %i.ar = sitofp <2 x i32> %i.aq to <2 x double>
  %i.as = sitofp i32 %2 to double                 ; 3 uses
  %i.at = insertelement <2 x double> poison, double %i.as, i64 0
  %i.au = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fdiv <2 x double> %i.ar, %i.au
  %i.aw = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.av)
  %i.ax = fptosi <2 x double> %i.aw to <2 x i32>  ; 4 uses
  %i.ay = extractelement <2 x i32> %i.ax, i64 0   ; 7 uses
  %i.az = call i32 @llvm.smax.i32(i32 %i.ay, i32 2) ; 2 uses
  %i.ba = extractelement <2 x i32> %i.ax, i64 1   ; 5 uses
  %i.bb = call i32 @llvm.smax.i32(i32 %i.ba, i32 2) ; 2 uses
  %.sroa.11.0.insert.ext.i = zext i32 %i.ba to i64 ; 2 uses
  %.sroa.11.0.insert.shift.i = shl nuw i64 %.sroa.11.0.insert.ext.i, 32
  %i.bc = mul i32 %2, %i.ay                       ; 2 uses
  %i.bd = mul i32 %2, %i.ba                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.be = mul nsw i32 %i.ay, 18
  %.sroa.0455.0.insert.ext.i = zext i32 %i.be to i64
  %.sroa.0455.0.insert.insert.i = or disjoint i64 %.sroa.11.0.insert.shift.i, %.sroa.0455.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i64 %.sroa.0455.0.insert.insert.i, i32 noundef 6)
          to label %.noexc24 unwind label %bb.cr

.noexc24:                                         ; preds = %_ZNK2cv8MatShapeclEv.exit.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #18
  %i.bf = load ptr, ptr %12, align 8, !tbaa !25, !noalias !138 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %.body.i

.body.i:                                          ; preds = %.noexc24
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.ce

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %.noexc24
  %.sroa.0472.0.insert.insert.i = bitcast <2 x i32> %i.ax to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bk) #18
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bl) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i64 %.sroa.0472.0.insert.insert.i, i32 noundef 6)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #18
  %i.bn = load ptr, ptr %14, align 8, !tbaa !25, !noalias !141 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  invoke void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i unwind label %.body389.i

.body389.i:                                       ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #18
  br label %bb.ab

_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i:            ; preds = %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bs) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bt) #18
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bu) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.bv = shl nsw i32 %i.az, 5
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.bb to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.bv to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, i64 %.sroa.0.0.insert.insert.i, i32 noundef 6)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.bw = load ptr, ptr %15, align 8, !tbaa !25   ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  invoke void %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i unwind label %bb.ad, !inline_history !144

_ZN2cv3MataSERKNS_7MatExprE.exit.i:               ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ca) #18
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cb) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cc) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.cd = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 0)
          to label %bb.w unwind label %bb.af      ; 4 uses

bb.w:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.ce = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 0)
          to label %bb.x unwind label %bb.ag      ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.cf = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 0)
          to label %bb.y unwind label %bb.ah      ; 11 uses

bb.y:                                             ; preds = %bb.x
  %i.cg = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 0)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !19 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !19 ; 5 uses
  %i.cn = ptrtoaddr ptr %i.cm to i64              ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19 ; 37 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 9 uses
  %i.cr = icmp sgt i32 %i.bd, 2
  br i1 %i.cr, label %.preheader490.lr.ph.i, label %.preheader489.i

.preheader490.lr.ph.i:                            ; preds = %bb.z
  %i.cs = icmp sgt i32 %i.bc, 2
  %i.ct = sub i64 0, %i.cd                        ; 2 uses
  br i1 %i.cs, label %.preheader490.lr.ph.split.i, label %.preheader489.i

.preheader490.lr.ph.split.i:                      ; preds = %.preheader490.lr.ph.i
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !17
  %i.cx = add nsw i32 %i.cw, -2
  %i.cy = load i32, ptr %i.cu, align 8, !tbaa !8
  %i.cz = add nsw i32 %i.cy, -2
  %i.da = add nsw i32 %i.bc, -2
  %i.db = add nsw i32 %i.bd, -2
  br label %.preheader490.i

.preheader490.i:                                  ; preds = %._crit_edge.i, %.preheader490.lr.ph.split.i
  %storemerge495.i = phi i32 [ 1, %.preheader490.lr.ph.split.i ], [ %i.eo, %._crit_edge.i ] ; 4 uses
  %.sroa.speculated438.i = call i32 @llvm.smin.i32(i32 %i.cz, i32 %storemerge495.i)
  %i.dc = sext i32 %.sroa.speculated438.i to i64
  %i.dd = mul i64 %i.cd, %i.dc
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.ci, i64 %i.dd
  %i.de = uitofp nneg i32 %storemerge495.i to double
  %i.df = fadd double %i.de, 5.000000e-01
  %i.dg = fdiv double %i.df, %i.as
  %i.dh = fadd double %i.dg, -5.000000e-01        ; 2 uses
  %i.di = call double @llvm.floor.f64(double %i.dh)
  %i.dj = fptosi double %i.di to i32              ; 5 uses
  %i.dk = sitofp i32 %i.dj to double
  %i.dl = fsub double %i.dh, %i.dk                ; 3 uses
  %i.dm = fsub double 1.000000e+00, %i.dl         ; 2 uses
  %i.dn = icmp sgt i32 %i.dj, -1
  %i.do = zext nneg i32 %i.dj to i64
  %i.dp = mul i64 %i.ce, %i.do
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.dp ; 2 uses
  %i.dr = add nsw i32 %i.dj, 1                    ; 2 uses
  %i.ds = icmp slt i32 %i.dr, %i.ba               ; 2 uses
  %i.dt = sext i32 %i.dr to i64
  %i.du = mul i64 %i.ce, %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.du ; 2 uses
  br label %bb.aj

.preheader489.i:                                  ; preds = %._crit_edge.i, %.preheader490.lr.ph.i, %bb.z
  %i.dw = icmp sgt i32 %i.ba, 0
  br i1 %i.dw, label %.lr.ph503.i, label %.preheader485.i

.lr.ph503.i:                                      ; preds = %.preheader489.i
  %i.dx = sext i32 %i.ay to i64
  %.idx.i = shl nsw i64 %i.dx, 3                  ; 2 uses
  %i.dy = icmp sgt i32 %i.ay, 0
  br i1 %i.dy, label %.lr.ph.preheader.i.preheader, label %.preheader485.i

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph503.i
  %i.dz = shl i64 %i.cf, 3
  %i.ea = add i64 %.idx.i, %i.cn                  ; 2 uses
  %i.eb = add i64 %i.cn, 8                        ; 2 uses
  %i.ec = xor i64 %i.cn, -1                       ; 2 uses
  %i.ed = mul i64 %i.cf, -8
  %i.ee = shl i64 %i.ce, 3
  %i.ef = shl i64 %i.cf, 3
  %i.eg = mul i64 %i.cf, -8
  br label %.lr.ph.preheader.i

bb.aa:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body389.i
  %.pn365.i = phi { ptr, i32 } [ %i.br, %.body389.i ], [ %i.eh, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.cd

bb.ac:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn367.i = phi { ptr, i32 } [ %i.ej, %bb.ad ], [ %i.ei, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cc

bb.af:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ag:                                            ; preds = %bb.w
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ah:                                            ; preds = %bb.x
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ai:                                            ; preds = %bb.y
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

._crit_edge.i:                                    ; preds = %bb.bu
  %i.eo = add nuw nsw i32 %storemerge495.i, 1
  %exitcond540.not.i = icmp eq i32 %storemerge495.i, %i.db
  br i1 %exitcond540.not.i, label %.preheader489.i, label %.preheader490.i, !llvm.loop !145

bb.aj:                                            ; preds = %bb.bu, %.preheader490.i
  %storemerge379494.i = phi i32 [ 1, %.preheader490.i ], [ %i.ji, %bb.bu ] ; 4 uses
  %.sroa.speculated442.i = call i32 @llvm.smin.i32(i32 %i.cx, i32 %storemerge379494.i)
  %i.ep = mul nsw i32 %.sroa.speculated442.i, 3
  %i.eq = sext i32 %i.ep to i64
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.eq ; 7 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %gep.i, i64 %i.cd
  %i.es = load double, ptr %i.er, align 8, !tbaa !146
  %i.et = getelementptr inbounds [8 x i8], ptr %gep.i, i64 %i.ct
  %i.eu = load double, ptr %i.et, align 8, !tbaa !146
  %i.ev = fsub double %i.es, %i.eu                ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %gep.i, i64 24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !146
  %i.ey = getelementptr inbounds i8, ptr %gep.i, i64 -24
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !146
  %i.fa = fsub double %i.ex, %i.ez                ; 3 uses
  %i.fb = fmul double %i.ev, %i.ev
  %i.fc = call double @llvm.fmuladd.f64(double %i.fa, double %i.fa, double %i.fb) ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.cd
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fd, i64 %i.ct
  %i.fg = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.fh = getelementptr inbounds i8, ptr %gep.i, i64 -16
  %i.fi = load <2 x double>, ptr %i.fe, align 8, !tbaa !146
  %i.fj = load <2 x double>, ptr %i.ff, align 8, !tbaa !146
  %i.fk = fsub <2 x double> %i.fi, %i.fj          ; 4 uses
  %i.fl = load <2 x double>, ptr %i.fg, align 8, !tbaa !146
  %i.fm = load <2 x double>, ptr %i.fh, align 8, !tbaa !146
  %i.fn = fsub <2 x double> %i.fl, %i.fm          ; 4 uses
  %i.fo = fmul <2 x double> %i.fk, %i.fk
  %i.fp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.fn, <2 x double> %i.fo) ; 2 uses
  %i.fq = extractelement <2 x double> %i.fp, i64 0 ; 2 uses
  %i.fr = extractelement <2 x double> %i.fp, i64 1 ; 2 uses
  %i.fs = fcmp ogt double %i.fq, %i.fr            ; 3 uses
  %i.ft = extractelement <2 x double> %i.fk, i64 0
  %i.fu = extractelement <2 x double> %i.fk, i64 1
  %.0343.i = select i1 %i.fs, double %i.ft, double %i.fu
  %i.fv = extractelement <2 x double> %i.fn, i64 0
  %i.fw = extractelement <2 x double> %i.fn, i64 1
  %.0341.i = select i1 %i.fs, double %i.fv, double %i.fw
  %.0339.i = select i1 %i.fs, double %i.fq, double %i.fr ; 2 uses
  %i.fx = fcmp ogt double %i.fc, %.0339.i         ; 3 uses
  %.1344.i = select i1 %i.fx, double %i.ev, double %.0343.i ; 5 uses
  %.1342.i = select i1 %i.fx, double %i.fa, double %.0341.i ; 9 uses
  %i.fy = fmul double %.1344.i, 0.000000e+00
  %i.fz = fadd double %.1342.i, %i.fy             ; 4 uses
  %i.ga = fcmp ogt double %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = fcmp olt double %i.fz, 0.000000e+00
  br i1 %i.gb, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gc = fneg double %i.fz
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.1338.i = phi double [ 0.000000e+00, %bb.ak ], [ %i.gc, %bb.al ], [ %i.fz, %bb.aj ] ; 3 uses
  %.1336.i = phi i32 [ 0, %bb.ak ], [ 9, %bb.al ], [ 0, %bb.aj ]
  %i.gd = fmul double %.1344.i, 3.420000e-01      ; 2 uses
  %i.ge = call double @llvm.fmuladd.f64(double %.1342.i, double f0x3FEE1205BC01A36E, double %i.gd) ; 3 uses
  %i.gf = fcmp ogt double %i.ge, %.1338.i
  br i1 %i.gf, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gg = fneg double %i.ge                       ; 2 uses
  %i.gh = fcmp olt double %.1338.i, %i.gg
  br i1 %i.gh, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.1338.1.i = phi double [ %.1338.i, %bb.an ], [ %i.gg, %bb.ao ], [ %i.ge, %bb.am ] ; 3 uses
  %.1336.1.i = phi i32 [ %.1336.i, %bb.an ], [ 10, %bb.ao ], [ 1, %bb.am ]
  %i.gi = fmul double %.1344.i, 6.428000e-01      ; 2 uses
  %i.gj = call double @llvm.fmuladd.f64(double %.1342.i, double 7.660000e-01, double %i.gi) ; 3 uses
  %i.gk = fcmp ogt double %i.gj, %.1338.1.i
  br i1 %i.gk, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gl = fneg double %i.gj                       ; 2 uses
  %i.gm = fcmp olt double %.1338.1.i, %i.gl
  br i1 %i.gm, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1338.2.i = phi double [ %.1338.1.i, %bb.aq ], [ %i.gl, %bb.ar ], [ %i.gj, %bb.ap ] ; 3 uses
  %.1336.2.i = phi i32 [ %.1336.1.i, %bb.aq ], [ 11, %bb.ar ], [ 2, %bb.ap ]
  %i.gn = fmul double %.1344.i, 8.660000e-01      ; 2 uses
  %i.go = call double @llvm.fmuladd.f64(double %.1342.i, double 5.000000e-01, double %i.gn) ; 3 uses
  %i.gp = fcmp ogt double %i.go, %.1338.2.i
  br i1 %i.gp, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gq = fneg double %i.go                       ; 2 uses
  %i.gr = fcmp olt double %.1338.2.i, %i.gq
  br i1 %i.gr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.1338.3.i = phi double [ %.1338.2.i, %bb.at ], [ %i.gq, %bb.au ], [ %i.go, %bb.as ] ; 3 uses
  %.1336.3.i = phi i32 [ %.1336.2.i, %bb.at ], [ 12, %bb.au ], [ 3, %bb.as ]
  %i.gs = fmul double %.1344.i, 9.848000e-01      ; 2 uses
  %i.gt = call double @llvm.fmuladd.f64(double %.1342.i, double 1.736000e-01, double %i.gs) ; 3 uses
  %i.gu = fcmp ogt double %i.gt, %.1338.3.i
  br i1 %i.gu, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gv = fneg double %i.gt                       ; 2 uses
  %i.gw = fcmp olt double %.1338.3.i, %i.gv
  br i1 %i.gw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.1338.4.i = phi double [ %.1338.3.i, %bb.aw ], [ %i.gv, %bb.ax ], [ %i.gt, %bb.av ] ; 3 uses
  %.1336.4.i = phi i32 [ %.1336.3.i, %bb.aw ], [ 13, %bb.ax ], [ 4, %bb.av ]
  %i.gx = call double @llvm.fmuladd.f64(double %.1342.i, double -1.736000e-01, double %i.gs) ; 3 uses
  %i.gy = fcmp ogt double %i.gx, %.1338.4.i
  br i1 %i.gy, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = fneg double %i.gx                       ; 2 uses
  %i.ha = fcmp olt double %.1338.4.i, %i.gz
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.1338.5.i = phi double [ %.1338.4.i, %bb.az ], [ %i.gz, %bb.ba ], [ %i.gx, %bb.ay ] ; 3 uses
  %.1336.5.i = phi i32 [ %.1336.4.i, %bb.az ], [ 14, %bb.ba ], [ 5, %bb.ay ]
  %i.hb = call double @llvm.fmuladd.f64(double %.1342.i, double -5.000000e-01, double %i.gn) ; 3 uses
  %i.hc = fcmp ogt double %i.hb, %.1338.5.i
  br i1 %i.hc, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hd = fneg double %i.hb                       ; 2 uses
  %i.he = fcmp olt double %.1338.5.i, %i.hd
  br i1 %i.he, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.1338.6.i = phi double [ %.1338.5.i, %bb.bc ], [ %i.hd, %bb.bd ], [ %i.hb, %bb.bb ] ; 3 uses
  %.1336.6.i = phi i32 [ %.1336.5.i, %bb.bc ], [ 15, %bb.bd ], [ 6, %bb.bb ]
  %i.hf = call double @llvm.fmuladd.f64(double %.1342.i, double -7.660000e-01, double %i.gi) ; 3 uses
  %i.hg = fcmp ogt double %i.hf, %.1338.6.i
  br i1 %i.hg, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hh = fneg double %i.hf                       ; 2 uses
  %i.hi = fcmp olt double %.1338.6.i, %i.hh
  br i1 %i.hi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.1338.7.i = phi double [ %.1338.6.i, %bb.bf ], [ %i.hh, %bb.bg ], [ %i.hf, %bb.be ] ; 2 uses
  %.1336.7.i = phi i32 [ %.1336.6.i, %bb.bf ], [ 16, %bb.bg ], [ 7, %bb.be ]
  %i.hj = call double @llvm.fmuladd.f64(double %.1342.i, double f0xBFEE1205BC01A36E, double %i.gd) ; 2 uses
  %i.hk = fcmp ogt double %i.hj, %.1338.7.i
  br i1 %i.hk, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hl = fneg double %i.hj
  %i.hm = fcmp olt double %.1338.7.i, %i.hl
  br i1 %i.hm, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.1336.8.i = phi i32 [ %.1336.7.i, %bb.bi ], [ 17, %bb.bj ], [ 8, %bb.bh ] ; 4 uses
  %.1340.i = select i1 %i.fx, double %i.fc, double %.0339.i
  %i.hn = uitofp nneg i32 %storemerge379494.i to double
  %i.ho = fadd double %i.hn, 5.000000e-01
  %i.hp = fdiv double %i.ho, %i.as
  %i.hq = fadd double %i.hp, -5.000000e-01        ; 2 uses
  %i.hr = call double @llvm.floor.f64(double %i.hq)
  %i.hs = fptosi double %i.hr to i32              ; 7 uses
  %i.ht = sitofp i32 %i.hs to double
  %i.hu = fsub double %i.hq, %i.ht                ; 3 uses
  %i.hv = fsub double 1.000000e+00, %i.hu         ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %.1340.i) ; 4 uses
  %i.hw = icmp sgt i32 %i.hs, -1
  %i.hx = or i32 %i.hs, %i.dj
  %or.cond.i = icmp sgt i32 %i.hx, -1
  br i1 %or.cond.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hy = fmul double %i.dm, %i.hv
  %i.hz = mul nsw i32 %i.hs, 18
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ia
  %i.ic = zext nneg i32 %.1336.8.i to i64
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ic ; 2 uses
  %i.ie = load double, ptr %i.id, align 8, !tbaa !146
  %i.if = call double @llvm.fmuladd.f64(double %i.hy, double %sqrt.i, double %i.ie)
  store double %i.if, ptr %i.id, align 8, !tbaa !146
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.dn, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ig = add nsw i32 %i.hs, 1                    ; 2 uses
  %i.ih = icmp slt i32 %i.ig, %i.ay
  br i1 %i.ih, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ii = fmul double %i.dm, %i.hu
  %i.ij = mul nsw i32 %i.ig, 18
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ik
  %i.im = zext nneg i32 %.1336.8.i to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.il, i64 %i.im ; 2 uses
  %i.io = load double, ptr %i.in, align 8, !tbaa !146
  %i.ip = call double @llvm.fmuladd.f64(double %i.ii, double %sqrt.i, double %i.io)
  store double %i.ip, ptr %i.in, align 8, !tbaa !146
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %or.cond3.i = and i1 %i.ds, %i.hw
  br i1 %or.cond3.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iq = fmul double %i.dl, %i.hv
  %i.ir = mul nuw nsw i32 %i.hs, 18
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.is
  %i.iu = zext nneg i32 %.1336.8.i to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !146
  %i.ix = call double @llvm.fmuladd.f64(double %i.iq, double %sqrt.i, double %i.iw)
  store double %i.ix, ptr %i.iv, align 8, !tbaa !146
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.ds, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.iy = add nsw i32 %i.hs, 1                    ; 2 uses
  %i.iz = icmp slt i32 %i.iy, %i.ay
  br i1 %i.iz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ja = fmul double %i.dl, %i.hu
  %i.jb = mul nsw i32 %i.iy, 18
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.jc
  %i.je = zext nneg i32 %.1336.8.i to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.je ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !146
  %i.jh = call double @llvm.fmuladd.f64(double %i.ja, double %sqrt.i, double %i.jg)
  store double %i.jh, ptr %i.jf, align 8, !tbaa !146
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.ji = add nuw nsw i32 %storemerge379494.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge379494.i, %i.da
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !147

.preheader488.i.split:                            ; preds = %._crit_edge501.i.loopexit
  %i.jj = icmp sgt <2 x i32> %i.ax, splat (i32 2) ; 2 uses
  %i.jk = extractelement <2 x i1> %i.jj, i64 0
  %i.jl = extractelement <2 x i1> %i.jj, i64 1
  %or.cond = select i1 %i.jl, i1 %i.jk, i1 false
  br i1 %or.cond, label %.preheader487.preheader.i, label %.preheader485.i

.preheader487.preheader.i:                        ; preds = %.preheader488.i.split
  %i.jm = add nsw i32 %i.bb, -1
  %i.jn = add nsw i32 %i.az, -1
  %wide.trip.count554.i = zext nneg i32 %i.jm to i64
  %wide.trip.count549.i = zext nneg i32 %i.jn to i64
  br label %.preheader487.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge501.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge501.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 8 uses
  %i.jo = mul i64 %i.ef, %indvars.iv.i            ; 2 uses
  %23 = add i64 %i.ea, %i.jo
  %24 = add i64 %i.eb, %i.jo
  %umax113 = call i64 @llvm.umax.i64(i64 %23, i64 %24)
  %25 = mul i64 %i.eg, %indvars.iv.i
  %26 = add i64 %25, %i.ec
  %i.jp = add i64 %umax113, %26
  %27 = lshr i64 %i.jp, 3                         ; 2 uses
  %28 = add nuw nsw i64 %27, 1                    ; 2 uses
  %i.jq = mul i64 %indvars.iv.i, %i.cf
  %29 = getelementptr [8 x i8], ptr %i.cm, i64 %i.jq ; 6 uses
  %30 = getelementptr inbounds nuw i8, ptr %29, i64 %.idx.i
  %31 = mul i64 %indvars.iv.i, %i.ce
  %32 = getelementptr [8 x i8], ptr %i.ck, i64 %31 ; 6 uses
  %min.iters.check = icmp eq i64 %27, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.jr = mul i64 %i.ee, %indvars.iv.i
  %i.js = getelementptr i8, ptr %i.ck, i64 %i.jr
  %scevgep111 = getelementptr i8, ptr %i.js, i64 144
  %i.jt = mul i64 %i.dz, %indvars.iv.i            ; 3 uses
  %i.ju = add i64 %i.ea, %i.jt
  %i.jv = add i64 %i.eb, %i.jt
  %umax = call i64 @llvm.umax.i64(i64 %i.ju, i64 %i.jv)
  %i.jw = mul i64 %i.ed, %indvars.iv.i
  %i.jx = add i64 %i.jw, %i.ec
  %i.jy = add i64 %umax, %i.jx                    ; 2 uses
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = mul i64 %i.jz, 144
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.ka
  %i.kb = getelementptr i8, ptr %i.cm, i64 %i.jt
  %scevgep = getelementptr i8, ptr %i.kb, i64 8
  %i.kc = and i64 %i.jy, -8
  %scevgep110 = getelementptr i8, ptr %scevgep, i64 %i.kc
  %bound0 = icmp ult ptr %29, %scevgep112
  %bound1 = icmp ult ptr %32, %scevgep110
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %28, 4611686018427387902       ; 4 uses
  %i.kd = shl i64 %n.vec, 3
  %i.ke = getelementptr i8, ptr %29, i64 %i.kd
  %i.kf = mul i64 %n.vec, 144
  %i.kg = getelementptr i8, ptr %32, i64 %i.kf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %29, i64 %i.kh ; 10 uses
  %i.ki = mul i64 %index, 144                     ; 2 uses
  %next.gep114.a = getelementptr i8, ptr %32, i64 %i.ki ; 18 uses
  %i.kj = getelementptr i8, ptr %32, i64 %i.ki    ; 18 uses
  %next.gep115 = getelementptr i8, ptr %i.kj, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.kk = load double, ptr %next.gep114.a, align 8, !tbaa !146, !alias.scope !151
  %i.kl = load double, ptr %next.gep115, align 8, !tbaa !146, !alias.scope !151
  %i.km = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %i.kl, i64 1
  %i.ko = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 72
  %i.kp = getelementptr i8, ptr %i.kj, i64 216
  %i.kq = load double, ptr %i.ko, align 8, !tbaa !146, !alias.scope !151
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !146, !alias.scope !151
  %i.ks = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.kt = insertelement <2 x double> %i.ks, double %i.kr, i64 1
  %i.ku = fadd <2 x double> %i.kn, %i.kt          ; 2 uses
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> %i.ku, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.kv, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.kw = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 8
  %i.kx = getelementptr i8, ptr %i.kj, i64 152
  %i.ky = load double, ptr %i.kw, align 8, !tbaa !146, !alias.scope !151
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !146, !alias.scope !151
  %i.la = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.kz, i64 1
  %i.lc = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 80
  %i.ld = getelementptr i8, ptr %i.kj, i64 224
  %i.le = load double, ptr %i.lc, align 8, !tbaa !146, !alias.scope !151
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !146, !alias.scope !151
  %i.lg = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lh = insertelement <2 x double> %i.lg, double %i.lf, i64 1
  %i.li = fadd <2 x double> %i.lb, %i.lh          ; 2 uses
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.li, <2 x double> %i.kv) ; 2 uses
  store <2 x double> %i.lj, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.lk = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 16
  %i.ll = getelementptr i8, ptr %i.kj, i64 160
  %i.lm = load double, ptr %i.lk, align 8, !tbaa !146, !alias.scope !151
  %i.ln = load double, ptr %i.ll, align 8, !tbaa !146, !alias.scope !151
  %i.lo = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lp = insertelement <2 x double> %i.lo, double %i.ln, i64 1
  %i.lq = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 88
  %i.lr = getelementptr i8, ptr %i.kj, i64 232
  %i.ls = load double, ptr %i.lq, align 8, !tbaa !146, !alias.scope !151
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !146, !alias.scope !151
  %i.lu = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.lt, i64 1
  %i.lw = fadd <2 x double> %i.lp, %i.lv          ; 2 uses
  %i.lx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lw, <2 x double> %i.lj) ; 2 uses
  store <2 x double> %i.lx, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.ly = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 24
  %i.lz = getelementptr i8, ptr %i.kj, i64 168
  %i.ma = load double, ptr %i.ly, align 8, !tbaa !146, !alias.scope !151
  %i.mb = load double, ptr %i.lz, align 8, !tbaa !146, !alias.scope !151
  %i.mc = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.md = insertelement <2 x double> %i.mc, double %i.mb, i64 1
  %i.me = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 96
  %i.mf = getelementptr i8, ptr %i.kj, i64 240
  %i.mg = load double, ptr %i.me, align 8, !tbaa !146, !alias.scope !151
  %i.mh = load double, ptr %i.mf, align 8, !tbaa !146, !alias.scope !151
  %i.mi = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.mh, i64 1
  %i.mk = fadd <2 x double> %i.md, %i.mj          ; 2 uses
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.mk, <2 x double> %i.lx) ; 2 uses
  store <2 x double> %i.ml, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.mm = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 32
  %i.mn = getelementptr i8, ptr %i.kj, i64 176
  %i.mo = load double, ptr %i.mm, align 8, !tbaa !146, !alias.scope !151
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !146, !alias.scope !151
  %i.mq = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.mp, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 104
  %i.mt = getelementptr i8, ptr %i.kj, i64 248
  %i.mu = load double, ptr %i.ms, align 8, !tbaa !146, !alias.scope !151
  %i.mv = load double, ptr %i.mt, align 8, !tbaa !146, !alias.scope !151
  %i.mw = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mv, i64 1
  %i.my = fadd <2 x double> %i.mr, %i.mx          ; 2 uses
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.my, <2 x double> %i.ml) ; 2 uses
  store <2 x double> %i.mz, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.na = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 40
  %i.nb = getelementptr i8, ptr %i.kj, i64 184
  %i.nc = load double, ptr %i.na, align 8, !tbaa !146, !alias.scope !151
  %i.nd = load double, ptr %i.nb, align 8, !tbaa !146, !alias.scope !151
  %i.ne = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.nd, i64 1
  %i.ng = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 112
  %i.nh = getelementptr i8, ptr %i.kj, i64 256
  %i.ni = load double, ptr %i.ng, align 8, !tbaa !146, !alias.scope !151
  %i.nj = load double, ptr %i.nh, align 8, !tbaa !146, !alias.scope !151
  %i.nk = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nl = insertelement <2 x double> %i.nk, double %i.nj, i64 1
  %i.nm = fadd <2 x double> %i.nf, %i.nl          ; 2 uses
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.nm, <2 x double> %i.mz) ; 2 uses
  store <2 x double> %i.nn, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.no = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 48
  %i.np = getelementptr i8, ptr %i.kj, i64 192
  %i.nq = load double, ptr %i.no, align 8, !tbaa !146, !alias.scope !151
  %i.nr = load double, ptr %i.np, align 8, !tbaa !146, !alias.scope !151
  %i.ns = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %i.nr, i64 1
  %i.nu = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 120
  %i.nv = getelementptr i8, ptr %i.kj, i64 264
  %i.nw = load double, ptr %i.nu, align 8, !tbaa !146, !alias.scope !151
  %i.nx = load double, ptr %i.nv, align 8, !tbaa !146, !alias.scope !151
  %i.ny = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.nz = insertelement <2 x double> %i.ny, double %i.nx, i64 1
  %i.oa = fadd <2 x double> %i.nt, %i.nz          ; 2 uses
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.oa, <2 x double> %i.nn) ; 2 uses
  store <2 x double> %i.ob, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.oc = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 56
  %i.od = getelementptr i8, ptr %i.kj, i64 200
  %i.oe = load double, ptr %i.oc, align 8, !tbaa !146, !alias.scope !151
  %i.of = load double, ptr %i.od, align 8, !tbaa !146, !alias.scope !151
  %i.og = insertelement <2 x double> poison, double %i.oe, i64 0
  %i.oh = insertelement <2 x double> %i.og, double %i.of, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 128
  %i.oj = getelementptr i8, ptr %i.kj, i64 272
  %i.ok = load double, ptr %i.oi, align 8, !tbaa !146, !alias.scope !151
  %i.ol = load double, ptr %i.oj, align 8, !tbaa !146, !alias.scope !151
  %i.om = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.ol, i64 1
  %i.oo = fadd <2 x double> %i.oh, %i.on          ; 2 uses
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> %i.oo, <2 x double> %i.ob) ; 2 uses
  store <2 x double> %i.op, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.oq = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 64
  %i.or = getelementptr i8, ptr %i.kj, i64 208
  %i.os = load double, ptr %i.oq, align 8, !tbaa !146, !alias.scope !151
  %i.ot = load double, ptr %i.or, align 8, !tbaa !146, !alias.scope !151
  %i.ou = insertelement <2 x double> poison, double %i.os, i64 0
  %i.ov = insertelement <2 x double> %i.ou, double %i.ot, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 136
  %i.ox = getelementptr i8, ptr %i.kj, i64 280
  %i.oy = load double, ptr %i.ow, align 8, !tbaa !146, !alias.scope !151
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !146, !alias.scope !151
  %i.pa = insertelement <2 x double> poison, double %i.oy, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %i.oz, i64 1
  %i.pc = fadd <2 x double> %i.ov, %i.pb          ; 2 uses
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pc, <2 x double> %i.pc, <2 x double> %i.op)
  store <2 x double> %i.pd, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.pe = icmp eq i64 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %28, %n.vec
  br i1 %cmp.n, label %._crit_edge501.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.0330499.i.ph = phi ptr [ %29, %vector.memcheck ], [ %29, %.lr.ph.preheader.i ], [ %i.ke, %middle.block ]
  %.0331498.i.ph = phi ptr [ %32, %vector.memcheck ], [ %32, %.lr.ph.preheader.i ], [ %i.kg, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0330499.i = phi ptr [ %i.rg, %.lr.ph.i ], [ %.0330499.i.ph, %.lr.ph.i.preheader ] ; 11 uses
  %.0331498.i = phi ptr [ %i.rh, %.lr.ph.i ], [ %.0331498.i.ph, %.lr.ph.i.preheader ] ; 19 uses
  store double 0.000000e+00, ptr %.0330499.i, align 8, !tbaa !146
  %i.pf = load double, ptr %.0331498.i, align 8, !tbaa !146
  %i.pg = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 72
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !146
  %i.pi = fadd double %i.pf, %i.ph                ; 2 uses
  %i.pj = call double @llvm.fmuladd.f64(double %i.pi, double %i.pi, double 0.000000e+00) ; 2 uses
  store double %i.pj, ptr %.0330499.i, align 8, !tbaa !146
  %i.pk = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 8
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !146
  %i.pm = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 80
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !146
  %i.po = fadd double %i.pl, %i.pn                ; 2 uses
  %i.pp = call double @llvm.fmuladd.f64(double %i.po, double %i.po, double %i.pj) ; 2 uses
  store double %i.pp, ptr %.0330499.i, align 8, !tbaa !146
  %i.pq = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 16
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !146
  %i.ps = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 88
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !146
  %i.pu = fadd double %i.pr, %i.pt                ; 2 uses
  %i.pv = call double @llvm.fmuladd.f64(double %i.pu, double %i.pu, double %i.pp) ; 2 uses
  store double %i.pv, ptr %.0330499.i, align 8, !tbaa !146
  %i.pw = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 24
  %i.px = load double, ptr %i.pw, align 8, !tbaa !146
  %i.py = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 96
  %i.pz = load double, ptr %i.py, align 8, !tbaa !146
  %i.qa = fadd double %i.px, %i.pz                ; 2 uses
  %i.qb = call double @llvm.fmuladd.f64(double %i.qa, double %i.qa, double %i.pv) ; 2 uses
  store double %i.qb, ptr %.0330499.i, align 8, !tbaa !146
  %i.qc = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 32
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !146
  %i.qe = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 104
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !146
  %i.qg = fadd double %i.qd, %i.qf                ; 2 uses
  %i.qh = call double @llvm.fmuladd.f64(double %i.qg, double %i.qg, double %i.qb) ; 2 uses
  store double %i.qh, ptr %.0330499.i, align 8, !tbaa !146
  %i.qi = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 40
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !146
  %i.qk = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 112
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !146
  %i.qm = fadd double %i.qj, %i.ql                ; 2 uses
  %i.qn = call double @llvm.fmuladd.f64(double %i.qm, double %i.qm, double %i.qh) ; 2 uses
  store double %i.qn, ptr %.0330499.i, align 8, !tbaa !146
  %i.qo = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 48
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !146
  %i.qq = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 120
  %i.qr = load double, ptr %i.qq, align 8, !tbaa !146
  %i.qs = fadd double %i.qp, %i.qr                ; 2 uses
  %i.qt = call double @llvm.fmuladd.f64(double %i.qs, double %i.qs, double %i.qn) ; 2 uses
  store double %i.qt, ptr %.0330499.i, align 8, !tbaa !146
  %i.qu = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 56
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !146
  %i.qw = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 128
  %i.qx = load double, ptr %i.qw, align 8, !tbaa !146
  %i.qy = fadd double %i.qv, %i.qx                ; 2 uses
  %i.qz = call double @llvm.fmuladd.f64(double %i.qy, double %i.qy, double %i.qt) ; 2 uses
  store double %i.qz, ptr %.0330499.i, align 8, !tbaa !146
  %i.ra = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 64
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !146
  %i.rc = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 136
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !146
  %i.re = fadd double %i.rb, %i.rd                ; 2 uses
  %i.rf = call double @llvm.fmuladd.f64(double %i.re, double %i.re, double %i.qz)
  store double %i.rf, ptr %.0330499.i, align 8, !tbaa !146
  %i.rg = getelementptr inbounds nuw i8, ptr %.0330499.i, i64 8 ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 144
  %i.ri = icmp ult ptr %i.rg, %30
  br i1 %i.ri, label %.lr.ph.i, label %._crit_edge501.i.loopexit, !llvm.loop !156

._crit_edge501.i.loopexit:                        ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond543.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.11.0.insert.ext.i
  br i1 %exitcond543.not.i, label %.preheader488.i.split, label %.lr.ph.preheader.i, !llvm.loop !157

.preheader487.i:                                  ; preds = %._crit_edge516.i, %.preheader487.preheader.i
  %indvars.iv551.i = phi i64 [ 1, %.preheader487.preheader.i ], [ %indvars.iv.next552.i, %._crit_edge516.i ] ; 5 uses
  %i.rj = mul i64 %indvars.iv551.i, %i.cg
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.rj
  %i.rl = add nsw i64 %indvars.iv551.i, -1
  %i.rm = mul i64 %indvars.iv551.i, %i.cf
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.rm
  %i.ro = mul i64 %i.rl, %i.cf
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.ro
  %i.rq = mul i64 %indvars.iv551.i, %i.ce
  %i.rr = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.rq
  br label %bb.bv

.preheader485.i:                                  ; preds = %._crit_edge516.i, %.lr.ph503.i, %.preheader488.i.split, %.preheader489.i
  %i.rs = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.rt = load i32, ptr %i.rs, align 8, !tbaa !8  ; 3 uses
  %i.ru = icmp sgt i32 %i.rt, 0
  br i1 %i.ru, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %.preheader485.i
  %i.rv = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !17 ; 8 uses
  %i.rx = icmp sgt i32 %i.rw, 0
  br i1 %i.rx, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.ry = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.rz = add nsw i32 %i.rw, -32
  %i.sa = add nsw i32 %i.rt, -1
  %i.sb = zext nneg i32 %i.rw to i64              ; 2 uses
  %i.sc = sext i32 %i.rz to i64                   ; 3 uses
  %i.sd = zext nneg i32 %i.sa to i64
  %wide.trip.count575.i = zext nneg i32 %i.rt to i64
  %i.se = icmp samesign ugt i32 %i.rw, 32
  %i.sf = load i32, ptr %i.ry, align 4
  %.fr529.i = freeze i32 %i.sf
  %i.sg = icmp slt i32 %.fr529.i, 2               ; 6 uses
  %i.sh = add nsw i64 %i.sb, -1
  %i.si = lshr i64 %i.sh, 5
  %i.sj = add nuw nsw i64 %i.si, 1                ; 8 uses
  %i.sk = add nsw i64 %i.sb, -33                  ; 2 uses
  %i.sl = lshr i64 %i.sk, 5                       ; 2 uses
  %i.sm = add nuw nsw i64 %i.sl, 1                ; 2 uses
  %xtraiter = and i64 %i.sj, 3                    ; 3 uses
  %i.sn = icmp ult i32 %i.rw, 97
  %unroll_iter = and i64 %i.sj, 1152921504606846972
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  %xtraiter130 = and i64 %i.sj, 7                 ; 3 uses
  %i.so = icmp ult i32 %i.rw, 225
  %unroll_iter134 = and i64 %i.sj, 1152921504606846968
  %lcmp.mod132.not = icmp eq i64 %xtraiter130, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter130, 0
  %i.sp = icmp eq i64 %i.sl, 0
  %unroll_iter140 = and i64 %i.sm, 1152921504606846974
  %i.sq = and i64 %i.sk, 32
  %lcmp.mod138.not.not = icmp eq i64 %i.sq, 0
  %lcmp.mod139 = trunc i64 %i.sm to i1
  %xtraiter142 = and i64 %i.sj, 7                 ; 3 uses
  %i.sr = icmp ult i32 %i.rw, 225
  %unroll_iter146 = and i64 %i.sj, 1152921504606846968
  %lcmp.mod144.not = icmp eq i64 %xtraiter142, 0
  %lcmp.mod145 = icmp ne i64 %xtraiter142, 0
  %xtraiter148 = and i64 %i.sj, 7                 ; 3 uses
  %i.ss = icmp ult i32 %i.rw, 225
  %unroll_iter152 = and i64 %i.sj, 1152921504606846968
  %lcmp.mod150.not = icmp eq i64 %xtraiter148, 0
  %lcmp.mod151 = icmp ne i64 %xtraiter148, 0
  br label %.preheader.i

._crit_edge516.i:                                 ; preds = %.preheader486.i
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 1 ; 2 uses
  %exitcond555.not.i = icmp eq i64 %indvars.iv.next552.i, %wide.trip.count554.i
  br i1 %exitcond555.not.i, label %.preheader485.i, label %.preheader487.i, !llvm.loop !158

bb.bv:                                            ; preds = %.preheader486.i, %.preheader487.i
  %indvars.iv546.i = phi i64 [ 1, %.preheader487.i ], [ %indvars.iv.next547.i, %.preheader486.i ] ; 5 uses
  %.idx615.i = shl nuw nsw i64 %indvars.iv546.i, 8
  %i.st = getelementptr inbounds nuw i8, ptr %i.rk, i64 %.idx615.i
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %indvars.iv546.i ; 4 uses
  %i.sv = load double, ptr %i.su, align 8, !tbaa !146 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !146
  %i.sy = fadd double %i.sv, %i.sx
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.cf ; 2 uses
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !146 ; 2 uses
  %i.tb = fadd double %i.sy, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.td = load double, ptr %i.tc, align 8, !tbaa !146
  %i.te = fadd double %i.tb, %i.td
  %i.tf = fadd double %i.te, 1.000000e-04
  %i.tg = call double @sqrt(double noundef %i.tf) #18
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv546.i ; 4 uses
  %i.ti = load double, ptr %i.th, align 8, !tbaa !146 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !146
  %i.tl = fadd double %i.ti, %i.tk
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.cf ; 2 uses
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !146 ; 2 uses
  %i.to = fadd double %i.tl, %i.tn
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !146
  %i.tr = fadd double %i.to, %i.tq
  %i.ts = fadd double %i.tr, 1.000000e-04
  %i.tt = call double @sqrt(double noundef %i.ts) #18
  %i.tu = getelementptr inbounds i8, ptr %i.su, i64 -8 ; 2 uses
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !146
  %i.tw = fadd double %i.sv, %i.tv
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.cf
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !146
  %i.tz = fadd double %i.tw, %i.ty
  %i.ua = fadd double %i.ta, %i.tz
  %i.ub = fadd double %i.ua, 1.000000e-04
  %i.uc = call double @sqrt(double noundef %i.ub) #18
  %i.ud = insertelement <2 x double> poison, double %i.tt, i64 0
  %i.ue = insertelement <2 x double> %i.ud, double %i.uc, i64 1
  %i.uf = fdiv <2 x double> splat (double 1.000000e+00), %i.ue ; 4 uses
  %i.ug = getelementptr inbounds i8, ptr %i.th, i64 -8 ; 2 uses
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !146
  %i.ui = fadd double %i.ti, %i.uh
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ug, i64 %i.cf
  %i.uk = load double, ptr %i.uj, align 8, !tbaa !146
  %i.ul = fadd double %i.ui, %i.uk
  %i.um = fadd double %i.tn, %i.ul
  %i.un = fadd double %i.um, 1.000000e-04
  %i.uo = call double @sqrt(double noundef %i.un) #18
  %i.up = insertelement <2 x double> poison, double %i.tg, i64 0
  %i.uq = insertelement <2 x double> %i.up, double %i.uo, i64 1
  %i.ur = fdiv <2 x double> splat (double 1.000000e+00), %i.uq ; 4 uses
  %i.us = extractelement <2 x double> %i.ur, i64 1 ; 8 uses
  %i.ut = extractelement <2 x double> %i.ur, i64 0 ; 8 uses
  %.idx616.i = mul nuw nsw i64 %indvars.iv546.i, 144
  %i.uu = getelementptr inbounds nuw i8, ptr %i.rr, i64 %.idx616.i ; 19 uses
  br label %bb.bw

.preheader486.i:                                  ; preds = %bb.bw
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !146
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 72
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !146
  %i.uy = fadd double %i.uv, %i.ux                ; 4 uses
  %i.uz = fmul double %i.ut, %i.uy                ; 2 uses
  %i.va = fcmp ogt double %i.uz, 2.000000e-01
  %.sroa.speculated413.i = select i1 %i.va, double 2.000000e-01, double %i.uz
  %i.vb = extractelement <2 x double> %i.uf, i64 0 ; 8 uses
  %i.vc = fmul double %i.vb, %i.uy                ; 2 uses
  %i.vd = fcmp ogt double %i.vc, 2.000000e-01
  %.sroa.speculated408.i = select i1 %i.vd, double 2.000000e-01, double %i.vc
  %i.ve = extractelement <2 x double> %i.uf, i64 1 ; 8 uses
  %i.vf = fmul double %i.ve, %i.uy                ; 2 uses
  %i.vg = fcmp ogt double %i.vf, 2.000000e-01
  %.sroa.speculated403.i = select i1 %i.vg, double 2.000000e-01, double %i.vf
  %i.vh = fmul double %i.us, %i.uy                ; 2 uses
  %i.vi = fcmp ogt double %i.vh, 2.000000e-01
  %.sroa.speculated.i = select i1 %i.vi, double 2.000000e-01, double %i.vh
  %i.vj = fadd double %.sroa.speculated413.i, %.sroa.speculated408.i
  %i.vk = fadd double %.sroa.speculated403.i, %i.vj
  %i.vl = fadd double %.sroa.speculated.i, %i.vk
  %i.vm = fmul double %i.vl, 5.000000e-01
  %i.vn = getelementptr inbounds nuw i8, ptr %.0325504.i, i64 16
  store double %i.vm, ptr %i.aby, align 8, !tbaa !146
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !146
  %i.vq = getelementptr inbounds nuw i8, ptr %i.uu, i64 80
  %i.vr = load double, ptr %i.vq, align 8, !tbaa !146
  %i.vs = fadd double %i.vp, %i.vr                ; 4 uses
  %i.vt = fmul double %i.ut, %i.vs                ; 2 uses
  %i.vu = fcmp ogt double %i.vt, 2.000000e-01
  %.sroa.speculated413.1.i = select i1 %i.vu, double 2.000000e-01, double %i.vt
  %i.vv = fmul double %i.vb, %i.vs                ; 2 uses
  %i.vw = fcmp ogt double %i.vv, 2.000000e-01
  %.sroa.speculated408.1.i = select i1 %i.vw, double 2.000000e-01, double %i.vv
  %i.vx = fmul double %i.ve, %i.vs                ; 2 uses
  %i.vy = fcmp ogt double %i.vx, 2.000000e-01
  %.sroa.speculated403.1.i = select i1 %i.vy, double 2.000000e-01, double %i.vx
  %i.vz = fmul double %i.us, %i.vs                ; 2 uses
  %i.wa = fcmp ogt double %i.vz, 2.000000e-01
  %.sroa.speculated.1.i = select i1 %i.wa, double 2.000000e-01, double %i.vz
  %i.wb = fadd double %.sroa.speculated413.1.i, %.sroa.speculated408.1.i
  %i.wc = fadd double %.sroa.speculated403.1.i, %i.wb
  %i.wd = fadd double %.sroa.speculated.1.i, %i.wc
  %i.we = fmul double %i.wd, 5.000000e-01
  %i.wf = getelementptr inbounds nuw i8, ptr %.0325504.i, i64 24
  store double %i.we, ptr %i.vn, align 8, !tbaa !146
  %i.wg = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !146
  %i.wi = getelementptr inbounds nuw i8, ptr %i.uu, i64 88
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !146
  %i.wk = fadd double %i.wh, %i.wj                ; 4 uses
  %i.wl = fmul double %i.ut, %i.wk                ; 2 uses
  %i.wm = fcmp ogt double %i.wl, 2.000000e-01
  %.sroa.speculated413.2.i = select i1 %i.wm, double 2.000000e-01, double %i.wl
  %i.wn = fmul double %i.vb, %i.wk                ; 2 uses
  %i.wo = fcmp ogt double %i.wn, 2.000000e-01
end_hunk_0
