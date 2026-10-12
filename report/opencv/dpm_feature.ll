Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_feature?download=true
inline.NumInlined: 288
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392, %bb.w
  %.pn367 = phi { ptr, i32 } [ %i.ac, %bb.w ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i392 ], [ %i.ad, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %common.resume

bb.y:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !53 ; 6 uses
  %i.al = icmp slt i32 %i.ak, 3
  br i1 %i.al, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.9, i32 noundef 109) #16
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !48    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !49
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %bb.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn374.pn.pn.pn.pn.pn.pn, %bb.cl ], [ %.pn367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ], [ %.pn365, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ], [ %.pn363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.ac:                                            ; preds = %bb.y
  %i.as = icmp sgt i32 %i.ak, 0
  br i1 %i.as, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.au = icmp eq i32 %i.ak, 2
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10
  br label %_ZNK2cv8MatShapeclEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ay = icmp eq i32 %i.ak, 0
  %i.az = zext i1 %i.ay to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.ad, %bb.ae
  %i.ba = phi i32 [ %i.ax, %bb.ad ], [ %i.az, %bb.ae ]
  %i.bb = icmp eq i32 %i.ak, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp sgt i32 %i.ak, -1
  %i.bf = zext i1 %i.be to i32
  %i.bg = select i1 %i.bb, i32 %i.bd, i32 %i.bf
  %i.bh = sitofp i32 %2 to double                 ; 3 uses
  %i.bi = insertelement <2 x i32> poison, i32 %i.ba, i64 0
  %i.bj = insertelement <2 x i32> %i.bi, i32 %i.bg, i64 1
  %i.bk = sitofp <2 x i32> %i.bj to <2 x double>
  %i.bl = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = fdiv <2 x double> %i.bk, %i.bm          ; 2 uses
  %i.bo = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bn) ; 8 uses
  %i.bp = shufflevector <2 x double> %i.bn, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bq = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bp) ; 5 uses
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 2)
  %i.bs = shl nuw nsw i32 %3, 1
  %.sroa.speculated476 = add nsw i32 %i.bs, -2
  %i.bt = add i32 %.sroa.speculated476, %i.br     ; 2 uses
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 2)
  %i.bv = shl nuw nsw i32 %4, 1
  %.sroa.speculated470 = add nsw i32 %i.bv, -2
  %i.bw = add i32 %.sroa.speculated470, %i.bu     ; 2 uses
  %.sroa.11.0.insert.ext = zext i32 %i.bq to i64  ; 2 uses
  %.sroa.11.0.insert.shift = shl nuw i64 %.sroa.11.0.insert.ext, 32 ; 2 uses
  %i.bx = mul i32 %i.bo, %2                       ; 2 uses
  %i.by = mul i32 %i.bq, %2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.bz = mul nsw i32 %i.bo, 18
  %.sroa.0464.0.insert.ext = zext i32 %i.bz to i64
  %.sroa.0464.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.0464.0.insert.ext
  call void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, i64 %.sroa.0464.0.insert.insert, i32 noundef 6)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #18
  %i.ca = load ptr, ptr %16, align 8, !tbaa !69, !noalias !114 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.ca, ptr noundef nonnull align 8 dereferenceable(688) %16, ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.cl

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0481.0.insert.ext = zext i32 %i.bo to i64
  %.sroa.0481.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.0481.0.insert.ext
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cf) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cg) #18
  %i.ch = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ch) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, i64 %.sroa.0481.0.insert.insert, i32 noundef 6)
          to label %bb.af unwind label %bb.al

bb.af:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #18
  %i.ci = load ptr, ptr %18, align 8, !tbaa !69, !noalias !115 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  invoke void %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit400 unwind label %.body398

.body398:                                         ; preds = %bb.af
  %i.cm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #18
  br label %bb.am

_ZNK2cv7MatExprcvNS_3MatEEv.exit400:              ; preds = %bb.af
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cn) #18
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.co) #18
  %i.cp = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cp) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.cq = shl nsw i32 %i.bt, 5
  %.sroa.2.0.insert.ext = zext nneg i32 %i.bw to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.cq to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %19, i64 %.sroa.0.0.insert.insert, i32 noundef 6)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit400
  %i.cr = load ptr, ptr %19, align 8, !tbaa !69   ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  invoke void %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.ao, !inline_history !1

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.ag
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cv) #18
  %i.cw = getelementptr inbounds nuw i8, ptr %19, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cw) #18
  %i.cx = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cx) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.cy = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 0)
          to label %bb.ah unwind label %bb.aq     ; 5 uses

bb.ah:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.cz = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 0)
          to label %bb.ai unwind label %bb.ar     ; 5 uses

bb.ai:                                            ; preds = %bb.ah
  %i.da = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 0)
          to label %bb.aj unwind label %bb.as     ; 11 uses

bb.aj:                                            ; preds = %bb.ai
  %i.db = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 0)
          to label %bb.ak unwind label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !70
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !70 ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !70 ; 5 uses
  %i.di = ptrtoaddr ptr %i.dh to i64              ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !70 ; 18 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 8 uses
  %i.dm = icmp sgt i32 %i.by, 2
  br i1 %i.dm, label %.preheader499.lr.ph, label %.preheader498

.preheader499.lr.ph:                              ; preds = %bb.ak
  %i.dn = icmp sgt i32 %i.bx, 2
  %i.do = sub i64 0, %i.cy                        ; 3 uses
  br i1 %i.dn, label %.preheader499.lr.ph.split, label %.preheader498

.preheader499.lr.ph.split:                        ; preds = %.preheader499.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !71
  %i.ds = add nsw i32 %i.dr, -2
  %i.dt = load i32, ptr %i.dp, align 8, !tbaa !72
  %i.du = add nsw i32 %i.dt, -2
  %i.dv = add nsw i32 %i.bx, -2
  %i.dw = add nsw i32 %i.by, -2
  br label %.preheader499

