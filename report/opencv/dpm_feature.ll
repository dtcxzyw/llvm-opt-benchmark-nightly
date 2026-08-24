Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dpm_feature?download=true
inline.NumInlined: 288
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN2cv3dpm7Feature13computeHOG32DERKNS_3MatERS2_iii:bb.a
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
  %i.an = load ptr, ptr %5, align 8, !tbaa !46    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !51
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394, %bb.cp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn374.pn.pn.pn.pn.pn.pn, %bb.cp ], [ %.pn367, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit394 ], [ %.pn365, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit391 ], [ %.pn363, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit388 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %common.resume

bb.ac:                                            ; preds = %bb.y
  %i.as = icmp sgt i32 %i.ak, 0
  br i1 %i.as, label %bb.ad, label %.thread.i

.thread.i:                                        ; preds = %bb.ac
  %i.at = icmp eq i32 %i.ak, 0
  %i.au = zext i1 %i.at to i32
  br label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.aw = icmp eq i32 %i.ak, 2
  %i.ax = zext i1 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8  ; 2 uses
  %.not.i = icmp eq i32 %i.ak, 1
  br i1 %.not.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ba = load i32, ptr %i.av, align 4, !tbaa !8
  br label %_ZNK2cv8MatShapeclEv.exit

bb.af:                                            ; preds = %bb.ad, %.thread.i
  %i.bb = phi i32 [ %i.au, %.thread.i ], [ %i.az, %bb.ad ]
  %i.bc = icmp sgt i32 %i.ak, -1
  %i.bd = zext i1 %i.bc to i32
  br label %_ZNK2cv8MatShapeclEv.exit

_ZNK2cv8MatShapeclEv.exit:                        ; preds = %bb.ae, %bb.af
  %i.be = phi i32 [ %i.az, %bb.ae ], [ %i.bb, %bb.af ]
  %i.bf = phi i32 [ %i.ba, %bb.ae ], [ %i.bd, %bb.af ]
  %i.bg = insertelement <2 x i32> poison, i32 %i.be, i64 0
  %i.bh = insertelement <2 x i32> %i.bg, i32 %i.bf, i64 1
  %i.bi = sitofp <2 x i32> %i.bh to <2 x double>
  %i.bj = sitofp i32 %2 to double                 ; 3 uses
  %i.bk = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fdiv <2 x double> %i.bi, %i.bl          ; 2 uses
  %i.bn = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bm) ; 8 uses
  %i.bo = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bp = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.bo) ; 5 uses
  %i.bq = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 2)
  %i.br = shl nuw nsw i32 %3, 1
  %.sroa.speculated476 = add nsw i32 %i.br, -2
  %i.bs = add i32 %.sroa.speculated476, %i.bq     ; 2 uses
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 2)
  %i.bu = shl nuw nsw i32 %4, 1
  %.sroa.speculated470 = add nsw i32 %i.bu, -2
  %i.bv = add i32 %.sroa.speculated470, %i.bt     ; 2 uses
  %.sroa.11.0.insert.ext = zext i32 %i.bp to i64  ; 2 uses
  %.sroa.11.0.insert.shift = shl nuw i64 %.sroa.11.0.insert.ext, 32 ; 2 uses
  %i.bw = mul i32 %i.bn, %2                       ; 2 uses
  %i.bx = mul i32 %i.bp, %2                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  %i.by = mul nsw i32 %i.bn, 18
  %.sroa.0464.0.insert.ext = zext i32 %i.by to i64
  %.sroa.0464.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.0464.0.insert.ext
  call void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %16, i64 %.sroa.0464.0.insert.insert, i32 noundef 6)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %15) #18
  %i.bz = load ptr, ptr %16, align 8, !tbaa !81, !noalias !87 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !26
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(688) %16, ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %_ZNK2cv8MatShapeclEv.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %bb.cp

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %_ZNK2cv8MatShapeclEv.exit
  %.sroa.0481.0.insert.ext = zext i32 %i.bn to i64
  %.sroa.0481.0.insert.insert = or disjoint i64 %.sroa.11.0.insert.shift, %.sroa.0481.0.insert.ext
  %i.ce = getelementptr inbounds nuw i8, ptr %16, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ce) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %16, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cf) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %16, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cg) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %18, i64 %.sroa.0481.0.insert.insert, i32 noundef 6)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %17) #18
  %i.ch = load ptr, ptr %18, align 8, !tbaa !81, !noalias !90 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  invoke void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull align 8 dereferenceable(688) %18, ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit400 unwind label %.body398

.body398:                                         ; preds = %bb.ag
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #18
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %18) #18
  br label %bb.an

_ZNK2cv7MatExprcvNS_3MatEEv.exit400:              ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %18, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cm) #18
  %i.cn = getelementptr inbounds nuw i8, ptr %18, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cn) #18
  %i.co = getelementptr inbounds nuw i8, ptr %18, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.co) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18
  %i.cp = shl nsw i32 %i.bs, 5
  %.sroa.2.0.insert.ext = zext nneg i32 %i.bv to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.cp to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %19, i64 %.sroa.0.0.insert.insert, i32 noundef 6)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit400
  %i.cq = load ptr, ptr %19, align 8, !tbaa !81   ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !26
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull align 8 dereferenceable(688) %19, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit unwind label %bb.ap, !inline_history !93

_ZN2cv3MataSERKNS_7MatExprE.exit:                 ; preds = %bb.ah
  %i.cu = getelementptr inbounds nuw i8, ptr %19, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cu) #18
  %i.cv = getelementptr inbounds nuw i8, ptr %19, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cv) #18
  %i.cw = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.cw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  %i.cx = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef 0)
          to label %bb.ai unwind label %bb.ar     ; 4 uses

bb.ai:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.cy = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %15, i32 noundef 0)
          to label %bb.aj unwind label %bb.as     ; 5 uses

bb.aj:                                            ; preds = %bb.ai
  %i.cz = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %17, i32 noundef 0)
          to label %bb.ak unwind label %bb.at     ; 11 uses

bb.ak:                                            ; preds = %bb.aj
  %i.da = invoke noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef 0)
          to label %bb.al unwind label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !94
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !94 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !94 ; 5 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64              ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !94 ; 18 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 8 uses
  %i.dl = icmp sgt i32 %i.bx, 2
  br i1 %i.dl, label %.preheader499.lr.ph, label %.preheader498

