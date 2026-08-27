Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ann_mlp?download=true
inline.NumInlined: 1164
inline.NumDeleted: 373
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv2ml11ANN_MLPImpl16prepare_to_trainERKNS_3MatES4_RS2_i:bb.a
bb.u:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !149
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !149
  %.not31 = icmp eq i32 %i.am, %i.ao
  br i1 %.not31, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -209, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv2ml11ANN_MLPImpl16prepare_to_trainERKNS_3MatES4_RS2_i, ptr noundef nonnull @.str.1, i32 noundef 839) #20
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

bb.z:                                             ; preds = %bb.w
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.z
  %i.au = load i64, ptr %i.as, align 8, !tbaa !31
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.y
  %.pn37 = phi { ptr, i32 } [ %i.ap, %bb.y ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.aq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.ak

bb.aa:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.aw, align 8, !tbaa !73
  %i.ax = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %i.ax, align 4, !tbaa !74
  store i32 16842752, ptr %15, align 8, !tbaa !66
  %i.ay = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %3, ptr %i.ay, align 8, !tbaa !69
  invoke void @_ZN2cv3sumERKNS_11_InputArrayE(ptr dead_on_unwind nonnull writable sret(%"class.cv::Scalar_") align 8 %14, ptr noundef nonnull align 8 dereferenceable(24) %15)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.az = load double, ptr %14, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 0, ptr %i.bb, align 8
  store i32 33619968, ptr %16, align 8, !tbaa !66
  store ptr %13, ptr %i.ba, align 8, !tbaa !69
  %i.bc = fdiv double 1.000000e+00, %i.az
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef 6, double noundef %i.bc, double noundef 0.000000e+00)
          to label %bb.ac unwind label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.bd = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %13)
          to label %bb.ad unwind label %bb.ai     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN2cv2ml11ANN_MLPImpl16calc_input_scaleERKNS_3MatEi(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %4)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN2cv2ml11ANN_MLPImpl17calc_output_scaleERKNS_3MatEi(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %4)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  ret void

bb.ag:                                            ; preds = %bb.aa
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ab
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.pn35 = phi { ptr, i32 } [ %i.bg, %bb.ai ], [ %i.bf, %bb.ah ], [ %i.be, %bb.ag ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48 ], [ %.pn39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51 ], [ %.pn37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ], [ %.pn35, %bb.aj ]
  resume { ptr, i32 } %.pn43.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv2ml11ANN_MLPImpl12init_weightsEv(ptr noundef nonnull align 8 dereferenceable(296) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !75
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !76   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge69

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.n = add nuw nsw i64 %i.h, 4294967295
  %i.o = and i64 %i.n, 4294967295
  %wide.trip.count102 = and i64 %i.h, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %._crit_edge62
  %indvars.iv99 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next100, %._crit_edge62 ] ; 4 uses
  %i.p = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv99 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !88   ; 6 uses
  %i.s = load i32, ptr %i.p, align 4, !tbaa !88   ; 9 uses
  %i.t = icmp sgt i32 %i.s, 2
  br i1 %i.t, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.u = add nsw i32 %i.s, -1
  %i.v = uitofp nneg i32 %i.u to double
  %i.w = fdiv double 1.000000e+00, %i.v
  %i.x = sitofp i32 %i.r to double
  %i.y = tail call noundef double @pow(double noundef %i.x, double noundef %i.w) #19
  %i.z = fmul double %i.y, f0x3FE6666666666666
  br label %.preheader.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp sgt i32 %i.s, 0
  br i1 %i.aa, label %.preheader.lr.ph, label %._crit_edge62

