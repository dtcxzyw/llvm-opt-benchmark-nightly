Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerCSRTUtils?download=true
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
  %storemerge495.i = phi i32 [ 1, %.preheader490.lr.ph.split.i ], [ %i.en, %._crit_edge.i ] ; 4 uses
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
  %23 = mul i64 %i.cf, -8
  br label %.lr.ph.preheader.i

bb.aa:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body389.i
  %.pn365.i = phi { ptr, i32 } [ %i.br, %.body389.i ], [ %i.eg, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.cd

bb.ac:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn367.i = phi { ptr, i32 } [ %i.ei, %bb.ad ], [ %i.eh, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cc

bb.af:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ag:                                            ; preds = %bb.w
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ah:                                            ; preds = %bb.x
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ai:                                            ; preds = %bb.y
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

._crit_edge.i:                                    ; preds = %bb.bu
  %i.en = add nuw nsw i32 %storemerge495.i, 1
  %exitcond540.not.i = icmp eq i32 %storemerge495.i, %i.db
  br i1 %exitcond540.not.i, label %.preheader489.i, label %.preheader490.i, !llvm.loop !145

bb.aj:                                            ; preds = %bb.bu, %.preheader490.i
  %storemerge379494.i = phi i32 [ 1, %.preheader490.i ], [ %i.jh, %bb.bu ] ; 4 uses
  %.sroa.speculated442.i = call i32 @llvm.smin.i32(i32 %i.cx, i32 %storemerge379494.i)
  %i.eo = mul nsw i32 %.sroa.speculated442.i, 3
  %i.ep = sext i32 %i.eo to i64
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ep ; 7 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %gep.i, i64 %i.cd
  %i.er = load double, ptr %i.eq, align 8, !tbaa !146
  %i.es = getelementptr inbounds [8 x i8], ptr %gep.i, i64 %i.ct
  %i.et = load double, ptr %i.es, align 8, !tbaa !146
  %i.eu = fsub double %i.er, %i.et                ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep.i, i64 24
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !146
  %i.ex = getelementptr inbounds i8, ptr %gep.i, i64 -24
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !146
  %i.ez = fsub double %i.ew, %i.ey                ; 3 uses
  %i.fa = fmul double %i.eu, %i.eu
  %i.fb = call double @llvm.fmuladd.f64(double %i.ez, double %i.ez, double %i.fa) ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.cd
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.ct
  %i.ff = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.fg = getelementptr inbounds i8, ptr %gep.i, i64 -16
  %i.fh = load <2 x double>, ptr %i.fd, align 8, !tbaa !146
  %i.fi = load <2 x double>, ptr %i.fe, align 8, !tbaa !146
  %i.fj = fsub <2 x double> %i.fh, %i.fi          ; 4 uses
  %i.fk = load <2 x double>, ptr %i.ff, align 8, !tbaa !146
  %i.fl = load <2 x double>, ptr %i.fg, align 8, !tbaa !146
  %i.fm = fsub <2 x double> %i.fk, %i.fl          ; 4 uses
  %i.fn = fmul <2 x double> %i.fj, %i.fj
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fm, <2 x double> %i.fn) ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0 ; 2 uses
  %i.fq = extractelement <2 x double> %i.fo, i64 1 ; 2 uses
  %i.fr = fcmp ogt double %i.fp, %i.fq            ; 3 uses
  %i.fs = extractelement <2 x double> %i.fj, i64 0
  %i.ft = extractelement <2 x double> %i.fj, i64 1
  %.0343.i = select i1 %i.fr, double %i.fs, double %i.ft
  %i.fu = extractelement <2 x double> %i.fm, i64 0
  %i.fv = extractelement <2 x double> %i.fm, i64 1
  %.0341.i = select i1 %i.fr, double %i.fu, double %i.fv
  %.0339.i = select i1 %i.fr, double %i.fp, double %i.fq ; 2 uses
  %i.fw = fcmp ogt double %i.fb, %.0339.i         ; 3 uses
  %.1344.i = select i1 %i.fw, double %i.eu, double %.0343.i ; 5 uses
  %.1342.i = select i1 %i.fw, double %i.ez, double %.0341.i ; 9 uses
  %i.fx = fmul double %.1344.i, 0.000000e+00
  %i.fy = fadd double %.1342.i, %i.fx             ; 4 uses
  %i.fz = fcmp ogt double %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ga = fcmp olt double %i.fy, 0.000000e+00
  br i1 %i.ga, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gb = fneg double %i.fy
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.1338.i = phi double [ 0.000000e+00, %bb.ak ], [ %i.gb, %bb.al ], [ %i.fy, %bb.aj ] ; 3 uses
  %.1336.i = phi i32 [ 0, %bb.ak ], [ 9, %bb.al ], [ 0, %bb.aj ]
  %i.gc = fmul double %.1344.i, 3.420000e-01      ; 2 uses
  %i.gd = call double @llvm.fmuladd.f64(double %.1342.i, double f0x3FEE1205BC01A36E, double %i.gc) ; 3 uses
  %i.ge = fcmp ogt double %i.gd, %.1338.i
  br i1 %i.ge, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gf = fneg double %i.gd                       ; 2 uses
  %i.gg = fcmp olt double %.1338.i, %i.gf
  br i1 %i.gg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.1338.1.i = phi double [ %.1338.i, %bb.an ], [ %i.gf, %bb.ao ], [ %i.gd, %bb.am ] ; 3 uses
  %.1336.1.i = phi i32 [ %.1336.i, %bb.an ], [ 10, %bb.ao ], [ 1, %bb.am ]
  %i.gh = fmul double %.1344.i, 6.428000e-01      ; 2 uses
  %i.gi = call double @llvm.fmuladd.f64(double %.1342.i, double 7.660000e-01, double %i.gh) ; 3 uses
  %i.gj = fcmp ogt double %i.gi, %.1338.1.i
  br i1 %i.gj, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gk = fneg double %i.gi                       ; 2 uses
  %i.gl = fcmp olt double %.1338.1.i, %i.gk
  br i1 %i.gl, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1338.2.i = phi double [ %.1338.1.i, %bb.aq ], [ %i.gk, %bb.ar ], [ %i.gi, %bb.ap ] ; 3 uses
  %.1336.2.i = phi i32 [ %.1336.1.i, %bb.aq ], [ 11, %bb.ar ], [ 2, %bb.ap ]
  %i.gm = fmul double %.1344.i, 8.660000e-01      ; 2 uses
  %i.gn = call double @llvm.fmuladd.f64(double %.1342.i, double 5.000000e-01, double %i.gm) ; 3 uses
  %i.go = fcmp ogt double %i.gn, %.1338.2.i
  br i1 %i.go, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gp = fneg double %i.gn                       ; 2 uses
  %i.gq = fcmp olt double %.1338.2.i, %i.gp
  br i1 %i.gq, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.1338.3.i = phi double [ %.1338.2.i, %bb.at ], [ %i.gp, %bb.au ], [ %i.gn, %bb.as ] ; 3 uses
  %.1336.3.i = phi i32 [ %.1336.2.i, %bb.at ], [ 12, %bb.au ], [ 3, %bb.as ]
  %i.gr = fmul double %.1344.i, 9.848000e-01      ; 2 uses
  %i.gs = call double @llvm.fmuladd.f64(double %.1342.i, double 1.736000e-01, double %i.gr) ; 3 uses
  %i.gt = fcmp ogt double %i.gs, %.1338.3.i
  br i1 %i.gt, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gu = fneg double %i.gs                       ; 2 uses
  %i.gv = fcmp olt double %.1338.3.i, %i.gu
  br i1 %i.gv, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.1338.4.i = phi double [ %.1338.3.i, %bb.aw ], [ %i.gu, %bb.ax ], [ %i.gs, %bb.av ] ; 3 uses
  %.1336.4.i = phi i32 [ %.1336.3.i, %bb.aw ], [ 13, %bb.ax ], [ 4, %bb.av ]
  %i.gw = call double @llvm.fmuladd.f64(double %.1342.i, double -1.736000e-01, double %i.gr) ; 3 uses
  %i.gx = fcmp ogt double %i.gw, %.1338.4.i
  br i1 %i.gx, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gy = fneg double %i.gw                       ; 2 uses
  %i.gz = fcmp olt double %.1338.4.i, %i.gy
  br i1 %i.gz, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.1338.5.i = phi double [ %.1338.4.i, %bb.az ], [ %i.gy, %bb.ba ], [ %i.gw, %bb.ay ] ; 3 uses
  %.1336.5.i = phi i32 [ %.1336.4.i, %bb.az ], [ 14, %bb.ba ], [ 5, %bb.ay ]
  %i.ha = call double @llvm.fmuladd.f64(double %.1342.i, double -5.000000e-01, double %i.gm) ; 3 uses
  %i.hb = fcmp ogt double %i.ha, %.1338.5.i
  br i1 %i.hb, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hc = fneg double %i.ha                       ; 2 uses
  %i.hd = fcmp olt double %.1338.5.i, %i.hc
  br i1 %i.hd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.1338.6.i = phi double [ %.1338.5.i, %bb.bc ], [ %i.hc, %bb.bd ], [ %i.ha, %bb.bb ] ; 3 uses
  %.1336.6.i = phi i32 [ %.1336.5.i, %bb.bc ], [ 15, %bb.bd ], [ 6, %bb.bb ]
  %i.he = call double @llvm.fmuladd.f64(double %.1342.i, double -7.660000e-01, double %i.gh) ; 3 uses
  %i.hf = fcmp ogt double %i.he, %.1338.6.i
  br i1 %i.hf, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hg = fneg double %i.he                       ; 2 uses
  %i.hh = fcmp olt double %.1338.6.i, %i.hg
  br i1 %i.hh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.1338.7.i = phi double [ %.1338.6.i, %bb.bf ], [ %i.hg, %bb.bg ], [ %i.he, %bb.be ] ; 2 uses
  %.1336.7.i = phi i32 [ %.1336.6.i, %bb.bf ], [ 16, %bb.bg ], [ 7, %bb.be ]
  %i.hi = call double @llvm.fmuladd.f64(double %.1342.i, double f0xBFEE1205BC01A36E, double %i.gc) ; 2 uses
  %i.hj = fcmp ogt double %i.hi, %.1338.7.i
  br i1 %i.hj, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hk = fneg double %i.hi
  %i.hl = fcmp olt double %.1338.7.i, %i.hk
  br i1 %i.hl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.1336.8.i = phi i32 [ %.1336.7.i, %bb.bi ], [ 17, %bb.bj ], [ 8, %bb.bh ] ; 4 uses
  %.1340.i = select i1 %i.fw, double %i.fb, double %.0339.i
  %i.hm = uitofp nneg i32 %storemerge379494.i to double
  %i.hn = fadd double %i.hm, 5.000000e-01
  %i.ho = fdiv double %i.hn, %i.as
  %i.hp = fadd double %i.ho, -5.000000e-01        ; 2 uses
  %i.hq = call double @llvm.floor.f64(double %i.hp)
  %i.hr = fptosi double %i.hq to i32              ; 7 uses
  %i.hs = sitofp i32 %i.hr to double
  %i.ht = fsub double %i.hp, %i.hs                ; 3 uses
  %i.hu = fsub double 1.000000e+00, %i.ht         ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %.1340.i) ; 4 uses
  %i.hv = icmp sgt i32 %i.hr, -1
  %i.hw = or i32 %i.hr, %i.dj
  %or.cond.i = icmp sgt i32 %i.hw, -1
  br i1 %or.cond.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hx = fmul double %i.dm, %i.hu
  %i.hy = mul nsw i32 %i.hr, 18
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.hz
  %i.ib = zext nneg i32 %.1336.8.i to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %i.ib ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !146
  %i.ie = call double @llvm.fmuladd.f64(double %i.hx, double %sqrt.i, double %i.id)
  store double %i.ie, ptr %i.ic, align 8, !tbaa !146
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.dn, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.if = add nsw i32 %i.hr, 1                    ; 2 uses
  %i.ig = icmp slt i32 %i.if, %i.ay
  br i1 %i.ig, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ih = fmul double %i.dm, %i.ht
  %i.ii = mul nsw i32 %i.if, 18
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ij
  %i.il = zext nneg i32 %.1336.8.i to i64
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.il ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !146
  %i.io = call double @llvm.fmuladd.f64(double %i.ih, double %sqrt.i, double %i.in)
  store double %i.io, ptr %i.im, align 8, !tbaa !146
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %or.cond3.i = and i1 %i.ds, %i.hv
  br i1 %or.cond3.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ip = fmul double %i.dl, %i.hu
  %i.iq = mul nuw nsw i32 %i.hr, 18
  %i.ir = zext nneg i32 %i.iq to i64
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.ir
  %i.it = zext nneg i32 %.1336.8.i to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %i.it ; 2 uses
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !146
  %i.iw = call double @llvm.fmuladd.f64(double %i.ip, double %sqrt.i, double %i.iv)
  store double %i.iw, ptr %i.iu, align 8, !tbaa !146
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.ds, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.ix = add nsw i32 %i.hr, 1                    ; 2 uses
  %i.iy = icmp slt i32 %i.ix, %i.ay
  br i1 %i.iy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.iz = fmul double %i.dl, %i.ht
  %i.ja = mul nsw i32 %i.ix, 18
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.jb
  %i.jd = zext nneg i32 %.1336.8.i to i64
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jd ; 2 uses
  %i.jf = load double, ptr %i.je, align 8, !tbaa !146
  %i.jg = call double @llvm.fmuladd.f64(double %i.iz, double %sqrt.i, double %i.jf)
  store double %i.jg, ptr %i.je, align 8, !tbaa !146
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.jh = add nuw nsw i32 %storemerge379494.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge379494.i, %i.da
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !147

