Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/trackerCSRTUtils?download=true
inline.NumInlined: 438
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN2cv16get_features_hogERKNS_3MatEi:bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i

bb.m:                                             ; preds = %bb.j
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %9, align 8, !tbaa !50     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit385.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i383.i: ; preds = %bb.m
  %i.t = load i64, ptr %i.r, align 8, !tbaa !51
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
  %i.w = load i32, ptr %i.v, align 8, !tbaa !161  ; 6 uses
  %i.x = icmp slt i32 %i.w, 3
  br i1 %i.x, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.cn

.noexc:                                           ; preds = %bb.o
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.10, i32 noundef 109) #19
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.noexc
  unreachable

bb.q:                                             ; preds = %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %5, align 8, !tbaa !50     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !51
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %.body

bb.r:                                             ; preds = %bb.n
  %i.ae = icmp sgt i32 %i.w, 0
  br i1 %i.ae, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.af = icmp eq i32 %i.w, 2
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.af, i64 88, i64 84
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %17, i64 %.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %i.ag = load i32, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, align 4, !tbaa !45
  br label %_ZNK2cv8MatShapeclEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ah = icmp eq i32 %i.w, 0
  %i.ai = zext i1 %i.ah to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i

_ZNK2cv8MatShapeclEv.exit.i:                      ; preds = %bb.t, %bb.s
  %i.aj = phi i32 [ %i.ag, %bb.s ], [ %i.ai, %bb.t ]
  %i.ak = icmp eq i32 %i.w, 2
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 84
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp sgt i32 %i.w, -1
  %i.ao = zext i1 %i.an to i32
  %i.ap = select i1 %i.ak, i32 %i.am, i32 %i.ao
  %i.aq = sitofp i32 %2 to double                 ; 3 uses
  %i.ar = insertelement <2 x i32> poison, i32 %i.aj, i64 0
  %i.as = insertelement <2 x i32> %i.ar, i32 %i.ap, i64 1
  %i.at = sitofp <2 x i32> %i.as to <2 x double>
  %i.au = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aw = fdiv <2 x double> %i.at, %i.av
  %i.ax = call <2 x double> @llvm.floor.v2f64(<2 x double> %i.aw)
  %i.ay = fptosi <2 x double> %i.ax to <2 x i32>  ; 4 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0   ; 7 uses
  %i.ba = call i32 @llvm.smax.i32(i32 %i.az, i32 2) ; 2 uses
  %i.bb = extractelement <2 x i32> %i.ay, i64 1   ; 5 uses
  %i.bc = call i32 @llvm.smax.i32(i32 %i.bb, i32 2) ; 2 uses
  %.sroa.11.0.insert.ext.i = zext i32 %i.bb to i64 ; 2 uses
  %.sroa.11.0.insert.shift.i = shl nuw i64 %.sroa.11.0.insert.ext.i, 32
  %i.bd = mul i32 %2, %i.az                       ; 2 uses
  %i.be = mul i32 %2, %i.bb                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  %i.bf = mul nsw i32 %i.az, 18
  %.sroa.0455.0.insert.ext.i = zext i32 %i.bf to i64
  %.sroa.0455.0.insert.insert.i = or disjoint i64 %.sroa.11.0.insert.shift.i, %.sroa.0455.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %12, i64 %.sroa.0455.0.insert.insert.i, i32 noundef 6)
          to label %.noexc24 unwind label %bb.cn

.noexc24:                                         ; preds = %_ZNK2cv8MatShapeclEv.exit.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %11) #18
  %i.bg = load ptr, ptr %12, align 8, !tbaa !31, !noalias !162 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  invoke void %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(688) %12, ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i unwind label %.body.i

.body.i:                                          ; preds = %.noexc24
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %11) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.cb

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i:               ; preds = %.noexc24
  %.sroa.0472.0.insert.insert.i = bitcast <2 x i32> %i.ay to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bl) #18
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bm) #18
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bn) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %14, i64 %.sroa.0472.0.insert.insert.i, i32 noundef 6)
          to label %bb.u unwind label %bb.aa

bb.u:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #18
  %i.bo = load ptr, ptr %14, align 8, !tbaa !31, !noalias !163 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(688) %14, ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i unwind label %.body389.i

.body389.i:                                       ; preds = %bb.u
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %14) #18
  br label %bb.ab

_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i:            ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bt) #18
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bu) #18
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bv) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.bw = shl nuw nsw i32 %i.ba, 5
  %.sroa.2.0.insert.ext.i = zext nneg i32 %i.bc to i64
  %.sroa.2.0.insert.shift.i = shl nuw nsw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext nneg i32 %i.bw to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %15, i64 %.sroa.0.0.insert.insert.i, i32 noundef 6)
          to label %bb.v unwind label %bb.ac