.preheader499:                                    ; preds = %.preheader499.lr.ph.split, %._crit_edge
  %storemerge504 = phi i32 [ 1, %.preheader499.lr.ph.split ], [ %i.fj, %._crit_edge ] ; 4 uses
  %.sroa.speculated447 = call i32 @llvm.smin.i32(i32 %i.du, i32 %storemerge504)
  %i.dx = sext i32 %.sroa.speculated447 to i64
  %i.dy = mul i64 %i.cy, %i.dx
  %invariant.gep = getelementptr [8 x i8], ptr %i.dd, i64 %i.dy
  %i.dz = uitofp nneg i32 %storemerge504 to double
  %i.ea = fadd double %i.dz, 5.000000e-01
  %i.eb = fdiv double %i.ea, %i.bh
  %i.ec = fadd double %i.eb, -5.000000e-01        ; 2 uses
  %i.ed = call double @llvm.floor.f64(double %i.ec)
  %i.ee = fptosi double %i.ed to i32              ; 4 uses
  %i.ef = sitofp i32 %i.ee to double
  %i.eg = fsub double %i.ec, %i.ef                ; 3 uses
  %i.eh = fsub double 1.000000e+00, %i.eg         ; 2 uses
  %i.ei = icmp sgt i32 %i.ee, -1                  ; 2 uses
  %i.ej = zext nneg i32 %i.ee to i64
  %i.ek = mul i64 %i.cz, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ek ; 2 uses
  %i.em = add nsw i32 %i.ee, 1                    ; 2 uses
  %i.en = icmp slt i32 %i.em, %i.bq               ; 2 uses
  %i.eo = sext i32 %i.em to i64
  %i.ep = mul i64 %i.cz, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.ep ; 2 uses
  br label %bb.au

.preheader498:                                    ; preds = %._crit_edge, %.preheader499.lr.ph, %bb.ak
  %i.er = icmp sgt i32 %i.bq, 0
  br i1 %i.er, label %.lr.ph512, label %.preheader497

.lr.ph512:                                        ; preds = %.preheader498
  %i.es = sext i32 %i.bo to i64
  %.idx = shl nsw i64 %i.es, 3                    ; 3 uses
  %i.et = icmp sgt i32 %i.bo, 0
  %i.eu = shl i64 %i.da, 3
  %i.ev = add i64 %.idx, %i.di
  %i.ew = add i64 %i.di, 8                        ; 2 uses
  %i.ex = xor i64 %i.di, -1                       ; 2 uses
  %i.ey = mul i64 %i.da, -8
  %i.ez = shl i64 %i.cz, 3
  %20 = mul i64 %i.da, -8
  %i.fa = shl i64 %i.da, 3
  %i.fb = add i64 %.idx, %i.di
  br label %bb.cc

