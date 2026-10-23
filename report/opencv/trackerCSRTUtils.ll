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
          to label %.noexc unwind label %bb.cl

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
          to label %.noexc24 unwind label %bb.cl

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
  br label %bb.by

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
          to label %bb.w unwind label %bb.bv      ; 5 uses

bb.w:                                             ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i
  %i.cf = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %11, i32 noundef 0)
          to label %bb.x unwind label %bb.bv      ; 5 uses

bb.x:                                             ; preds = %bb.w
  %i.cg = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %13, i32 noundef 0)
          to label %bb.y unwind label %bb.bv      ; 10 uses

bb.y:                                             ; preds = %bb.x
  %i.ch = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %16, i32 noundef 0)
          to label %bb.z unwind label %bb.bv

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
  %storemerge495.i = phi i32 [ 1, %.preheader490.lr.ph.split.i ], [ %i.em, %._crit_edge.i ] ; 4 uses
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
  br label %bb.af

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
  br label %bb.bx

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
  br label %bb.bw

._crit_edge.i:                                    ; preds = %bb.bn
  %i.em = add nuw nsw i32 %storemerge495.i, 1
  %exitcond540.not.i = icmp eq i32 %storemerge495.i, %i.dc
  br i1 %exitcond540.not.i, label %.preheader489.i, label %.preheader490.i, !llvm.loop !142