.preheader499.lr.ph:                              ; preds = %bb.al
  %i.dm = icmp sgt i32 %i.bw, 2
  %i.dn = sub i64 0, %i.cx                        ; 2 uses
  br i1 %i.dm, label %.preheader499.lr.ph.split, label %.preheader498

.preheader499.lr.ph.split:                        ; preds = %.preheader499.lr.ph
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !95
  %i.dr = add nsw i32 %i.dq, -2
  %i.ds = load i32, ptr %i.do, align 8, !tbaa !96
  %i.dt = add nsw i32 %i.ds, -2
  %i.du = add nsw i32 %i.bw, -2
  %i.dv = add nsw i32 %i.bx, -2
  br label %.preheader499

.preheader499:                                    ; preds = %.preheader499.lr.ph.split, %._crit_edge
  %storemerge504 = phi i32 [ 1, %.preheader499.lr.ph.split ], [ %i.fh, %._crit_edge ] ; 4 uses
  %.sroa.speculated447 = call i32 @llvm.smin.i32(i32 %i.dt, i32 %storemerge504)
  %i.dw = sext i32 %.sroa.speculated447 to i64
  %i.dx = mul i64 %i.cx, %i.dw
  %invariant.gep = getelementptr [8 x i8], ptr %i.dc, i64 %i.dx
  %i.dy = uitofp nneg i32 %storemerge504 to double
  %i.dz = fadd double %i.dy, 5.000000e-01
  %i.ea = fdiv double %i.dz, %i.bj
  %i.eb = fadd double %i.ea, -5.000000e-01        ; 2 uses
  %i.ec = call double @llvm.floor.f64(double %i.eb)
  %i.ed = fptosi double %i.ec to i32              ; 4 uses
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = fsub double %i.eb, %i.ee                ; 3 uses
  %i.eg = fsub double 1.000000e+00, %i.ef         ; 2 uses
  %i.eh = icmp sgt i32 %i.ed, -1                  ; 2 uses
  %i.ei = zext nneg i32 %i.ed to i64
  %i.ej = mul i64 %i.cy, %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.ej ; 2 uses
  %i.el = add nsw i32 %i.ed, 1                    ; 2 uses
  %i.em = icmp slt i32 %i.el, %i.bp               ; 2 uses
  %i.en = sext i32 %i.el to i64
  %i.eo = mul i64 %i.cy, %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.eo ; 2 uses
  br label %bb.av

.preheader498:                                    ; preds = %._crit_edge, %.preheader499.lr.ph, %bb.al
  %i.eq = icmp sgt i32 %i.bp, 0
  br i1 %i.eq, label %.lr.ph512, label %.preheader497

.lr.ph512:                                        ; preds = %.preheader498
  %i.er = sext i32 %i.bn to i64
  %.idx = shl nsw i64 %i.er, 3                    ; 3 uses
  %i.es = icmp sgt i32 %i.bn, 0
  %i.et = shl i64 %i.cz, 3
  %i.eu = add i64 %.idx, %i.dh
  %i.ev = add i64 %i.dh, 8                        ; 2 uses
  %i.ew = xor i64 %i.dh, -1                       ; 2 uses
  %i.ex = mul i64 %i.cz, -8
  %i.ey = shl i64 %i.cy, 3
  %20 = mul i64 %i.cz, -8
  %i.ez = shl i64 %i.cz, 3
  %21 = add i64 %.idx, %i.dh
  br label %bb.cg