.preheader.lr.ph:                                 ; preds = %.thread, %bb.c
  %i.ab = phi double [ %i.z, %.thread ], [ 1.000000e+00, %bb.c ] ; 3 uses
  %.pn = getelementptr inbounds nuw [208 x i8], ptr %i.l, i64 %indvars.iv99
  %.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %i.ac = load ptr, ptr %.in, align 8, !tbaa !84  ; 4 uses
  %.not51 = icmp slt i32 %i.r, 0
  %i.ad = icmp samesign ult i64 %indvars.iv99, %i.o ; 2 uses
  %i.ae = uitofp nneg i32 %i.s to double          ; 3 uses
  %i.af = mul nsw i32 %i.s, %i.r                  ; 2 uses
  br i1 %.not51, label %.preheader.lr.ph.split.us, label %.preheader.lr.ph.split

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  br i1 %i.ad, label %.preheader.us.us.preheader, label %._crit_edge62

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.us
  %i.ag = sext i32 %i.af to i64
  %wide.trip.count97 = zext nneg i32 %i.s to i64  ; 3 uses
  %invariant.gep113 = getelementptr [8 x i8], ptr %i.ac, i64 %i.ag ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 2
  br i1 %min.iters.check, label %.preheader.us.us.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us.preheader
  %n.vec = and i64 %wide.trip.count97, 2147483646 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ae, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <2 x double> poison, double %i.ab, i64 0
  %broadcast.splat118 = shufflevector <2 x double> %broadcast.splatinsert117, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ah = shl <2 x i32> %vec.ind, splat (i32 1)
  %i.ai = uitofp <2 x i32> %i.ah to <2 x double>
  %i.aj = fdiv <2 x double> %i.ai, %broadcast.splat
  %i.ak = fadd <2 x double> %i.aj, splat (double -1.000000e+00)
  %i.al = fmul <2 x double> %broadcast.splat118, %i.ak
  %i.am = getelementptr [8 x i8], ptr %invariant.gep113, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !102
  %i.an = fmul <2 x double> %i.al, %wide.load
  store <2 x double> %i.an, ptr %i.am, align 8, !tbaa !102
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !211

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count97
  br i1 %cmp.n, label %._crit_edge62, label %.preheader.us.us.preheader134

.preheader.us.us.preheader134:                    ; preds = %.preheader.us.us.preheader, %middle.block
  %indvars.iv94.ph = phi i64 [ 0, %.preheader.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader134, %.preheader.us.us
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %.preheader.us.us ], [ %indvars.iv94.ph, %.preheader.us.us.preheader134 ] ; 3 uses
  %indvars.iv94.tr = trunc i64 %indvars.iv94 to i32
  %i.ap = shl i32 %indvars.iv94.tr, 1
  %i.aq = uitofp i32 %i.ap to double
  %i.ar = fdiv double %i.aq, %i.ae
  %i.as = fadd double %i.ar, -1.000000e+00
  %i.at = fmul double %i.ab, %i.as
  %gep114 = getelementptr [8 x i8], ptr %invariant.gep113, i64 %indvars.iv94 ; 2 uses
  %i.au = load double, ptr %gep114, align 8, !tbaa !102
  %i.av = fmul double %i.at, %i.au
  store double %i.av, ptr %gep114, align 8, !tbaa !102
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %._crit_edge62, label %.preheader.us.us, !llvm.loop !212

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %.promoted63 = load i64, ptr %i.m, align 8, !tbaa !213
  %i.aw = zext nneg i32 %i.s to i64               ; 7 uses
  %i.ax = add nuw i32 %i.r, 1
  %i.ay = zext nneg i32 %i.af to i64
  %wide.trip.count = zext i32 %i.ax to i64        ; 5 uses
  %invariant.gep111 = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ay
  %i.az = zext nneg i32 %i.r to i64
  %min.iters.check120 = icmp ugt i32 %i.r, 2
  %ident.check.not = icmp eq i32 %i.s, 1
  %or.cond = and i1 %min.iters.check120, %ident.check.not
  %n.vec122 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n131 = icmp eq i64 %n.vec122, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %bb.e
  %indvars.iv79 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next80, %bb.e ] ; 5 uses
  %.lcssa64 = phi i64 [ %.promoted63, %.preheader.lr.ph.split ], [ %i.bj, %bb.e ]
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv79
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.ba = phi i64 [ %.lcssa64, %.preheader ], [ %i.bj, %bb.d ] ; 2 uses
  %.053 = phi double [ 0.000000e+00, %.preheader ], [ %i.br, %bb.d ]
  %i.bb = and i64 %i.ba, 4294967295
  %i.bc = mul nuw i64 %i.bb, 4164903690
  %i.bd = lshr i64 %i.ba, 32
  %i.be = add nuw i64 %i.bc, %i.bd                ; 3 uses
  %i.bf = shl i64 %i.be, 32
  %i.bg = and i64 %i.be, 4294967295
  %i.bh = mul nuw i64 %i.bg, 4164903690
  %i.bi = lshr i64 %i.be, 32
  %i.bj = add nuw i64 %i.bh, %i.bi                ; 4 uses
  %i.bk = and i64 %i.bj, 4294967295
  %i.bl = or disjoint i64 %i.bk, %i.bf
  %i.bm = uitofp i64 %i.bl to double
  %i.bn = fmul nnan double %i.bm, f0x3BF0000000000000
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bn, double 2.000000e+00, double -1.000000e+00) ; 2 uses
  %i.bp = mul nuw nsw i64 %indvars.iv, %i.aw
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bp
  store double %i.bo, ptr %gep, align 8, !tbaa !102
  %i.bq = tail call double @llvm.fabs.f64(double %i.bo) ; 2 uses
  %i.br = fadd double %.053, %i.bq                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !214

