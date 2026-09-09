Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/erfilter?download=true
inline.NumInlined: 6540
inline.NumDeleted: 1902
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN2cv4text17guo_hall_thinningERKNS_4Mat_IhEERNS_3MatE:bb.a
  call void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %3) #34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.an ], [ %i.du, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN2cvneERKNS_3MatEd(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208), double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeIiSaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !200    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !201  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !306  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i, align 8, !tbaa !145
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 512) #33
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i, !llvm.loop !19

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !200
  br label %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i

_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i: ; preds = %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i, %bb.b
  %i.k = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.loopexit.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !307
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #33
  br label %_ZNSt11_Deque_baseIiSaIiEED2Ev.exit

_ZNSt11_Deque_baseIiSaIiEED2Ev.exit:              ; preds = %bb.a, %_ZNSt11_Deque_baseIiSaIiEE16_M_destroy_nodesEPPiS3_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef float @_ZN2cv4text22distanceLinesEstimatesERNS0_14line_estimatesES2_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(44) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !586  ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !586  ; 3 uses
  %.not72 = icmp eq i32 %i.d, 0
  br i1 %.not72, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.23, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZN2cv4text22distanceLinesEstimatesERNS0_14line_estimatesES2_, ptr noundef nonnull @.str.1, i32 noundef 3038) #35
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load ptr, ptr %2, align 8, !tbaa !113    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !75
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %i.e

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load <2 x float>, ptr %0, align 4, !tbaa !101 ; 4 uses
  %i.n = load float, ptr %i.k, align 4, !tbaa !101 ; 2 uses
  %i.o = load <2 x float>, ptr %1, align 4, !tbaa !101 ; 3 uses
  %i.p = load float, ptr %i.l, align 4, !tbaa !101
  %i.q = extractelement <2 x float> %i.o, i64 0
  %i.r = extractelement <2 x float> %i.m, i64 0
  %i.s = fcmp oeq float %i.r, %i.q
  %i.t = fcmp oeq float %i.n, %i.p
  %or.cond138 = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond138, label %bb.g, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !587
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !587
  %i.y = fcmp oeq float %i.v, %i.x
  br i1 %i.y, label %bb.h, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load float, ptr %i.z, align 4, !tbaa !588
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !588
  %i.ad = fcmp oeq float %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load float, ptr %i.ae, align 4, !tbaa !589
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !589
  %i.ai = fcmp oeq float %i.af, %i.ah
  br i1 %i.ai, label %bb.j, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !590
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !590
  %i.an = fcmp oeq float %i.ak, %i.am
  br i1 %i.an, label %bb.k, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !591
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !591
  %i.as = fcmp oeq float %i.ap, %i.ar
  br i1 %i.as, label %bb.l, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.au = load float, ptr %i.at, align 4, !tbaa !592
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aw = load float, ptr %i.av, align 4, !tbaa !592
  %i.ax = fcmp oeq float %i.au, %i.aw
  br i1 %i.ax, label %bb.m, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !593
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !593
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !594
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !594
  %i.bh = icmp eq i32 %i.be, %i.bg
  %i.bi = icmp eq i32 %i.b, %i.d
  %or.cond = and i1 %i.bi, %i.bh
  br i1 %or.cond, label %bb.o, label %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread

_ZNK2cv4text14line_estimateseqERKS1_.exit.thread: ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bn = icmp slt i32 %i.b, %i.d
  %..i75 = select i1 %i.bn, ptr %i.c, ptr %i.a
  %i.bo = load i32, ptr %..i75, align 4, !tbaa !67
  %i.bp = sitofp i32 %i.bo to float
  %.117 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.113 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.114 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.115.1 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.117.1 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %..1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.113.1 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load i32, ptr %i.bl, align 4, !tbaa !67
  %i.br = load i32, ptr %i.bj, align 4, !tbaa !67
  %i.bs = load i32, ptr %i.bm, align 4, !tbaa !67
  %i.bt = load i32, ptr %i.bk, align 4, !tbaa !67
  %i.bu = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 %i.bs)
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.br)
  %4 = sitofp i32 %i.bu to float
  %5 = sitofp i32 %i.bv to float
  %i.bw = load <2 x float>, ptr %.113, align 4, !tbaa !101 ; 3 uses
  %.064 = load float, ptr %.114, align 4, !tbaa !101
  %i.bx = load <2 x float>, ptr %.117, align 4, !tbaa !101 ; 2 uses
  %6 = insertelement <2 x float> poison, float %5, i64 0
  %i.by = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bz = shufflevector <2 x float> %i.o, <2 x float> %i.bx, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ca = shufflevector <2 x float> %i.o, <2 x float> %i.bx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.bz, <2 x float> %i.ca) ; 2 uses
  %i.cc = load <2 x float>, ptr %.117.1, align 4, !tbaa !101 ; 4 uses
  %i.cd = load <2 x float>, ptr %.115.1, align 4, !tbaa !101 ; 3 uses
  %7 = insertelement <2 x float> poison, float %4, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.bz, <2 x float> %i.ca) ; 2 uses
  %i.cf = shufflevector <2 x float> %i.cd, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cg = shufflevector <2 x float> %i.cd, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.cf, <2 x float> %i.cg) ; 2 uses
  %i.ci = shufflevector <2 x float> %i.m, <2 x float> %i.cc, <2 x i32> <i32 1, i32 3>
  %i.cj = shufflevector <2 x float> %i.m, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2>
  %i.ck = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.ci, <2 x float> %i.cj) ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.cm = fsub <2 x float> %i.cl, %i.ce
  %i.cn = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cm) ; 2 uses
  %i.co = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cq = shufflevector <2 x float> %i.cf, <2 x float> %i.cc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cd, <2 x float> %i.cc, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.cq, <2 x float> %i.cr) ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %i.n, i64 0
  %i.cu = insertelement <2 x float> %i.ct, float %.064, i64 1
  %i.cv = shufflevector <2 x float> %i.m, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.cu, <2 x float> %i.cv) ; 2 uses
  %i.cx = fsub <2 x float> %i.cw, %i.cb
  %i.cy = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cx) ; 2 uses
  %i.cz = fcmp olt <2 x float> %i.cy, %i.cn
  %i.da = select <2 x i1> %i.cz, <2 x float> %i.cn, <2 x float> %i.cy
  %i.db = fdiv <2 x float> %i.da, %i.cp           ; 2 uses
  %i.dc = fcmp olt <2 x float> %i.db, splat (float f0x7F7FFFFF)
  %i.dd = select <2 x i1> %i.dc, <2 x float> %i.db, <2 x float> splat (float f0x7F7FFFFF) ; 2 uses
  %i.de = fsub <2 x float> %i.cw, %i.cs
  %i.df = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.de) ; 2 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.cq, <2 x float> %i.cr)
  %i.dh = fsub <2 x float> %i.ch, %i.ck
  %i.di = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dh) ; 2 uses
  %i.dj = fcmp olt <2 x float> %i.df, %i.di
  %i.dk = select <2 x i1> %i.dj, <2 x float> %i.di, <2 x float> %i.df
  %i.dl = fdiv <2 x float> %i.dk, %i.cp           ; 2 uses
  %i.dm = fcmp olt <2 x float> %i.dl, %i.dd
  %i.dn = select <2 x i1> %i.dm, <2 x float> %i.dl, <2 x float> %i.dd ; 2 uses
  %i.do = load <2 x float>, ptr %.113.1, align 4, !tbaa !101 ; 2 uses
  %i.dp = load <2 x float>, ptr %..1, align 4, !tbaa !101 ; 2 uses
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> %i.do, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dp, <2 x float> %i.do, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.dq, <2 x float> %i.dr) ; 2 uses
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %i.dq, <2 x float> %i.dr) ; 2 uses
  %i.du = fsub <2 x float> %i.ds, %i.cb
  %i.dv = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.du) ; 2 uses
  %i.dw = fsub <2 x float> %i.dt, %i.ce
  %i.dx = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.dw) ; 2 uses
  %i.dy = fcmp olt <2 x float> %i.dv, %i.dx
  %i.dz = select <2 x i1> %i.dy, <2 x float> %i.dx, <2 x float> %i.dv
  %i.ea = fdiv <2 x float> %i.dz, %i.cp           ; 2 uses
  %i.eb = fcmp olt <2 x float> %i.ea, %i.dn
  %i.ec = select <2 x i1> %i.eb, <2 x float> %i.ea, <2 x float> %i.dn ; 2 uses
  %i.ed = fsub <2 x float> %i.ds, %i.cs
  %i.ee = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ed) ; 2 uses
  %i.ef = fsub <2 x float> %i.dt, %i.dg
  %i.eg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ef) ; 2 uses
  %i.eh = fcmp olt <2 x float> %i.ee, %i.eg
  %i.ei = select <2 x i1> %i.eh, <2 x float> %i.eg, <2 x float> %i.ee
  %i.ej = fdiv <2 x float> %i.ei, %i.cp           ; 2 uses
  %i.ek = fcmp olt <2 x float> %i.ej, %i.ec
  %i.el = select <2 x i1> %i.ek, <2 x float> %i.ej, <2 x float> %i.ec ; 2 uses
  %i.em = extractelement <2 x float> %i.el, i64 0 ; 2 uses
  %i.en = extractelement <2 x float> %i.el, i64 1 ; 2 uses
  %i.eo = fcmp olt float %i.em, %i.en
  %.sroa.speculated97 = select i1 %i.eo, float %i.en, float %i.em
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread
  %.071 = phi float [ %.sroa.speculated97, %_ZNK2cv4text14line_estimateseqERKS1_.exit.thread ], [ 0.000000e+00, %bb.n ]
  ret float %.071
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_(i64 %0, i64 %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.4", align 1  ; 3 uses
  %.sroa.05.0.extract.trunc = trunc i64 %0 to i32 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32  ; 2 uses
  %.not = icmp eq i32 %.sroa.05.0.extract.trunc, %.sroa.0.0.extract.trunc
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %5)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_, ptr noundef nonnull @.str.1, i32 noundef 3180) #35
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %4, align 8, !tbaa !113    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.e = load i64, ptr %i.c, align 8, !tbaa !75
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.a