bb.am:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.an:                                            ; preds = %.body398, %bb.am
  %.pn369 = phi { ptr, i32 } [ %i.cl, %.body398 ], [ %i.fa, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18
  br label %bb.co

bb.ao:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit400
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ah
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %19) #18
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn371 = phi { ptr, i32 } [ %i.fc, %bb.ap ], [ %i.fb, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18
  br label %bb.cn

bb.ar:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.as:                                            ; preds = %bb.ai
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.at:                                            ; preds = %bb.aj
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.au:                                            ; preds = %bb.ak
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

._crit_edge:                                      ; preds = %bb.cf
  %i.fh = add nuw nsw i32 %storemerge504, 1
  %exitcond547.not = icmp eq i32 %storemerge504, %i.dv
  br i1 %exitcond547.not, label %.preheader498, label %.preheader499, !llvm.loop !97

bb.av:                                            ; preds = %.preheader499, %bb.cf
  %storemerge383503 = phi i32 [ 1, %.preheader499 ], [ %i.ka, %bb.cf ] ; 4 uses
  %.sroa.speculated451 = call i32 @llvm.smin.i32(i32 %i.dr, i32 %storemerge383503)
  %i.fi = mul nsw i32 %.sroa.speculated451, 3
  %i.fj = sext i32 %i.fi to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.fj ; 7 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %i.cx
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !25
  %i.fm = getelementptr inbounds [8 x i8], ptr %gep, i64 %i.dn
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !25
  %i.fo = fsub double %i.fl, %i.fn                ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !25
  %i.fr = getelementptr inbounds i8, ptr %gep, i64 -24
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !25
  %i.ft = fsub double %i.fq, %i.fs                ; 3 uses
  %i.fu = fmul double %i.fo, %i.fo
  %i.fv = call double @llvm.fmuladd.f64(double %i.ft, double %i.ft, double %i.fu) ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.cx
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.dn
  %i.fz = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.ga = getelementptr inbounds i8, ptr %gep, i64 -16
  %i.gb = load <2 x double>, ptr %i.fx, align 8, !tbaa !25
  %i.gc = load <2 x double>, ptr %i.fy, align 8, !tbaa !25
  %i.gd = fsub <2 x double> %i.gb, %i.gc          ; 4 uses
  %i.ge = load <2 x double>, ptr %i.fz, align 8, !tbaa !25
  %i.gf = load <2 x double>, ptr %i.ga, align 8, !tbaa !25
  %i.gg = fsub <2 x double> %i.ge, %i.gf          ; 4 uses
  %i.gh = fmul <2 x double> %i.gd, %i.gd
  %i.gi = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.gg, <2 x double> %i.gh) ; 2 uses
  %i.gj = extractelement <2 x double> %i.gi, i64 0 ; 2 uses
  %i.gk = extractelement <2 x double> %i.gi, i64 1 ; 2 uses
  %i.gl = fcmp ogt double %i.gj, %i.gk            ; 3 uses
  %i.gm = extractelement <2 x double> %i.gd, i64 0
  %i.gn = extractelement <2 x double> %i.gd, i64 1
  %.0343 = select i1 %i.gl, double %i.gm, double %i.gn
  %i.go = extractelement <2 x double> %i.gg, i64 0
  %i.gp = extractelement <2 x double> %i.gg, i64 1
  %.0341 = select i1 %i.gl, double %i.go, double %i.gp
  %.0339 = select i1 %i.gl, double %i.gj, double %i.gk ; 2 uses
  %i.gq = fcmp ogt double %i.fv, %.0339           ; 3 uses
  %.1344 = select i1 %i.gq, double %i.fo, double %.0343 ; 5 uses
  %.1342 = select i1 %i.gq, double %i.ft, double %.0341 ; 9 uses
  %i.gr = fmul double %.1344, 0.000000e+00
  %i.gs = fadd double %.1342, %i.gr               ; 4 uses
  %i.gt = fcmp ogt double %i.gs, 0.000000e+00
  br i1 %i.gt, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gu = fcmp olt double %i.gs, 0.000000e+00
  br i1 %i.gu, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gv = fneg double %i.gs
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  %.1338 = phi double [ 0.000000e+00, %bb.aw ], [ %i.gv, %bb.ax ], [ %i.gs, %bb.av ] ; 3 uses
  %.1336 = phi i32 [ 0, %bb.aw ], [ 9, %bb.ax ], [ 0, %bb.av ]
  %i.gw = fmul double %.1344, 3.420000e-01        ; 2 uses
  %i.gx = call double @llvm.fmuladd.f64(double %.1342, double f0x3FEE1205BC01A36E, double %i.gw) ; 3 uses
  %i.gy = fcmp ogt double %i.gx, %.1338
  br i1 %i.gy, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = fneg double %i.gx                       ; 2 uses
  %i.ha = fcmp olt double %.1338, %i.gz
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.1338.1 = phi double [ %.1338, %bb.az ], [ %i.gz, %bb.ba ], [ %i.gx, %bb.ay ] ; 3 uses
  %.1336.1 = phi i32 [ %.1336, %bb.az ], [ 10, %bb.ba ], [ 1, %bb.ay ]
  %i.hb = fmul double %.1344, 6.428000e-01        ; 2 uses
  %i.hc = call double @llvm.fmuladd.f64(double %.1342, double 7.660000e-01, double %i.hb) ; 3 uses
  %i.hd = fcmp ogt double %i.hc, %.1338.1
  br i1 %i.hd, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.he = fneg double %i.hc                       ; 2 uses
  %i.hf = fcmp olt double %.1338.1, %i.he
  br i1 %i.hf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb
  %.1338.2 = phi double [ %.1338.1, %bb.bc ], [ %i.he, %bb.bd ], [ %i.hc, %bb.bb ] ; 3 uses
  %.1336.2 = phi i32 [ %.1336.1, %bb.bc ], [ 11, %bb.bd ], [ 2, %bb.bb ]
  %i.hg = fmul double %.1344, 8.660000e-01        ; 2 uses
  %i.hh = call double @llvm.fmuladd.f64(double %.1342, double 5.000000e-01, double %i.hg) ; 3 uses
  %i.hi = fcmp ogt double %i.hh, %.1338.2
  br i1 %i.hi, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hj = fneg double %i.hh                       ; 2 uses
  %i.hk = fcmp olt double %.1338.2, %i.hj
  br i1 %i.hk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %.1338.3 = phi double [ %.1338.2, %bb.bf ], [ %i.hj, %bb.bg ], [ %i.hh, %bb.be ] ; 3 uses
  %.1336.3 = phi i32 [ %.1336.2, %bb.bf ], [ 12, %bb.bg ], [ 3, %bb.be ]
  %i.hl = fmul double %.1344, 9.848000e-01        ; 2 uses
  %i.hm = call double @llvm.fmuladd.f64(double %.1342, double 1.736000e-01, double %i.hl) ; 3 uses
  %i.hn = fcmp ogt double %i.hm, %.1338.3
  br i1 %i.hn, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ho = fneg double %i.hm                       ; 2 uses
  %i.hp = fcmp olt double %.1338.3, %i.ho
  br i1 %i.hp, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh
  %.1338.4 = phi double [ %.1338.3, %bb.bi ], [ %i.ho, %bb.bj ], [ %i.hm, %bb.bh ] ; 3 uses
  %.1336.4 = phi i32 [ %.1336.3, %bb.bi ], [ 13, %bb.bj ], [ 4, %bb.bh ]
  %i.hq = call double @llvm.fmuladd.f64(double %.1342, double -1.736000e-01, double %i.hl) ; 3 uses
  %i.hr = fcmp ogt double %i.hq, %.1338.4
  br i1 %i.hr, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hs = fneg double %i.hq                       ; 2 uses
  %i.ht = fcmp olt double %.1338.4, %i.hs
  br i1 %i.ht, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %.1338.5 = phi double [ %.1338.4, %bb.bl ], [ %i.hs, %bb.bm ], [ %i.hq, %bb.bk ] ; 3 uses
  %.1336.5 = phi i32 [ %.1336.4, %bb.bl ], [ 14, %bb.bm ], [ 5, %bb.bk ]
  %i.hu = call double @llvm.fmuladd.f64(double %.1342, double -5.000000e-01, double %i.hg) ; 3 uses
  %i.hv = fcmp ogt double %i.hu, %.1338.5
  br i1 %i.hv, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hw = fneg double %i.hu                       ; 2 uses
  %i.hx = fcmp olt double %.1338.5, %i.hw
  br i1 %i.hx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %.1338.6 = phi double [ %.1338.5, %bb.bo ], [ %i.hw, %bb.bp ], [ %i.hu, %bb.bn ] ; 3 uses
  %.1336.6 = phi i32 [ %.1336.5, %bb.bo ], [ 15, %bb.bp ], [ 6, %bb.bn ]
  %i.hy = call double @llvm.fmuladd.f64(double %.1342, double -7.660000e-01, double %i.hb) ; 3 uses
  %i.hz = fcmp ogt double %i.hy, %.1338.6
  br i1 %i.hz, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ia = fneg double %i.hy                       ; 2 uses
  %i.ib = fcmp olt double %.1338.6, %i.ia
  br i1 %i.ib, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.1338.7 = phi double [ %.1338.6, %bb.br ], [ %i.ia, %bb.bs ], [ %i.hy, %bb.bq ] ; 2 uses
  %.1336.7 = phi i32 [ %.1336.6, %bb.br ], [ 16, %bb.bs ], [ 7, %bb.bq ]
  %i.ic = call double @llvm.fmuladd.f64(double %.1342, double f0xBFEE1205BC01A36E, double %i.gw) ; 2 uses
  %i.id = fcmp ogt double %i.ic, %.1338.7
  br i1 %i.id, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ie = fneg double %i.ic
  %i.if = fcmp olt double %.1338.7, %i.ie
  br i1 %i.if, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %.1336.8 = phi i32 [ %.1336.7, %bb.bu ], [ 17, %bb.bv ], [ 8, %bb.bt ] ; 4 uses
  %.1340 = select i1 %i.gq, double %i.fv, double %.0339
  %i.ig = uitofp nneg i32 %storemerge383503 to double
  %i.ih = fadd double %i.ig, 5.000000e-01
  %i.ii = fdiv double %i.ih, %i.bj
  %i.ij = fadd double %i.ii, -5.000000e-01        ; 2 uses
  %i.ik = call double @llvm.floor.f64(double %i.ij)
  %i.il = fptosi double %i.ik to i32              ; 6 uses
  %i.im = sitofp i32 %i.il to double
  %i.in = fsub double %i.ij, %i.im                ; 3 uses
  %i.io = fsub double 1.000000e+00, %i.in         ; 2 uses
  %sqrt = call double @llvm.sqrt.f64(double %.1340) ; 4 uses
  %i.ip = icmp sgt i32 %i.il, -1                  ; 2 uses
  %or.cond = select i1 %i.eh, i1 %i.ip, i1 false
  br i1 %or.cond, label %.thread, label %bb.bx

