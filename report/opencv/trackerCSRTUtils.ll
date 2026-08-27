Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerCSRTUtils?download=true
inline.NumInlined: 438
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN2cv16get_features_hogERKNS_3MatEi:bb.a
bb.m:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %9, align 8, !tbaa !72     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i: ; preds = %bb.m
  %i.t = load i64, ptr %i.r, align 8, !tbaa !98
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i

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
          to label %bb.y unwind label %bb.ah      ; 10 uses

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
  %i.cn = ptrtoaddr ptr %i.cm to i64              ; 6 uses
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
  %storemerge495.i = phi i32 [ 1, %.preheader490.lr.ph.split.i ], [ %i.em, %._crit_edge.i ] ; 4 uses
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
  %.idx.i = shl nsw i64 %i.dx, 3                  ; 3 uses
  %i.dy = icmp sgt i32 %i.ay, 0
  br i1 %i.dy, label %.lr.ph.preheader.i.preheader, label %.preheader485.i

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph503.i
  %i.dz = shl i64 %i.cf, 3
  %i.ea = add i64 %.idx.i, %i.cn
  %i.eb = add i64 %i.cn, 8
  %i.ec = xor i64 %i.cn, -1
  %i.ed = mul i64 %i.cf, -8
  %i.ee = shl i64 %i.ce, 3
  %23 = add i64 %.idx.i, %i.cn
  %24 = add i64 %i.cn, 8
  %25 = xor i64 %i.cn, -1
  br label %.lr.ph.preheader.i