bb.af:                                            ; preds = %bb.bn, %.preheader490.i
  %storemerge379494.i = phi i32 [ 1, %.preheader490.i ], [ %i.jy, %bb.bn ] ; 4 uses
  %.sroa.speculated442.i = call i32 @llvm.smin.i32(i32 %i.cy, i32 %storemerge379494.i)
  %i.en = mul nsw i32 %.sroa.speculated442.i, 3
  %i.eo = sext i32 %i.en to i64
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.eo ; 10 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %gep.i, i64 %i.ce
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !53
  %i.er = getelementptr inbounds [8 x i8], ptr %gep.i, i64 %i.cu
  %i.es = load double, ptr %i.er, align 8, !tbaa !53
  %i.et = fsub double %i.eq, %i.es                ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %gep.i, i64 24
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !53
  %i.ew = getelementptr inbounds i8, ptr %gep.i, i64 -24
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !53
  %i.ey = fsub double %i.ev, %i.ex                ; 3 uses
  %i.ez = fmul double %i.et, %i.et
  %i.fa = call double @llvm.fmuladd.f64(double %i.ey, double %i.ey, double %i.ez) ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %gep.i, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ce
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !53
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.cu
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !53
  %i.fg = getelementptr inbounds nuw i8, ptr %gep.i, i64 32
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !53
  %i.fi = getelementptr inbounds i8, ptr %gep.i, i64 -16
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !53
  %i.fk = getelementptr inbounds nuw i8, ptr %gep.i, i64 16 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.ce
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !53
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.cu
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !53
  %i.fp = getelementptr inbounds nuw i8, ptr %gep.i, i64 40
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !53
  %i.fr = getelementptr inbounds i8, ptr %gep.i, i64 -8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !53
  %i.ft = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.fu = insertelement <2 x double> %i.ft, double %i.fm, i64 1
  %i.fv = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fw = insertelement <2 x double> %i.fv, double %i.fo, i64 1
  %i.fx = fsub <2 x double> %i.fu, %i.fw          ; 4 uses
  %i.fy = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fq, i64 1
  %i.ga = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fs, i64 1
  %i.gc = fsub <2 x double> %i.fz, %i.gb          ; 4 uses
  %i.gd = fmul <2 x double> %i.fx, %i.fx
  %i.ge = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.gc, <2 x double> %i.gd) ; 2 uses
  %i.gf = extractelement <2 x double> %i.ge, i64 0 ; 2 uses
  %i.gg = extractelement <2 x double> %i.ge, i64 1 ; 2 uses
  %i.gh = fcmp ogt double %i.gf, %i.gg            ; 3 uses
  %i.gi = extractelement <2 x double> %i.fx, i64 0
  %i.gj = extractelement <2 x double> %i.fx, i64 1
  %.0343.i = select i1 %i.gh, double %i.gi, double %i.gj
  %i.gk = extractelement <2 x double> %i.gc, i64 0
  %i.gl = extractelement <2 x double> %i.gc, i64 1
  %.0341.i = select i1 %i.gh, double %i.gk, double %i.gl
  %.0339.i = select i1 %i.gh, double %i.gf, double %i.gg ; 2 uses
  %i.gm = fcmp ogt double %i.fa, %.0339.i         ; 3 uses
  %.1344.i = select i1 %i.gm, double %i.et, double %.0343.i ; 5 uses
  %.1342.i = select i1 %i.gm, double %i.ey, double %.0341.i ; 9 uses
  %i.gn = fmul double %.1344.i, 0.000000e+00
  %i.go = fadd double %.1342.i, %i.gn             ; 4 uses
  %i.gp = fcmp ogt double %i.go, 0.000000e+00
  br i1 %i.gp, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gq = fcmp olt double %i.go, 0.000000e+00
  br i1 %i.gq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gr = fneg double %i.go
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.1338.i = phi double [ 0.000000e+00, %bb.ag ], [ %i.gr, %bb.ah ], [ %i.go, %bb.af ] ; 3 uses
  %.1336.i = phi i32 [ 0, %bb.ag ], [ 9, %bb.ah ], [ 0, %bb.af ]
  %i.gs = fmul double %.1344.i, 3.420000e-01      ; 2 uses
  %i.gt = call double @llvm.fmuladd.f64(double %.1342.i, double f0x3FEE1205BC01A36E, double %i.gs) ; 3 uses
  %i.gu = fcmp ogt double %i.gt, %.1338.i
  br i1 %i.gu, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gv = fneg double %i.gt                       ; 2 uses
  %i.gw = fcmp olt double %.1338.i, %i.gv
  br i1 %i.gw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %.1338.1.i = phi double [ %.1338.i, %bb.aj ], [ %i.gv, %bb.ak ], [ %i.gt, %bb.ai ] ; 3 uses
  %.1336.1.i = phi i32 [ %.1336.i, %bb.aj ], [ 10, %bb.ak ], [ 1, %bb.ai ]
  %i.gx = fmul double %.1344.i, 6.428000e-01      ; 2 uses
  %i.gy = call double @llvm.fmuladd.f64(double %.1342.i, double 7.660000e-01, double %i.gx) ; 3 uses
  %i.gz = fcmp ogt double %i.gy, %.1338.1.i
  br i1 %i.gz, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ha = fneg double %i.gy                       ; 2 uses
  %i.hb = fcmp olt double %.1338.1.i, %i.ha
  br i1 %i.hb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.1338.2.i = phi double [ %.1338.1.i, %bb.am ], [ %i.ha, %bb.an ], [ %i.gy, %bb.al ] ; 3 uses
  %.1336.2.i = phi i32 [ %.1336.1.i, %bb.am ], [ 11, %bb.an ], [ 2, %bb.al ]
  %i.hc = fmul double %.1344.i, 8.660000e-01      ; 2 uses
  %i.hd = call double @llvm.fmuladd.f64(double %.1342.i, double 5.000000e-01, double %i.hc) ; 3 uses
  %i.he = fcmp ogt double %i.hd, %.1338.2.i
  br i1 %i.he, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hf = fneg double %i.hd                       ; 2 uses
  %i.hg = fcmp olt double %.1338.2.i, %i.hf
  br i1 %i.hg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao
  %.1338.3.i = phi double [ %.1338.2.i, %bb.ap ], [ %i.hf, %bb.aq ], [ %i.hd, %bb.ao ] ; 3 uses
  %.1336.3.i = phi i32 [ %.1336.2.i, %bb.ap ], [ 12, %bb.aq ], [ 3, %bb.ao ]
  %i.hh = fmul double %.1344.i, 9.848000e-01      ; 2 uses
  %i.hi = call double @llvm.fmuladd.f64(double %.1342.i, double 1.736000e-01, double %i.hh) ; 3 uses
  %i.hj = fcmp ogt double %i.hi, %.1338.3.i
  br i1 %i.hj, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hk = fneg double %i.hi                       ; 2 uses
  %i.hl = fcmp olt double %.1338.3.i, %i.hk
  br i1 %i.hl, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %.1338.4.i = phi double [ %.1338.3.i, %bb.as ], [ %i.hk, %bb.at ], [ %i.hi, %bb.ar ] ; 3 uses
  %.1336.4.i = phi i32 [ %.1336.3.i, %bb.as ], [ 13, %bb.at ], [ 4, %bb.ar ]
  %i.hm = call double @llvm.fmuladd.f64(double %.1342.i, double -1.736000e-01, double %i.hh) ; 3 uses
  %i.hn = fcmp ogt double %i.hm, %.1338.4.i
  br i1 %i.hn, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ho = fneg double %i.hm                       ; 2 uses
  %i.hp = fcmp olt double %.1338.4.i, %i.ho
  br i1 %i.hp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %.1338.5.i = phi double [ %.1338.4.i, %bb.av ], [ %i.ho, %bb.aw ], [ %i.hm, %bb.au ] ; 3 uses
  %.1336.5.i = phi i32 [ %.1336.4.i, %bb.av ], [ 14, %bb.aw ], [ 5, %bb.au ]
  %i.hq = call double @llvm.fmuladd.f64(double %.1342.i, double -5.000000e-01, double %i.hc) ; 3 uses
  %i.hr = fcmp ogt double %i.hq, %.1338.5.i
  br i1 %i.hr, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hs = fneg double %i.hq                       ; 2 uses
  %i.ht = fcmp olt double %.1338.5.i, %i.hs
  br i1 %i.ht, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.1338.6.i = phi double [ %.1338.5.i, %bb.ay ], [ %i.hs, %bb.az ], [ %i.hq, %bb.ax ] ; 3 uses
  %.1336.6.i = phi i32 [ %.1336.5.i, %bb.ay ], [ 15, %bb.az ], [ 6, %bb.ax ]
  %i.hu = call double @llvm.fmuladd.f64(double %.1342.i, double -7.660000e-01, double %i.gx) ; 3 uses
  %i.hv = fcmp ogt double %i.hu, %.1338.6.i
  br i1 %i.hv, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = fneg double %i.hu                       ; 2 uses
  %i.hx = fcmp olt double %.1338.6.i, %i.hw
  br i1 %i.hx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.1338.7.i = phi double [ %.1338.6.i, %bb.bb ], [ %i.hw, %bb.bc ], [ %i.hu, %bb.ba ] ; 2 uses
  %.1336.7.i = phi i32 [ %.1336.6.i, %bb.bb ], [ 16, %bb.bc ], [ 7, %bb.ba ]
  %i.hy = call double @llvm.fmuladd.f64(double %.1342.i, double f0xBFEE1205BC01A36E, double %i.gs) ; 2 uses
  %i.hz = fcmp ogt double %i.hy, %.1338.7.i
  %i.ia = fneg double %i.hy
  %i.ib = fcmp olt double %.1338.7.i, %i.ia
  %spec.select.i = select i1 %i.ib, i32 17, i32 %.1336.7.i
  %.1336.8.i = select i1 %i.hz, i32 8, i32 %spec.select.i ; 4 uses
  %.1340.i = select i1 %i.gm, double %i.fa, double %.0339.i
  %i.ic = uitofp nneg i32 %storemerge379494.i to double
  %i.id = fadd double %i.ic, 5.000000e-01
  %i.ie = fdiv double %i.id, %i.aq
  %i.if = fadd double %i.ie, -5.000000e-01        ; 2 uses
  %i.ig = call double @llvm.floor.f64(double %i.if)
  %i.ih = fptosi double %i.ig to i32              ; 7 uses
  %i.ii = sitofp i32 %i.ih to double
  %i.ij = fsub double %i.if, %i.ii                ; 3 uses
  %i.ik = fsub double 1.000000e+00, %i.ij         ; 2 uses
  %i.il = call double @sqrt(double noundef %.1340.i) #18 ; 4 uses
  %i.im = icmp sgt i32 %i.ih, -1
  %i.in = or i32 %i.ih, %i.dk
  %or.cond.i = icmp sgt i32 %i.in, -1
  br i1 %or.cond.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.io = fmul double %i.dn, %i.ik
  %i.ip = mul nuw nsw i32 %i.ih, 18
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.iq
  %i.is = zext nneg i32 %.1336.8.i to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.is ; 2 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !53
  %i.iv = call double @llvm.fmuladd.f64(double %i.io, double %i.il, double %i.iu)
  store double %i.iv, ptr %i.it, align 8, !tbaa !53
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %i.do, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.iw = add nsw i32 %i.ih, 1                    ; 2 uses
  %i.ix = icmp slt i32 %i.iw, %i.az
  br i1 %i.ix, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.iy = fmul double %i.dn, %i.ij
  %i.iz = mul nsw i32 %i.iw, 18
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.ja
  %i.jc = zext nneg i32 %.1336.8.i to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jc ; 2 uses
  %i.je = load double, ptr %i.jd, align 8, !tbaa !53
  %i.jf = call double @llvm.fmuladd.f64(double %i.iy, double %i.il, double %i.je)
  store double %i.jf, ptr %i.jd, align 8, !tbaa !53
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf
  %or.cond3.i = and i1 %i.dt, %i.im
  br i1 %or.cond3.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.jg = fmul double %i.dm, %i.ik
  %i.jh = mul nuw nsw i32 %i.ih, 18
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ji
  %i.jk = zext nneg i32 %.1336.8.i to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %i.jk ; 2 uses
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !53
  %i.jn = call double @llvm.fmuladd.f64(double %i.jg, double %i.il, double %i.jm)
  store double %i.jn, ptr %i.jl, align 8, !tbaa !53
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  br i1 %i.dt, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jo = add nsw i32 %i.ih, 1                    ; 2 uses
  %i.jp = icmp slt i32 %i.jo, %i.az
  br i1 %i.jp, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jq = fmul double %i.dm, %i.ij
  %i.jr = mul nsw i32 %i.jo, 18
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.js
  %i.ju = zext nneg i32 %.1336.8.i to i64
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.ju ; 2 uses
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !53
  %i.jx = call double @llvm.fmuladd.f64(double %i.jq, double %i.il, double %i.jw)
  store double %i.jx, ptr %i.jv, align 8, !tbaa !53
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.jy = add nuw nsw i32 %storemerge379494.i, 1
  %exitcond.not.i = icmp eq i32 %storemerge379494.i, %i.db
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.af, !llvm.loop !143