.thread:                                          ; preds = %bb.bw
  %i.iq = fmul double %i.eg, %i.io
  %i.ir = mul nuw nsw i32 %i.il, 18
  %i.is = zext nneg i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.is
  %i.iu = zext nneg i32 %.1336.8 to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !25
  %i.ix = call double @llvm.fmuladd.f64(double %i.iq, double %sqrt, double %i.iw)
  store double %i.ix, ptr %i.iv, align 8, !tbaa !25
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.eh, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %.thread, %bb.bx
  %i.iy = add nsw i32 %i.il, 1                    ; 2 uses
  %i.iz = icmp slt i32 %i.iy, %i.bn
  br i1 %i.iz, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ja = fmul double %i.eg, %i.in
  %i.jb = mul nsw i32 %i.iy, 18
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.jc
  %i.je = zext nneg i32 %.1336.8 to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.je ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !25
  %i.jh = call double @llvm.fmuladd.f64(double %i.ja, double %sqrt, double %i.jg)
  store double %i.jh, ptr %i.jf, align 8, !tbaa !25
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %or.cond3 = select i1 %i.em, i1 %i.ip, i1 false
  br i1 %or.cond3, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ji = fmul double %i.ef, %i.io
  %i.jj = mul nuw nsw i32 %i.il, 18
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.jk
  %i.jm = zext nneg i32 %.1336.8 to i64
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.jm ; 2 uses
  %i.jo = load double, ptr %i.jn, align 8, !tbaa !25
  %i.jp = call double @llvm.fmuladd.f64(double %i.ji, double %sqrt, double %i.jo)
  store double %i.jp, ptr %i.jn, align 8, !tbaa !25
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %i.em, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.jq = add nsw i32 %i.il, 1                    ; 2 uses
  %i.jr = icmp slt i32 %i.jq, %i.bn
  br i1 %i.jr, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.js = fmul double %i.ef, %i.in
  %i.jt = mul nsw i32 %i.jq, 18
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ju
  %i.jw = zext nneg i32 %.1336.8 to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jw ; 2 uses
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !25
  %i.jz = call double @llvm.fmuladd.f64(double %i.js, double %sqrt, double %i.jy)
  store double %i.jz, ptr %i.jx, align 8, !tbaa !25
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.ka = add nuw nsw i32 %storemerge383503, 1
  %exitcond.not = icmp eq i32 %storemerge383503, %i.du
  br i1 %exitcond.not, label %._crit_edge, label %bb.av, !llvm.loop !98

.preheader497:                                    ; preds = %._crit_edge510, %.preheader498
  %i.kb = sub nsw i32 %i.bv, %4                   ; 2 uses
  %i.kc = icmp slt i32 %4, %i.kb
  br i1 %i.kc, label %.preheader496.lr.ph, label %.preheader494

.preheader496.lr.ph:                              ; preds = %.preheader497
  %i.kd = sub nsw i32 %i.bs, %3                   ; 2 uses
  %i.ke = icmp slt i32 %3, %i.kd
  %i.kf = zext nneg i32 %3 to i64
  %i.kg = sub nsw i64 0, %i.kf                    ; 2 uses
  br i1 %i.ke, label %.preheader496.preheader, label %.preheader494

.preheader496.preheader:                          ; preds = %.preheader496.lr.ph
  %i.kh = zext nneg i32 %3 to i64
  %i.ki = zext nneg i32 %4 to i64                 ; 2 uses
  %wide.trip.count562 = zext nneg i32 %i.kb to i64
  %wide.trip.count557 = zext nneg i32 %i.kd to i64
  %invariant.op = sub i32 1, %3
  br label %.preheader496

bb.cg:                                            ; preds = %.lr.ph512, %._crit_edge510
  %indvars.iv = phi i64 [ 0, %.lr.ph512 ], [ %indvars.iv.next, %._crit_edge510 ] ; 8 uses
  %i.kj = mul i64 %i.et, %indvars.iv              ; 3 uses
  %i.kk = getelementptr i8, ptr %i.dg, i64 %i.kj
  %scevgep = getelementptr i8, ptr %i.kk, i64 8
  %i.kl = add i64 %i.eu, %i.kj
  %i.km = add i64 %i.ev, %i.kj
  %umax = call i64 @llvm.umax.i64(i64 %i.kl, i64 %i.km)
  %i.kn = mul i64 %i.ex, %indvars.iv
  %i.ko = add i64 %i.kn, %i.ew
  %i.kp = add i64 %umax, %i.ko                    ; 2 uses
  %i.kq = and i64 %i.kp, -8
  %scevgep637 = getelementptr i8, ptr %scevgep, i64 %i.kq
  %i.kr = mul i64 %i.ey, %indvars.iv
  %i.ks = getelementptr i8, ptr %i.de, i64 %i.kr
  %scevgep638 = getelementptr i8, ptr %i.ks, i64 144
  %i.kt = lshr i64 %i.kp, 3
  %i.ku = mul i64 %i.kt, 144
  %scevgep639 = getelementptr i8, ptr %scevgep638, i64 %i.ku
  %i.kv = mul i64 %i.cz, %indvars.iv
  %i.kw = getelementptr [8 x i8], ptr %i.dg, i64 %i.kv ; 6 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 %.idx
  br i1 %i.es, label %.lr.ph.preheader, label %._crit_edge510