bb.aa:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body389.i
  %.pn365.i = phi { ptr, i32 } [ %i.br, %.body389.i ], [ %i.ef, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.cd

bb.ac:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn367.i = phi { ptr, i32 } [ %i.eh, %bb.ad ], [ %i.eg, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.cc

bb.af:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ag:                                            ; preds = %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ah:                                            ; preds = %bb.x
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ai:                                            ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

._crit_edge.i:                                    ; preds = %bb.bu
  %i.em = add nuw nsw i32 %storemerge495.i, 1
  %exitcond540.not.i = icmp eq i32 %storemerge495.i, %i.db
  br i1 %exitcond540.not.i, label %.preheader489.i, label %.preheader490.i, !llvm.loop !145

bb.aj:                                            ; preds = %bb.bu, %.preheader490.i
  %storemerge379494.i = phi i32 [ 1, %.preheader490.i ], [ %i.jg, %bb.bu ] ; 4 uses
  %.sroa.speculated442.i = call i32 @llvm.smin.i32(i32 %i.cx, i32 %storemerge379494.i)
  %i.en = mul nsw i32 %.sroa.speculated442.i, 3
  %i.eo = sext i32 %i.en to i64
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.eo ; 7 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %gep.i, i64 %i.cd
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !146
  %i.er = getelementptr inbounds [8 x i8], ptr %gep.i, i64 %i.ct
  %i.es = load double, ptr %i.er, align 8, !tbaa !146
  %i.et = fsub double %i.eq, %i.es                ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep.i, i64 24
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !146
  %i.ew = getelementptr inbounds i8, ptr %gep.i, i64 -24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !146
  %i.ey = fsub double %i.ev, %i.ex                ; 3 uses
  %i.ez = fmul double %i.et, %i.et
  %i.fa = call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.ez) ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.cd
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.ct
  %i.fe = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.ff = getelementptr inbounds i8, ptr %gep.i, i64 -16
  %i.fg = load <2 x double>, ptr %i.fc, align 8, !tbaa !146
  %i.fh = load <2 x double>, ptr %i.fd, align 8, !tbaa !146
  %i.fi = fsub <2 x double> %i.fg, %i.fh          ; 4 uses
  %i.fj = load <2 x double>, ptr %i.fe, align 8, !tbaa !146
  %i.fk = load <2 x double>, ptr %i.ff, align 8, !tbaa !146
  %i.fl = fsub <2 x double> %i.fj, %i.fk          ; 4 uses
  %i.fm = fmul <2 x double> %i.fi, %i.fi
  %i.fn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> %i.fl, <2 x double> %i.fm) ; 2 uses
  %i.fo = extractelement <2 x double> %i.fn, i64 0 ; 2 uses
  %i.fp = extractelement <2 x double> %i.fn, i64 1 ; 2 uses
  %i.fq = fcmp ogt double %i.fo, %i.fp            ; 3 uses
  %i.fr = extractelement <2 x double> %i.fi, i64 0
  %i.fs = extractelement <2 x double> %i.fi, i64 1
  %.0343.i = select i1 %i.fq, double %i.fr, double %i.fs
  %i.ft = extractelement <2 x double> %i.fl, i64 0
  %i.fu = extractelement <2 x double> %i.fl, i64 1
  %.0341.i = select i1 %i.fq, double %i.ft, double %i.fu
  %.0339.i = select i1 %i.fq, double %i.fo, double %i.fp ; 2 uses
  %i.fv = fcmp ogt double %i.fa, %.0339.i         ; 3 uses
  %.1344.i = select i1 %i.fv, double %i.et, double %.0343.i ; 5 uses
  %.1342.i = select i1 %i.fv, double %i.ey, double %.0341.i ; 9 uses
  %i.fw = fmul double %.1344.i, 0.000000e+00
  %i.fx = fadd double %.1342.i, %i.fw             ; 4 uses
  %i.fy = fcmp ogt double %i.fx, 0.000000e+00
  br i1 %i.fy, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fz = fcmp olt double %i.fx, 0.000000e+00
  br i1 %i.fz, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ga = fneg double %i.fx
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.1338.i = phi double [ 0.000000e+00, %bb.ak ], [ %i.ga, %bb.al ], [ %i.fx, %bb.aj ] ; 3 uses
  %.1336.i = phi i32 [ 0, %bb.ak ], [ 9, %bb.al ], [ 0, %bb.aj ]
  %i.gb = fmul double %.1344.i, 3.420000e-01      ; 2 uses
  %i.gc = call double @llvm.fmuladd.f64(double %.1342.i, double f0x3FEE1205BC01A36E, double %i.gb) ; 3 uses
  %i.gd = fcmp ogt double %i.gc, %.1338.i
  br i1 %i.gd, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ge = fneg double %i.gc                       ; 2 uses
  %i.gf = fcmp olt double %.1338.i, %i.ge
  br i1 %i.gf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.1338.1.i = phi double [ %.1338.i, %bb.an ], [ %i.ge, %bb.ao ], [ %i.gc, %bb.am ] ; 3 uses
  %.1336.1.i = phi i32 [ %.1336.i, %bb.an ], [ 10, %bb.ao ], [ 1, %bb.am ]
  %i.gg = fmul double %.1344.i, 6.428000e-01      ; 2 uses
  %i.gh = call double @llvm.fmuladd.f64(double %.1342.i, double 7.660000e-01, double %i.gg) ; 3 uses
  %i.gi = fcmp ogt double %i.gh, %.1338.1.i
  br i1 %i.gi, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gj = fneg double %i.gh                       ; 2 uses
  %i.gk = fcmp olt double %.1338.1.i, %i.gj
  br i1 %i.gk, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1338.2.i = phi double [ %.1338.1.i, %bb.aq ], [ %i.gj, %bb.ar ], [ %i.gh, %bb.ap ] ; 3 uses
  %.1336.2.i = phi i32 [ %.1336.1.i, %bb.aq ], [ 11, %bb.ar ], [ 2, %bb.ap ]
  %i.gl = fmul double %.1344.i, 8.660000e-01      ; 2 uses
  %i.gm = call double @llvm.fmuladd.f64(double %.1342.i, double 5.000000e-01, double %i.gl) ; 3 uses
  %i.gn = fcmp ogt double %i.gm, %.1338.2.i
  br i1 %i.gn, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.go = fneg double %i.gm                       ; 2 uses
  %i.gp = fcmp olt double %.1338.2.i, %i.go
  br i1 %i.gp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.1338.3.i = phi double [ %.1338.2.i, %bb.at ], [ %i.go, %bb.au ], [ %i.gm, %bb.as ] ; 3 uses
  %.1336.3.i = phi i32 [ %.1336.2.i, %bb.at ], [ 12, %bb.au ], [ 3, %bb.as ]
  %i.gq = fmul double %.1344.i, 9.848000e-01      ; 2 uses
  %i.gr = call double @llvm.fmuladd.f64(double %.1342.i, double 1.736000e-01, double %i.gq) ; 3 uses
  %i.gs = fcmp ogt double %i.gr, %.1338.3.i
  br i1 %i.gs, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gt = fneg double %i.gr                       ; 2 uses
  %i.gu = fcmp olt double %.1338.3.i, %i.gt
  br i1 %i.gu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.1338.4.i = phi double [ %.1338.3.i, %bb.aw ], [ %i.gt, %bb.ax ], [ %i.gr, %bb.av ] ; 3 uses
  %.1336.4.i = phi i32 [ %.1336.3.i, %bb.aw ], [ 13, %bb.ax ], [ 4, %bb.av ]
  %i.gv = call double @llvm.fmuladd.f64(double %.1342.i, double -1.736000e-01, double %i.gq) ; 3 uses
  %i.gw = fcmp ogt double %i.gv, %.1338.4.i
  br i1 %i.gw, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gx = fneg double %i.gv                       ; 2 uses
  %i.gy = fcmp olt double %.1338.4.i, %i.gx
  br i1 %i.gy, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.1338.5.i = phi double [ %.1338.4.i, %bb.az ], [ %i.gx, %bb.ba ], [ %i.gv, %bb.ay ] ; 3 uses
  %.1336.5.i = phi i32 [ %.1336.4.i, %bb.az ], [ 14, %bb.ba ], [ 5, %bb.ay ]
  %i.gz = call double @llvm.fmuladd.f64(double %.1342.i, double -5.000000e-01, double %i.gl) ; 3 uses
  %i.ha = fcmp ogt double %i.gz, %.1338.5.i
  br i1 %i.ha, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hb = fneg double %i.gz                       ; 2 uses
  %i.hc = fcmp olt double %.1338.5.i, %i.hb
  br i1 %i.hc, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.1338.6.i = phi double [ %.1338.5.i, %bb.bc ], [ %i.hb, %bb.bd ], [ %i.gz, %bb.bb ] ; 3 uses
  %.1336.6.i = phi i32 [ %.1336.5.i, %bb.bc ], [ 15, %bb.bd ], [ 6, %bb.bb ]
  %i.hd = call double @llvm.fmuladd.f64(double %.1342.i, double -7.660000e-01, double %i.gg) ; 3 uses
  %i.he = fcmp ogt double %i.hd, %.1338.6.i
  br i1 %i.he, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hf = fneg double %i.hd                       ; 2 uses
  %i.hg = fcmp olt double %.1338.6.i, %i.hf
  br i1 %i.hg, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.1338.7.i = phi double [ %.1338.6.i, %bb.bf ], [ %i.hf, %bb.bg ], [ %i.hd, %bb.be ] ; 2 uses
  %.1336.7.i = phi i32 [ %.1336.6.i, %bb.bf ], [ 16, %bb.bg ], [ 7, %bb.be ]
  %i.hh = call double @llvm.fmuladd.f64(double %.1342.i, double f0xBFEE1205BC01A36E, double %i.gb) ; 2 uses
  %i.hi = fcmp ogt double %i.hh, %.1338.7.i
  br i1 %i.hi, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hj = fneg double %i.hh
  %i.hk = fcmp olt double %.1338.7.i, %i.hj
  br i1 %i.hk, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.1336.8.i = phi i32 [ %.1336.7.i, %bb.bi ], [ 17, %bb.bj ], [ 8, %bb.bh ] ; 4 uses
  %.1340.i = select i1 %i.fv, double %i.fa, double %.0339.i
  %i.hl = uitofp nneg i32 %storemerge379494.i to double
  %i.hm = fadd double %i.hl, 5.000000e-01
  %i.hn = fdiv double %i.hm, %i.as
  %i.ho = fadd double %i.hn, -5.000000e-01        ; 2 uses
  %i.hp = call double @llvm.floor.f64(double %i.ho)
  %i.hq = fptosi double %i.hp to i32              ; 7 uses
  %i.hr = sitofp i32 %i.hq to double
  %i.hs = fsub double %i.ho, %i.hr                ; 3 uses
  %i.ht = fsub double 1.000000e+00, %i.hs         ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %.1340.i) ; 4 uses
  %i.hu = icmp sgt i32 %i.hq, -1
  %i.hv = or i32 %i.hq, %i.dj
  %or.cond.i = icmp sgt i32 %i.hv, -1
  br i1 %or.cond.i, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hw = fmul double %i.dm, %i.ht
  %i.hx = mul nsw i32 %i.hq, 18
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.hy
  %i.ia = zext nneg i32 %.1336.8.i to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ia ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !146
  %i.id = call double @llvm.fmuladd.f64(double %i.hw, double %sqrt.i, double %i.ic)
  store double %i.id, ptr %i.ib, align 8, !tbaa !146
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  br i1 %i.dn, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ie = add nsw i32 %i.hq, 1                    ; 2 uses
  %i.if = icmp slt i32 %i.ie, %i.ay
  br i1 %i.if, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.ig = fmul double %i.dm, %i.hs
  %i.ih = mul nsw i32 %i.ie, 18
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ii
  %i.ik = zext nneg i32 %.1336.8.i to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !146
  %i.in = call double @llvm.fmuladd.f64(double %i.ig, double %sqrt.i, double %i.im)
  store double %i.in, ptr %i.il, align 8, !tbaa !146
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %or.cond3.i = and i1 %i.ds, %i.hu
  br i1 %or.cond3.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.io = fmul double %i.dl, %i.ht
  %i.ip = mul nuw nsw i32 %i.hq, 18
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.iq
  %i.is = zext nneg i32 %.1336.8.i to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !146
  %i.iv = call double @llvm.fmuladd.f64(double %i.io, double %sqrt.i, double %i.iu)
  store double %i.iv, ptr %i.it, align 8, !tbaa !146
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  br i1 %i.ds, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.iw = add nsw i32 %i.hq, 1                    ; 2 uses
  %i.ix = icmp slt i32 %i.iw, %i.ay
  br i1 %i.ix, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.iy = fmul double %i.dl, %i.hs
  %i.iz = mul nsw i32 %i.iw, 18
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.ja
  %i.jc = zext nneg i32 %.1336.8.i to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jc ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !146
  %i.jf = call double @llvm.fmuladd.f64(double %i.iy, double %sqrt.i, double %i.je)
  store double %i.jf, ptr %i.jd, align 8, !tbaa !146
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  %i.jg = add nuw nsw i32 %storemerge379494.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge379494.i, %i.da
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !147