._crit_edge:                                      ; preds = %bb.d
  br i1 %i.ad, label %.lr.ph58.preheader, label %bb.e

.lr.ph58.preheader:                               ; preds = %._crit_edge
  %i.bs = fsub double %i.br, %i.bq
  %i.bt = fdiv double 1.000000e+00, %i.bs         ; 6 uses
  %invariant.gep109 = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv79 ; 6 uses
  br i1 %or.cond, label %vector.ph121, label %.lr.ph58.preheader133

vector.ph121:                                     ; preds = %.lr.ph58.preheader
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %i.bt, i64 0
  %broadcast.splat124 = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph121
  %index126 = phi i64 [ 0, %vector.ph121 ], [ %index.next129, %vector.body125 ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep109, i64 %index126 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %wide.load127 = load <2 x double>, ptr %i.bu, align 8, !tbaa !102
  %wide.load128 = load <2 x double>, ptr %i.bv, align 8, !tbaa !102
  %i.bw = fmul <2 x double> %broadcast.splat124, %wide.load127
  %i.bx = fmul <2 x double> %broadcast.splat124, %wide.load128
  store <2 x double> %i.bw, ptr %i.bu, align 8, !tbaa !102
  store <2 x double> %i.bx, ptr %i.bv, align 8, !tbaa !102
  %index.next129 = add nuw i64 %index126, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next129, %n.vec122
  br i1 %i.by, label %middle.block130, label %vector.body125, !llvm.loop !215

middle.block130:                                  ; preds = %vector.body125
  br i1 %cmp.n131, label %._crit_edge59, label %.lr.ph58.preheader133

.lr.ph58.preheader133:                            ; preds = %.lr.ph58.preheader, %middle.block130
  %indvars.iv74.ph = phi i64 [ 0, %.lr.ph58.preheader ], [ %n.vec122, %middle.block130 ] ; 3 uses
  %i.bz = sub nsw i64 %i.az, %indvars.iv74.ph
  br i1 %lcmp.mod.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol

.lr.ph58.prol:                                    ; preds = %.lr.ph58.preheader133, %.lr.ph58.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph58.prol ], [ %indvars.iv74.ph, %.lr.ph58.preheader133 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph58.prol ], [ 0, %.lr.ph58.preheader133 ]
  %i.ca = mul nuw nsw i64 %indvars.iv74.prol, %i.aw
  %gep110.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep109, i64 %i.ca ; 2 uses
  %i.cb = load double, ptr %gep110.prol, align 8, !tbaa !102
  %i.cc = fmul double %i.bt, %i.cb
  store double %i.cc, ptr %gep110.prol, align 8, !tbaa !102
  %indvars.iv.next75.prol = add nuw nsw i64 %indvars.iv74.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph58.prol.loopexit, label %.lr.ph58.prol, !llvm.loop !216

.lr.ph58.prol.loopexit:                           ; preds = %.lr.ph58.prol, %.lr.ph58.preheader133
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph58.preheader133 ], [ %indvars.iv.next75.prol, %.lr.ph58.prol ]
  %i.cd = icmp ult i64 %i.bz, 3
  br i1 %i.cd, label %._crit_edge59, label %.lr.ph58