.lr.ph.preheader:                                 ; preds = %bb.cg
  %22 = mul i64 %i.ez, %indvars.iv                ; 2 uses
  %23 = add i64 %21, %22
  %24 = add i64 %i.ev, %22
  %25 = mul i64 %20, %indvars.iv
  %26 = add i64 %25, %i.ew
  %i.ky = mul i64 %i.cy, %indvars.iv
  %i.kz = getelementptr [8 x i8], ptr %i.de, i64 %i.ky ; 6 uses
  %27 = call i64 @llvm.umax.i64(i64 %23, i64 %24)
  %28 = add i64 %27, %26
  %29 = lshr i64 %28, 3                           ; 2 uses
  %30 = add nuw nsw i64 %29, 1                    ; 2 uses
  %min.iters.check = icmp eq i64 %29, 0
  br i1 %min.iters.check, label %.lr.ph.preheader654, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %bound0 = icmp ult ptr %i.kw, %scevgep639
  %bound1 = icmp ult ptr %i.kz, %scevgep637
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader654, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %30, 4611686018427387902       ; 4 uses
  %i.la = shl i64 %n.vec, 3
  %i.lb = getelementptr i8, ptr %i.kw, i64 %i.la
  %i.lc = mul i64 %n.vec, 144
  %i.ld = getelementptr i8, ptr %i.kz, i64 %i.lc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.le = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.kw, i64 %i.le ; 10 uses
  %i.lf = mul i64 %index, 144                     ; 2 uses
  %next.gep641.a = getelementptr i8, ptr %i.kz, i64 %i.lf ; 18 uses
  %i.lg = getelementptr i8, ptr %i.kz, i64 %i.lf  ; 18 uses
  %next.gep642 = getelementptr i8, ptr %i.lg, i64 144
  store <2 x double> zeroinitializer, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.lh = load double, ptr %next.gep641.a, align 8, !tbaa !25, !alias.scope !102
  %i.li = load double, ptr %next.gep642, align 8, !tbaa !25, !alias.scope !102
  %i.lj = insertelement <2 x double> poison, double %i.lh, i64 0
  %i.lk = insertelement <2 x double> %i.lj, double %i.li, i64 1
  %i.ll = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 72
  %i.lm = getelementptr i8, ptr %i.lg, i64 216
  %i.ln = load double, ptr %i.ll, align 8, !tbaa !25, !alias.scope !102
  %i.lo = load double, ptr %i.lm, align 8, !tbaa !25, !alias.scope !102
  %i.lp = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.lq = insertelement <2 x double> %i.lp, double %i.lo, i64 1
  %i.lr = fadd <2 x double> %i.lk, %i.lq          ; 2 uses
  %i.ls = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lr, <2 x double> %i.lr, <2 x double> zeroinitializer) ; 2 uses
  store <2 x double> %i.ls, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.lt = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 8
  %i.lu = getelementptr i8, ptr %i.lg, i64 152
  %i.lv = load double, ptr %i.lt, align 8, !tbaa !25, !alias.scope !102
  %i.lw = load double, ptr %i.lu, align 8, !tbaa !25, !alias.scope !102
  %i.lx = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.ly = insertelement <2 x double> %i.lx, double %i.lw, i64 1
  %i.lz = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 80
  %i.ma = getelementptr i8, ptr %i.lg, i64 224
  %i.mb = load double, ptr %i.lz, align 8, !tbaa !25, !alias.scope !102
  %i.mc = load double, ptr %i.ma, align 8, !tbaa !25, !alias.scope !102
  %i.md = insertelement <2 x double> poison, double %i.mb, i64 0
  %i.me = insertelement <2 x double> %i.md, double %i.mc, i64 1
  %i.mf = fadd <2 x double> %i.ly, %i.me          ; 2 uses
  %i.mg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mf, <2 x double> %i.mf, <2 x double> %i.ls) ; 2 uses
  store <2 x double> %i.mg, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.mh = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 16
  %i.mi = getelementptr i8, ptr %i.lg, i64 160
  %i.mj = load double, ptr %i.mh, align 8, !tbaa !25, !alias.scope !102
  %i.mk = load double, ptr %i.mi, align 8, !tbaa !25, !alias.scope !102
  %i.ml = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.mk, i64 1
  %i.mn = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 88
  %i.mo = getelementptr i8, ptr %i.lg, i64 232
  %i.mp = load double, ptr %i.mn, align 8, !tbaa !25, !alias.scope !102
  %i.mq = load double, ptr %i.mo, align 8, !tbaa !25, !alias.scope !102
  %i.mr = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mq, i64 1
  %i.mt = fadd <2 x double> %i.mm, %i.ms          ; 2 uses
  %i.mu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mt, <2 x double> %i.mt, <2 x double> %i.mg) ; 2 uses
  store <2 x double> %i.mu, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.mv = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 24
  %i.mw = getelementptr i8, ptr %i.lg, i64 168
  %i.mx = load double, ptr %i.mv, align 8, !tbaa !25, !alias.scope !102
  %i.my = load double, ptr %i.mw, align 8, !tbaa !25, !alias.scope !102
  %i.mz = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.my, i64 1
  %i.nb = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 96
  %i.nc = getelementptr i8, ptr %i.lg, i64 240
  %i.nd = load double, ptr %i.nb, align 8, !tbaa !25, !alias.scope !102
  %i.ne = load double, ptr %i.nc, align 8, !tbaa !25, !alias.scope !102
  %i.nf = insertelement <2 x double> poison, double %i.nd, i64 0
  %i.ng = insertelement <2 x double> %i.nf, double %i.ne, i64 1
  %i.nh = fadd <2 x double> %i.na, %i.ng          ; 2 uses
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.nh, <2 x double> %i.mu) ; 2 uses
  store <2 x double> %i.ni, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.nj = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 32
  %i.nk = getelementptr i8, ptr %i.lg, i64 176
  %i.nl = load double, ptr %i.nj, align 8, !tbaa !25, !alias.scope !102
  %i.nm = load double, ptr %i.nk, align 8, !tbaa !25, !alias.scope !102
  %i.nn = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.no = insertelement <2 x double> %i.nn, double %i.nm, i64 1
  %i.np = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 104
  %i.nq = getelementptr i8, ptr %i.lg, i64 248
  %i.nr = load double, ptr %i.np, align 8, !tbaa !25, !alias.scope !102
  %i.ns = load double, ptr %i.nq, align 8, !tbaa !25, !alias.scope !102
  %i.nt = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nu = insertelement <2 x double> %i.nt, double %i.ns, i64 1
  %i.nv = fadd <2 x double> %i.no, %i.nu          ; 2 uses
  %i.nw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nv, <2 x double> %i.nv, <2 x double> %i.ni) ; 2 uses
  store <2 x double> %i.nw, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.nx = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 40
  %i.ny = getelementptr i8, ptr %i.lg, i64 184
  %i.nz = load double, ptr %i.nx, align 8, !tbaa !25, !alias.scope !102
  %i.oa = load double, ptr %i.ny, align 8, !tbaa !25, !alias.scope !102
  %i.ob = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.oc = insertelement <2 x double> %i.ob, double %i.oa, i64 1
  %i.od = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 112
  %i.oe = getelementptr i8, ptr %i.lg, i64 256
  %i.of = load double, ptr %i.od, align 8, !tbaa !25, !alias.scope !102
  %i.og = load double, ptr %i.oe, align 8, !tbaa !25, !alias.scope !102
  %i.oh = insertelement <2 x double> poison, double %i.of, i64 0
  %i.oi = insertelement <2 x double> %i.oh, double %i.og, i64 1
  %i.oj = fadd <2 x double> %i.oc, %i.oi          ; 2 uses
  %i.ok = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oj, <2 x double> %i.oj, <2 x double> %i.nw) ; 2 uses
  store <2 x double> %i.ok, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.ol = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 48
  %i.om = getelementptr i8, ptr %i.lg, i64 192
  %i.on = load double, ptr %i.ol, align 8, !tbaa !25, !alias.scope !102
  %i.oo = load double, ptr %i.om, align 8, !tbaa !25, !alias.scope !102
  %i.op = insertelement <2 x double> poison, double %i.on, i64 0
  %i.oq = insertelement <2 x double> %i.op, double %i.oo, i64 1
  %i.or = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 120
  %i.os = getelementptr i8, ptr %i.lg, i64 264
  %i.ot = load double, ptr %i.or, align 8, !tbaa !25, !alias.scope !102
  %i.ou = load double, ptr %i.os, align 8, !tbaa !25, !alias.scope !102
  %i.ov = insertelement <2 x double> poison, double %i.ot, i64 0
  %i.ow = insertelement <2 x double> %i.ov, double %i.ou, i64 1
  %i.ox = fadd <2 x double> %i.oq, %i.ow          ; 2 uses
  %i.oy = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ox, <2 x double> %i.ox, <2 x double> %i.ok) ; 2 uses
  store <2 x double> %i.oy, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.oz = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 56
  %i.pa = getelementptr i8, ptr %i.lg, i64 200
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !25, !alias.scope !102
  %i.pc = load double, ptr %i.pa, align 8, !tbaa !25, !alias.scope !102
  %i.pd = insertelement <2 x double> poison, double %i.pb, i64 0
  %i.pe = insertelement <2 x double> %i.pd, double %i.pc, i64 1
  %i.pf = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 128
  %i.pg = getelementptr i8, ptr %i.lg, i64 272
  %i.ph = load double, ptr %i.pf, align 8, !tbaa !25, !alias.scope !102
  %i.pi = load double, ptr %i.pg, align 8, !tbaa !25, !alias.scope !102
  %i.pj = insertelement <2 x double> poison, double %i.ph, i64 0
  %i.pk = insertelement <2 x double> %i.pj, double %i.pi, i64 1
  %i.pl = fadd <2 x double> %i.pe, %i.pk          ; 2 uses
  %i.pm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pl, <2 x double> %i.pl, <2 x double> %i.oy) ; 2 uses
  store <2 x double> %i.pm, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %i.pn = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 64
  %i.po = getelementptr i8, ptr %i.lg, i64 208
  %i.pp = load double, ptr %i.pn, align 8, !tbaa !25, !alias.scope !102
  %i.pq = load double, ptr %i.po, align 8, !tbaa !25, !alias.scope !102
  %i.pr = insertelement <2 x double> poison, double %i.pp, i64 0
  %i.ps = insertelement <2 x double> %i.pr, double %i.pq, i64 1
  %i.pt = getelementptr inbounds nuw i8, ptr %next.gep641.a, i64 136
  %i.pu = getelementptr i8, ptr %i.lg, i64 280
  %i.pv = load double, ptr %i.pt, align 8, !tbaa !25, !alias.scope !102
  %i.pw = load double, ptr %i.pu, align 8, !tbaa !25, !alias.scope !102
  %i.px = insertelement <2 x double> poison, double %i.pv, i64 0
  %i.py = insertelement <2 x double> %i.px, double %i.pw, i64 1
  %i.pz = fadd <2 x double> %i.ps, %i.py          ; 2 uses
  %i.qa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pz, <2 x double> %i.pz, <2 x double> %i.pm)
  store <2 x double> %i.qa, ptr %next.gep, align 8, !tbaa !25, !alias.scope !99, !noalias !102
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.qb = icmp eq i64 %index.next, %n.vec
  br i1 %i.qb, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %30, %n.vec
  br i1 %cmp.n, label %._crit_edge510, label %.lr.ph.preheader654