bb.al:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.am:                                            ; preds = %.body398, %bb.al
  %.pn369 = phi { ptr, i32 } [ %i.cm, %.body398 ], [ %i.fc, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.ck

bb.an:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit400
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ag
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #18
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn371 = phi { ptr, i32 } [ %i.fe, %bb.ao ], [ %i.fd, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.cj

bb.aq:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.ar:                                            ; preds = %bb.ah
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.as:                                            ; preds = %bb.ai
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.at:                                            ; preds = %bb.aj
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

._crit_edge:                                      ; preds = %bb.cb
  %i.fj = add nuw nsw i32 %storemerge504, 1
  %exitcond547.not = icmp eq i32 %storemerge504, %i.dw
  br i1 %exitcond547.not, label %.preheader498, label %.preheader499, !llvm.loop !98

bb.au:                                            ; preds = %.preheader499, %bb.cb
  %storemerge383503 = phi i32 [ 1, %.preheader499 ], [ %i.kt, %bb.cb ] ; 4 uses
  %.sroa.speculated451 = call i32 @llvm.smin.i32(i32 %i.ds, i32 %storemerge383503)
  %i.fk = mul nsw i32 %.sroa.speculated451, 3
  %i.fl = sext i32 %i.fk to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fl ; 10 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %i.cy
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !24
  %i.fo = getelementptr inbounds [8 x i8], ptr %gep, i64 %i.do
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !24
  %i.fq = fsub double %i.fn, %i.fp                ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !24
  %i.ft = getelementptr inbounds i8, ptr %gep, i64 -24
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !24
  %i.fv = fsub double %i.fs, %i.fu                ; 3 uses
  %i.fw = fmul double %i.fq, %i.fq
  %i.fx = call double @llvm.fmuladd.f64(double %i.fv, double %i.fv, double %i.fw) ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.cy
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !24
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fy, i64 %i.do
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !24
  %i.gd = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !24
  %i.gf = getelementptr inbounds i8, ptr %gep, i64 -16
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !24
  %i.gh = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %i.cy
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !24
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.do
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !24
  %i.gm = getelementptr inbounds nuw i8, ptr %gep, i64 40
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !24
  %i.go = getelementptr inbounds i8, ptr %gep, i64 -8
  %i.gp = load double, ptr %i.go, align 8, !tbaa !24
  %i.gq = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gj, i64 1
  %i.gs = insertelement <2 x double> poison, double %i.gc, i64 0
  %i.gt = insertelement <2 x double> %i.gs, double %i.gl, i64 1
  %i.gu = fsub <2 x double> %i.gr, %i.gt          ; 4 uses
  %i.gv = insertelement <2 x double> poison, double %i.ge, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.gn, i64 1
  %i.gx = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1
  %i.gz = fsub <2 x double> %i.gw, %i.gy          ; 4 uses
  %i.ha = fmul <2 x double> %i.gu, %i.gu
  %i.hb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.gz, <2 x double> %i.ha) ; 2 uses
  %i.hc = extractelement <2 x double> %i.hb, i64 0 ; 2 uses
  %i.hd = extractelement <2 x double> %i.hb, i64 1 ; 2 uses
  %i.he = fcmp ogt double %i.hc, %i.hd            ; 3 uses
  %i.hf = extractelement <2 x double> %i.gu, i64 0
  %i.hg = extractelement <2 x double> %i.gu, i64 1
  %.0343 = select i1 %i.he, double %i.hf, double %i.hg
  %i.hh = extractelement <2 x double> %i.gz, i64 0
  %i.hi = extractelement <2 x double> %i.gz, i64 1
  %.0341 = select i1 %i.he, double %i.hh, double %i.hi
  %.0339 = select i1 %i.he, double %i.hc, double %i.hd ; 2 uses
  %i.hj = fcmp ogt double %i.fx, %.0339           ; 3 uses
  %.1344 = select i1 %i.hj, double %i.fq, double %.0343 ; 5 uses
  %.1342 = select i1 %i.hj, double %i.fv, double %.0341 ; 9 uses
  %i.hk = fmul double %.1344, 0.000000e+00
  %i.hl = fadd double %.1342, %i.hk               ; 4 uses
  %i.hm = fcmp ogt double %i.hl, 0.000000e+00
  br i1 %i.hm, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hn = fcmp olt double %i.hl, 0.000000e+00
  br i1 %i.hn, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.ho = fneg double %i.hl
  br label %bb.ax

bb.ax:                                            ; preds = %bb.au, %bb.av, %bb.aw
  %.1338 = phi double [ 0.000000e+00, %bb.av ], [ %i.ho, %bb.aw ], [ %i.hl, %bb.au ] ; 3 uses
  %.1336 = phi i32 [ 0, %bb.av ], [ 9, %bb.aw ], [ 0, %bb.au ]
  %i.hp = fmul double %.1344, 3.420000e-01        ; 2 uses
  %i.hq = call double @llvm.fmuladd.f64(double %.1342, double f0x3FEE1205BC01A36E, double %i.hp) ; 3 uses
  %i.hr = fcmp ogt double %i.hq, %.1338
  br i1 %i.hr, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hs = fneg double %i.hq                       ; 2 uses
  %i.ht = fcmp olt double %.1338, %i.hs
  br i1 %i.ht, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.1338.1 = phi double [ %.1338, %bb.ay ], [ %i.hs, %bb.az ], [ %i.hq, %bb.ax ] ; 3 uses
  %.1336.1 = phi i32 [ %.1336, %bb.ay ], [ 10, %bb.az ], [ 1, %bb.ax ]
  %i.hu = fmul double %.1344, 6.428000e-01        ; 2 uses
  %i.hv = call double @llvm.fmuladd.f64(double %.1342, double 7.660000e-01, double %i.hu) ; 3 uses
  %i.hw = fcmp ogt double %i.hv, %.1338.1
  br i1 %i.hw, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hx = fneg double %i.hv                       ; 2 uses
  %i.hy = fcmp olt double %.1338.1, %i.hx
  br i1 %i.hy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.1338.2 = phi double [ %.1338.1, %bb.bb ], [ %i.hx, %bb.bc ], [ %i.hv, %bb.ba ] ; 3 uses
  %.1336.2 = phi i32 [ %.1336.1, %bb.bb ], [ 11, %bb.bc ], [ 2, %bb.ba ]
  %i.hz = fmul double %.1344, 8.660000e-01        ; 2 uses
  %i.ia = call double @llvm.fmuladd.f64(double %.1342, double 5.000000e-01, double %i.hz) ; 3 uses
  %i.ib = fcmp ogt double %i.ia, %.1338.2
  br i1 %i.ib, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ic = fneg double %i.ia                       ; 2 uses
  %i.id = fcmp olt double %.1338.2, %i.ic
  br i1 %i.id, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd
  %.1338.3 = phi double [ %.1338.2, %bb.be ], [ %i.ic, %bb.bf ], [ %i.ia, %bb.bd ] ; 3 uses
  %.1336.3 = phi i32 [ %.1336.2, %bb.be ], [ 12, %bb.bf ], [ 3, %bb.bd ]
  %i.ie = fmul double %.1344, 9.848000e-01        ; 2 uses
  %i.if = call double @llvm.fmuladd.f64(double %.1342, double 1.736000e-01, double %i.ie) ; 3 uses
  %i.ig = fcmp ogt double %i.if, %.1338.3
  br i1 %i.ig, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ih = fneg double %i.if                       ; 2 uses
  %i.ii = fcmp olt double %.1338.3, %i.ih
  br i1 %i.ii, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.1338.4 = phi double [ %.1338.3, %bb.bh ], [ %i.ih, %bb.bi ], [ %i.if, %bb.bg ] ; 3 uses
  %.1336.4 = phi i32 [ %.1336.3, %bb.bh ], [ 13, %bb.bi ], [ 4, %bb.bg ]
  %i.ij = call double @llvm.fmuladd.f64(double %.1342, double -1.736000e-01, double %i.ie) ; 3 uses
  %i.ik = fcmp ogt double %i.ij, %.1338.4
  br i1 %i.ik, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.il = fneg double %i.ij                       ; 2 uses
  %i.im = fcmp olt double %.1338.4, %i.il
  br i1 %i.im, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %.1338.5 = phi double [ %.1338.4, %bb.bk ], [ %i.il, %bb.bl ], [ %i.ij, %bb.bj ] ; 3 uses
  %.1336.5 = phi i32 [ %.1336.4, %bb.bk ], [ 14, %bb.bl ], [ 5, %bb.bj ]
  %i.in = call double @llvm.fmuladd.f64(double %.1342, double -5.000000e-01, double %i.hz) ; 3 uses
  %i.io = fcmp ogt double %i.in, %.1338.5
  br i1 %i.io, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ip = fneg double %i.in                       ; 2 uses
  %i.iq = fcmp olt double %.1338.5, %i.ip
  br i1 %i.iq, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm
  %.1338.6 = phi double [ %.1338.5, %bb.bn ], [ %i.ip, %bb.bo ], [ %i.in, %bb.bm ] ; 3 uses
  %.1336.6 = phi i32 [ %.1336.5, %bb.bn ], [ 15, %bb.bo ], [ 6, %bb.bm ]
  %i.ir = call double @llvm.fmuladd.f64(double %.1342, double -7.660000e-01, double %i.hu) ; 3 uses
  %i.is = fcmp ogt double %i.ir, %.1338.6
  br i1 %i.is, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.it = fneg double %i.ir                       ; 2 uses
  %i.iu = fcmp olt double %.1338.6, %i.it
  br i1 %i.iu, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.1338.7 = phi double [ %.1338.6, %bb.bq ], [ %i.it, %bb.br ], [ %i.ir, %bb.bp ] ; 2 uses
  %.1336.7 = phi i32 [ %.1336.6, %bb.bq ], [ 16, %bb.br ], [ 7, %bb.bp ]
  %i.iv = call double @llvm.fmuladd.f64(double %.1342, double f0xBFEE1205BC01A36E, double %i.hp) ; 2 uses
  %i.iw = fcmp ogt double %i.iv, %.1338.7
  %i.ix = fneg double %i.iv
  %i.iy = fcmp olt double %.1338.7, %i.ix
  %spec.select = select i1 %i.iy, i32 17, i32 %.1336.7
  %.1336.8 = select i1 %i.iw, i32 8, i32 %spec.select ; 4 uses
  %.1340 = select i1 %i.hj, double %i.fx, double %.0339
  %i.iz = uitofp nneg i32 %storemerge383503 to double
  %i.ja = fadd double %i.iz, 5.000000e-01
  %i.jb = fdiv double %i.ja, %i.bh
  %i.jc = fadd double %i.jb, -5.000000e-01        ; 2 uses
  %i.jd = call double @llvm.floor.f64(double %i.jc)
  %i.je = fptosi double %i.jd to i32              ; 6 uses
  %i.jf = sitofp i32 %i.je to double
  %i.jg = fsub double %i.jc, %i.jf                ; 3 uses
  %i.jh = fsub double 1.000000e+00, %i.jg         ; 2 uses
  %sqrt = call double @llvm.sqrt.f64(double %.1340) ; 4 uses
  %i.ji = icmp sgt i32 %i.je, -1                  ; 2 uses
  %or.cond = select i1 %i.ei, i1 %i.ji, i1 false
  br i1 %or.cond, label %.thread, label %bb.bt

.thread:                                          ; preds = %bb.bs
  %i.jj = fmul double %i.eh, %i.jh
  %i.jk = mul nuw nsw i32 %i.je, 18
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.jl
  %i.jn = zext nneg i32 %.1336.8 to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn ; 2 uses
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !24
  %i.jq = call double @llvm.fmuladd.f64(double %i.jj, double %sqrt, double %i.jp)
  store double %i.jq, ptr %i.jo, align 8, !tbaa !24
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  br i1 %i.ei, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %.thread, %bb.bt
  %i.jr = add nsw i32 %i.je, 1                    ; 2 uses
  %i.js = icmp slt i32 %i.jr, %i.bo
  br i1 %i.js, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jt = fmul double %i.eh, %i.jg
  %i.ju = mul nsw i32 %i.jr, 18
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds [8 x i8], ptr %i.el, i64 %i.jv
  %i.jx = zext nneg i32 %.1336.8 to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.jx ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !24
  %i.ka = call double @llvm.fmuladd.f64(double %i.jt, double %sqrt, double %i.jz)
  store double %i.ka, ptr %i.jy, align 8, !tbaa !24
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %or.cond3 = select i1 %i.en, i1 %i.ji, i1 false
  br i1 %or.cond3, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.kb = fmul double %i.eg, %i.jh
  %i.kc = mul nuw nsw i32 %i.je, 18
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.kd
  %i.kf = zext nneg i32 %.1336.8 to i64
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.kf ; 2 uses
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !24
  %i.ki = call double @llvm.fmuladd.f64(double %i.kb, double %sqrt, double %i.kh)
  store double %i.ki, ptr %i.kg, align 8, !tbaa !24
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  br i1 %i.en, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %bb.by
  %i.kj = add nsw i32 %i.je, 1                    ; 2 uses
  %i.kk = icmp slt i32 %i.kj, %i.bo
  br i1 %i.kk, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.kl = fmul double %i.eg, %i.jg
  %i.km = mul nsw i32 %i.kj, 18
  %i.kn = sext i32 %i.km to i64
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.kn
  %i.kp = zext nneg i32 %.1336.8 to i64
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %i.kp ; 2 uses
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !24
  %i.ks = call double @llvm.fmuladd.f64(double %i.kl, double %sqrt, double %i.kr)
  store double %i.ks, ptr %i.kq, align 8, !tbaa !24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.kt = add nuw nsw i32 %storemerge383503, 1
  %exitcond.not = icmp eq i32 %storemerge383503, %i.dv
  br i1 %exitcond.not, label %._crit_edge, label %bb.au, !llvm.loop !99

.preheader497:                                    ; preds = %._crit_edge510, %.preheader498
  %i.ku = sub nsw i32 %i.bw, %4                   ; 2 uses
  %i.kv = icmp slt i32 %4, %i.ku
  br i1 %i.kv, label %.preheader496.lr.ph, label %.preheader494

.preheader496.lr.ph:                              ; preds = %.preheader497
  %i.kw = sub nsw i32 %i.bt, %3                   ; 2 uses
  %i.kx = icmp slt i32 %3, %i.kw
  %i.ky = zext nneg i32 %3 to i64
  %i.kz = sub nsw i64 0, %i.ky                    ; 2 uses
  br i1 %i.kx, label %.preheader496.preheader, label %.preheader494

.preheader496.preheader:                          ; preds = %.preheader496.lr.ph
  %i.la = zext nneg i32 %3 to i64
  %i.lb = zext nneg i32 %4 to i64                 ; 2 uses
  %wide.trip.count557 = zext nneg i32 %i.kw to i64
  %invariant.op = sub i32 1, %3
  br label %.preheader496

bb.cc:                                            ; preds = %.lr.ph512, %._crit_edge510
  %indvars.iv = phi i64 [ 0, %.lr.ph512 ], [ %indvars.iv.next, %._crit_edge510 ] ; 8 uses
  %i.lc = mul i64 %i.eu, %indvars.iv              ; 3 uses
  %i.ld = getelementptr i8, ptr %i.dh, i64 %i.lc
  %scevgep = getelementptr i8, ptr %i.ld, i64 8
  %i.le = add i64 %i.ev, %i.lc
  %i.lf = add i64 %i.ew, %i.lc
  %umax = call i64 @llvm.umax.i64(i64 %i.le, i64 %i.lf)
  %i.lg = mul i64 %i.ey, %indvars.iv
  %i.lh = add i64 %i.lg, %i.ex
  %i.li = add i64 %umax, %i.lh                    ; 2 uses
  %i.lj = and i64 %i.li, -8
  %scevgep635 = getelementptr i8, ptr %scevgep, i64 %i.lj
  %i.lk = mul i64 %i.ez, %indvars.iv
  %i.ll = getelementptr i8, ptr %i.df, i64 %i.lk
  %scevgep636 = getelementptr i8, ptr %i.ll, i64 144
  %i.lm = lshr i64 %i.li, 3
  %i.ln = mul i64 %i.lm, 144
  %scevgep637 = getelementptr i8, ptr %scevgep636, i64 %i.ln
  %i.lo = mul i64 %i.da, %indvars.iv
  %i.lp = getelementptr [8 x i8], ptr %i.dh, i64 %i.lo ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 %.idx
  br i1 %i.et, label %.lr.ph.preheader, label %._crit_edge510

.lr.ph.preheader:                                 ; preds = %bb.cc
  %i.lr = mul i64 %i.fa, %indvars.iv              ; 2 uses
  %21 = add i64 %i.fb, %i.lr
  %22 = add i64 %i.ew, %i.lr
  %23 = mul i64 %20, %indvars.iv
  %i.ls = add i64 %23, %i.ex
  %24 = mul i64 %i.cz, %indvars.iv
  %25 = getelementptr [8 x i8], ptr %i.df, i64 %24 ; 6 uses
  %26 = call i64 @llvm.umax.i64(i64 %21, i64 %22)
  %i.lt = add i64 %26, %i.ls
  %i.lu = lshr i64 %i.lt, 3                       ; 2 uses
  %i.lv = add nuw nsw i64 %i.lu, 1                ; 2 uses
  %min.iters.check = icmp eq i64 %i.lu, 0
  br i1 %min.iters.check, label %.lr.ph.preheader715, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %bound0 = icmp ult ptr %i.lp, %scevgep637
  %bound1 = icmp ult ptr %25, %scevgep635
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader715, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.lv, 4611686018427387902     ; 4 uses
  %i.lw = shl i64 %n.vec, 3
  %i.lx = getelementptr i8, ptr %i.lp, i64 %i.lw
  %i.ly = mul i64 %n.vec, 144
  %i.lz = getelementptr i8, ptr %25, i64 %i.ly
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ma = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.lp, i64 %i.ma ; 10 uses
  %i.mb = mul i64 %index, 144                     ; 2 uses
  %next.gep638 = getelementptr i8, ptr %25, i64 %i.mb ; 18 uses
  %i.mc = getelementptr i8, ptr %25, i64 %i.mb    ; 18 uses
  %next.gep639 = getelementptr i8, ptr %i.mc, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.md = load double, ptr %next.gep638, align 8, !tbaa !24, !alias.scope !117
  %i.me = load double, ptr %next.gep639, align 8, !tbaa !24, !alias.scope !117
  %i.mf = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mg = insertelement <2 x double> %i.mf, double %i.me, i64 1
  %i.mh = getelementptr inbounds nuw i8, ptr %next.gep638, i64 72
  %i.mi = getelementptr i8, ptr %i.mc, i64 216
  %i.mj = load double, ptr %i.mh, align 8, !tbaa !24, !alias.scope !117
  %i.mk = load double, ptr %i.mi, align 8, !tbaa !24, !alias.scope !117
  %i.ml = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.mk, i64 1
  %i.mn = fadd <2 x double> %i.mg, %i.mm          ; 2 uses
  %i.mo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.mn, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.mo, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.mp = getelementptr inbounds nuw i8, ptr %next.gep638, i64 8
  %i.mq = getelementptr i8, ptr %i.mc, i64 152
  %i.mr = load double, ptr %i.mp, align 8, !tbaa !24, !alias.scope !117
  %i.ms = load double, ptr %i.mq, align 8, !tbaa !24, !alias.scope !117
  %i.mt = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.ms, i64 1
  %i.mv = getelementptr inbounds nuw i8, ptr %next.gep638, i64 80
  %i.mw = getelementptr i8, ptr %i.mc, i64 224
  %i.mx = load double, ptr %i.mv, align 8, !tbaa !24, !alias.scope !117
  %i.my = load double, ptr %i.mw, align 8, !tbaa !24, !alias.scope !117
  %i.mz = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.my, i64 1
  %i.nb = fadd <2 x double> %i.mu, %i.na          ; 2 uses
  %i.nc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nb, <2 x double> %i.nb, <2 x double> %i.mo) ; 2 uses
  store <2 x double> %i.nc, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.nd = getelementptr inbounds nuw i8, ptr %next.gep638, i64 16
  %i.ne = getelementptr i8, ptr %i.mc, i64 160
  %i.nf = load double, ptr %i.nd, align 8, !tbaa !24, !alias.scope !117
  %i.ng = load double, ptr %i.ne, align 8, !tbaa !24, !alias.scope !117
  %i.nh = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.ni = insertelement <2 x double> %i.nh, double %i.ng, i64 1
  %i.nj = getelementptr inbounds nuw i8, ptr %next.gep638, i64 88
  %i.nk = getelementptr i8, ptr %i.mc, i64 232
  %i.nl = load double, ptr %i.nj, align 8, !tbaa !24, !alias.scope !117
  %i.nm = load double, ptr %i.nk, align 8, !tbaa !24, !alias.scope !117
  %i.nn = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.nm, i64 1
  %i.np = fadd <2 x double> %i.ni, %i.no          ; 2 uses
  %i.nq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.np, <2 x double> %i.nc) ; 2 uses
  store <2 x double> %i.nq, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.nr = getelementptr inbounds nuw i8, ptr %next.gep638, i64 24
  %i.ns = getelementptr i8, ptr %i.mc, i64 168
  %i.nt = load double, ptr %i.nr, align 8, !tbaa !24, !alias.scope !117
  %i.nu = load double, ptr %i.ns, align 8, !tbaa !24, !alias.scope !117
  %i.nv = insertelement <2 x double> poison, double %i.nt, i64 0
  %i.nw = insertelement <2 x double> %i.nv, double %i.nu, i64 1
  %i.nx = getelementptr inbounds nuw i8, ptr %next.gep638, i64 96
  %i.ny = getelementptr i8, ptr %i.mc, i64 240
  %i.nz = load double, ptr %i.nx, align 8, !tbaa !24, !alias.scope !117
  %i.oa = load double, ptr %i.ny, align 8, !tbaa !24, !alias.scope !117
  %i.ob = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.oc = insertelement <2 x double> %i.ob, double %i.oa, i64 1
  %i.od = fadd <2 x double> %i.nw, %i.oc          ; 2 uses
  %i.oe = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.od, <2 x double> %i.od, <2 x double> %i.nq) ; 2 uses
  store <2 x double> %i.oe, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.of = getelementptr inbounds nuw i8, ptr %next.gep638, i64 32
  %i.og = getelementptr i8, ptr %i.mc, i64 176
  %i.oh = load double, ptr %i.of, align 8, !tbaa !24, !alias.scope !117
  %i.oi = load double, ptr %i.og, align 8, !tbaa !24, !alias.scope !117
  %i.oj = insertelement <2 x double> poison, double %i.oh, i64 0
  %i.ok = insertelement <2 x double> %i.oj, double %i.oi, i64 1
  %i.ol = getelementptr inbounds nuw i8, ptr %next.gep638, i64 104
  %i.om = getelementptr i8, ptr %i.mc, i64 248
  %i.on = load double, ptr %i.ol, align 8, !tbaa !24, !alias.scope !117
  %i.oo = load double, ptr %i.om, align 8, !tbaa !24, !alias.scope !117
  %i.op = insertelement <2 x double> poison, double %i.on, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %i.oo, i64 1
  %i.or = fadd <2 x double> %i.ok, %i.oq          ; 2 uses
  %i.os = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.or, <2 x double> %i.or, <2 x double> %i.oe) ; 2 uses
  store <2 x double> %i.os, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.ot = getelementptr inbounds nuw i8, ptr %next.gep638, i64 40
  %i.ou = getelementptr i8, ptr %i.mc, i64 184
  %i.ov = load double, ptr %i.ot, align 8, !tbaa !24, !alias.scope !117
  %i.ow = load double, ptr %i.ou, align 8, !tbaa !24, !alias.scope !117
  %i.ox = insertelement <2 x double> poison, double %i.ov, i64 0
  %i.oy = insertelement <2 x double> %i.ox, double %i.ow, i64 1
  %i.oz = getelementptr inbounds nuw i8, ptr %next.gep638, i64 112
  %i.pa = getelementptr i8, ptr %i.mc, i64 256
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !24, !alias.scope !117
  %i.pc = load double, ptr %i.pa, align 8, !tbaa !24, !alias.scope !117
  %i.pd = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pe = insertelement <2 x double> %i.pd, double %i.pc, i64 1
  %i.pf = fadd <2 x double> %i.oy, %i.pe          ; 2 uses
  %i.pg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pf, <2 x double> %i.pf, <2 x double> %i.os) ; 2 uses
  store <2 x double> %i.pg, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.ph = getelementptr inbounds nuw i8, ptr %next.gep638, i64 48
  %i.pi = getelementptr i8, ptr %i.mc, i64 192
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !24, !alias.scope !117
  %i.pk = load double, ptr %i.pi, align 8, !tbaa !24, !alias.scope !117
  %i.pl = insertelement <2 x double> poison, double %i.pj, i64 0
  %i.pm = insertelement <2 x double> %i.pl, double %i.pk, i64 1
  %i.pn = getelementptr inbounds nuw i8, ptr %next.gep638, i64 120
  %i.po = getelementptr i8, ptr %i.mc, i64 264
  %i.pp = load double, ptr %i.pn, align 8, !tbaa !24, !alias.scope !117
  %i.pq = load double, ptr %i.po, align 8, !tbaa !24, !alias.scope !117
  %i.pr = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.ps = insertelement <2 x double> %i.pr, double %i.pq, i64 1
  %i.pt = fadd <2 x double> %i.pm, %i.ps          ; 2 uses
  %i.pu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> %i.pt, <2 x double> %i.pg) ; 2 uses
  store <2 x double> %i.pu, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.pv = getelementptr inbounds nuw i8, ptr %next.gep638, i64 56
  %i.pw = getelementptr i8, ptr %i.mc, i64 200
  %i.px = load double, ptr %i.pv, align 8, !tbaa !24, !alias.scope !117
  %i.py = load double, ptr %i.pw, align 8, !tbaa !24, !alias.scope !117
  %i.pz = insertelement <2 x double> poison, double %i.px, i64 0
  %i.qa = insertelement <2 x double> %i.pz, double %i.py, i64 1
  %i.qb = getelementptr inbounds nuw i8, ptr %next.gep638, i64 128
  %i.qc = getelementptr i8, ptr %i.mc, i64 272
  %i.qd = load double, ptr %i.qb, align 8, !tbaa !24, !alias.scope !117
  %i.qe = load double, ptr %i.qc, align 8, !tbaa !24, !alias.scope !117
  %i.qf = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.qg = insertelement <2 x double> %i.qf, double %i.qe, i64 1
  %i.qh = fadd <2 x double> %i.qa, %i.qg          ; 2 uses
  %i.qi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.qh, <2 x double> %i.pu) ; 2 uses
  store <2 x double> %i.qi, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %i.qj = getelementptr inbounds nuw i8, ptr %next.gep638, i64 64
  %i.qk = getelementptr i8, ptr %i.mc, i64 208
  %i.ql = load double, ptr %i.qj, align 8, !tbaa !24, !alias.scope !117
  %i.qm = load double, ptr %i.qk, align 8, !tbaa !24, !alias.scope !117
  %i.qn = insertelement <2 x double> poison, double %i.ql, i64 0
  %i.qo = insertelement <2 x double> %i.qn, double %i.qm, i64 1
  %i.qp = getelementptr inbounds nuw i8, ptr %next.gep638, i64 136
  %i.qq = getelementptr i8, ptr %i.mc, i64 280
  %i.qr = load double, ptr %i.qp, align 8, !tbaa !24, !alias.scope !117
  %i.qs = load double, ptr %i.qq, align 8, !tbaa !24, !alias.scope !117
  %i.qt = insertelement <2 x double> poison, double %i.qr, i64 0
  %i.qu = insertelement <2 x double> %i.qt, double %i.qs, i64 1
  %i.qv = fadd <2 x double> %i.qo, %i.qu          ; 2 uses
  %i.qw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> %i.qv, <2 x double> %i.qi)
  store <2 x double> %i.qw, ptr %next.gep, align 8, !tbaa !24, !alias.scope !116, !noalias !117
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qx = icmp eq i64 %index.next, %n.vec
  br i1 %i.qx, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.lv, %n.vec
  br i1 %cmp.n, label %._crit_edge510, label %.lr.ph.preheader715