.preheader488.i.split:                            ; preds = %._crit_edge501.i.loopexit
  %i.jh = icmp sgt <2 x i32> %i.ax, splat (i32 2) ; 2 uses
  %i.ji = extractelement <2 x i1> %i.jh, i64 0
  %i.jj = extractelement <2 x i1> %i.jh, i64 1
  %or.cond = select i1 %i.jj, i1 %i.ji, i1 false
  br i1 %or.cond, label %.preheader487.preheader.i, label %.preheader485.i

.preheader487.preheader.i:                        ; preds = %.preheader488.i.split
  %i.jk = add nsw i32 %i.bb, -1
  %i.jl = add nsw i32 %i.az, -1
  %wide.trip.count554.i = zext nneg i32 %i.jk to i64
  %wide.trip.count549.i = zext nneg i32 %i.jl to i64
  br label %.preheader487.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge501.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge501.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 7 uses
  %i.jm = mul i64 %indvars.iv.i, %i.cf
  %26 = getelementptr [8 x i8], ptr %i.cm, i64 %i.jm ; 6 uses
  %27 = getelementptr inbounds nuw i8, ptr %26, i64 %.idx.i
  %28 = mul i64 %indvars.iv.i, %i.ce
  %29 = getelementptr [8 x i8], ptr %i.ck, i64 %28 ; 6 uses
  %i.jn = mul i64 %indvars.iv.i, %i.cf            ; 2 uses
  %30 = shl i64 %i.jn, 3                          ; 2 uses
  %i.jo = add i64 %23, %30
  %31 = add i64 %24, %30
  %32 = call i64 @llvm.umax.i64(i64 %i.jo, i64 %31)
  %33 = shl i64 %i.jn, 3
  %34 = sub i64 %25, %33
  %35 = add i64 %32, %34
  %36 = lshr i64 %35, 3                           ; 2 uses
  %37 = add nuw nsw i64 %36, 1                    ; 2 uses
  %min.iters.check = icmp eq i64 %36, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.jp = mul i64 %i.ee, %indvars.iv.i
  %i.jq = getelementptr i8, ptr %i.ck, i64 %i.jp
  %scevgep111 = getelementptr i8, ptr %i.jq, i64 144
  %i.jr = mul i64 %i.dz, %indvars.iv.i            ; 3 uses
  %i.js = add i64 %i.ea, %i.jr
  %i.jt = add i64 %i.eb, %i.jr
  %umax = call i64 @llvm.umax.i64(i64 %i.js, i64 %i.jt)
  %i.ju = mul i64 %i.ed, %indvars.iv.i
  %i.jv = add i64 %i.ju, %i.ec
  %i.jw = add i64 %umax, %i.jv                    ; 2 uses
  %i.jx = lshr i64 %i.jw, 3
  %i.jy = mul i64 %i.jx, 144
  %scevgep112 = getelementptr i8, ptr %scevgep111, i64 %i.jy
  %i.jz = getelementptr i8, ptr %i.cm, i64 %i.jr
  %scevgep = getelementptr i8, ptr %i.jz, i64 8
  %i.ka = and i64 %i.jw, -8
  %scevgep110 = getelementptr i8, ptr %scevgep, i64 %i.ka
  %bound0 = icmp ult ptr %26, %scevgep112
  %bound1 = icmp ult ptr %29, %scevgep110
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %37, 4611686018427387902       ; 4 uses
  %i.kb = shl i64 %n.vec, 3
  %i.kc = getelementptr i8, ptr %26, i64 %i.kb
  %i.kd = mul i64 %n.vec, 144
  %i.ke = getelementptr i8, ptr %29, i64 %i.kd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %26, i64 %i.kf ; 10 uses
  %i.kg = mul i64 %index, 144                     ; 2 uses
  %next.gep114.a = getelementptr i8, ptr %29, i64 %i.kg ; 18 uses
  %i.kh = getelementptr i8, ptr %29, i64 %i.kg    ; 18 uses
  %next.gep115 = getelementptr i8, ptr %i.kh, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.ki = load double, ptr %next.gep114.a, align 8, !tbaa !146, !alias.scope !151
  %i.kj = load double, ptr %next.gep115, align 8, !tbaa !146, !alias.scope !151
  %i.kk = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.kl = insertelement <2 x double> %i.kk, double %i.kj, i64 1
  %i.km = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 72
  %i.kn = getelementptr i8, ptr %i.kh, i64 216
  %i.ko = load double, ptr %i.km, align 8, !tbaa !146, !alias.scope !151
  %i.kp = load double, ptr %i.kn, align 8, !tbaa !146, !alias.scope !151
  %i.kq = insertelement <2 x double> poison, double %i.ko, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.kp, i64 1
  %i.ks = fadd <2 x double> %i.kl, %i.kr          ; 2 uses
  %i.kt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ks, <2 x double> %i.ks, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.kt, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.ku = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 8
  %i.kv = getelementptr i8, ptr %i.kh, i64 152
  %i.kw = load double, ptr %i.ku, align 8, !tbaa !146, !alias.scope !151
  %i.kx = load double, ptr %i.kv, align 8, !tbaa !146, !alias.scope !151
  %i.ky = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.kx, i64 1
  %i.la = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 80
  %i.lb = getelementptr i8, ptr %i.kh, i64 224
  %i.lc = load double, ptr %i.la, align 8, !tbaa !146, !alias.scope !151
  %i.ld = load double, ptr %i.lb, align 8, !tbaa !146, !alias.scope !151
  %i.le = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.lf = insertelement <2 x double> %i.le, double %i.ld, i64 1
  %i.lg = fadd <2 x double> %i.kz, %i.lf          ; 2 uses
  %i.lh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lg, <2 x double> %i.lg, <2 x double> %i.kt) ; 2 uses
  store <2 x double> %i.lh, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.li = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 16
  %i.lj = getelementptr i8, ptr %i.kh, i64 160
  %i.lk = load double, ptr %i.li, align 8, !tbaa !146, !alias.scope !151
  %i.ll = load double, ptr %i.lj, align 8, !tbaa !146, !alias.scope !151
  %i.lm = insertelement <2 x double> poison, double %i.lk, i64 0
  %i.ln = insertelement <2 x double> %i.lm, double %i.ll, i64 1
  %i.lo = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 88
  %i.lp = getelementptr i8, ptr %i.kh, i64 232
  %i.lq = load double, ptr %i.lo, align 8, !tbaa !146, !alias.scope !151
  %i.lr = load double, ptr %i.lp, align 8, !tbaa !146, !alias.scope !151
  %i.ls = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.lt = insertelement <2 x double> %i.ls, double %i.lr, i64 1
  %i.lu = fadd <2 x double> %i.ln, %i.lt          ; 2 uses
  %i.lv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lu, <2 x double> %i.lu, <2 x double> %i.lh) ; 2 uses
  store <2 x double> %i.lv, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.lw = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 24
  %i.lx = getelementptr i8, ptr %i.kh, i64 168
  %i.ly = load double, ptr %i.lw, align 8, !tbaa !146, !alias.scope !151
  %i.lz = load double, ptr %i.lx, align 8, !tbaa !146, !alias.scope !151
  %i.ma = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mb = insertelement <2 x double> %i.ma, double %i.lz, i64 1
  %i.mc = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 96
  %i.md = getelementptr i8, ptr %i.kh, i64 240
  %i.me = load double, ptr %i.mc, align 8, !tbaa !146, !alias.scope !151
  %i.mf = load double, ptr %i.md, align 8, !tbaa !146, !alias.scope !151
  %i.mg = insertelement <2 x double> poison, double %i.me, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.mf, i64 1
  %i.mi = fadd <2 x double> %i.mb, %i.mh          ; 2 uses
  %i.mj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mi, <2 x double> %i.mi, <2 x double> %i.lv) ; 2 uses
  store <2 x double> %i.mj, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.mk = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 32
  %i.ml = getelementptr i8, ptr %i.kh, i64 176
  %i.mm = load double, ptr %i.mk, align 8, !tbaa !146, !alias.scope !151
  %i.mn = load double, ptr %i.ml, align 8, !tbaa !146, !alias.scope !151
  %i.mo = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.mn, i64 1
  %i.mq = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 104
  %i.mr = getelementptr i8, ptr %i.kh, i64 248
  %i.ms = load double, ptr %i.mq, align 8, !tbaa !146, !alias.scope !151
  %i.mt = load double, ptr %i.mr, align 8, !tbaa !146, !alias.scope !151
  %i.mu = insertelement <2 x double> poison, double %i.ms, i64 0
  %i.mv = insertelement <2 x double> %i.mu, double %i.mt, i64 1
  %i.mw = fadd <2 x double> %i.mp, %i.mv          ; 2 uses
  %i.mx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> %i.mw, <2 x double> %i.mj) ; 2 uses
  store <2 x double> %i.mx, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.my = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 40
  %i.mz = getelementptr i8, ptr %i.kh, i64 184
  %i.na = load double, ptr %i.my, align 8, !tbaa !146, !alias.scope !151
  %i.nb = load double, ptr %i.mz, align 8, !tbaa !146, !alias.scope !151
  %i.nc = insertelement <2 x double> poison, double %i.na, i64 0
  %i.nd = insertelement <2 x double> %i.nc, double %i.nb, i64 1
  %i.ne = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 112
  %i.nf = getelementptr i8, ptr %i.kh, i64 256
  %i.ng = load double, ptr %i.ne, align 8, !tbaa !146, !alias.scope !151
  %i.nh = load double, ptr %i.nf, align 8, !tbaa !146, !alias.scope !151
  %i.ni = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.nj = insertelement <2 x double> %i.ni, double %i.nh, i64 1
  %i.nk = fadd <2 x double> %i.nd, %i.nj          ; 2 uses
  %i.nl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nk, <2 x double> %i.nk, <2 x double> %i.mx) ; 2 uses
  store <2 x double> %i.nl, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.nm = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 48
  %i.nn = getelementptr i8, ptr %i.kh, i64 192
  %i.no = load double, ptr %i.nm, align 8, !tbaa !146, !alias.scope !151
  %i.np = load double, ptr %i.nn, align 8, !tbaa !146, !alias.scope !151
  %i.nq = insertelement <2 x double> poison, double %i.no, i64 0
  %i.nr = insertelement <2 x double> %i.nq, double %i.np, i64 1
  %i.ns = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 120
  %i.nt = getelementptr i8, ptr %i.kh, i64 264
  %i.nu = load double, ptr %i.ns, align 8, !tbaa !146, !alias.scope !151
  %i.nv = load double, ptr %i.nt, align 8, !tbaa !146, !alias.scope !151
  %i.nw = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.nx = insertelement <2 x double> %i.nw, double %i.nv, i64 1
  %i.ny = fadd <2 x double> %i.nr, %i.nx          ; 2 uses
  %i.nz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ny, <2 x double> %i.ny, <2 x double> %i.nl) ; 2 uses
  store <2 x double> %i.nz, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.oa = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 56
  %i.ob = getelementptr i8, ptr %i.kh, i64 200
  %i.oc = load double, ptr %i.oa, align 8, !tbaa !146, !alias.scope !151
  %i.od = load double, ptr %i.ob, align 8, !tbaa !146, !alias.scope !151
  %i.oe = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.of = insertelement <2 x double> %i.oe, double %i.od, i64 1
  %i.og = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 128
  %i.oh = getelementptr i8, ptr %i.kh, i64 272
  %i.oi = load double, ptr %i.og, align 8, !tbaa !146, !alias.scope !151
  %i.oj = load double, ptr %i.oh, align 8, !tbaa !146, !alias.scope !151
  %i.ok = insertelement <2 x double> poison, double %i.oi, i64 0
  %i.ol = insertelement <2 x double> %i.ok, double %i.oj, i64 1
  %i.om = fadd <2 x double> %i.of, %i.ol          ; 2 uses
  %i.on = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.om, <2 x double> %i.om, <2 x double> %i.nz) ; 2 uses
  store <2 x double> %i.on, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.oo = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 64
  %i.op = getelementptr i8, ptr %i.kh, i64 208
  %i.oq = load double, ptr %i.oo, align 8, !tbaa !146, !alias.scope !151
  %i.or = load double, ptr %i.op, align 8, !tbaa !146, !alias.scope !151
  %i.os = insertelement <2 x double> poison, double %i.oq, i64 0
  %i.ot = insertelement <2 x double> %i.os, double %i.or, i64 1
  %i.ou = getelementptr inbounds nuw i8, ptr %next.gep114.a, i64 136
  %i.ov = getelementptr i8, ptr %i.kh, i64 280
  %i.ow = load double, ptr %i.ou, align 8, !tbaa !146, !alias.scope !151
  %i.ox = load double, ptr %i.ov, align 8, !tbaa !146, !alias.scope !151
  %i.oy = insertelement <2 x double> poison, double %i.ow, i64 0
  %i.oz = insertelement <2 x double> %i.oy, double %i.ox, i64 1
  %i.pa = fadd <2 x double> %i.ot, %i.oz          ; 2 uses
  %i.pb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> %i.pa, <2 x double> %i.on)
  store <2 x double> %i.pb, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.pc = icmp eq i64 %index.next, %n.vec
  br i1 %i.pc, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %37, %n.vec
  br i1 %cmp.n, label %._crit_edge501.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.0330499.i.ph = phi ptr [ %26, %vector.memcheck ], [ %26, %.lr.ph.preheader.i ], [ %i.kc, %middle.block ]
  %.0331498.i.ph = phi ptr [ %29, %vector.memcheck ], [ %29, %.lr.ph.preheader.i ], [ %i.ke, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0330499.i = phi ptr [ %i.re, %.lr.ph.i ], [ %.0330499.i.ph, %.lr.ph.i.preheader ] ; 11 uses
  %.0331498.i = phi ptr [ %i.rf, %.lr.ph.i ], [ %.0331498.i.ph, %.lr.ph.i.preheader ] ; 19 uses
  store double 0.000000e+00, ptr %.0330499.i, align 8, !tbaa !146
  %i.pd = load double, ptr %.0331498.i, align 8, !tbaa !146
  %i.pe = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 72
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !146
  %i.pg = fadd double %i.pd, %i.pf                ; 2 uses
  %i.ph = call double @llvm.fmuladd.f64(double %i.pg, double %i.pg, double 0.000000e+00) ; 2 uses
  store double %i.ph, ptr %.0330499.i, align 8, !tbaa !146
  %i.pi = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 8
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !146
  %i.pk = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 80
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !146
  %i.pm = fadd double %i.pj, %i.pl                ; 2 uses
  %i.pn = call double @llvm.fmuladd.f64(double %i.pm, double %i.pm, double %i.ph) ; 2 uses
  store double %i.pn, ptr %.0330499.i, align 8, !tbaa !146
  %i.po = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 16
  %i.pp = load double, ptr %i.po, align 8, !tbaa !146
  %i.pq = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 88
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !146
  %i.ps = fadd double %i.pp, %i.pr                ; 2 uses
  %i.pt = call double @llvm.fmuladd.f64(double %i.ps, double %i.ps, double %i.pn) ; 2 uses
  store double %i.pt, ptr %.0330499.i, align 8, !tbaa !146
  %i.pu = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 24
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !146
  %i.pw = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 96
  %i.px = load double, ptr %i.pw, align 8, !tbaa !146
  %i.py = fadd double %i.pv, %i.px                ; 2 uses
  %i.pz = call double @llvm.fmuladd.f64(double %i.py, double %i.py, double %i.pt) ; 2 uses
  store double %i.pz, ptr %.0330499.i, align 8, !tbaa !146
  %i.qa = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 32
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !146
  %i.qc = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 104
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !146
  %i.qe = fadd double %i.qb, %i.qd                ; 2 uses
  %i.qf = call double @llvm.fmuladd.f64(double %i.qe, double %i.qe, double %i.pz) ; 2 uses
  store double %i.qf, ptr %.0330499.i, align 8, !tbaa !146
  %i.qg = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 40
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !146
  %i.qi = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 112
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !146
  %i.qk = fadd double %i.qh, %i.qj                ; 2 uses
  %i.ql = call double @llvm.fmuladd.f64(double %i.qk, double %i.qk, double %i.qf) ; 2 uses
  store double %i.ql, ptr %.0330499.i, align 8, !tbaa !146
  %i.qm = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 48
  %i.qn = load double, ptr %i.qm, align 8, !tbaa !146
  %i.qo = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 120
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !146
  %i.qq = fadd double %i.qn, %i.qp                ; 2 uses
  %i.qr = call double @llvm.fmuladd.f64(double %i.qq, double %i.qq, double %i.ql) ; 2 uses
  store double %i.qr, ptr %.0330499.i, align 8, !tbaa !146
  %i.qs = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 56
  %i.qt = load double, ptr %i.qs, align 8, !tbaa !146
  %i.qu = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 128
  %i.qv = load double, ptr %i.qu, align 8, !tbaa !146
  %i.qw = fadd double %i.qt, %i.qv                ; 2 uses
  %i.qx = call double @llvm.fmuladd.f64(double %i.qw, double %i.qw, double %i.qr) ; 2 uses
  store double %i.qx, ptr %.0330499.i, align 8, !tbaa !146
  %i.qy = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 64
  %i.qz = load double, ptr %i.qy, align 8, !tbaa !146
  %i.ra = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 136
  %i.rb = load double, ptr %i.ra, align 8, !tbaa !146
  %i.rc = fadd double %i.qz, %i.rb                ; 2 uses
  %i.rd = call double @llvm.fmuladd.f64(double %i.rc, double %i.rc, double %i.qx)
  store double %i.rd, ptr %.0330499.i, align 8, !tbaa !146
  %i.re = getelementptr inbounds nuw i8, ptr %.0330499.i, i64 8 ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 144
  %i.rg = icmp ult ptr %i.re, %27
  br i1 %i.rg, label %.lr.ph.i, label %._crit_edge501.i.loopexit, !llvm.loop !156

._crit_edge501.i.loopexit:                        ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond543.not.i = icmp eq i64 %indvars.iv.next.i, %.sroa.11.0.insert.ext.i
  br i1 %exitcond543.not.i, label %.preheader488.i.split, label %.lr.ph.preheader.i, !llvm.loop !157

.preheader487.i:                                  ; preds = %._crit_edge516.i, %.preheader487.preheader.i
  %indvars.iv551.i = phi i64 [ 1, %.preheader487.preheader.i ], [ %indvars.iv.next552.i, %._crit_edge516.i ] ; 5 uses
  %i.rh = mul i64 %indvars.iv551.i, %i.cg
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.rh
  %i.rj = add nsw i64 %indvars.iv551.i, -1
  %i.rk = mul i64 %indvars.iv551.i, %i.cf
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.rk
  %i.rm = mul i64 %i.rj, %i.cf
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.rm
  %i.ro = mul i64 %indvars.iv551.i, %i.ce
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ro
  br label %bb.bv

.preheader485.i:                                  ; preds = %._crit_edge516.i, %.lr.ph503.i, %.preheader488.i.split, %.preheader489.i
  %i.rq = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !8  ; 3 uses
  %i.rs = icmp sgt i32 %i.rr, 0
  br i1 %i.rs, label %.preheader.lr.ph.i, label %.loopexit

.preheader.lr.ph.i:                               ; preds = %.preheader485.i
  %i.rt = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !17 ; 8 uses
  %i.rv = icmp sgt i32 %i.ru, 0
  br i1 %i.rv, label %.preheader.preheader.i, label %.loopexit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.rw = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.rx = add nsw i32 %i.ru, -32
  %i.ry = add nsw i32 %i.rr, -1
  %i.rz = zext nneg i32 %i.ru to i64              ; 2 uses
  %i.sa = sext i32 %i.rx to i64                   ; 3 uses
  %i.sb = zext nneg i32 %i.ry to i64
  %wide.trip.count575.i = zext nneg i32 %i.rr to i64
  %i.sc = icmp samesign ugt i32 %i.ru, 32
  %i.sd = load i32, ptr %i.rw, align 4
  %.fr529.i = freeze i32 %i.sd
  %i.se = icmp slt i32 %.fr529.i, 2               ; 6 uses
  %i.sf = add nsw i64 %i.rz, -1
  %i.sg = lshr i64 %i.sf, 5
  %i.sh = add nuw nsw i64 %i.sg, 1                ; 8 uses
  %i.si = add nsw i64 %i.rz, -33                  ; 2 uses
  %i.sj = lshr i64 %i.si, 5                       ; 2 uses
  %i.sk = add nuw nsw i64 %i.sj, 1                ; 2 uses
  %xtraiter = and i64 %i.sh, 3                    ; 3 uses
  %i.sl = icmp ult i32 %i.ru, 97
  %unroll_iter = and i64 %i.sh, 1152921504606846972
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = icmp ne i64 %xtraiter, 0
  %xtraiter130 = and i64 %i.sh, 7                 ; 3 uses
  %i.sm = icmp ult i32 %i.ru, 225
  %unroll_iter134 = and i64 %i.sh, 1152921504606846968
  %lcmp.mod132.not = icmp eq i64 %xtraiter130, 0
  %lcmp.mod133 = icmp ne i64 %xtraiter130, 0
  %i.sn = icmp eq i64 %i.sj, 0
  %unroll_iter140 = and i64 %i.sk, 1152921504606846974
  %i.so = and i64 %i.si, 32
  %lcmp.mod138.not.not = icmp eq i64 %i.so, 0
  %lcmp.mod139 = trunc i64 %i.sk to i1
  %xtraiter142 = and i64 %i.sh, 7                 ; 3 uses
  %i.sp = icmp ult i32 %i.ru, 225
  %unroll_iter146 = and i64 %i.sh, 1152921504606846968
  %lcmp.mod144.not = icmp eq i64 %xtraiter142, 0
  %lcmp.mod145 = icmp ne i64 %xtraiter142, 0
  %xtraiter148 = and i64 %i.sh, 7                 ; 3 uses
  %i.sq = icmp ult i32 %i.ru, 225
  %unroll_iter152 = and i64 %i.sh, 1152921504606846968
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
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ri, i64 %.idx615.i
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.rl, i64 %indvars.iv546.i ; 4 uses
  %i.st = load double, ptr %i.ss, align 8, !tbaa !146 ; 2 uses
  %i.su = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.sv = load double, ptr %i.su, align 8, !tbaa !146
  %i.sw = fadd double %i.st, %i.sv
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.cf ; 2 uses
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !146 ; 2 uses
  %i.sz = fadd double %i.sw, %i.sy
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !146
  %i.tc = fadd double %i.sz, %i.tb
  %i.td = fadd double %i.tc, 1.000000e-04
  %i.te = call double @sqrt(double noundef %i.td) #18
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %indvars.iv546.i ; 4 uses
  %i.tg = load double, ptr %i.tf, align 8, !tbaa !146 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.ti = load double, ptr %i.th, align 8, !tbaa !146
  %i.tj = fadd double %i.tg, %i.ti
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.cf ; 2 uses
  %i.tl = load double, ptr %i.tk, align 8, !tbaa !146 ; 2 uses
  %i.tm = fadd double %i.tj, %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.to = load double, ptr %i.tn, align 8, !tbaa !146
  %i.tp = fadd double %i.tm, %i.to
  %i.tq = fadd double %i.tp, 1.000000e-04
  %i.tr = call double @sqrt(double noundef %i.tq) #18
  %i.ts = getelementptr inbounds i8, ptr %i.ss, i64 -8 ; 2 uses
  %i.tt = load double, ptr %i.ts, align 8, !tbaa !146
  %i.tu = fadd double %i.st, %i.tt
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %i.cf
  %i.tw = load double, ptr %i.tv, align 8, !tbaa !146
  %i.tx = fadd double %i.tu, %i.tw
  %i.ty = fadd double %i.sy, %i.tx
  %i.tz = fadd double %i.ty, 1.000000e-04
  %i.ua = call double @sqrt(double noundef %i.tz) #18
  %i.ub = insertelement <2 x double> poison, double %i.tr, i64 0
  %i.uc = insertelement <2 x double> %i.ub, double %i.ua, i64 1
  %i.ud = fdiv <2 x double> splat (double 1.000000e+00), %i.uc ; 4 uses
  %i.ue = getelementptr inbounds i8, ptr %i.tf, i64 -8 ; 2 uses
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !146
  %i.ug = fadd double %i.tg, %i.uf
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.cf
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !146
  %i.uj = fadd double %i.ug, %i.ui
  %i.uk = fadd double %i.tl, %i.uj
  %i.ul = fadd double %i.uk, 1.000000e-04
  %i.um = call double @sqrt(double noundef %i.ul) #18
  %i.un = insertelement <2 x double> poison, double %i.te, i64 0
  %i.uo = insertelement <2 x double> %i.un, double %i.um, i64 1
  %i.up = fdiv <2 x double> splat (double 1.000000e+00), %i.uo ; 4 uses
  %i.uq = extractelement <2 x double> %i.up, i64 1 ; 8 uses
  %i.ur = extractelement <2 x double> %i.up, i64 0 ; 8 uses
  %.idx616.i = mul nuw nsw i64 %indvars.iv546.i, 144
  %i.us = getelementptr inbounds nuw i8, ptr %i.rp, i64 %.idx616.i ; 19 uses
  br label %bb.bw

.preheader486.i:                                  ; preds = %bb.bw
  %i.ut = load double, ptr %i.us, align 8, !tbaa !146
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 72
  %i.uv = load double, ptr %i.uu, align 8, !tbaa !146
  %i.uw = fadd double %i.ut, %i.uv                ; 4 uses
  %i.ux = fmul double %i.ur, %i.uw                ; 2 uses
  %i.uy = fcmp ogt double %i.ux, 2.000000e-01
  %.sroa.speculated413.i = select i1 %i.uy, double 2.000000e-01, double %i.ux
  %i.uz = extractelement <2 x double> %i.ud, i64 0 ; 8 uses
  %i.va = fmul double %i.uz, %i.uw                ; 2 uses
  %i.vb = fcmp ogt double %i.va, 2.000000e-01
  %.sroa.speculated408.i = select i1 %i.vb, double 2.000000e-01, double %i.va
  %i.vc = extractelement <2 x double> %i.ud, i64 1 ; 8 uses
  %i.vd = fmul double %i.vc, %i.uw                ; 2 uses
  %i.ve = fcmp ogt double %i.vd, 2.000000e-01
  %.sroa.speculated403.i = select i1 %i.ve, double 2.000000e-01, double %i.vd
  %i.vf = fmul double %i.uq, %i.uw                ; 2 uses
  %i.vg = fcmp ogt double %i.vf, 2.000000e-01
  %.sroa.speculated.i = select i1 %i.vg, double 2.000000e-01, double %i.vf
  %i.vh = fadd double %.sroa.speculated413.i, %.sroa.speculated408.i
  %i.vi = fadd double %.sroa.speculated403.i, %i.vh
  %i.vj = fadd double %.sroa.speculated.i, %i.vi
  %i.vk = fmul double %i.vj, 5.000000e-01
  %i.vl = getelementptr inbounds nuw i8, ptr %.0325504.i, i64 16
  store double %i.vk, ptr %i.abw, align 8, !tbaa !146
  %i.vm = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.vn = load double, ptr %i.vm, align 8, !tbaa !146
  %i.vo = getelementptr inbounds nuw i8, ptr %i.us, i64 80
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !146
  %i.vq = fadd double %i.vn, %i.vp                ; 4 uses
  %i.vr = fmul double %i.ur, %i.vq                ; 2 uses
  %i.vs = fcmp ogt double %i.vr, 2.000000e-01
  %.sroa.speculated413.1.i = select i1 %i.vs, double 2.000000e-01, double %i.vr
  %i.vt = fmul double %i.uz, %i.vq                ; 2 uses
  %i.vu = fcmp ogt double %i.vt, 2.000000e-01
  %.sroa.speculated408.1.i = select i1 %i.vu, double 2.000000e-01, double %i.vt
  %i.vv = fmul double %i.vc, %i.vq                ; 2 uses
  %i.vw = fcmp ogt double %i.vv, 2.000000e-01
  %.sroa.speculated403.1.i = select i1 %i.vw, double 2.000000e-01, double %i.vv
  %i.vx = fmul double %i.uq, %i.vq                ; 2 uses
  %i.vy = fcmp ogt double %i.vx, 2.000000e-01
  %.sroa.speculated.1.i = select i1 %i.vy, double 2.000000e-01, double %i.vx
  %i.vz = fadd double %.sroa.speculated413.1.i, %.sroa.speculated408.1.i
  %i.wa = fadd double %.sroa.speculated403.1.i, %i.vz
  %i.wb = fadd double %.sroa.speculated.1.i, %i.wa
  %i.wc = fmul double %i.wb, 5.000000e-01
  %i.wd = getelementptr inbounds nuw i8, ptr %.0325504.i, i64 24
  store double %i.wc, ptr %i.vl, align 8, !tbaa !146
  %i.we = getelementptr inbounds nuw i8, ptr %i.us, i64 16
  %i.wf = load double, ptr %i.we, align 8, !tbaa !146
  %i.wg = getelementptr inbounds nuw i8, ptr %i.us, i64 88
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !146
  %i.wi = fadd double %i.wf, %i.wh                ; 4 uses
  %i.wj = fmul double %i.ur, %i.wi                ; 2 uses
  %i.wk = fcmp ogt double %i.wj, 2.000000e-01
  %.sroa.speculated413.2.i = select i1 %i.wk, double 2.000000e-01, double %i.wj
  %i.wl = fmul double %i.uz, %i.wi                ; 2 uses
  %i.wm = fcmp ogt double %i.wl, 2.000000e-01
end_hunk_0