.lr.ph.preheader654:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.0330508.ph = phi ptr [ %i.kw, %vector.memcheck ], [ %i.kw, %.lr.ph.preheader ], [ %i.lb, %middle.block ]
  %.0331507.ph = phi ptr [ %i.kz, %vector.memcheck ], [ %i.kz, %.lr.ph.preheader ], [ %i.ld, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader654, %.lr.ph
  %.0330508 = phi ptr [ %i.sd, %.lr.ph ], [ %.0330508.ph, %.lr.ph.preheader654 ] ; 11 uses
  %.0331507 = phi ptr [ %i.se, %.lr.ph ], [ %.0331507.ph, %.lr.ph.preheader654 ] ; 19 uses
  store double 0.000000e+00, ptr %.0330508, align 8, !tbaa !25
  %i.qc = load double, ptr %.0331507, align 8, !tbaa !25
  %i.qd = getelementptr inbounds nuw i8, ptr %.0331507, i64 72
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !25
  %i.qf = fadd double %i.qc, %i.qe                ; 2 uses
  %i.qg = call double @llvm.fmuladd.f64(double %i.qf, double %i.qf, double 0.000000e+00) ; 2 uses
  store double %i.qg, ptr %.0330508, align 8, !tbaa !25
  %i.qh = getelementptr inbounds nuw i8, ptr %.0331507, i64 8
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !25
  %i.qj = getelementptr inbounds nuw i8, ptr %.0331507, i64 80
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !25
  %i.ql = fadd double %i.qi, %i.qk                ; 2 uses
  %i.qm = call double @llvm.fmuladd.f64(double %i.ql, double %i.ql, double %i.qg) ; 2 uses
  store double %i.qm, ptr %.0330508, align 8, !tbaa !25
  %i.qn = getelementptr inbounds nuw i8, ptr %.0331507, i64 16
  %i.qo = load double, ptr %i.qn, align 8, !tbaa !25
  %i.qp = getelementptr inbounds nuw i8, ptr %.0331507, i64 88
  %i.qq = load double, ptr %i.qp, align 8, !tbaa !25
  %i.qr = fadd double %i.qo, %i.qq                ; 2 uses
  %i.qs = call double @llvm.fmuladd.f64(double %i.qr, double %i.qr, double %i.qm) ; 2 uses
  store double %i.qs, ptr %.0330508, align 8, !tbaa !25
  %i.qt = getelementptr inbounds nuw i8, ptr %.0331507, i64 24
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !25
  %i.qv = getelementptr inbounds nuw i8, ptr %.0331507, i64 96
  %i.qw = load double, ptr %i.qv, align 8, !tbaa !25
  %i.qx = fadd double %i.qu, %i.qw                ; 2 uses
  %i.qy = call double @llvm.fmuladd.f64(double %i.qx, double %i.qx, double %i.qs) ; 2 uses
  store double %i.qy, ptr %.0330508, align 8, !tbaa !25
  %i.qz = getelementptr inbounds nuw i8, ptr %.0331507, i64 32
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !25
  %i.rb = getelementptr inbounds nuw i8, ptr %.0331507, i64 104
  %i.rc = load double, ptr %i.rb, align 8, !tbaa !25
  %i.rd = fadd double %i.ra, %i.rc                ; 2 uses
  %i.re = call double @llvm.fmuladd.f64(double %i.rd, double %i.rd, double %i.qy) ; 2 uses
  store double %i.re, ptr %.0330508, align 8, !tbaa !25
  %i.rf = getelementptr inbounds nuw i8, ptr %.0331507, i64 40
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !25
  %i.rh = getelementptr inbounds nuw i8, ptr %.0331507, i64 112
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !25
  %i.rj = fadd double %i.rg, %i.ri                ; 2 uses
  %i.rk = call double @llvm.fmuladd.f64(double %i.rj, double %i.rj, double %i.re) ; 2 uses
  store double %i.rk, ptr %.0330508, align 8, !tbaa !25
  %i.rl = getelementptr inbounds nuw i8, ptr %.0331507, i64 48
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !25
  %i.rn = getelementptr inbounds nuw i8, ptr %.0331507, i64 120
  %i.ro = load double, ptr %i.rn, align 8, !tbaa !25
  %i.rp = fadd double %i.rm, %i.ro                ; 2 uses
  %i.rq = call double @llvm.fmuladd.f64(double %i.rp, double %i.rp, double %i.rk) ; 2 uses
  store double %i.rq, ptr %.0330508, align 8, !tbaa !25
  %i.rr = getelementptr inbounds nuw i8, ptr %.0331507, i64 56
  %i.rs = load double, ptr %i.rr, align 8, !tbaa !25
  %i.rt = getelementptr inbounds nuw i8, ptr %.0331507, i64 128
  %i.ru = load double, ptr %i.rt, align 8, !tbaa !25
  %i.rv = fadd double %i.rs, %i.ru                ; 2 uses
  %i.rw = call double @llvm.fmuladd.f64(double %i.rv, double %i.rv, double %i.rq) ; 2 uses
  store double %i.rw, ptr %.0330508, align 8, !tbaa !25
  %i.rx = getelementptr inbounds nuw i8, ptr %.0331507, i64 64
  %i.ry = load double, ptr %i.rx, align 8, !tbaa !25
  %i.rz = getelementptr inbounds nuw i8, ptr %.0331507, i64 136
  %i.sa = load double, ptr %i.rz, align 8, !tbaa !25
  %i.sb = fadd double %i.ry, %i.sa                ; 2 uses
  %i.sc = call double @llvm.fmuladd.f64(double %i.sb, double %i.sb, double %i.rw)
  store double %i.sc, ptr %.0330508, align 8, !tbaa !25
  %i.sd = getelementptr inbounds nuw i8, ptr %.0330508, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.0331507, i64 144
  %i.sf = icmp ult ptr %i.sd, %i.kx
  br i1 %i.sf, label %.lr.ph, label %._crit_edge510, !llvm.loop !107

._crit_edge510:                                   ; preds = %.lr.ph, %middle.block, %bb.cg
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next, %.sroa.11.0.insert.ext
  br i1 %exitcond550.not, label %.preheader497, label %bb.cg, !llvm.loop !108

.preheader496:                                    ; preds = %.preheader496.preheader, %._crit_edge525
  %indvars.iv559 = phi i64 [ %i.ki, %.preheader496.preheader ], [ %indvars.iv.next560, %._crit_edge525 ] ; 3 uses
  %i.sg = mul i64 %i.da, %indvars.iv559
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.sg
  %i.si = sub nuw nsw i64 %indvars.iv559, %i.ki   ; 2 uses
  %i.sj = add nuw nsw i64 %i.si, 1                ; 2 uses
  %i.sk = mul i64 %i.cz, %i.sj
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.sk ; 2 uses
  %i.sm = mul i64 %i.cz, %i.si
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.sm ; 2 uses
  %invariant.gep526 = getelementptr [8 x i8], ptr %i.sl, i64 %i.kg
  %invariant.gep528 = getelementptr [8 x i8], ptr %i.sn, i64 %i.kg
  %i.so = mul i64 %i.cy, %i.sj
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.so
  br label %bb.ch

.preheader494:                                    ; preds = %._crit_edge525, %.preheader496.lr.ph, %.preheader497
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sr = load i32, ptr %i.sq, align 8, !tbaa !96 ; 3 uses
  %i.ss = icmp sgt i32 %i.sr, 0
  br i1 %i.ss, label %.preheader.lr.ph, label %._crit_edge537.split

.preheader.lr.ph:                                 ; preds = %.preheader494
  %i.st = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.su = load i32, ptr %i.st, align 4, !tbaa !95 ; 5 uses
  %i.sv = icmp sgt i32 %i.su, 0
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  br i1 %i.sv, label %.preheader.preheader, label %._crit_edge537.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.sx = shl nsw i32 %3, 5                       ; 2 uses
  %i.sy = sub nsw i32 %i.su, %i.sx
  %i.sz = sub nsw i32 %i.sr, %4
  %i.ta = zext nneg i32 %i.su to i64
  %i.tb = zext nneg i32 %i.sx to i64              ; 3 uses
  %i.tc = sext i32 %i.sy to i64                   ; 3 uses
  %i.td = sext i32 %i.sz to i64
  %i.te = zext nneg i32 %4 to i64
  %wide.trip.count576 = zext nneg i32 %i.sr to i64
  %i.tf = add nsw i64 %i.ta, -1                   ; 2 uses
  %i.tg = lshr i64 %i.tf, 5                       ; 2 uses
  %i.th = add nuw nsw i64 %i.tg, 1                ; 6 uses
  %xtraiter = and i64 %i.th, 3                    ; 3 uses
  %i.ti = icmp ult i32 %i.su, 97
  %unroll_iter = and i64 %i.th, 1152921504606846972
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod655 = icmp ne i64 %xtraiter, 0
  %xtraiter656 = and i64 %i.th, 7                 ; 3 uses
  %i.tj = icmp ult i32 %i.su, 225
  %unroll_iter660 = and i64 %i.th, 1152921504606846968
  %lcmp.mod658.not = icmp eq i64 %xtraiter656, 0
  %lcmp.mod659 = icmp ne i64 %xtraiter656, 0
  %i.tk = icmp eq i64 %i.tg, 0
  %unroll_iter666 = and i64 %i.th, 1152921504606846974
  %i.tl = and i64 %i.tf, 32
  %lcmp.mod664.not.not = icmp eq i64 %i.tl, 0
  %lcmp.mod665 = trunc i64 %i.th to i1
  br label %.preheader

._crit_edge525:                                   ; preds = %.preheader495
  %indvars.iv.next560 = add nuw nsw i64 %indvars.iv559, 1 ; 2 uses
  %exitcond563.not = icmp eq i64 %indvars.iv.next560, %wide.trip.count562
  br i1 %exitcond563.not, label %.preheader494, label %.preheader496, !llvm.loop !109

bb.ch:                                            ; preds = %.preheader496, %.preheader495
  %indvars.iv553 = phi i64 [ %i.kh, %.preheader496 ], [ %indvars.iv.next554, %.preheader495 ] ; 5 uses
  %.idx624 = shl nsw i64 %indvars.iv553, 8
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sh, i64 %.idx624
  %i.tn = trunc i64 %indvars.iv553 to i32
  %.reass.reass.reass = add i32 %i.tn, %invariant.op ; 2 uses
  %i.to = sext i32 %.reass.reass.reass to i64     ; 2 uses
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.sl, i64 %i.to ; 3 uses
  %i.tq = load double, ptr %i.tp, align 8, !tbaa !25
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !25
  %i.tt = fadd double %i.tq, %i.ts
  %i.tu = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %i.cz ; 2 uses
  %i.tv = load double, ptr %i.tu, align 8, !tbaa !25
  %i.tw = fadd double %i.tt, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !25
  %i.tz = fadd double %i.tw, %i.ty
  %i.ua = fadd double %i.tz, 1.000000e-04
  %i.ub = call double @sqrt(double noundef %i.ua) #18
  %i.uc = getelementptr inbounds [8 x i8], ptr %i.sn, i64 %i.to ; 3 uses
  %i.ud = load double, ptr %i.uc, align 8, !tbaa !25
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.uf = load double, ptr %i.ue, align 8, !tbaa !25
  %i.ug = fadd double %i.ud, %i.uf
  %i.uh = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.cz ; 2 uses
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !25
  %i.uj = fadd double %i.ug, %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uh, i64 8
  %i.ul = load double, ptr %i.uk, align 8, !tbaa !25
  %i.um = fadd double %i.uj, %i.ul
  %i.un = fadd double %i.um, 1.000000e-04
  %i.uo = call double @sqrt(double noundef %i.un) #18
  %gep527 = getelementptr [8 x i8], ptr %invariant.gep526, i64 %indvars.iv553 ; 3 uses
  %i.up = load double, ptr %gep527, align 8, !tbaa !25
  %i.uq = getelementptr inbounds nuw i8, ptr %gep527, i64 8
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !25
  %i.us = fadd double %i.up, %i.ur
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %gep527, i64 %i.cz ; 2 uses
  %i.uu = load double, ptr %i.ut, align 8, !tbaa !25
  %i.uv = fadd double %i.us, %i.uu
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 8
  %i.ux = load double, ptr %i.uw, align 8, !tbaa !25
  %i.uy = fadd double %i.uv, %i.ux
  %i.uz = fadd double %i.uy, 1.000000e-04
  %i.va = call double @sqrt(double noundef %i.uz) #18
  %i.vb = insertelement <2 x double> poison, double %i.uo, i64 0
  %i.vc = insertelement <2 x double> %i.vb, double %i.va, i64 1
  %i.vd = fdiv <2 x double> splat (double 1.000000e+00), %i.vc ; 4 uses
  %gep529 = getelementptr [8 x i8], ptr %invariant.gep528, i64 %indvars.iv553 ; 3 uses
  %i.ve = load double, ptr %gep529, align 8, !tbaa !25
  %i.vf = getelementptr inbounds nuw i8, ptr %gep529, i64 8
  %i.vg = load double, ptr %i.vf, align 8, !tbaa !25
end_hunk_0