.preheader488.i.split:                            ; preds = %._crit_edge501.i.loopexit
  %i.ji = icmp sgt <2 x i32> %i.ax, splat (i32 2) ; 2 uses
  %i.jj = extractelement <2 x i1> %i.ji, i64 0
  %i.jk = extractelement <2 x i1> %i.ji, i64 1
  %or.cond = select i1 %i.jk, i1 %i.jj, i1 false
  br i1 %or.cond, label %.preheader487.preheader.i, label %.preheader485.i

.preheader487.preheader.i:                        ; preds = %.preheader488.i.split
  %i.jl = add nsw i32 %i.bb, -1
  %i.jm = add nsw i32 %i.az, -1
  %wide.trip.count554.i = zext nneg i32 %i.jl to i64
  %wide.trip.count549.i = zext nneg i32 %i.jm to i64
  br label %.preheader487.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge501.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge501.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 8 uses
  %i.jn = mul i64 %i.ef, %indvars.iv.i            ; 2 uses
  %24 = add i64 %i.ea, %i.jn
  %i.jo = add i64 %i.eb, %i.jn
  %umax113 = call i64 @llvm.umax.i64(i64 %24, i64 %i.jo)
  %25 = mul i64 %23, %indvars.iv.i
  %i.jp = add i64 %25, %i.ec
  %26 = add i64 %umax113, %i.jp
  %27 = lshr i64 %26, 3                           ; 2 uses
  %28 = add nuw nsw i64 %27, 1                    ; 2 uses
  %i.jq = mul i64 %indvars.iv.i, %i.cf
  %i.jr = getelementptr [8 x i8], ptr %i.cm, i64 %i.jq ; 6 uses
  %29 = getelementptr inbounds nuw i8, ptr %i.jr, i64 %.idx.i
  %30 = mul i64 %indvars.iv.i, %i.ce
  %31 = getelementptr [8 x i8], ptr %i.ck, i64 %30 ; 6 uses
  %min.iters.check = icmp eq i64 %27, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.js = mul i64 %i.ee, %indvars.iv.i
  %i.jt = getelementptr i8, ptr %i.ck, i64 %i.js
  %scevgep111 = getelementptr i8, ptr %i.jt, i64 144
  %i.ju = mul i64 %i.dz, %indvars.iv.i            ; 3 uses
  %i.jv = add i64 %i.ea, %i.ju
  %i.jw = add i64 %i.eb, %i.ju
  %umax = call i64 @llvm.umax.i64(i64 %i.jv, i64 %i.jw)
  %i.jx = mul i64 %i.ed, %indvars.iv.i
  %i.jy = add i64 %i.jx, %i.ec
  %i.jz = add i64 %umax, %i.jy                    ; 2 uses
  %i.ka = lshr i64 %i.jz, 3
  %i.kb = mul i64 %i.ka, 144
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.kb
  %i.kc = getelementptr i8, ptr %i.cm, i64 %i.ju
  %scevgep = getelementptr i8, ptr %i.kc, i64 8
  %i.kd = and i64 %i.jz, -8
  %scevgep110 = getelementptr i8, ptr %scevgep, i64 %i.kd
  %bound0 = icmp ult ptr %i.jr, %scevgep112
  %bound1 = icmp ult ptr %31, %scevgep110
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %28, 4611686018427387902       ; 4 uses
  %i.ke = shl i64 %n.vec, 3
  %i.kf = getelementptr i8, ptr %i.jr, i64 %i.ke
  %i.kg = mul i64 %n.vec, 144
  %i.kh = getelementptr i8, ptr %31, i64 %i.kg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ki = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.jr, i64 %i.ki ; 10 uses
  %i.kj = mul i64 %index, 144                     ; 2 uses
  %next.gep114.a = getelementptr i8, ptr %31, i64 %i.kj ; 18 uses
  %i.kk = getelementptr i8, ptr %31, i64 %i.kj    ; 18 uses
  %next.gep115 = getelementptr i8, ptr %i.kk, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.kl = load double, ptr %next.gep114.a, align 8, !tbaa !146, !alias.scope !151
  %i.km = load double, ptr %next.gep115, align 8, !tbaa !146, !alias.scope !151
  %i.kn = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ko = insertelement <2 x double> %i.kn, double %i.km, i64 1
  %i.kp = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 72
  %i.kq = getelementptr i8, ptr %i.kk, i64 216
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !146, !alias.scope !151
  %i.ks = load double, ptr %i.kq, align 8, !tbaa !146, !alias.scope !151
  %i.kt = insertelement <2 x double> poison, double %i.kr, i64 0
  %i.ku = insertelement <2 x double> %i.kt, double %i.ks, i64 1
  %i.kv = fadd <2 x double> %i.ko, %i.ku          ; 2 uses
  %i.kw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> %i.kv, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.kw, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.kx = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 8
  %i.ky = getelementptr i8, ptr %i.kk, i64 152
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !146, !alias.scope !151
  %i.la = load double, ptr %i.ky, align 8, !tbaa !146, !alias.scope !151
  %i.lb = insertelement <2 x double> poison, double %i.kz, i64 0
  %i.lc = insertelement <2 x double> %i.lb, double %i.la, i64 1
  %i.ld = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 80
  %i.le = getelementptr i8, ptr %i.kk, i64 224
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !146, !alias.scope !151
  %i.lg = load double, ptr %i.le, align 8, !tbaa !146, !alias.scope !151
  %i.lh = insertelement <2 x double> poison, double %i.lf, i64 0
  %i.li = insertelement <2 x double> %i.lh, double %i.lg, i64 1
  %i.lj = fadd <2 x double> %i.lc, %i.li          ; 2 uses
  %i.lk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lj, <2 x double> %i.lj, <2 x double> %i.kw) ; 2 uses
  store <2 x double> %i.lk, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.ll = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 16
  %i.lm = getelementptr i8, ptr %i.kk, i64 160
  %i.ln = load double, ptr %i.ll, align 8, !tbaa !146, !alias.scope !151
  %i.lo = load double, ptr %i.lm, align 8, !tbaa !146, !alias.scope !151
  %i.lp = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.lo, i64 1
  %i.lr = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 88
  %i.ls = getelementptr i8, ptr %i.kk, i64 232
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !146, !alias.scope !151
  %i.lu = load double, ptr %i.ls, align 8, !tbaa !146, !alias.scope !151
  %i.lv = insertelement <2 x double> poison, double %i.lt, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.lu, i64 1
  %i.lx = fadd <2 x double> %i.lq, %i.lw          ; 2 uses
  %i.ly = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lx, <2 x double> %i.lx, <2 x double> %i.lk) ; 2 uses
  store <2 x double> %i.ly, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.lz = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 24
  %i.ma = getelementptr i8, ptr %i.kk, i64 168
  %i.mb = load double, ptr %i.lz, align 8, !tbaa !146, !alias.scope !151
  %i.mc = load double, ptr %i.ma, align 8, !tbaa !146, !alias.scope !151
  %i.md = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.mc, i64 1
  %i.mf = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 96
  %i.mg = getelementptr i8, ptr %i.kk, i64 240
  %i.mh = load double, ptr %i.mf, align 8, !tbaa !146, !alias.scope !151
  %i.mi = load double, ptr %i.mg, align 8, !tbaa !146, !alias.scope !151
  %i.mj = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mk = insertelement <2 x double> %i.mj, double %i.mi, i64 1
  %i.ml = fadd <2 x double> %i.me, %i.mk          ; 2 uses
  %i.mm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ml, <2 x double> %i.ly) ; 2 uses
  store <2 x double> %i.mm, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 32
  %i.mo = getelementptr i8, ptr %i.kk, i64 176
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !146, !alias.scope !151
  %i.mq = load double, ptr %i.mo, align 8, !tbaa !146, !alias.scope !151
  %i.mr = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mq, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 104
  %i.mu = getelementptr i8, ptr %i.kk, i64 248
  %i.mv = load double, ptr %i.mt, align 8, !tbaa !146, !alias.scope !151
  %i.mw = load double, ptr %i.mu, align 8, !tbaa !146, !alias.scope !151
  %i.mx = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.my = insertelement <2 x double> %i.mx, double %i.mw, i64 1
  %i.mz = fadd <2 x double> %i.ms, %i.my          ; 2 uses
  %i.na = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mz, <2 x double> %i.mz, <2 x double> %i.mm) ; 2 uses
  store <2 x double> %i.na, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.nb = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 40
  %i.nc = getelementptr i8, ptr %i.kk, i64 184
  %i.nd = load double, ptr %i.nb, align 8, !tbaa !146, !alias.scope !151
  %i.ne = load double, ptr %i.nc, align 8, !tbaa !146, !alias.scope !151
  %i.nf = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.ne, i64 1
  %i.nh = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 112
  %i.ni = getelementptr i8, ptr %i.kk, i64 256
  %i.nj = load double, ptr %i.nh, align 8, !tbaa !146, !alias.scope !151
  %i.nk = load double, ptr %i.ni, align 8, !tbaa !146, !alias.scope !151
  %i.nl = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.nm = insertelement <2 x double> %i.nl, double %i.nk, i64 1
  %i.nn = fadd <2 x double> %i.ng, %i.nm          ; 2 uses
  %i.no = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> %i.nn, <2 x double> %i.na) ; 2 uses
  store <2 x double> %i.no, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.np = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 48
  %i.nq = getelementptr i8, ptr %i.kk, i64 192
  %i.nr = load double, ptr %i.np, align 8, !tbaa !146, !alias.scope !151
  %i.ns = load double, ptr %i.nq, align 8, !tbaa !146, !alias.scope !151
  %i.nt = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nu = insertelement <2 x double> %i.nt, double %i.ns, i64 1
  %i.nv = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 120
  %i.nw = getelementptr i8, ptr %i.kk, i64 264
  %i.nx = load double, ptr %i.nv, align 8, !tbaa !146, !alias.scope !151
  %i.ny = load double, ptr %i.nw, align 8, !tbaa !146, !alias.scope !151
  %i.nz = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.oa = insertelement <2 x double> %i.nz, double %i.ny, i64 1
  %i.ob = fadd <2 x double> %i.nu, %i.oa          ; 2 uses
  %i.oc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.ob, <2 x double> %i.no) ; 2 uses
  store <2 x double> %i.oc, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.od = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 56
  %i.oe = getelementptr i8, ptr %i.kk, i64 200
  %i.of = load double, ptr %i.od, align 8, !tbaa !146, !alias.scope !151
  %i.og = load double, ptr %i.oe, align 8, !tbaa !146, !alias.scope !151
  %i.oh = insertelement <2 x double> poison, double %i.of, i64 0
  %i.oi = insertelement <2 x double> %i.oh, double %i.og, i64 1
  %i.oj = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 128
  %i.ok = getelementptr i8, ptr %i.kk, i64 272
  %i.ol = load double, ptr %i.oj, align 8, !tbaa !146, !alias.scope !151
  %i.om = load double, ptr %i.ok, align 8, !tbaa !146, !alias.scope !151
  %i.on = insertelement <2 x double> poison, double %i.ol, i64 0
  %i.oo = insertelement <2 x double> %i.on, double %i.om, i64 1
  %i.op = fadd <2 x double> %i.oi, %i.oo          ; 2 uses
  %i.oq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.op, <2 x double> %i.op, <2 x double> %i.oc) ; 2 uses
  store <2 x double> %i.oq, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.or = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 64
  %i.os = getelementptr i8, ptr %i.kk, i64 208
  %i.ot = load double, ptr %i.or, align 8, !tbaa !146, !alias.scope !151
  %i.ou = load double, ptr %i.os, align 8, !tbaa !146, !alias.scope !151
  %i.ov = insertelement <2 x double> poison, double %i.ot, i64 0
  %i.ow = insertelement <2 x double> %i.ov, double %i.ou, i64 1
  %i.ox = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 136
  %i.oy = getelementptr i8, ptr %i.kk, i64 280
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !146, !alias.scope !151
  %i.pa = load double, ptr %i.oy, align 8, !tbaa !146, !alias.scope !151
  %i.pb = insertelement <2 x double> poison, double %i.oz, i64 0
  %i.pc = insertelement <2 x double> %i.pb, double %i.pa, i64 1
  %i.pd = fadd <2 x double> %i.ow, %i.pc          ; 2 uses
  %i.pe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pd, <2 x double> %i.pd, <2 x double> %i.oq)
  store <2 x double> %i.pe, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.pf = icmp eq i64 %index.next, %n.vec
  br i1 %i.pf, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %28, %n.vec
  br i1 %cmp.n, label %._crit_edge501.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.0330499.i.ph = phi ptr [ %i.jr, %vector.memcheck ], [ %i.jr, %.lr.ph.preheader.i ], [ %i.kf, %middle.block ]
  %.0331498.i.ph = phi ptr [ %31, %vector.memcheck ], [ %31, %.lr.ph.preheader.i ], [ %i.kh, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0330499.i = phi ptr [ %i.rh, %.lr.ph.i ], [ %.0330499.i.ph, %.lr.ph.i.preheader ] ; 11 uses
  %.0331498.i = phi ptr [ %i.ri, %.lr.ph.i ], [ %.0331498.i.ph, %.lr.ph.i.preheader ] ; 19 uses
  store double 0.000000e+00, ptr %.0330499.i, align 8, !tbaa !146
  %i.pg = load double, ptr %.0331498.i, align 8, !tbaa !146
  %i.ph = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 72
  %i.pi = load double, ptr %i.ph, align 8, !tbaa !146
  %i.pj = fadd double %i.pg, %i.pi                ; 2 uses
  %i.pk = call double @llvm.fmuladd.f64(double %i.pj, double %i.pj, double 0.000000e+00) ; 2 uses
  store double %i.pk, ptr %.0330499.i, align 8, !tbaa !146
  %i.pl = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 8
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !146
  %i.pn = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 80
  %i.po = load double, ptr %i.pn, align 8, !tbaa !146
  %i.pp = fadd double %i.pm, %i.po                ; 2 uses
  %i.pq = call double @llvm.fmuladd.f64(double %i.pp, double %i.pp, double %i.pk) ; 2 uses
  store double %i.pq, ptr %.0330499.i, align 8, !tbaa !146
  %i.pr = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 16
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !146
  %i.pt = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 88
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !146
  %i.pv = fadd double %i.ps, %i.pu                ; 2 uses
  %i.pw = call double @llvm.fmuladd.f64(double %i.pv, double %i.pv, double %i.pq) ; 2 uses
  store double %i.pw, ptr %.0330499.i, align 8, !tbaa !146
  %i.px = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 24
  %i.py = load double, ptr %i.px, align 8, !tbaa !146
  %i.pz = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 96
  %i.qa = load double, ptr %i.pz, align 8, !tbaa !146
  %i.qb = fadd double %i.py, %i.qa                ; 2 uses
  %i.qc = call double @llvm.fmuladd.f64(double %i.qb, double %i.qb, double %i.pw) ; 2 uses
  store double %i.qc, ptr %.0330499.i, align 8, !tbaa !146
  %i.qd = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 32
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !146
  %i.qf = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 104
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !146
  %i.qh = fadd double %i.qe, %i.qg                ; 2 uses
  %i.qi = call double @llvm.fmuladd.f64(double %i.qh, double %i.qh, double %i.qc) ; 2 uses
  store double %i.qi, ptr %.0330499.i, align 8, !tbaa !146
  %i.qj = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 40
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !146
  %i.ql = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 112
  %i.qm = load double, ptr %i.ql, align 8, !tbaa !146
  %i.qn = fadd double %i.qk, %i.qm                ; 2 uses
  %i.qo = call double @llvm.fmuladd.f64(double %i.qn, double %i.qn, double %i.qi) ; 2 uses
  store double %i.qo, ptr %.0330499.i, align 8, !tbaa !146
  %i.qp = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 48
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !146
  %i.qr = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 120
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !146
  %i.qt = fadd double %i.qq, %i.qs                ; 2 uses
  %i.qu = call double @llvm.fmuladd.f64(double %i.qt, double %i.qt, double %i.qo) ; 2 uses
  store double %i.qu, ptr %.0330499.i, align 8, !tbaa !146
  %i.qv = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 56
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !146
  %i.qx = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 128
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !146
  %i.qz = fadd double %i.qw, %i.qy                ; 2 uses
  %i.ra = call double @llvm.fmuladd.f64(double %i.qz, double %i.qz, double %i.qu) ; 2 uses
  store double %i.ra, ptr %.0330499.i, align 8, !tbaa !146
  %i.rb = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 64
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !146
  %i.rd = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 136
  %i.re = load double, ptr %i.rd, align 8, !tbaa !146
  %i.rf = fadd double %i.rc, %i.re                ; 2 uses
  %i.rg = call double @llvm.fmuladd.f64(double %i.rf, double %i.rf, double %i.ra)
  store double %i.rg, ptr %.0330499.i, align 8, !tbaa !146
  %i.rh = getelementptr inbounds nuw i8, ptr %.0330499.i, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 144
  %i.rj = icmp ult ptr %i.rh, %29
  br i1 %i.rj, label %.lr.ph.i, label %._crit_edge501.i.loopexit, !llvm.loop !156

._crit_edge501.i.loopexit:                        ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond543.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.11.0.insert.ext.i
  br i1 %exitcond543.not.i, label %.preheader488.i.split, label %.lr.ph.preheader.i, !llvm.loop !157

.preheader487.i:                                  ; preds = %._crit_edge516.i, %.preheader487.preheader.i
  %indvars.iv551.i = phi i64 [ 1, %.preheader487.preheader.i ], [ %indvars.iv.next552.i, %._crit_edge516.i ] ; 5 uses
  %i.rk = mul i64 %indvars.iv551.i, %i.cg
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.rk
  %i.rm = add nsw i64 %indvars.iv551.i, -1
  %i.rn = mul i64 %indvars.iv551.i, %i.cf
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.rn
  %i.rp = mul i64 %i.rm, %i.cf
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.rp
  %i.rr = mul i64 %indvars.iv551.i, %i.ce
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.rr
  br label %bb.bv

.preheader485.i:                                  ; preds = %._crit_edge516.i, %.lr.ph503.i, %.preheader488.i.split, %.preheader489.i
  %i.rt = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ru = load i32, ptr %i.rt, align 8, !tbaa !8  ; 3 uses
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %.preheader485.i
  %i.rw = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !17 ; 8 uses
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.rz = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.sa = add nsw i32 %i.rx, -32
  %i.sb = add nsw i32 %i.ru, -1
  %i.sc = zext nneg i32 %i.rx to i64              ; 2 uses
  %i.sd = sext i32 %i.sa to i64                   ; 3 uses
  %i.se = zext nneg i32 %i.sb to i64
  %wide.trip.count575.i = zext nneg i32 %i.ru to i64
  %i.sf = icmp samesign ugt i32 %i.rx, 32
  %i.sg = load i32, ptr %i.rz, align 4
  %.fr529.i = freeze i32 %i.sg
  %i.sh = icmp slt i32 %.fr529.i, 2               ; 6 uses
  %i.si = add nsw i64 %i.sc, -1
  %i.sj = lshr i64 %i.si, 5
  %i.sk = add nuw nsw i64 %i.sj, 1                ; 8 uses
  %i.sl = add nsw i64 %i.sc, -33                  ; 2 uses
  %i.sm = lshr i64 %i.sl, 5                       ; 2 uses
  %i.sn = add nuw nsw i64 %i.sm, 1                ; 2 uses
  %xtraiter = and i64 %i.sk, 3                    ; 3 uses
  %i.so = icmp ult i32 %i.rx, 97
  %unroll_iter = and i64 %i.sk, 1152921504606846972
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  %xtraiter130 = and i64 %i.sk, 7                 ; 3 uses
  %i.sp = icmp ult i32 %i.rx, 225
  %unroll_iter134 = and i64 %i.sk, 1152921504606846968
  %lcmp.mod132.not = icmp eq i64 %xtraiter130, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter130, 0
  %i.sq = icmp eq i64 %i.sm, 0
  %unroll_iter140 = and i64 %i.sn, 1152921504606846974
  %i.sr = and i64 %i.sl, 32
  %lcmp.mod138.not.not = icmp eq i64 %i.sr, 0
  %lcmp.mod139 = trunc i64 %i.sn to i1
  %xtraiter142 = and i64 %i.sk, 7                 ; 3 uses
  %i.ss = icmp ult i32 %i.rx, 225
  %unroll_iter146 = and i64 %i.sk, 1152921504606846968
  %lcmp.mod144.not = icmp eq i64 %xtraiter142, 0
  %lcmp.mod145 = icmp ne i64 %xtraiter142, 0
  %xtraiter148 = and i64 %i.sk, 7                 ; 3 uses
  %i.st = icmp ult i32 %i.rx, 225
  %unroll_iter152 = and i64 %i.sk, 1152921504606846968
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
  %i.su = getelementptr inbounds nuw i8, ptr %i.rl, i64 %.idx615.i
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.ro, i64 %indvars.iv546.i ; 4 uses
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !146 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !146
  %i.sz = fadd double %i.sw, %i.sy
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sv, i64 %i.cf ; 2 uses
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !146 ; 2 uses
  %i.tc = fadd double %i.sz, %i.tb
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.te = load double, ptr %i.td, align 8, !tbaa !146
  %i.tf = fadd double %i.tc, %i.te
  %i.tg = fadd double %i.tf, 1.000000e-04
  %i.th = call double @sqrt(double noundef %i.tg) #18
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %indvars.iv546.i ; 4 uses
  %i.tj = load double, ptr %i.ti, align 8, !tbaa !146 ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 8
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !146
  %i.tm = fadd double %i.tj, %i.tl
  %i.tn = getelementptr inbounds nuw [8 x i8], ptr %i.ti, i64 %i.cf ; 2 uses
  %i.to = load double, ptr %i.tn, align 8, !tbaa !146 ; 2 uses
  %i.tp = fadd double %i.tm, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.tr = load double, ptr %i.tq, align 8, !tbaa !146
  %i.ts = fadd double %i.tp, %i.tr
  %i.tt = fadd double %i.ts, 1.000000e-04
  %i.tu = call double @sqrt(double noundef %i.tt) #18
  %i.tv = getelementptr inbounds i8, ptr %i.sv, i64 -8 ; 2 uses
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !146
  %i.tx = fadd double %i.sw, %i.tw
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %i.cf
  %i.tz = load double, ptr %i.ty, align 8, !tbaa !146
  %i.ua = fadd double %i.tx, %i.tz
  %i.ub = fadd double %i.tb, %i.ua
  %i.uc = fadd double %i.ub, 1.000000e-04
  %i.ud = call double @sqrt(double noundef %i.uc) #18
  %i.ue = insertelement <2 x double> poison, double %i.tu, i64 0
  %i.uf = insertelement <2 x double> %i.ue, double %i.ud, i64 1
  %i.ug = fdiv <2 x double> splat (double 1.000000e+00), %i.uf ; 4 uses
  %i.uh = getelementptr inbounds i8, ptr %i.ti, i64 -8 ; 2 uses
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !146
  %i.uj = fadd double %i.tj, %i.ui
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.uh, i64 %i.cf
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !146
end_hunk_0