bb.e:                                             ; preds = %bb.a
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %.sroa.4.0.extract.shift = lshr i64 %0, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32 ; 2 uses
  %i.g = sub nsw i32 %.sroa.3.0.extract.trunc, %.sroa.4.0.extract.trunc
  %i.h = sitofp i32 %i.g to float
  %i.i = sub nsw i32 %.sroa.0.0.extract.trunc, %.sroa.05.0.extract.trunc
  %i.j = sitofp i32 %i.i to float
  %i.k = fdiv float %i.h, %i.j                    ; 2 uses
  store float %i.k, ptr %3, align 4, !tbaa !101
  %i.l = fneg float %i.k
  %i.m = sitofp i32 %.sroa.05.0.extract.trunc to float
  %i.n = sitofp i32 %.sroa.4.0.extract.trunc to float
  %i.o = tail call float @llvm.fmuladd.f32(float %i.l, float %i.m, float %i.n)
  store float %i.o, ptr %2, align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2cv4text10fitLineOLSENS_6Point_IiEES2_S2_RfS3_(i64 %0, i64 %1, i64 %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #11 {
bb.a:
  %.sroa.025.0.extract.trunc = trunc i64 %0 to i32 ; 4 uses
  %.sroa.529.0.extract.shift = lshr i64 %0, 32
  %.sroa.529.0.extract.trunc = trunc nuw i64 %.sroa.529.0.extract.shift to i32 ; 2 uses
  %.sroa.523.0.extract.shift = lshr i64 %1, 32
  %.sroa.523.0.extract.trunc = trunc nuw i64 %.sroa.523.0.extract.shift to i32 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %2 to i32  ; 4 uses
  %.sroa.5.0.extract.shift = lshr i64 %2, 32
  %i.a = add nsw i32 %.sroa.523.0.extract.trunc, %.sroa.529.0.extract.trunc
  %i.b = mul nsw i32 %.sroa.529.0.extract.trunc, %.sroa.025.0.extract.trunc
  %i.c = mul nsw i32 %.sroa.025.0.extract.trunc, %.sroa.025.0.extract.trunc
  %i.d = mul nsw i32 %.sroa.0.0.extract.trunc, %.sroa.0.0.extract.trunc
  %.sroa.019.0.extract.trunc = trunc i64 %1 to i32 ; 4 uses
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.e = add nsw i32 %i.a, %.sroa.5.0.extract.trunc
  %i.f = sitofp i32 %i.e to float                 ; 2 uses
  %i.g = mul nsw i32 %.sroa.523.0.extract.trunc, %.sroa.019.0.extract.trunc
  %i.h = add nsw i32 %i.g, %i.b
  %i.i = add nsw i32 %.sroa.019.0.extract.trunc, %.sroa.025.0.extract.trunc
  %i.j = mul nsw i32 %.sroa.5.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.k = add nsw i32 %i.i, %.sroa.0.0.extract.trunc
  %i.l = add nsw i32 %i.h, %i.j
  %i.m = insertelement <2 x i32> poison, i32 %i.l, i64 0
  %i.n = insertelement <2 x i32> %i.m, i32 %i.k, i64 1
  %i.o = sitofp <2 x i32> %i.n to <2 x float>     ; 4 uses
  %i.p = mul nsw i32 %.sroa.019.0.extract.trunc, %.sroa.019.0.extract.trunc
  %i.q = add nuw nsw i32 %i.p, %i.c
  %i.r = add nuw nsw i32 %i.q, %i.d
  %i.s = uitofp nneg i32 %i.r to float
  %i.t = fneg <2 x float> %i.o
  %i.u = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.v = fmul nnan <2 x float> %i.u, %i.t
  %i.w = insertelement <2 x float> poison, float %i.s, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x float> <float poison, float 3.000000e+00>, float %i.f, i64 0
  %i.z = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.y, <2 x float> %i.v) ; 2 uses
  %i.aa = fneg float %i.f
  %i.ab = extractelement <2 x float> %i.o, i64 1
  %i.ac = fmul nnan float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.o, i64 0
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float 3.000000e+00, float %i.ac)
  %i.af = insertelement <2 x float> %i.z, float %i.ae, i64 1
  %i.ag = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fdiv <2 x float> %i.af, %i.ag           ; 2 uses
  %i.ai = extractelement <2 x float> %i.ah, i64 0
  store float %i.ai, ptr %3, align 4, !tbaa !101
  %i.aj = extractelement <2 x float> %i.ah, i64 1
  store float %i.aj, ptr %4, align 4, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef float @_ZN2cv4text10fitLineLMSENS_6Point_IiEES2_S2_RfS3_(i64 %0, i64 %1, i64 %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.044.0.extract.trunc = trunc i64 %0 to i32 ; 7 uses
  %.sroa.650.0.extract.shift = lshr i64 %0, 32
  %.sroa.650.0.extract.trunc = trunc nuw i64 %.sroa.650.0.extract.shift to i32 ; 5 uses
  %.sroa.033.0.extract.trunc = trunc i64 %1 to i32 ; 6 uses
  %.sroa.639.0.extract.shift = lshr i64 %1, 32
  %.sroa.639.0.extract.trunc = trunc nuw i64 %.sroa.639.0.extract.shift to i32 ; 4 uses
  %.sroa.023.0.extract.trunc = trunc i64 %2 to i32 ; 5 uses
  %.sroa.6.0.extract.shift = lshr i64 %2, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 3 uses
  store float -1.000000e+00, ptr %3, align 4, !tbaa !101
  store float 0.000000e+00, ptr %4, align 4, !tbaa !101
  %.not = icmp eq i32 %.sroa.044.0.extract.trunc, %.sroa.033.0.extract.trunc
  br i1 %.not, label %bb.c, label %_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit

_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit:  ; preds = %bb.a
  %i.a = sub nsw i32 %.sroa.639.0.extract.trunc, %.sroa.650.0.extract.trunc
  %i.b = sitofp i32 %i.a to float
  %i.c = sub nsw i32 %.sroa.033.0.extract.trunc, %.sroa.044.0.extract.trunc
  %i.d = sitofp i32 %i.c to float
  %i.e = fdiv float %i.b, %i.d                    ; 4 uses
  %i.f = tail call noundef float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.g = fcmp olt float %i.f, f0x7F7FFFFF
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit
  %i.h = fneg float %i.e
  %i.i = sitofp i32 %.sroa.044.0.extract.trunc to float
  %i.j = sitofp i32 %.sroa.650.0.extract.trunc to float
  %i.k = tail call float @llvm.fmuladd.f32(float %i.h, float %i.i, float %i.j)
  store float %i.k, ptr %3, align 4, !tbaa !101
  store float %i.e, ptr %4, align 4, !tbaa !101
  %i.l = sitofp i32 %.sroa.6.0.extract.trunc to float
  %i.m = load float, ptr %3, align 4, !tbaa !101
  %i.n = sitofp i32 %.sroa.023.0.extract.trunc to float
  %i.o = tail call float @llvm.fmuladd.f32(float %i.e, float %i.n, float %i.m)
  %i.p = fsub float %i.l, %i.o
  br label %bb.c

bb.c:                                             ; preds = %_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit, %bb.b, %bb.a
  %.055 = phi float [ %i.p, %bb.b ], [ 0.000000e+00, %_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.0 = phi float [ %i.f, %bb.b ], [ f0x7F7FFFFF, %_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit ], [ f0x7F7FFFFF, %bb.a ] ; 3 uses
  %.not57 = icmp eq i32 %.sroa.044.0.extract.trunc, %.sroa.023.0.extract.trunc
  br i1 %.not57, label %bb.e, label %_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit69

_ZN2cv4text7fitLineENS_6Point_IiEES2_RfS3_.exit69: ; preds = %bb.c
  %i.q = sub nsw i32 %.sroa.6.0.extract.trunc, %.sroa.650.0.extract.trunc
  %i.r = sitofp i32 %i.q to float
  %i.s = sub nsw i32 %.sroa.023.0.extract.trunc, %.sroa.044.0.extract.trunc
  %i.t = sitofp i32 %i.s to float
  %i.u = fdiv float %i.r, %i.t                    ; 4 uses
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u) ; 2 uses
  %i.w = fcmp olt float %i.v, %.0
  br i1 %i.w, label %bb.d, label %bb.e

end_hunk_0