.lr.ph.preheader715:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0330508.ph = phi ptr [ %i.lp, %vector.memcheck ], [ %i.lp, %.lr.ph.preheader ], [ %i.lx, %middle.block ]
  %.0331507.ph = phi ptr [ %25, %vector.memcheck ], [ %25, %.lr.ph.preheader ], [ %i.lz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader715, %.lr.ph
  %.0330508 = phi ptr [ %i.sz, %.lr.ph ], [ %.0330508.ph, %.lr.ph.preheader715 ] ; 11 uses
  %.0331507 = phi ptr [ %i.ta, %.lr.ph ], [ %.0331507.ph, %.lr.ph.preheader715 ] ; 19 uses
  store double 0.000000e+00, ptr %.0330508, align 8, !tbaa !24
  %i.qy = load double, ptr %.0331507, align 8, !tbaa !24
  %i.qz = getelementptr inbounds nuw i8, ptr %.0331507, i64 72
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !24
  %i.rb = fadd double %i.qy, %i.ra                ; 2 uses
  %i.rc = call double @llvm.fmuladd.f64(double %i.rb, double %i.rb, double 0.000000e+00) ; 2 uses
  store double %i.rc, ptr %.0330508, align 8, !tbaa !24
  %i.rd = getelementptr inbounds nuw i8, ptr %.0331507, i64 8
  %i.re = load double, ptr %i.rd, align 8, !tbaa !24
  %i.rf = getelementptr inbounds nuw i8, ptr %.0331507, i64 80
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !24
  %i.rh = fadd double %i.re, %i.rg                ; 2 uses
  %i.ri = call double @llvm.fmuladd.f64(double %i.rh, double %i.rh, double %i.rc) ; 2 uses
  store double %i.ri, ptr %.0330508, align 8, !tbaa !24
  %i.rj = getelementptr inbounds nuw i8, ptr %.0331507, i64 16
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !24
  %i.rl = getelementptr inbounds nuw i8, ptr %.0331507, i64 88
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !24
  %i.rn = fadd double %i.rk, %i.rm                ; 2 uses
  %i.ro = call double @llvm.fmuladd.f64(double %i.rn, double %i.rn, double %i.ri) ; 2 uses
  store double %i.ro, ptr %.0330508, align 8, !tbaa !24
  %i.rp = getelementptr inbounds nuw i8, ptr %.0331507, i64 24
  %i.rq = load double, ptr %i.rp, align 8, !tbaa !24
  %i.rr = getelementptr inbounds nuw i8, ptr %.0331507, i64 96
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !24
  %i.rt = fadd double %i.rq, %i.rs                ; 2 uses
  %i.ru = call double @llvm.fmuladd.f64(double %i.rt, double %i.rt, double %i.ro) ; 2 uses
  store double %i.ru, ptr %.0330508, align 8, !tbaa !24
  %i.rv = getelementptr inbounds nuw i8, ptr %.0331507, i64 32
  %i.rw = load double, ptr %i.rv, align 8, !tbaa !24
  %i.rx = getelementptr inbounds nuw i8, ptr %.0331507, i64 104
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !24
  %i.rz = fadd double %i.rw, %i.ry                ; 2 uses
  %i.sa = call double @llvm.fmuladd.f64(double %i.rz, double %i.rz, double %i.ru) ; 2 uses
  store double %i.sa, ptr %.0330508, align 8, !tbaa !24
  %i.sb = getelementptr inbounds nuw i8, ptr %.0331507, i64 40
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !24
  %i.sd = getelementptr inbounds nuw i8, ptr %.0331507, i64 112
  %i.se = load double, ptr %i.sd, align 8, !tbaa !24
  %i.sf = fadd double %i.sc, %i.se                ; 2 uses
  %i.sg = call double @llvm.fmuladd.f64(double %i.sf, double %i.sf, double %i.sa) ; 2 uses
  store double %i.sg, ptr %.0330508, align 8, !tbaa !24
  %i.sh = getelementptr inbounds nuw i8, ptr %.0331507, i64 48
  %i.si = load double, ptr %i.sh, align 8, !tbaa !24
  %i.sj = getelementptr inbounds nuw i8, ptr %.0331507, i64 120
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !24
  %i.sl = fadd double %i.si, %i.sk                ; 2 uses
  %i.sm = call double @llvm.fmuladd.f64(double %i.sl, double %i.sl, double %i.sg) ; 2 uses
  store double %i.sm, ptr %.0330508, align 8, !tbaa !24
  %i.sn = getelementptr inbounds nuw i8, ptr %.0331507, i64 56
  %i.so = load double, ptr %i.sn, align 8, !tbaa !24
  %i.sp = getelementptr inbounds nuw i8, ptr %.0331507, i64 128
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !24
  %i.sr = fadd double %i.so, %i.sq                ; 2 uses
  %i.ss = call double @llvm.fmuladd.f64(double %i.sr, double %i.sr, double %i.sm) ; 2 uses
  store double %i.ss, ptr %.0330508, align 8, !tbaa !24
  %i.st = getelementptr inbounds nuw i8, ptr %.0331507, i64 64
  %i.su = load double, ptr %i.st, align 8, !tbaa !24
  %i.sv = getelementptr inbounds nuw i8, ptr %.0331507, i64 136
  %i.sw = load double, ptr %i.sv, align 8, !tbaa !24
  %i.sx = fadd double %i.su, %i.sw                ; 2 uses
  %i.sy = call double @llvm.fmuladd.f64(double %i.sx, double %i.sx, double %i.ss)
  store double %i.sy, ptr %.0330508, align 8, !tbaa !24
  %i.sz = getelementptr inbounds nuw i8, ptr %.0330508, i64 8 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %.0331507, i64 144
  %i.tb = icmp ult ptr %i.sz, %i.lq
  br i1 %i.tb, label %.lr.ph, label %._crit_edge510, !llvm.loop !104

._crit_edge510:                                   ; preds = %.lr.ph, %middle.block, %bb.cc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next, %.sroa.11.0.insert.ext
  br i1 %exitcond550.not, label %.preheader497, label %bb.cc, !llvm.loop !105

.preheader496:                                    ; preds = %.preheader496.preheader, %._crit_edge525
  %indvars.iv559 = phi i64 [ %i.lb, %.preheader496.preheader ], [ %indvars.iv.next560, %._crit_edge525 ] ; 3 uses
  %i.tc = mul i64 %i.db, %indvars.iv559
  %i.td = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.tc
  %i.te = sub nuw nsw i64 %indvars.iv559, %i.lb   ; 2 uses
  %i.tf = add nuw nsw i64 %i.te, 1                ; 2 uses
  %i.tg = mul i64 %i.da, %i.tf
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.tg ; 2 uses
  %i.ti = mul i64 %i.da, %i.te
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.ti ; 2 uses
  %invariant.gep526 = getelementptr [8 x i8], ptr %i.th, i64 %i.kz
  %invariant.gep528 = getelementptr [8 x i8], ptr %i.tj, i64 %i.kz
  %i.tk = mul i64 %i.cz, %i.tf
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.tk
  br label %bb.cd

.preheader494:                                    ; preds = %._crit_edge525, %.preheader496.lr.ph, %.preheader497
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.tn = load i32, ptr %i.tm, align 8, !tbaa !72 ; 3 uses
  %i.to = icmp sgt i32 %i.tn, 0
  br i1 %i.to, label %.preheader.lr.ph, label %._crit_edge537.split

.preheader.lr.ph:                                 ; preds = %.preheader494
  %i.tp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !71 ; 5 uses
  %i.tr = icmp sgt i32 %i.tq, 0
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  br i1 %i.tr, label %.preheader.preheader, label %._crit_edge537.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.tt = shl nuw nsw i32 %3, 5                   ; 2 uses
  %i.tu = sub nsw i32 %i.tq, %i.tt
  %i.tv = sub nsw i32 %i.tn, %4
  %i.tw = zext nneg i32 %i.tq to i64
  %i.tx = zext nneg i32 %i.tt to i64              ; 3 uses
  %i.ty = sext i32 %i.tu to i64                   ; 3 uses
  %i.tz = sext i32 %i.tv to i64
  %i.ua = zext nneg i32 %4 to i64
  %wide.trip.count574 = zext nneg i32 %i.tn to i64
  %i.ub = add nsw i64 %i.tw, -1                   ; 2 uses
  %i.uc = lshr i64 %i.ub, 5                       ; 2 uses
  %i.ud = add nuw nsw i64 %i.uc, 1                ; 6 uses
  %xtraiter = and i64 %i.ud, 3                    ; 3 uses
  %i.ue = icmp ult i32 %i.tq, 97
  %unroll_iter = and i64 %i.ud, 1152921504606846972
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod716 = icmp ne i64 %xtraiter, 0
  %xtraiter717 = and i64 %i.ud, 7                 ; 3 uses
  %i.uf = icmp ult i32 %i.tq, 225
  %unroll_iter721 = and i64 %i.ud, 1152921504606846968
  %lcmp.mod719.not = icmp eq i64 %xtraiter717, 0
  %lcmp.mod720 = icmp ne i64 %xtraiter717, 0
  %i.ug = icmp eq i64 %i.uc, 0
  %unroll_iter727 = and i64 %i.ud, 1152921504606846974
  %i.uh = and i64 %i.ub, 32
  %lcmp.mod725.not.not = icmp eq i64 %i.uh, 0
  %lcmp.mod726 = trunc i64 %i.ud to i1
  br label %.preheader

._crit_edge525:                                   ; preds = %.preheader495
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %i.ui = trunc nuw i64 %indvars.iv.next560 to i32
  %i.uj = icmp sgt i32 %i.ku, %i.ui
  br i1 %i.uj, label %.preheader496, label %.preheader494, !llvm.loop !106

bb.cd:                                            ; preds = %.preheader496, %.preheader495
  %indvars.iv553 = phi i64 [ %i.la, %.preheader496 ], [ %indvars.iv.next554, %.preheader495 ] ; 5 uses
  %.idx622 = shl nuw nsw i64 %indvars.iv553, 8
  %i.uk = getelementptr inbounds nuw i8, ptr %i.td, i64 %.idx622
  %i.ul = trunc i64 %indvars.iv553 to i32
  %.reass.reass.reass = add i32 %i.ul, %invariant.op ; 2 uses
  %i.um = sext i32 %.reass.reass.reass to i64     ; 2 uses
  %i.un = getelementptr inbounds [8 x i8], ptr %i.th, i64 %i.um ; 3 uses
  %i.uo = load double, ptr %i.un, align 8, !tbaa !24
  %i.up = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.uq = load double, ptr %i.up, align 8, !tbaa !24
  %i.ur = fadd double %i.uo, %i.uq
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %i.da ; 2 uses
  %i.ut = load double, ptr %i.us, align 8, !tbaa !24
  %i.uu = fadd double %i.ur, %i.ut
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !24
  %i.ux = fadd double %i.uu, %i.uw
  %i.uy = fadd double %i.ux, 1.000000e-04
  %i.uz = call double @sqrt(double noundef %i.uy) #18
  %i.va = getelementptr inbounds [8 x i8], ptr %i.tj, i64 %i.um ; 3 uses
  %i.vb = load double, ptr %i.va, align 8, !tbaa !24
  %i.vc = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vd = load double, ptr %i.vc, align 8, !tbaa !24
  %i.ve = fadd double %i.vb, %i.vd
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.da ; 2 uses
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !24
  %i.vh = fadd double %i.ve, %i.vg
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vf, i64 8
  %i.vj = load double, ptr %i.vi, align 8, !tbaa !24
  %i.vk = fadd double %i.vh, %i.vj
  %i.vl = fadd double %i.vk, 1.000000e-04
  %i.vm = call double @sqrt(double noundef %i.vl) #18
  %gep527 = getelementptr [8 x i8], ptr %invariant.gep526, i64 %indvars.iv553 ; 3 uses
  %i.vn = load double, ptr %gep527, align 8, !tbaa !24
  %i.vo = getelementptr inbounds nuw i8, ptr %gep527, i64 8
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !24
  %i.vq = fadd double %i.vn, %i.vp
  %i.vr = getelementptr inbounds nuw [8 x i8], ptr %gep527, i64 %i.da ; 2 uses
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !24
  %i.vt = fadd double %i.vq, %i.vs
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vv = load double, ptr %i.vu, align 8, !tbaa !24
  %i.vw = fadd double %i.vt, %i.vv
  %i.vx = fadd double %i.vw, 1.000000e-04
  %i.vy = call double @sqrt(double noundef %i.vx) #18
  %i.vz = insertelement <2 x double> poison, double %i.vm, i64 0
  %i.wa = insertelement <2 x double> %i.vz, double %i.vy, i64 1
  %i.wb = fdiv <2 x double> splat (double 1.000000e+00), %i.wa ; 4 uses
  %gep529 = getelementptr [8 x i8], ptr %invariant.gep528, i64 %indvars.iv553 ; 3 uses
  %i.wc = load double, ptr %gep529, align 8, !tbaa !24
  %i.wd = getelementptr inbounds nuw i8, ptr %gep529, i64 8
  %i.we = load double, ptr %i.wd, align 8, !tbaa !24
  %i.wf = fadd double %i.wc, %i.we
  %i.wg = getelementptr inbounds nuw [8 x i8], ptr %gep529, i64 %i.da ; 2 uses
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !24
  %i.wi = fadd double %i.wf, %i.wh
end_hunk_0
