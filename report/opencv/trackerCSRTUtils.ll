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
          to label %.noexc unwind label %bb.co

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
          to label %.noexc24 unwind label %bb.co

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
  br label %bb.cb

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
  br label %bb.ca

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
  br label %bb.bz

bb.af:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ag:                                            ; preds = %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ah:                                            ; preds = %bb.x
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ai:                                            ; preds = %bb.y
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

._crit_edge.i:                                    ; preds = %bb.br
  %i.em = add nuw nsw i32 %storemerge495.i, 1
  %exitcond540.not.i = icmp eq i32 %storemerge495.i, %i.db
  br i1 %exitcond540.not.i, label %.preheader489.i, label %.preheader490.i, !llvm.loop !145

bb.aj:                                            ; preds = %bb.br, %.preheader490.i
  %storemerge379494.i = phi i32 [ 1, %.preheader490.i ], [ %i.jg, %bb.br ] ; 4 uses
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
  %i.hj = fneg double %i.hh
  %i.hk = fcmp olt double %.1338.7.i, %i.hj
  %spec.select.i = select i1 %i.hk, i32 17, i32 %.1336.7.i
  %.1336.8.i = select i1 %i.hi, i32 8, i32 %spec.select.i ; 4 uses
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
  br i1 %or.cond.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hw = fmul double %i.dm, %i.ht
  %i.hx = mul nsw i32 %i.hq, 18
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.hy
  %i.ia = zext nneg i32 %.1336.8.i to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.ia ; 2 uses
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !146
  %i.id = call double @llvm.fmuladd.f64(double %i.hw, double %sqrt.i, double %i.ic)
  store double %i.id, ptr %i.ib, align 8, !tbaa !146
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.dn, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.ie = add nsw i32 %i.hq, 1                    ; 2 uses
  %i.if = icmp slt i32 %i.ie, %i.ay
  br i1 %i.if, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ig = fmul double %i.dm, %i.hs
  %i.ih = mul nsw i32 %i.ie, 18
  %i.ii = sext i32 %i.ih to i64
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ii
  %i.ik = zext nneg i32 %.1336.8.i to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !146
  %i.in = call double @llvm.fmuladd.f64(double %i.ig, double %sqrt.i, double %i.im)
  store double %i.in, ptr %i.il, align 8, !tbaa !146
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %or.cond3.i = and i1 %i.ds, %i.hu
  br i1 %or.cond3.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.io = fmul double %i.dl, %i.ht
  %i.ip = mul nuw nsw i32 %i.hq, 18
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.iq
  %i.is = zext nneg i32 %.1336.8.i to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !146
  %i.iv = call double @llvm.fmuladd.f64(double %i.io, double %sqrt.i, double %i.iu)
  store double %i.iv, ptr %i.it, align 8, !tbaa !146
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %i.ds, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.iw = add nsw i32 %i.hq, 1                    ; 2 uses
  %i.ix = icmp slt i32 %i.iw, %i.ay
  br i1 %i.ix, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iy = fmul double %i.dl, %i.hs
  %i.iz = mul nsw i32 %i.iw, 18
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.ja
  %i.jc = zext nneg i32 %.1336.8.i to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jc ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !146
  %i.jf = call double @llvm.fmuladd.f64(double %i.iy, double %sqrt.i, double %i.je)
  store double %i.jf, ptr %i.jd, align 8, !tbaa !146
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
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
  %i.jn = mul i64 %indvars.iv.i, %i.ce
  %28 = getelementptr [8 x i8], ptr %i.ck, i64 %i.jn ; 6 uses
  %29 = mul i64 %indvars.iv.i, %i.cf              ; 2 uses
  %30 = shl i64 %29, 3                            ; 2 uses
  %31 = add i64 %23, %30
  %32 = add i64 %24, %30
  %33 = call i64 @llvm.umax.i64(i64 %31, i64 %32)
  %34 = shl i64 %29, 3
  %35 = sub i64 %25, %34
  %i.jo = add i64 %33, %35
  %i.jp = lshr i64 %i.jo, 3                       ; 2 uses
  %i.jq = add nuw nsw i64 %i.jp, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.jp, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.jr = mul i64 %i.ee, %indvars.iv.i
  %i.js = getelementptr i8, ptr %i.ck, i64 %i.jr
  %scevgep110 = getelementptr i8, ptr %i.js, i64 144
  %i.jt = mul i64 %i.dz, %indvars.iv.i            ; 3 uses
  %i.ju = add i64 %i.ea, %i.jt
  %i.jv = add i64 %i.eb, %i.jt
  %umax = call i64 @llvm.umax.i64(i64 %i.ju, i64 %i.jv)
  %i.jw = mul i64 %i.ed, %indvars.iv.i
  %i.jx = add i64 %i.jw, %i.ec
  %i.jy = add i64 %umax, %i.jx                    ; 2 uses
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = mul i64 %i.jz, 144
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.ka
  %i.kb = getelementptr i8, ptr %i.cm, i64 %i.jt
  %scevgep = getelementptr i8, ptr %i.kb, i64 8
  %i.kc = and i64 %i.jy, -8
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.kc
  %bound0 = icmp ult ptr %26, %scevgep111
  %bound1 = icmp ult ptr %28, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.jq, 4611686018427387902     ; 4 uses
  %i.kd = shl i64 %n.vec, 3
  %i.ke = getelementptr i8, ptr %26, i64 %i.kd
  %i.kf = mul i64 %n.vec, 144
  %i.kg = getelementptr i8, ptr %28, i64 %i.kf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kh = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %26, i64 %i.kh ; 10 uses
  %i.ki = mul i64 %index, 144                     ; 2 uses
  %next.gep112 = getelementptr i8, ptr %28, i64 %i.ki ; 18 uses
  %i.kj = getelementptr i8, ptr %28, i64 %i.ki    ; 18 uses
  %next.gep113 = getelementptr i8, ptr %i.kj, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.kk = load double, ptr %next.gep112, align 8, !tbaa !146, !alias.scope !151
  %i.kl = load double, ptr %next.gep113, align 8, !tbaa !146, !alias.scope !151
  %i.km = insertelement <2 x double> poison, double %i.kk, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %i.kl, i64 1
  %i.ko = getelementptr inbounds nuw i8, ptr %next.gep112, i64 72
  %i.kp = getelementptr i8, ptr %i.kj, i64 216
  %i.kq = load double, ptr %i.ko, align 8, !tbaa !146, !alias.scope !151
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !146, !alias.scope !151
  %i.ks = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.kt = insertelement <2 x double> %i.ks, double %i.kr, i64 1
  %i.ku = fadd <2 x double> %i.kn, %i.kt          ; 2 uses
  %i.kv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> %i.ku, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.kv, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.kw = getelementptr inbounds nuw i8, ptr %next.gep112, i64 8
  %i.kx = getelementptr i8, ptr %i.kj, i64 152
  %i.ky = load double, ptr %i.kw, align 8, !tbaa !146, !alias.scope !151
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !146, !alias.scope !151
  %i.la = insertelement <2 x double> poison, double %i.ky, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.kz, i64 1
  %i.lc = getelementptr inbounds nuw i8, ptr %next.gep112, i64 80
  %i.ld = getelementptr i8, ptr %i.kj, i64 224
  %i.le = load double, ptr %i.lc, align 8, !tbaa !146, !alias.scope !151
  %i.lf = load double, ptr %i.ld, align 8, !tbaa !146, !alias.scope !151
  %i.lg = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lh = insertelement <2 x double> %i.lg, double %i.lf, i64 1
  %i.li = fadd <2 x double> %i.lb, %i.lh          ; 2 uses
  %i.lj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.li, <2 x double> %i.li, <2 x double> %i.kv) ; 2 uses
  store <2 x double> %i.lj, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.lk = getelementptr inbounds nuw i8, ptr %next.gep112, i64 16
  %i.ll = getelementptr i8, ptr %i.kj, i64 160
  %i.lm = load double, ptr %i.lk, align 8, !tbaa !146, !alias.scope !151
  %i.ln = load double, ptr %i.ll, align 8, !tbaa !146, !alias.scope !151
  %i.lo = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lp = insertelement <2 x double> %i.lo, double %i.ln, i64 1
  %i.lq = getelementptr inbounds nuw i8, ptr %next.gep112, i64 88
  %i.lr = getelementptr i8, ptr %i.kj, i64 232
  %i.ls = load double, ptr %i.lq, align 8, !tbaa !146, !alias.scope !151
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !146, !alias.scope !151
  %i.lu = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.lt, i64 1
  %i.lw = fadd <2 x double> %i.lp, %i.lv          ; 2 uses
  %i.lx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lw, <2 x double> %i.lj) ; 2 uses
  store <2 x double> %i.lx, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.ly = getelementptr inbounds nuw i8, ptr %next.gep112, i64 24
  %i.lz = getelementptr i8, ptr %i.kj, i64 168
  %i.ma = load double, ptr %i.ly, align 8, !tbaa !146, !alias.scope !151
  %i.mb = load double, ptr %i.lz, align 8, !tbaa !146, !alias.scope !151
  %i.mc = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.md = insertelement <2 x double> %i.mc, double %i.mb, i64 1
  %i.me = getelementptr inbounds nuw i8, ptr %next.gep112, i64 96
  %i.mf = getelementptr i8, ptr %i.kj, i64 240
  %i.mg = load double, ptr %i.me, align 8, !tbaa !146, !alias.scope !151
  %i.mh = load double, ptr %i.mf, align 8, !tbaa !146, !alias.scope !151
  %i.mi = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.mh, i64 1
  %i.mk = fadd <2 x double> %i.md, %i.mj          ; 2 uses
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.mk, <2 x double> %i.lx) ; 2 uses
  store <2 x double> %i.ml, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.mm = getelementptr inbounds nuw i8, ptr %next.gep112, i64 32
  %i.mn = getelementptr i8, ptr %i.kj, i64 176
  %i.mo = load double, ptr %i.mm, align 8, !tbaa !146, !alias.scope !151
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !146, !alias.scope !151
  %i.mq = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.mp, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %next.gep112, i64 104
  %i.mt = getelementptr i8, ptr %i.kj, i64 248
  %i.mu = load double, ptr %i.ms, align 8, !tbaa !146, !alias.scope !151
  %i.mv = load double, ptr %i.mt, align 8, !tbaa !146, !alias.scope !151
  %i.mw = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mv, i64 1
  %i.my = fadd <2 x double> %i.mr, %i.mx          ; 2 uses
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.my, <2 x double> %i.ml) ; 2 uses
  store <2 x double> %i.mz, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.na = getelementptr inbounds nuw i8, ptr %next.gep112, i64 40
  %i.nb = getelementptr i8, ptr %i.kj, i64 184
  %i.nc = load double, ptr %i.na, align 8, !tbaa !146, !alias.scope !151
  %i.nd = load double, ptr %i.nb, align 8, !tbaa !146, !alias.scope !151
  %i.ne = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.nd, i64 1
  %i.ng = getelementptr inbounds nuw i8, ptr %next.gep112, i64 112
  %i.nh = getelementptr i8, ptr %i.kj, i64 256
  %i.ni = load double, ptr %i.ng, align 8, !tbaa !146, !alias.scope !151
  %i.nj = load double, ptr %i.nh, align 8, !tbaa !146, !alias.scope !151
  %i.nk = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nl = insertelement <2 x double> %i.nk, double %i.nj, i64 1
  %i.nm = fadd <2 x double> %i.nf, %i.nl          ; 2 uses
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.nm, <2 x double> %i.mz) ; 2 uses
  store <2 x double> %i.nn, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.no = getelementptr inbounds nuw i8, ptr %next.gep112, i64 48
  %i.np = getelementptr i8, ptr %i.kj, i64 192
  %i.nq = load double, ptr %i.no, align 8, !tbaa !146, !alias.scope !151
  %i.nr = load double, ptr %i.np, align 8, !tbaa !146, !alias.scope !151
  %i.ns = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %i.nr, i64 1
  %i.nu = getelementptr inbounds nuw i8, ptr %next.gep112, i64 120
  %i.nv = getelementptr i8, ptr %i.kj, i64 264
  %i.nw = load double, ptr %i.nu, align 8, !tbaa !146, !alias.scope !151
  %i.nx = load double, ptr %i.nv, align 8, !tbaa !146, !alias.scope !151
  %i.ny = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.nz = insertelement <2 x double> %i.ny, double %i.nx, i64 1
  %i.oa = fadd <2 x double> %i.nt, %i.nz          ; 2 uses
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.oa, <2 x double> %i.nn) ; 2 uses
  store <2 x double> %i.ob, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.oc = getelementptr inbounds nuw i8, ptr %next.gep112, i64 56
  %i.od = getelementptr i8, ptr %i.kj, i64 200
  %i.oe = load double, ptr %i.oc, align 8, !tbaa !146, !alias.scope !151
  %i.of = load double, ptr %i.od, align 8, !tbaa !146, !alias.scope !151
  %i.og = insertelement <2 x double> poison, double %i.oe, i64 0
  %i.oh = insertelement <2 x double> %i.og, double %i.of, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %next.gep112, i64 128
  %i.oj = getelementptr i8, ptr %i.kj, i64 272
  %i.ok = load double, ptr %i.oi, align 8, !tbaa !146, !alias.scope !151
  %i.ol = load double, ptr %i.oj, align 8, !tbaa !146, !alias.scope !151
  %i.om = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.ol, i64 1
  %i.oo = fadd <2 x double> %i.oh, %i.on          ; 2 uses
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> %i.oo, <2 x double> %i.ob) ; 2 uses
  store <2 x double> %i.op, ptr %next.gep, align 8, !tbaa !146, !alias.scope !148, !noalias !151
  %i.oq = getelementptr inbounds nuw i8, ptr %next.gep112, i64 64
  %i.or = getelementptr i8, ptr %i.kj, i64 208
  %i.os = load double, ptr %i.oq, align 8, !tbaa !146, !alias.scope !151
  %i.ot = load double, ptr %i.or, align 8, !tbaa !146, !alias.scope !151
  %i.ou = insertelement <2 x double> poison, double %i.os, i64 0
  %i.ov = insertelement <2 x double> %i.ou, double %i.ot, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %next.gep112, i64 136
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
  %cmp.n = icmp eq i64 %i.jq, %n.vec
  br i1 %cmp.n, label %._crit_edge501.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.0330499.i.ph = phi ptr [ %26, %vector.memcheck ], [ %26, %.lr.ph.preheader.i ], [ %i.ke, %middle.block ]
  %.0331498.i.ph = phi ptr [ %28, %vector.memcheck ], [ %28, %.lr.ph.preheader.i ], [ %i.kg, %middle.block ]
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
  %i.ri = icmp ult ptr %i.rg, %27
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
  br label %bb.bs

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
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  %xtraiter128 = and i64 %i.sj, 7                 ; 3 uses
  %i.so = icmp ult i32 %i.rw, 225
  %unroll_iter132 = and i64 %i.sj, 1152921504606846968
  %lcmp.mod130.not = icmp eq i64 %xtraiter128, 0
  %lcmp.mod131 = icmp ne i64 %xtraiter128, 0
  %i.sp = icmp eq i64 %i.sl, 0
  %unroll_iter138 = and i64 %i.sm, 1152921504606846974
  %i.sq = and i64 %i.sk, 32
  %lcmp.mod136.not.not = icmp eq i64 %i.sq, 0
  %lcmp.mod137 = trunc i64 %i.sm to i1
  %xtraiter140 = and i64 %i.sj, 7                 ; 3 uses
  %i.sr = icmp ult i32 %i.rw, 225
  %unroll_iter144 = and i64 %i.sj, 1152921504606846968
  %lcmp.mod142.not = icmp eq i64 %xtraiter140, 0
  %lcmp.mod143 = icmp ne i64 %xtraiter140, 0
  %xtraiter146 = and i64 %i.sj, 7                 ; 3 uses
  %i.ss = icmp ult i32 %i.rw, 225
  %unroll_iter150 = and i64 %i.sj, 1152921504606846968
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod149 = icmp ne i64 %xtraiter146, 0
  br label %.preheader.i

._crit_edge516.i:                                 ; preds = %.preheader486.i
  %indvars.iv.next552.i = add nuw nsw i64 %indvars.iv551.i, 1 ; 2 uses
  %exitcond555.not.i = icmp eq i64 %indvars.iv.next552.i, %wide.trip.count554.i
  br i1 %exitcond555.not.i, label %.preheader485.i, label %.preheader487.i, !llvm.loop !158

bb.bs:                                            ; preds = %.preheader486.i, %.preheader487.i
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
  br label %bb.bt

.preheader486.i:                                  ; preds = %bb.bt
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