.lr.ph58:                                         ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph58 ], [ %indvars.iv74.unr, %.lr.ph58.prol.loopexit ] ; 5 uses
  %i.ce = mul nuw nsw i64 %indvars.iv74, %i.aw
  %gep110 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep109, i64 %i.ce ; 2 uses
  %i.cf = load double, ptr %gep110, align 8, !tbaa !102
  %i.cg = fmul double %i.bt, %i.cf
  store double %i.cg, ptr %gep110, align 8, !tbaa !102
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %i.ch = mul nuw nsw i64 %indvars.iv.next75, %i.aw
  %gep110.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep109, i64 %i.ch ; 2 uses
  %i.ci = load double, ptr %gep110.1, align 8, !tbaa !102
  %i.cj = fmul double %i.bt, %i.ci
  store double %i.cj, ptr %gep110.1, align 8, !tbaa !102
  %indvars.iv.next75.1 = add nuw nsw i64 %indvars.iv74, 2
  %i.ck = mul nuw nsw i64 %indvars.iv.next75.1, %i.aw
  %gep110.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep109, i64 %i.ck ; 2 uses
  %i.cl = load double, ptr %gep110.2, align 8, !tbaa !102
  %i.cm = fmul double %i.bt, %i.cl
  store double %i.cm, ptr %gep110.2, align 8, !tbaa !102
  %indvars.iv.next75.2 = add nuw nsw i64 %indvars.iv74, 3
  %i.cn = mul nuw nsw i64 %indvars.iv.next75.2, %i.aw
  %gep110.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep109, i64 %i.cn ; 2 uses
  %i.co = load double, ptr %gep110.3, align 8, !tbaa !102
  %i.cp = fmul double %i.bt, %i.co
  store double %i.cp, ptr %gep110.3, align 8, !tbaa !102
  %indvars.iv.next75.3 = add nuw nsw i64 %indvars.iv74, 4 ; 2 uses
  %exitcond78.not.3 = icmp eq i64 %indvars.iv.next75.3, %wide.trip.count
  br i1 %exitcond78.not.3, label %._crit_edge59, label %.lr.ph58, !llvm.loop !218

._crit_edge59:                                    ; preds = %.lr.ph58.prol.loopexit, %.lr.ph58, %middle.block130
  %indvars.iv79.tr = trunc i64 %indvars.iv79 to i32
  %i.cq = shl i32 %indvars.iv79.tr, 1
  %i.cr = uitofp i32 %i.cq to double
  %i.cs = fdiv double %i.cr, %i.ae
  %i.ct = fadd double %i.cs, -1.000000e+00
  %i.cu = fmul double %i.ab, %i.ct
  %gep112 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep111, i64 %indvars.iv79 ; 2 uses
  %i.cv = load double, ptr %gep112, align 8, !tbaa !102
  %i.cw = fmul double %i.cu, %i.cv
  store double %i.cw, ptr %gep112, align 8, !tbaa !102
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge59, %._crit_edge
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %i.aw
  br i1 %exitcond83.not, label %._crit_edge62.split, label %.preheader, !llvm.loop !219

._crit_edge62.split:                              ; preds = %bb.e
  store i64 %i.bj, ptr %i.m, align 8, !tbaa !213
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.preheader.us.us, %middle.block, %._crit_edge62.split, %.preheader.lr.ph.split.us, %bb.c
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge69, label %bb.b, !llvm.loop !220

._crit_edge69:                                    ; preds = %._crit_edge62, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv2ml11ANN_MLPImpl14train_backpropERKNS_3MatES4_S4_NS_12TermCriteriaE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i64 %4, double %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cv::Range", align 4         ; 5 uses
  %7 = alloca %"class.cv::Range", align 8         ; 4 uses
  %8 = alloca %"class.cv::Range", align 4         ; 5 uses
  %9 = alloca %"class.cv::Range", align 8         ; 4 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator", align 1   ; 3 uses
  %12 = alloca %"class.std::vector.25", align 8   ; 10 uses
  %13 = alloca %"class.std::vector.25", align 8   ; 11 uses
  %14 = alloca %"class.std::vector.11", align 8   ; 10 uses
  %15 = alloca %"class.cv::MatExpr", align 8      ; 10 uses
  %16 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %17 = alloca %"class.cv::AutoBuffer", align 8   ; 9 uses
  %i.a = alloca [2 x ptr], align 16               ; 7 uses
  %18 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %20 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %22 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %23 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %24 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %25 = alloca %"class.cv::Mat", align 8          ; 12 uses
  %26 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %27 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %28 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %29 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %30 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %31 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %32 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %33 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %34 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %35 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %36 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %37 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %38 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %39 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %40 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %41 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %42 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %.sroa.2.0.extract.shift = lshr i64 %4, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = load i32, ptr %1, align 8, !tbaa !77
  %i.c = and i32 %i.b, 4095
  %i.d = load i32, ptr %2, align 8, !tbaa !77
  %i.e = and i32 %i.d, 4095
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !149  ; 11 uses
  %i.h = mul i32 %i.g, %.sroa.2.0.extract.trunc   ; 3 uses
  %i.i = and i64 %4, 2
  %.not = icmp eq i64 %i.i, 0
  %i.j = sitofp i32 %i.g to double                ; 2 uses
  %i.k = fmul double %5, %i.j
  %i.l = select i1 %.not, double 0.000000e+00, double %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !76   ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = lshr i64 %i.s, 2                         ; 4 uses
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = load i32, ptr %i.p, align 4, !tbaa !88   ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !88   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %sext = shl i64 %i.s, 30                        ; 3 uses
  %i.y = ashr i64 %sext, 32                       ; 8 uses
  %i.z = icmp ugt i64 %i.y, 384307168202282325
  br i1 %i.z, label %.noexc, label %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #20
  unreachable