.preheader488.i.split:                            ; preds = %._crit_edge501.i.loopexit
  %i.jz = icmp sgt <2 x i32> %i.ay, splat (i32 2) ; 2 uses
  %i.ka = extractelement <2 x i1> %i.jz, i64 0
  %i.kb = extractelement <2 x i1> %i.jz, i64 1
  %or.cond = select i1 %i.kb, i1 %i.ka, i1 false
  br i1 %or.cond, label %.preheader487.preheader.i, label %.preheader485.i

.preheader487.preheader.i:                        ; preds = %.preheader488.i.split
  %i.kc = add nsw i32 %i.bc, -1
  %i.kd = add nsw i32 %i.ba, -1
  %wide.trip.count554.i = zext nneg i32 %i.kc to i64
  %wide.trip.count549.i = zext nneg i32 %i.kd to i64
  br label %.preheader487.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %._crit_edge501.i.loopexit
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge501.i.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 7 uses
  %i.ke = mul i64 %indvars.iv.i, %i.cg
  %i.kf = getelementptr [8 x i8], ptr %i.cn, i64 %i.ke ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 %.idx.i
  %i.kh = mul i64 %indvars.iv.i, %i.cf
  %i.ki = getelementptr [8 x i8], ptr %i.cl, i64 %i.kh ; 6 uses
  %i.kj = mul i64 %indvars.iv.i, %i.cg            ; 2 uses
  %23 = shl i64 %i.kj, 3                          ; 2 uses
  %i.kk = add i64 %i.eg, %23
  %i.kl = add i64 %i.eh, %23
  %i.km = call i64 @llvm.umax.i64(i64 %i.kk, i64 %i.kl)
  %24 = shl i64 %i.kj, 3
  %25 = sub i64 %i.ei, %24
  %i.kn = add i64 %i.km, %25
  %i.ko = lshr i64 %i.kn, 3                       ; 2 uses
  %i.kp = add nuw nsw i64 %i.ko, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.ko, 0
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.kq = mul i64 %i.ef, %indvars.iv.i
  %i.kr = getelementptr i8, ptr %i.cl, i64 %i.kq
  %scevgep110 = getelementptr i8, ptr %i.kr, i64 144
  %i.ks = mul i64 %i.ea, %indvars.iv.i            ; 3 uses
  %i.kt = add i64 %i.eb, %i.ks
  %i.ku = add i64 %i.ec, %i.ks
  %umax = call i64 @llvm.umax.i64(i64 %i.kt, i64 %i.ku)
  %i.kv = mul i64 %i.ee, %indvars.iv.i
  %i.kw = add i64 %i.kv, %i.ed
  %i.kx = add i64 %umax, %i.kw                    ; 2 uses
  %i.ky = lshr i64 %i.kx, 3
  %i.kz = mul i64 %i.ky, 144
  %scevgep111 = getelementptr i8, ptr %scevgep110, i64 %i.kz
  %i.la = getelementptr i8, ptr %i.cn, i64 %i.ks
  %scevgep = getelementptr i8, ptr %i.la, i64 8
  %i.lb = and i64 %i.kx, -8
  %scevgep109 = getelementptr i8, ptr %scevgep, i64 %i.lb
  %bound0 = icmp ult ptr %i.kf, %scevgep111
  %bound1 = icmp ult ptr %i.ki, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kp, 4611686018427387902     ; 4 uses
  %i.lc = shl i64 %n.vec, 3
  %i.ld = getelementptr i8, ptr %i.kf, i64 %i.lc
  %i.le = mul i64 %n.vec, 144
  %i.lf = getelementptr i8, ptr %i.ki, i64 %i.le
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.lg = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.kf, i64 %i.lg ; 10 uses
  %i.lh = mul i64 %index, 144                     ; 2 uses
  %next.gep112 = getelementptr i8, ptr %i.ki, i64 %i.lh ; 18 uses
  %i.li = getelementptr i8, ptr %i.ki, i64 %i.lh  ; 18 uses
  %next.gep113 = getelementptr i8, ptr %i.li, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.lj = load double, ptr %next.gep112, align 8, !tbaa !53, !alias.scope !165
  %i.lk = load double, ptr %next.gep113, align 8, !tbaa !53, !alias.scope !165
  %i.ll = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.lm = insertelement <2 x double> %i.ll, double %i.lk, i64 1
  %i.ln = getelementptr inbounds nuw i8, ptr %next.gep112, i64 72
  %i.lo = getelementptr i8, ptr %i.li, i64 216
  %i.lp = load double, ptr %i.ln, align 8, !tbaa !53, !alias.scope !165
  %i.lq = load double, ptr %i.lo, align 8, !tbaa !53, !alias.scope !165
  %i.lr = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lq, i64 1
  %i.lt = fadd <2 x double> %i.lm, %i.ls          ; 2 uses
  %i.lu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> %i.lt, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.lu, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.lv = getelementptr inbounds nuw i8, ptr %next.gep112, i64 8
  %i.lw = getelementptr i8, ptr %i.li, i64 152
  %i.lx = load double, ptr %i.lv, align 8, !tbaa !53, !alias.scope !165
  %i.ly = load double, ptr %i.lw, align 8, !tbaa !53, !alias.scope !165
  %i.lz = insertelement <2 x double> poison, double %i.lx, i64 0
  %i.ma = insertelement <2 x double> %i.lz, double %i.ly, i64 1
  %i.mb = getelementptr inbounds nuw i8, ptr %next.gep112, i64 80
  %i.mc = getelementptr i8, ptr %i.li, i64 224
  %i.md = load double, ptr %i.mb, align 8, !tbaa !53, !alias.scope !165
  %i.me = load double, ptr %i.mc, align 8, !tbaa !53, !alias.scope !165
  %i.mf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.me, i64 1
  %i.mh = fadd <2 x double> %i.ma, %i.mg          ; 2 uses
  %i.mi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> %i.mh, <2 x double> %i.lu) ; 2 uses
  store <2 x double> %i.mi, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.mj = getelementptr inbounds nuw i8, ptr %next.gep112, i64 16
  %i.mk = getelementptr i8, ptr %i.li, i64 160
  %i.ml = load double, ptr %i.mj, align 8, !tbaa !53, !alias.scope !165
  %i.mm = load double, ptr %i.mk, align 8, !tbaa !53, !alias.scope !165
  %i.mn = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mo = insertelement <2 x double> %i.mn, double %i.mm, i64 1
  %i.mp = getelementptr inbounds nuw i8, ptr %next.gep112, i64 88
  %i.mq = getelementptr i8, ptr %i.li, i64 232
  %i.mr = load double, ptr %i.mp, align 8, !tbaa !53, !alias.scope !165
  %i.ms = load double, ptr %i.mq, align 8, !tbaa !53, !alias.scope !165
  %i.mt = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.ms, i64 1
  %i.mv = fadd <2 x double> %i.mo, %i.mu          ; 2 uses
  %i.mw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mv, <2 x double> %i.mv, <2 x double> %i.mi) ; 2 uses
  store <2 x double> %i.mw, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.mx = getelementptr inbounds nuw i8, ptr %next.gep112, i64 24
  %i.my = getelementptr i8, ptr %i.li, i64 168
  %i.mz = load double, ptr %i.mx, align 8, !tbaa !53, !alias.scope !165
  %i.na = load double, ptr %i.my, align 8, !tbaa !53, !alias.scope !165
  %i.nb = insertelement <2 x double> poison, double %i.mz, i64 0
  %i.nc = insertelement <2 x double> %i.nb, double %i.na, i64 1
  %i.nd = getelementptr inbounds nuw i8, ptr %next.gep112, i64 96
  %i.ne = getelementptr i8, ptr %i.li, i64 240
  %i.nf = load double, ptr %i.nd, align 8, !tbaa !53, !alias.scope !165
  %i.ng = load double, ptr %i.ne, align 8, !tbaa !53, !alias.scope !165
  %i.nh = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.ng, i64 1
  %i.nj = fadd <2 x double> %i.nc, %i.ni          ; 2 uses
  %i.nk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nj, <2 x double> %i.nj, <2 x double> %i.mw) ; 2 uses
  store <2 x double> %i.nk, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.nl = getelementptr inbounds nuw i8, ptr %next.gep112, i64 32
  %i.nm = getelementptr i8, ptr %i.li, i64 176
  %i.nn = load double, ptr %i.nl, align 8, !tbaa !53, !alias.scope !165
  %i.no = load double, ptr %i.nm, align 8, !tbaa !53, !alias.scope !165
  %i.np = insertelement <2 x double> poison, double %i.nn, i64 0
  %i.nq = insertelement <2 x double> %i.np, double %i.no, i64 1
  %i.nr = getelementptr inbounds nuw i8, ptr %next.gep112, i64 104
  %i.ns = getelementptr i8, ptr %i.li, i64 248
  %i.nt = load double, ptr %i.nr, align 8, !tbaa !53, !alias.scope !165
  %i.nu = load double, ptr %i.ns, align 8, !tbaa !53, !alias.scope !165
  %i.nv = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nw = insertelement <2 x double> %i.nv, double %i.nu, i64 1
  %i.nx = fadd <2 x double> %i.nq, %i.nw          ; 2 uses
  %i.ny = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nx, <2 x double> %i.nx, <2 x double> %i.nk) ; 2 uses
  store <2 x double> %i.ny, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.nz = getelementptr inbounds nuw i8, ptr %next.gep112, i64 40
  %i.oa = getelementptr i8, ptr %i.li, i64 184
  %i.ob = load double, ptr %i.nz, align 8, !tbaa !53, !alias.scope !165
  %i.oc = load double, ptr %i.oa, align 8, !tbaa !53, !alias.scope !165
  %i.od = insertelement <2 x double> poison, double %i.ob, i64 0
  %i.oe = insertelement <2 x double> %i.od, double %i.oc, i64 1
  %i.of = getelementptr inbounds nuw i8, ptr %next.gep112, i64 112
  %i.og = getelementptr i8, ptr %i.li, i64 256
  %i.oh = load double, ptr %i.of, align 8, !tbaa !53, !alias.scope !165
  %i.oi = load double, ptr %i.og, align 8, !tbaa !53, !alias.scope !165
  %i.oj = insertelement <2 x double> poison, double %i.oh, i64 0
  %i.ok = insertelement <2 x double> %i.oj, double %i.oi, i64 1
  %i.ol = fadd <2 x double> %i.oe, %i.ok          ; 2 uses
  %i.om = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ol, <2 x double> %i.ol, <2 x double> %i.ny) ; 2 uses
  store <2 x double> %i.om, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.on = getelementptr inbounds nuw i8, ptr %next.gep112, i64 48
  %i.oo = getelementptr i8, ptr %i.li, i64 192
  %i.op = load double, ptr %i.on, align 8, !tbaa !53, !alias.scope !165
  %i.oq = load double, ptr %i.oo, align 8, !tbaa !53, !alias.scope !165
  %i.or = insertelement <2 x double> poison, double %i.op, i64 0
  %i.os = insertelement <2 x double> %i.or, double %i.oq, i64 1
  %i.ot = getelementptr inbounds nuw i8, ptr %next.gep112, i64 120
  %i.ou = getelementptr i8, ptr %i.li, i64 264
  %i.ov = load double, ptr %i.ot, align 8, !tbaa !53, !alias.scope !165
  %i.ow = load double, ptr %i.ou, align 8, !tbaa !53, !alias.scope !165
  %i.ox = insertelement <2 x double> poison, double %i.ov, i64 0
  %i.oy = insertelement <2 x double> %i.ox, double %i.ow, i64 1
  %i.oz = fadd <2 x double> %i.os, %i.oy          ; 2 uses
  %i.pa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oz, <2 x double> %i.oz, <2 x double> %i.om) ; 2 uses
  store <2 x double> %i.pa, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.pb = getelementptr inbounds nuw i8, ptr %next.gep112, i64 56
  %i.pc = getelementptr i8, ptr %i.li, i64 200
  %i.pd = load double, ptr %i.pb, align 8, !tbaa !53, !alias.scope !165
  %i.pe = load double, ptr %i.pc, align 8, !tbaa !53, !alias.scope !165
  %i.pf = insertelement <2 x double> poison, double %i.pd, i64 0
  %i.pg = insertelement <2 x double> %i.pf, double %i.pe, i64 1
  %i.ph = getelementptr inbounds nuw i8, ptr %next.gep112, i64 128
  %i.pi = getelementptr i8, ptr %i.li, i64 272
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !53, !alias.scope !165
  %i.pk = load double, ptr %i.pi, align 8, !tbaa !53, !alias.scope !165
  %i.pl = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pm = insertelement <2 x double> %i.pl, double %i.pk, i64 1
  %i.pn = fadd <2 x double> %i.pg, %i.pm          ; 2 uses
  %i.po = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pn, <2 x double> %i.pn, <2 x double> %i.pa) ; 2 uses
  store <2 x double> %i.po, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %i.pp = getelementptr inbounds nuw i8, ptr %next.gep112, i64 64
  %i.pq = getelementptr i8, ptr %i.li, i64 208
  %i.pr = load double, ptr %i.pp, align 8, !tbaa !53, !alias.scope !165
  %i.ps = load double, ptr %i.pq, align 8, !tbaa !53, !alias.scope !165
  %i.pt = insertelement <2 x double> poison, double %i.pr, i64 0
  %i.pu = insertelement <2 x double> %i.pt, double %i.ps, i64 1
  %i.pv = getelementptr inbounds nuw i8, ptr %next.gep112, i64 136
  %i.pw = getelementptr i8, ptr %i.li, i64 280
  %i.px = load double, ptr %i.pv, align 8, !tbaa !53, !alias.scope !165
  %i.py = load double, ptr %i.pw, align 8, !tbaa !53, !alias.scope !165
  %i.pz = insertelement <2 x double> poison, double %i.px, i64 0
  %i.qa = insertelement <2 x double> %i.pz, double %i.py, i64 1
  %i.qb = fadd <2 x double> %i.pu, %i.qa          ; 2 uses
  %i.qc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qb, <2 x double> %i.qb, <2 x double> %i.po)
  store <2 x double> %i.qc, ptr %next.gep, align 8, !tbaa !53, !alias.scope !164, !noalias !165
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qd = icmp eq i64 %index.next, %n.vec
  br i1 %i.qd, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kp, %n.vec
  br i1 %cmp.n, label %._crit_edge501.i.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.0330499.i.ph = phi ptr [ %i.kf, %vector.memcheck ], [ %i.kf, %.lr.ph.preheader.i ], [ %i.ld, %middle.block ]
  %.0331498.i.ph = phi ptr [ %i.ki, %vector.memcheck ], [ %i.ki, %.lr.ph.preheader.i ], [ %i.lf, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.0330499.i = phi ptr [ %i.sf, %.lr.ph.i ], [ %.0330499.i.ph, %.lr.ph.i.preheader ] ; 11 uses
  %.0331498.i = phi ptr [ %i.sg, %.lr.ph.i ], [ %.0331498.i.ph, %.lr.ph.i.preheader ] ; 19 uses
  store double 0.000000e+00, ptr %.0330499.i, align 8, !tbaa !53
  %i.qe = load double, ptr %.0331498.i, align 8, !tbaa !53
  %i.qf = getelementptr inbounds nuw i8, ptr %.0331498.i, i64 72
  %i.qg = load double, ptr %i.qf, align 8, !tbaa !53
  %i.qh = fadd double %i.qe, %i.qg                ; 2 uses
  %i.qi = call double @llvm.fmuladd.f64(double %i.qh, double %i.qh, double 0.000000e+00) ; 2 uses
end_hunk_0