bb.v:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.bx = load ptr, ptr %15, align 8, !tbaa !31   ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  invoke void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull align 8 dereferenceable(688) %15, ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i unwind label %bb.ad, !inline_history !1

_ZN2cv3MataSERKNS_7MatExprE.exit.i:               ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %15, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cb) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %15, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cc) #18
  %i.cd = getelementptr inbounds nuw i8, ptr %15, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cd) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  %i.ce = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 0)
          to label %bb.w unwind label %bb.af      ; 5 uses

bb.w:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.cf = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 0)
          to label %bb.x unwind label %bb.ag      ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.cg = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 0)
          to label %bb.y unwind label %bb.ah      ; 10 uses

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 0)
          to label %bb.z unwind label %bb.ai

bb.z:                                             ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !21 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !21 ; 5 uses
  %i.co = ptrtoaddr ptr %i.cn to i64              ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21 ; 37 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %16, i64 128 ; 9 uses
  %i.cs = icmp sgt i32 %i.be, 2
  br i1 %i.cs, label %.preheader490.lr.ph.i, label %.preheader489.i

.preheader490.lr.ph.i:                            ; preds = %bb.z
  %i.ct = icmp sgt i32 %i.bd, 2
  %i.cu = sub i64 0, %i.ce                        ; 3 uses
  br i1 %i.ct, label %.preheader490.lr.ph.split.i, label %.preheader489.i

.preheader490.lr.ph.split.i:                      ; preds = %.preheader490.lr.ph.i
  %i.cv = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !19
  %i.cy = add nsw i32 %i.cx, -2
  %i.cz = load i32, ptr %i.cv, align 8, !tbaa !18
  %i.da = add nsw i32 %i.cz, -2
  %i.db = add nsw i32 %i.bd, -2
  %i.dc = add nsw i32 %i.be, -2
  br label %.preheader490.i

.preheader490.i:                                  ; preds = %._crit_edge.i, %.preheader490.lr.ph.split.i
  %storemerge495.i = phi i32 [ 1, %.preheader490.lr.ph.split.i ], [ %i.eq, %._crit_edge.i ] ; 4 uses
  %.sroa.speculated438.i = call i32 @llvm.smin.i32(i32 %i.da, i32 %storemerge495.i)
  %i.dd = sext i32 %.sroa.speculated438.i to i64
  %i.de = mul i64 %i.ce, %i.dd
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.cj, i64 %i.de
  %i.df = uitofp nneg i32 %storemerge495.i to double
  %i.dg = fadd double %i.df, 5.000000e-01
  %i.dh = fdiv double %i.dg, %i.aq
  %i.di = fadd double %i.dh, -5.000000e-01        ; 2 uses
  %i.dj = call double @llvm.floor.f64(double %i.di)
  %i.dk = fptosi double %i.dj to i32              ; 5 uses
  %i.dl = sitofp i32 %i.dk to double
  %i.dm = fsub double %i.di, %i.dl                ; 3 uses
  %i.dn = fsub double 1.000000e+00, %i.dm         ; 2 uses
  %i.do = icmp sgt i32 %i.dk, -1
  %i.dp = zext nneg i32 %i.dk to i64
  %i.dq = mul i64 %i.cf, %i.dp
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dq ; 2 uses
  %i.ds = add nsw i32 %i.dk, 1                    ; 2 uses
  %i.dt = icmp slt i32 %i.ds, %i.bb               ; 2 uses
  %i.du = sext i32 %i.ds to i64
  %i.dv = mul i64 %i.cf, %i.du
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.dv ; 2 uses
  br label %bb.aj

.preheader489.i:                                  ; preds = %._crit_edge.i, %.preheader490.lr.ph.i, %bb.z
  %i.dx = icmp sgt i32 %i.bb, 0
  br i1 %i.dx, label %.lr.ph503.i, label %.preheader485.i

.lr.ph503.i:                                      ; preds = %.preheader489.i
  %i.dy = sext i32 %i.az to i64
  %.idx.i = shl nsw i64 %i.dy, 3                  ; 3 uses
  %i.dz = icmp sgt i32 %i.az, 0
  br i1 %i.dz, label %.lr.ph.preheader.i.preheader, label %.preheader485.i

.lr.ph.preheader.i.preheader:                     ; preds = %.lr.ph503.i
  %i.ea = shl i64 %i.cg, 3
  %i.eb = add i64 %.idx.i, %i.co
  %i.ec = add i64 %i.co, 8
  %i.ed = xor i64 %i.co, -1
  %i.ee = mul i64 %i.cg, -8
  %i.ef = shl i64 %i.cf, 3
  %i.eg = add i64 %.idx.i, %i.co
  %i.eh = add i64 %i.co, 8
  %i.ei = xor i64 %i.co, -1
  br label %.lr.ph.preheader.i