_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.aa = mul nuw nsw i64 %i.y, 24                ; 6 uses
  %i.ab = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #17 ; 5 uses
  store ptr %i.ab, ptr %12, align 8, !tbaa !221
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ab, i8 0, i64 %i.aa, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.ab, i64 %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !224
  store ptr %scevgep.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #17
          to label %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i unwind label %bb.r ; 5 uses

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i: ; preds = %_ZNSt6vectorIS_IdSaIdEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %.loopexit313

_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i: ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.af, ptr %13, align 8, !tbaa !221
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.y
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.af, i8 0, i64 %i.aa, i1 false)
  %scevgep.i.i.i.i.i253 = getelementptr i8, ptr %i.af, i64 %i.aa
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !224
  store ptr %scevgep.i.i.i.i.i253, ptr %i.am, align 8, !tbaa !225
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ao = mul nuw nsw i64 %i.y, 208
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #17
          to label %.noexc263 unwind label %bb.s  ; 5 uses

.noexc263:                                        ; preds = %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.i
  store ptr %i.ap, ptr %14, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !42
  %i.ar = getelementptr inbounds nuw [208 x i8], ptr %i.ap, i64 %i.y ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !118
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.noexc263
  %.08.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.ap, %.noexc263 ] ; 2 uses
  %.057.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.y, %.noexc263 ]
  tail call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %.08.i.i.i.i.i) #19
  %i.at = add nsw i64 %.057.i.i.i.i.i, -1         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit313.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !119

.loopexit313.loopexit:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.av = ptrtoint ptr %i.ar to i64
  br label %.loopexit313

.loopexit313:                                     ; preds = %.loopexit313.loopexit, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i
  %i.aw = phi i64 [ 0, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.av, %.loopexit313.loopexit ]
  %.pr.i = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.ap, %.loopexit313.loopexit ] ; 8 uses
  %.pr.i282 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.af, %.loopexit313.loopexit ] ; 8 uses
  %.pr.i291 = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.ab, %.loopexit313.loopexit ] ; 12 uses
  %i.ax = phi ptr [ %i.aj, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.an, %.loopexit313.loopexit ]
  %i.ay = phi ptr [ %i.ai, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.am, %.loopexit313.loopexit ]
  %i.az = phi ptr [ %i.ag, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.ad, %.loopexit313.loopexit ]
  %i.ba = phi ptr [ %i.ah, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.ae, %.loopexit313.loopexit ]
  %i.bb = phi ptr [ %i.ak, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.aq, %.loopexit313.loopexit ]
  %i.bc = phi ptr [ null, %_ZNSt12_Vector_baseIN2cv3MatESaIS1_EEC2EmRKS2_.exit.thread.i ], [ %i.au, %.loopexit313.loopexit ] ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !42
  %i.bd = icmp sgt i32 %i.u, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit313
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %15, i64 432
  %i.bg = getelementptr inbounds nuw i8, ptr %15, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 16
  %wide.trip.count = and i64 %i.t, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2cv3MataSERKNS_7MatExprE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2cv3MataSERKNS_7MatExprE.exit ] ; 6 uses
  %i.bi = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
end_hunk_0