bb.aa:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.body389.i
  %.pn365.i = phi { ptr, i32 } [ %i.bs, %.body389.i ], [ %i.ej, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %bb.ca

bb.ac:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit391.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.v
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %15) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn367.i = phi { ptr, i32 } [ %i.el, %bb.ad ], [ %i.ek, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  br label %bb.bz

bb.af:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ag:                                            ; preds = %bb.w
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ah:                                            ; preds = %bb.x
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.ai:                                            ; preds = %bb.y
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

._crit_edge.i:                                    ; preds = %bb.br
  %i.eq = add nuw nsw i32 %storemerge495.i, 1
  %exitcond540.not.i = icmp eq i32 %storemerge495.i, %i.dc
  br i1 %exitcond540.not.i, label %.preheader489.i, label %.preheader490.i, !llvm.loop !142

bb.aj:                                            ; preds = %bb.br, %.preheader490.i
  %storemerge379494.i = phi i32 [ 1, %.preheader490.i ], [ %i.kb, %bb.br ] ; 4 uses
  %.sroa.speculated442.i = call i32 @llvm.smin.i32(i32 %i.cy, i32 %storemerge379494.i)
  %i.er = mul nsw i32 %.sroa.speculated442.i, 3
  %i.es = sext i32 %i.er to i64
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.es ; 10 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %gep.i, i64 %i.ce
  %i.eu = load double, ptr %i.et, align 8, !tbaa !53
  %i.ev = getelementptr inbounds [8 x i8], ptr %gep.i, i64 %i.cu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !53
  %i.ex = fsub double %i.eu, %i.ew                ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %gep.i, i64 24
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !53
  %i.fa = getelementptr inbounds i8, ptr %gep.i, i64 -24
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !53
  %i.fc = fsub double %i.ez, %i.fb                ; 3 uses
  %i.fd = fmul double %i.ex, %i.ex
  %i.fe = call double @llvm.fmuladd.f64(double %i.fc, double %i.fc, double %i.fd) ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.ce
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !53
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.cu
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !53
  %i.fk = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !53
  %i.fm = getelementptr inbounds i8, ptr %gep.i, i64 -16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !53
  %i.fo = getelementptr inbounds nuw i8, ptr %gep.i, i64 16 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.ce
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !53
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.cu
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !53
  %i.ft = getelementptr inbounds nuw i8, ptr %gep.i, i64 40
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !53
  %i.fv = getelementptr inbounds i8, ptr %gep.i, i64 -8
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !53
  %i.fx = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fq, i64 1
  %i.fz = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.ga = insertelement <2 x double> %i.fz, double %i.fs, i64 1
  %i.gb = fsub <2 x double> %i.fy, %i.ga          ; 4 uses
  %i.gc = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.gd = insertelement <2 x double> %i.gc, double %i.fu, i64 1
  %i.ge = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.fw, i64 1
  %i.gg = fsub <2 x double> %i.gd, %i.gf          ; 4 uses
  %i.gh = fmul <2 x double> %i.gb, %i.gb
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.gg, <2 x double> %i.gh) ; 2 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0 ; 2 uses
  %i.gk = extractelement <2 x double> %i.gi, i64 1 ; 2 uses
  %i.gl = fcmp ogt double %i.gj, %i.gk            ; 3 uses
  %i.gm = extractelement <2 x double> %i.gb, i64 0
  %i.gn = extractelement <2 x double> %i.gb, i64 1
  %.0343.i = select i1 %i.gl, double %i.gm, double %i.gn
  %i.go = extractelement <2 x double> %i.gg, i64 0
  %i.gp = extractelement <2 x double> %i.gg, i64 1
  %.0341.i = select i1 %i.gl, double %i.go, double %i.gp
  %.0339.i = select i1 %i.gl, double %i.gj, double %i.gk ; 2 uses
  %i.gq = fcmp ogt double %i.fe, %.0339.i         ; 3 uses
  %.1344.i = select i1 %i.gq, double %i.ex, double %.0343.i ; 5 uses
  %.1342.i = select i1 %i.gq, double %i.fc, double %.0341.i ; 9 uses
  %i.gr = fmul double %.1344.i, 0.000000e+00
  %i.gs = fadd double %.1342.i, %i.gr             ; 4 uses
  %i.gt = fcmp ogt double %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gu = fcmp olt double %i.gs, 0.000000e+00
  br i1 %i.gu, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.gv = fneg double %i.gs
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %.1338.i = phi double [ 0.000000e+00, %bb.ak ], [ %i.gv, %bb.al ], [ %i.gs, %bb.aj ] ; 3 uses
  %.1336.i = phi i32 [ 0, %bb.ak ], [ 9, %bb.al ], [ 0, %bb.aj ]
  %i.gw = fmul double %.1344.i, 3.420000e-01      ; 2 uses
  %i.gx = call double @llvm.fmuladd.f64(double %.1342.i, double f0x3FEE1205BC01A36E, double %i.gw) ; 3 uses
  %i.gy = fcmp ogt double %i.gx, %.1338.i
  br i1 %i.gy, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gz = fneg double %i.gx                       ; 2 uses
  %i.ha = fcmp olt double %.1338.i, %i.gz
  br i1 %i.ha, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %.1338.1.i = phi double [ %.1338.i, %bb.an ], [ %i.gz, %bb.ao ], [ %i.gx, %bb.am ] ; 3 uses
  %.1336.1.i = phi i32 [ %.1336.i, %bb.an ], [ 10, %bb.ao ], [ 1, %bb.am ]
  %i.hb = fmul double %.1344.i, 6.428000e-01      ; 2 uses
  %i.hc = call double @llvm.fmuladd.f64(double %.1342.i, double 7.660000e-01, double %i.hb) ; 3 uses
  %i.hd = fcmp ogt double %i.hc, %.1338.1.i
  br i1 %i.hd, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.he = fneg double %i.hc                       ; 2 uses
  %i.hf = fcmp olt double %.1338.1.i, %i.he
  br i1 %i.hf, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1338.2.i = phi double [ %.1338.1.i, %bb.aq ], [ %i.he, %bb.ar ], [ %i.hc, %bb.ap ] ; 3 uses
  %.1336.2.i = phi i32 [ %.1336.1.i, %bb.aq ], [ 11, %bb.ar ], [ 2, %bb.ap ]
  %i.hg = fmul double %.1344.i, 8.660000e-01      ; 2 uses
  %i.hh = call double @llvm.fmuladd.f64(double %.1342.i, double 5.000000e-01, double %i.hg) ; 3 uses
  %i.hi = fcmp ogt double %i.hh, %.1338.2.i
  br i1 %i.hi, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hj = fneg double %i.hh                       ; 2 uses
  %i.hk = fcmp olt double %.1338.2.i, %i.hj
  br i1 %i.hk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.1338.3.i = phi double [ %.1338.2.i, %bb.at ], [ %i.hj, %bb.au ], [ %i.hh, %bb.as ] ; 3 uses
  %.1336.3.i = phi i32 [ %.1336.2.i, %bb.at ], [ 12, %bb.au ], [ 3, %bb.as ]
  %i.hl = fmul double %.1344.i, 9.848000e-01      ; 2 uses
  %i.hm = call double @llvm.fmuladd.f64(double %.1342.i, double 1.736000e-01, double %i.hl) ; 3 uses
  %i.hn = fcmp ogt double %i.hm, %.1338.3.i
  br i1 %i.hn, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ho = fneg double %i.hm                       ; 2 uses
  %i.hp = fcmp olt double %.1338.3.i, %i.ho
  br i1 %i.hp, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.av
  %.1338.4.i = phi double [ %.1338.3.i, %bb.aw ], [ %i.ho, %bb.ax ], [ %i.hm, %bb.av ] ; 3 uses
  %.1336.4.i = phi i32 [ %.1336.3.i, %bb.aw ], [ 13, %bb.ax ], [ 4, %bb.av ]
  %i.hq = call double @llvm.fmuladd.f64(double %.1342.i, double -1.736000e-01, double %i.hl) ; 3 uses
  %i.hr = fcmp ogt double %i.hq, %.1338.4.i
  br i1 %i.hr, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hs = fneg double %i.hq                       ; 2 uses
  %i.ht = fcmp olt double %.1338.4.i, %i.hs
  br i1 %i.ht, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.1338.5.i = phi double [ %.1338.4.i, %bb.az ], [ %i.hs, %bb.ba ], [ %i.hq, %bb.ay ] ; 3 uses
  %.1336.5.i = phi i32 [ %.1336.4.i, %bb.az ], [ 14, %bb.ba ], [ 5, %bb.ay ]
  %i.hu = call double @llvm.fmuladd.f64(double %.1342.i, double -5.000000e-01, double %i.hg) ; 3 uses
  %i.hv = fcmp ogt double %i.hu, %.1338.5.i
  br i1 %i.hv, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hw = fneg double %i.hu                       ; 2 uses
  %i.hx = fcmp olt double %.1338.5.i, %i.hw
  br i1 %i.hx, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.1338.6.i = phi double [ %.1338.5.i, %bb.bc ], [ %i.hw, %bb.bd ], [ %i.hu, %bb.bb ] ; 3 uses
  %.1336.6.i = phi i32 [ %.1336.5.i, %bb.bc ], [ 15, %bb.bd ], [ 6, %bb.bb ]
  %i.hy = call double @llvm.fmuladd.f64(double %.1342.i, double -7.660000e-01, double %i.hb) ; 3 uses
  %i.hz = fcmp ogt double %i.hy, %.1338.6.i
  br i1 %i.hz, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ia = fneg double %i.hy                       ; 2 uses
  %i.ib = fcmp olt double %.1338.6.i, %i.ia
  br i1 %i.ib, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.1338.7.i = phi double [ %.1338.6.i, %bb.bf ], [ %i.ia, %bb.bg ], [ %i.hy, %bb.be ] ; 2 uses
  %.1336.7.i = phi i32 [ %.1336.6.i, %bb.bf ], [ 16, %bb.bg ], [ 7, %bb.be ]
  %i.ic = call double @llvm.fmuladd.f64(double %.1342.i, double f0xBFEE1205BC01A36E, double %i.gw) ; 2 uses
  %i.id = fcmp ogt double %i.ic, %.1338.7.i
  %i.ie = fneg double %i.ic
  %i.if = fcmp olt double %.1338.7.i, %i.ie
  %spec.select.i = select i1 %i.if, i32 17, i32 %.1336.7.i
  %.1336.8.i = select i1 %i.id, i32 8, i32 %spec.select.i ; 4 uses
  %.1340.i = select i1 %i.gq, double %i.fe, double %.0339.i
  %i.ig = uitofp nneg i32 %storemerge379494.i to double
  %i.ih = fadd double %i.ig, 5.000000e-01
  %i.ii = fdiv double %i.ih, %i.aq
  %i.ij = fadd double %i.ii, -5.000000e-01        ; 2 uses
  %i.ik = call double @llvm.floor.f64(double %i.ij)
  %i.il = fptosi double %i.ik to i32              ; 7 uses
  %i.im = sitofp i32 %i.il to double
  %i.in = fsub double %i.ij, %i.im                ; 3 uses
  %i.io = fsub double 1.000000e+00, %i.in         ; 2 uses
  %sqrt.i = call double @llvm.sqrt.f64(double %.1340.i) ; 4 uses
  %i.ip = icmp sgt i32 %i.il, -1
  %i.iq = or i32 %i.il, %i.dk
  %or.cond.i = icmp sgt i32 %i.iq, -1
  br i1 %or.cond.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ir = fmul double %i.dn, %i.io
  %i.is = mul nuw nsw i32 %i.il, 18
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.it
  %i.iv = zext nneg i32 %.1336.8.i to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iv ; 2 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !53
  %i.iy = call double @llvm.fmuladd.f64(double %i.ir, double %sqrt.i, double %i.ix)
  store double %i.iy, ptr %i.iw, align 8, !tbaa !53
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  br i1 %i.do, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.iz = add nsw i32 %i.il, 1                    ; 2 uses
  %i.ja = icmp slt i32 %i.iz, %i.az
  br i1 %i.ja, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jb = fmul double %i.dn, %i.in
  %i.jc = mul nsw i32 %i.iz, 18
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.jd
  %i.jf = zext nneg i32 %.1336.8.i to i64
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !53
  %i.ji = call double @llvm.fmuladd.f64(double %i.jb, double %sqrt.i, double %i.jh)
  store double %i.ji, ptr %i.jg, align 8, !tbaa !53
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %or.cond3.i = and i1 %i.dt, %i.ip
  br i1 %or.cond3.i, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.jj = fmul double %i.dm, %i.io
  %i.jk = mul nuw nsw i32 %i.il, 18
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.jl
  %i.jn = zext nneg i32 %.1336.8.i to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !53
  %i.jq = call double @llvm.fmuladd.f64(double %i.jj, double %sqrt.i, double %i.jp)
  store double %i.jq, ptr %i.jo, align 8, !tbaa !53
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %i.dt, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.jr = add nsw i32 %i.il, 1                    ; 2 uses
  %i.js = icmp slt i32 %i.jr, %i.az
  br i1 %i.js, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jt = fmul double %i.dm, %i.in
  %i.ju = mul nsw i32 %i.jr, 18
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.jv
  %i.jx = zext nneg i32 %.1336.8.i to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jx ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !53
  %i.ka = call double @llvm.fmuladd.f64(double %i.jt, double %sqrt.i, double %i.jz)
  store double %i.ka, ptr %i.jy, align 8, !tbaa !53
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.kb = add nuw nsw i32 %storemerge379494.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge379494.i, %i.db
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.aj, !llvm.loop !143

.preheader488.i.split:                            ; preds = %._crit_edge501.i.loopexit
  %i.kc = icmp sgt <2 x i32> %i.ay, splat (i32 2) ; 2 uses
  %i.kd = extractelement <2 x i1> %i.kc, i64 0
  %i.ke = extractelement <2 x i1> %i.kc, i64 1
  %or.cond = select i1 %i.ke, i1 %i.kd, i1 false
  br i1 %or.cond, label %.preheader487.preheader.i, label %.preheader485.i

.preheader487.preheader.i:                        ; preds = %.preheader488.i.split
  %i.kf = add nsw i32 %i.bc, -1
  %i.kg = add nsw i32 %i.ba, -1
  %wide.trip.count554.i = zext nneg i32 %i.kf to i64
  %wide.trip.count549.i = zext nneg i32 %i.kg to i64
  br label %.preheader487.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge501.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge501.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 7 uses
  %i.kh = mul i64 %indvars.iv.i, %i.cg
  %i.ki = getelementptr [8 x i8], ptr %i.cn, i64 %i.kh ; 6 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %.idx.i
  %i.kk = mul i64 %indvars.iv.i, %i.cf
  %i.kl = getelementptr [8 x i8], ptr %i.cl, i64 %i.kk ; 6 uses
  %i.km = mul i64 %indvars.iv.i, %i.cg            ; 2 uses
  %23 = shl i64 %i.km, 3                          ; 2 uses
  %i.kn = add i64 %i.eg, %23
  %i.ko = add i64 %i.eh, %23
  %i.kp = call i64 @llvm.umax.i64(i64 %i.kn, i64 %i.ko)
  %24 = shl i64 %i.km, 3
  %25 = sub i64 %i.ei, %24
  %i.kq = add i64 %i.kp, %25
  %i.kr = lshr i64 %i.kq, 3                       ; 2 uses
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.kr, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.kt = mul i64 %i.ef, %indvars.iv.i
  %i.ku = getelementptr i8, ptr %i.cl, i64 %i.kt
  %scevgep110 = getelementptr i8, ptr %i.ku, i64 144
  %i.kv = mul i64 %i.ea, %indvars.iv.i            ; 3 uses
  %i.kw = add i64 %i.eb, %i.kv
  %i.kx = add i64 %i.ec, %i.kv
  %umax = call i64 @llvm.umax.i64(i64 %i.kw, i64 %i.kx)
  %i.ky = mul i64 %i.ee, %indvars.iv.i
  %i.kz = add i64 %i.ky, %i.ed
  %i.la = add i64 %umax, %i.kz                    ; 2 uses
  %i.lb = lshr i64 %i.la, 3
  %i.lc = mul i64 %i.lb, 144
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.lc
  %i.ld = getelementptr i8, ptr %i.cn, i64 %i.kv
  %scevgep = getelementptr i8, ptr %i.ld, i64 8
  %i.le = and i64 %i.la, -8
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.le
  %bound0 = icmp ult ptr %i.ki, %scevgep111
  %bound1 = icmp ult ptr %i.kl, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ks, 4611686018427387902     ; 4 uses
  %i.lf = shl i64 %n.vec, 3
  %i.lg = getelementptr i8, ptr %i.ki, i64 %i.lf
  %i.lh = mul i64 %n.vec, 144
  %i.li = getelementptr i8, ptr %i.kl, i64 %i.lh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lj = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ki, i64 %i.lj ; 10 uses
  %i.lk = mul i64 %index, 144                     ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.kl, i64 %i.lk ; 18 uses
  %i.ll = getelementptr i8, ptr %i.kl, i64 %i.lk  ; 18 uses
  %next.gep113 = getelementptr i8, ptr %i.ll, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.lm = load double, ptr %next.gep112, align 8, !tbaa !53, !alias.scope !165
  %i.ln = load double, ptr %next.gep113, align 8, !tbaa !53, !alias.scope !165
  %i.lo = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lp = insertelement <2 x double> %i.lo, double %i.ln, i64 1
  %i.lq = getelementptr inbounds nuw i8, ptr %next.gep112, i64 72
  %i.lr = getelementptr i8, ptr %i.ll, i64 216
  %i.ls = load double, ptr %i.lq, align 8, !tbaa !53, !alias.scope !165
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !53, !alias.scope !165
  %i.lu = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lv = insertelement <2 x double> %i.lu, double %i.lt, i64 1
  %i.lw = fadd <2 x double> %i.lp, %i.lv          ; 2 uses
  %i.lx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lw, <2 x double> %i.lw, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.lx, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.ly = getelementptr inbounds nuw i8, ptr %next.gep112, i64 8
  %i.lz = getelementptr i8, ptr %i.ll, i64 152
  %i.ma = load double, ptr %i.ly, align 8, !tbaa !53, !alias.scope !165
  %i.mb = load double, ptr %i.lz, align 8, !tbaa !53, !alias.scope !165
  %i.mc = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.md = insertelement <2 x double> %i.mc, double %i.mb, i64 1
  %i.me = getelementptr inbounds nuw i8, ptr %next.gep112, i64 80
  %i.mf = getelementptr i8, ptr %i.ll, i64 224
  %i.mg = load double, ptr %i.me, align 8, !tbaa !53, !alias.scope !165
  %i.mh = load double, ptr %i.mf, align 8, !tbaa !53, !alias.scope !165
  %i.mi = insertelement <2 x double> poison, double %i.mg, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.mh, i64 1
  %i.mk = fadd <2 x double> %i.md, %i.mj          ; 2 uses
  %i.ml = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mk, <2 x double> %i.mk, <2 x double> %i.lx) ; 2 uses
  store <2 x double> %i.ml, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.mm = getelementptr inbounds nuw i8, ptr %next.gep112, i64 16
  %i.mn = getelementptr i8, ptr %i.ll, i64 160
  %i.mo = load double, ptr %i.mm, align 8, !tbaa !53, !alias.scope !165
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !53, !alias.scope !165
  %i.mq = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.mp, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %next.gep112, i64 88
  %i.mt = getelementptr i8, ptr %i.ll, i64 232
  %i.mu = load double, ptr %i.ms, align 8, !tbaa !53, !alias.scope !165
  %i.mv = load double, ptr %i.mt, align 8, !tbaa !53, !alias.scope !165
  %i.mw = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.mx = insertelement <2 x double> %i.mw, double %i.mv, i64 1
  %i.my = fadd <2 x double> %i.mr, %i.mx          ; 2 uses
  %i.mz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.my, <2 x double> %i.my, <2 x double> %i.ml) ; 2 uses
  store <2 x double> %i.mz, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.na = getelementptr inbounds nuw i8, ptr %next.gep112, i64 24
  %i.nb = getelementptr i8, ptr %i.ll, i64 168
  %i.nc = load double, ptr %i.na, align 8, !tbaa !53, !alias.scope !165
  %i.nd = load double, ptr %i.nb, align 8, !tbaa !53, !alias.scope !165
  %i.ne = insertelement <2 x double> poison, double %i.nc, i64 0
  %i.nf = insertelement <2 x double> %i.ne, double %i.nd, i64 1
  %i.ng = getelementptr inbounds nuw i8, ptr %next.gep112, i64 96
  %i.nh = getelementptr i8, ptr %i.ll, i64 240
  %i.ni = load double, ptr %i.ng, align 8, !tbaa !53, !alias.scope !165
  %i.nj = load double, ptr %i.nh, align 8, !tbaa !53, !alias.scope !165
  %i.nk = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.nl = insertelement <2 x double> %i.nk, double %i.nj, i64 1
  %i.nm = fadd <2 x double> %i.nf, %i.nl          ; 2 uses
  %i.nn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.nm, <2 x double> %i.mz) ; 2 uses
  store <2 x double> %i.nn, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.no = getelementptr inbounds nuw i8, ptr %next.gep112, i64 32
  %i.np = getelementptr i8, ptr %i.ll, i64 176
  %i.nq = load double, ptr %i.no, align 8, !tbaa !53, !alias.scope !165
  %i.nr = load double, ptr %i.np, align 8, !tbaa !53, !alias.scope !165
  %i.ns = insertelement <2 x double> poison, double %i.nq, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %i.nr, i64 1
  %i.nu = getelementptr inbounds nuw i8, ptr %next.gep112, i64 104
  %i.nv = getelementptr i8, ptr %i.ll, i64 248
  %i.nw = load double, ptr %i.nu, align 8, !tbaa !53, !alias.scope !165
  %i.nx = load double, ptr %i.nv, align 8, !tbaa !53, !alias.scope !165
  %i.ny = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.nz = insertelement <2 x double> %i.ny, double %i.nx, i64 1
  %i.oa = fadd <2 x double> %i.nt, %i.nz          ; 2 uses
  %i.ob = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oa, <2 x double> %i.oa, <2 x double> %i.nn) ; 2 uses
  store <2 x double> %i.ob, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.oc = getelementptr inbounds nuw i8, ptr %next.gep112, i64 40
  %i.od = getelementptr i8, ptr %i.ll, i64 184
  %i.oe = load double, ptr %i.oc, align 8, !tbaa !53, !alias.scope !165
  %i.of = load double, ptr %i.od, align 8, !tbaa !53, !alias.scope !165
  %i.og = insertelement <2 x double> poison, double %i.oe, i64 0
  %i.oh = insertelement <2 x double> %i.og, double %i.of, i64 1
  %i.oi = getelementptr inbounds nuw i8, ptr %next.gep112, i64 112
  %i.oj = getelementptr i8, ptr %i.ll, i64 256
  %i.ok = load double, ptr %i.oi, align 8, !tbaa !53, !alias.scope !165
  %i.ol = load double, ptr %i.oj, align 8, !tbaa !53, !alias.scope !165
  %i.om = insertelement <2 x double> poison, double %i.ok, i64 0
  %i.on = insertelement <2 x double> %i.om, double %i.ol, i64 1
  %i.oo = fadd <2 x double> %i.oh, %i.on          ; 2 uses
  %i.op = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oo, <2 x double> %i.oo, <2 x double> %i.ob) ; 2 uses
  store <2 x double> %i.op, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.oq = getelementptr inbounds nuw i8, ptr %next.gep112, i64 48
  %i.or = getelementptr i8, ptr %i.ll, i64 192
  %i.os = load double, ptr %i.oq, align 8, !tbaa !53, !alias.scope !165
  %i.ot = load double, ptr %i.or, align 8, !tbaa !53, !alias.scope !165
  %i.ou = insertelement <2 x double> poison, double %i.os, i64 0
  %i.ov = insertelement <2 x double> %i.ou, double %i.ot, i64 1
  %i.ow = getelementptr inbounds nuw i8, ptr %next.gep112, i64 120
  %i.ox = getelementptr i8, ptr %i.ll, i64 264
  %i.oy = load double, ptr %i.ow, align 8, !tbaa !53, !alias.scope !165
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !53, !alias.scope !165
  %i.pa = insertelement <2 x double> poison, double %i.oy, i64 0
  %i.pb = insertelement <2 x double> %i.pa, double %i.oz, i64 1
  %i.pc = fadd <2 x double> %i.ov, %i.pb          ; 2 uses
  %i.pd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pc, <2 x double> %i.pc, <2 x double> %i.op) ; 2 uses
  store <2 x double> %i.pd, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.pe = getelementptr inbounds nuw i8, ptr %next.gep112, i64 56
  %i.pf = getelementptr i8, ptr %i.ll, i64 200
  %i.pg = load double, ptr %i.pe, align 8, !tbaa !53, !alias.scope !165
  %i.ph = load double, ptr %i.pf, align 8, !tbaa !53, !alias.scope !165
  %i.pi = insertelement <2 x double> poison, double %i.pg, i64 0
  %i.pj = insertelement <2 x double> %i.pi, double %i.ph, i64 1
  %i.pk = getelementptr inbounds nuw i8, ptr %next.gep112, i64 128
  %i.pl = getelementptr i8, ptr %i.ll, i64 272
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !53, !alias.scope !165
  %i.pn = load double, ptr %i.pl, align 8, !tbaa !53, !alias.scope !165
  %i.po = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.pp = insertelement <2 x double> %i.po, double %i.pn, i64 1
  %i.pq = fadd <2 x double> %i.pj, %i.pp          ; 2 uses
  %i.pr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.pq, <2 x double> %i.pd) ; 2 uses
  store <2 x double> %i.pr, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.ps = getelementptr inbounds nuw i8, ptr %next.gep112, i64 64
  %i.pt = getelementptr i8, ptr %i.ll, i64 208
  %i.pu = load double, ptr %i.ps, align 8, !tbaa !53, !alias.scope !165
  %i.pv = load double, ptr %i.pt, align 8, !tbaa !53, !alias.scope !165
  %i.pw = insertelement <2 x double> poison, double %i.pu, i64 0
  %i.px = insertelement <2 x double> %i.pw, double %i.pv, i64 1
  %i.py = getelementptr inbounds nuw i8, ptr %next.gep112, i64 136
  %i.pz = getelementptr i8, ptr %i.ll, i64 280
  %i.qa = load double, ptr %i.py, align 8, !tbaa !53, !alias.scope !165
  %i.qb = load double, ptr %i.pz, align 8, !tbaa !53, !alias.scope !165
  %i.qc = insertelement <2 x double> poison, double %i.qa, i64 0
  %i.qd = insertelement <2 x double> %i.qc, double %i.qb, i64 1
  %i.qe = fadd <2 x double> %i.px, %i.qd          ; 2 uses
  %i.qf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> %i.qe, <2 x double> %i.pr)
  store <2 x double> %i.qf, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qg = icmp eq i64 %index.next, %n.vec
  br i1 %i.qg, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ks, %n.vec
  br i1 %cmp.n, label %._crit_edge501.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.0330499.i.ph = phi ptr [ %i.ki, %vector.memcheck ], [ %i.ki, %.lr.ph.preheader.i ], [ %i.lg, %middle.block ]
  %.0331498.i.ph = phi ptr [ %i.kl, %vector.memcheck ], [ %i.kl, %.lr.ph.preheader.i ], [ %i.li, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0330499.i = phi ptr [ %i.si, %.lr.ph.i ], [ %.0330499.i.ph, %.lr.ph.i.preheader ] ; 11 uses
  %.0331498.i = phi ptr [ %i.sj, %.lr.ph.i ], [ %.0331498.i.ph, %.lr.ph.i.preheader ] ; 19 uses
  store double 0.000000e+00, ptr %.0330499.i, align 8, !tbaa !53
  %i.qh = load double, ptr %.0331498.i, align 8, !tbaa !53
  %i.qi = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 72
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !53
  %i.qk = fadd double %i.qh, %i.qj                ; 2 uses
  %i.ql = call double @llvm.fmuladd.f64(double %i.qk, double %i.qk, double 0.000000e+00) ; 2 uses
end_hunk_0
