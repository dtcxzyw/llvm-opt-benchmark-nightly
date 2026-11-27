Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaTransduction?download=true
inline.NumInlined: 6915
inline.NumDeleted: 1087
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@Gia_ManTransductionBdd:bb.a
bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 67
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !94
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bn) #22
  %i.bs = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef signext i8 %i.bu(ptr noundef nonnull align 8 dereferenceable(570) %i.bn, i8 noundef signext 10) #22, !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i = phi i8 [ %i.br, %bb.p ], [ %i.bv, %bb.q ]
  %i.bw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef signext %.0.i.i.i) #22
  %i.bx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #22 ; 0 uses
  br label %_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE11RepeatResubEbb.exit

_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE11RepeatResubEbb.exit: ; preds = %.split.i.us.i, %_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE11RepeatResubEbb.exit10.i, %.split.us.i, %.split.i, %bb.d, %bb.e, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f
  %i.by = call noundef ptr @_ZNK12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE11GenerateAigEv(ptr noundef nonnull align 8 dereferenceable(456) %12)
  call void @_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EED2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  ret ptr %i.by
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EEC2EP10Gia_Man_t_ibiibS6_RS3_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(72) %8) unnamed_addr #0 comdat align 2 {
bb.a:
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %"class.std::vector.8", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %6 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !130
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.e, align 4, !tbaa !131
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.c, ptr %i.f, align 8, !tbaa !132
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !133
  store ptr %i.i, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr null, ptr %i.o, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.p, align 8, !tbaa !136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.r, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 0, ptr %i.s, align 8, !tbaa !136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr null, ptr %i.u, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %i.v, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(212) %i.k, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  store i8 %i.b, ptr %i.y, align 8, !tbaa !137
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.z = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #22
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %9, align 8, !tbaa !139
  %i.ac = mul nsw i64 %i.ab, 1000000
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !140
  %i.af = sdiv i64 %i.ae, 1000
  %i.ag = add nsw i64 %i.af, %i.ac
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.ag, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %.0.i, ptr %i.ah, align 8, !tbaa !141
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 1, ptr %i.ai, align 8, !tbaa !64
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 4000, ptr %i.aj, align 4, !tbaa !65
  %i.ak = icmp ne i32 %4, 0
  %i.al = icmp slt i32 %4, 4
  %or.cond = and i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL9Abc_Clockv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i8 1, ptr %i.am, align 4, !tbaa !63
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9Abc_Clockv.exit
  %i.an = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #24 ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.ao, align 8, !tbaa !160
  %i.ap = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.ap, align 4, !tbaa !161
  call void @_ZN6NewBdd3ManC2EiNS_5ParamE(ptr noundef nonnull align 8 dereferenceable(384) %i.an, i32 noundef %.val.val, ptr noundef nonnull byval(%"struct.NewBdd::Param") align 8 %8)
  store ptr %i.an, ptr %0, align 8, !tbaa !162
  call void @_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE9ImportAigEP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %1)
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !163 ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !164 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ar, -1
  %.pre = load ptr, ptr %0, align 8, !tbaa !162   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 208
  %.pre92 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !165 ; 6 uses
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %.pre, i64 216
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8, !tbaa !165
  %i.as = icmp eq ptr %.pre92, %.pre94            ; 2 uses
  br i1 %.not.i.i, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.as, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = lshr i32 %i.ar, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.pre92, i64 %i.au ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aw, -1
  br i1 %.not.i.i.i, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = add i16 %i.aw, -1
  store i16 %i.ax, ptr %i.av, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i.thread

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i.thread: ; preds = %bb.g, %bb.f
  store i32 0, ptr %i.aq, align 4, !tbaa !164
  br label %bb.h

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i: ; preds = %bb.d
  store i32 0, ptr %i.aq, align 4, !tbaa !164
  br i1 %i.as, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i.thread, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i
  %i.ay = load i16, ptr %.pre92, align 2, !tbaa !167 ; 2 uses
  %.not.i.i5.i = icmp eq i16 %i.ay, -1
  br i1 %.not.i.i5.i, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nuw i16 %i.ay, 1
  store i16 %i.az, ptr %.pre92, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit: ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i, %bb.h, %bb.i
  %i.ba = phi i1 [ true, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !168 ; 2 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !169 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  %.not72 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not72, label %._crit_edge, label %.lr.ph

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit.thread: ; preds = %bb.e
  store i32 0, ptr %i.aq, align 4, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !168 ; 2 uses
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !169 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  %.not72138 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not72138, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit
  br i1 %i.ba, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit.thread, %.lr.ph
  %i.bp = phi ptr [ %i.bb, %.lr.ph ], [ %i.bi, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit.thread ] ; 2 uses
  %i.bq = phi i64 [ %i.bh, %.lr.ph ], [ %i.bo, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit.thread ] ; 3 uses
  %i.br = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.bs = trunc i64 %i.br to i32                  ; 3 uses
  %min.iters.check = icmp ult i32 %i.bs, 12
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader146, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.us.preheader
  %i.bt = call i64 @llvm.usub.sat.i64(i64 %i.bq, i64 1) ; 2 uses
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = icmp eq i64 %i.bu, 4294967295
  %i.bw = icmp ugt i64 %i.bt, 4294967295
  %i.bx = or i1 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us.preheader146, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.bs, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.by = or disjoint i32 %index, 1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bz ; 2 uses
  %i.cb = shl <4 x i32> %vec.ind, splat (i32 1)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.cc = add <4 x i32> %step.add, splat (i32 8)
  %i.cd = and <4 x i32> %i.cb, splat (i32 131070)
  %i.ce = and <4 x i32> %i.cc, splat (i32 131070)
  %i.cf = add nuw nsw <4 x i32> %i.cd, splat (i32 2)
  %i.cg = add nuw nsw <4 x i32> %i.ce, splat (i32 2)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %i.cf, ptr %i.ca, align 4, !tbaa !164
  store <4 x i32> %i.cg, ptr %i.ch, align 4, !tbaa !164
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ci = icmp eq i32 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !323

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n.vec, %i.bs
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader146

.lr.ph.split.us.preheader146:                     ; preds = %vector.scevcheck, %.lr.ph.split.us.preheader, %middle.block
  %.03662.us.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader146, %.lr.ph.split.us
  %.03662.us = phi i32 [ %i.cj, %.lr.ph.split.us ], [ %.03662.us.ph, %.lr.ph.split.us.preheader146 ] ; 2 uses
  %i.cj = add i32 %.03662.us, 1                   ; 2 uses
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ck
  %i.cm = shl i32 %.03662.us, 1
  %i.cn = and i32 %i.cm, 131070
  %i.co = add nuw nsw i32 %i.cn, 2
  store i32 %i.co, ptr %i.cl, align 4, !tbaa !164
  %i.cp = icmp ugt i64 %i.bq, %i.ck
  br i1 %i.cp, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !324

._crit_edge:                                      ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit48, %.lr.ph.split.us, %middle.block, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit.thread, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit
  %i.cq = phi ptr [ %i.bi, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit.thread ], [ %i.bp, %middle.block ], [ %i.bb, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit ], [ %i.bp, %.lr.ph.split.us ], [ %i.bb, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit48 ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.cr, align 8, !tbaa !173
  call void @_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE5BuildEb(ptr noundef nonnull align 8 dereferenceable(456) %0, i1 noundef zeroext false)
  %i.cs = load ptr, ptr %0, align 8, !tbaa !162
  call void @_ZN6NewBdd3Man7ReorderEv(ptr noundef nonnull align 8 dereferenceable(384) %i.cs)
  %i.ct = load ptr, ptr %0, align 8, !tbaa !162   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store i32 2147483647, ptr %i.cu, align 8, !tbaa !185
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.preheader, label %bb.m

.preheader:                                       ; preds = %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !168 ; 2 uses
  %i.cx = load ptr, ptr %i.h, align 8, !tbaa !169 ; 3 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 2
  %.not75 = icmp eq ptr %i.cw, %i.cx
  br i1 %.not75, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader
  %i.dc = load ptr, ptr %i.n, align 8, !tbaa !186
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 208
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 216
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !165 ; 4 uses
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !165
  %i.dh = icmp eq ptr %i.df, %i.dg                ; 2 uses
  br label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit48
  %.03662 = phi i32 [ %i.di, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit48 ], [ 0, %.lr.ph ] ; 2 uses
  %i.di = add i32 %.03662, 1                      ; 2 uses
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dj ; 2 uses
  %i.dl = shl i32 %.03662, 1
  %i.dm = and i32 %i.dl, 131070
  %i.dn = add nuw nsw i32 %i.dm, 2                ; 2 uses
  %i.do = load i32, ptr %i.dk, align 4, !tbaa !164 ; 2 uses
  %.not.i.i44 = icmp eq i32 %i.do, -1
  br i1 %.not.i.i44, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i46.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.dp = lshr i32 %i.do, 1
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.pre92, i64 %i.dq ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !167 ; 2 uses
  %.not.i.i.i45 = icmp eq i16 %i.ds, -1
  br i1 %.not.i.i.i45, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i46.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dt = add i16 %i.ds, -1
  store i16 %i.dt, ptr %i.dr, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i46.thread

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i46.thread: ; preds = %.lr.ph.split, %bb.j, %bb.k
  store i32 %i.dn, ptr %i.dk, align 4, !tbaa !164
  %i.du = lshr exact i32 %i.dn, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %.pre92, i64 %i.dv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !167 ; 2 uses
  %.not.i.i5.i47 = icmp eq i16 %i.dx, -1
  br i1 %.not.i.i5.i47, label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit48, label %bb.l

bb.l:                                             ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i46.thread
  %i.dy = add nuw i16 %i.dx, 1
  store i16 %i.dy, ptr %i.dw, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit48

_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit48: ; preds = %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6DecRefEj.exit.i46.thread, %bb.l
  %i.dz = icmp ugt i64 %i.bh, %i.dj
  br i1 %i.dz, label %.lr.ph.split, label %._crit_edge, !llvm.loop !325

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN12Transduction12TransductionIN6NewBdd3ManENS1_5ParamEjLj4294967295EE7Aig2BddEP10Gia_Man_t_RSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %10)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !168 ; 2 uses
  %i.ec = load ptr, ptr %i.h, align 8, !tbaa !169 ; 4 uses
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = ashr exact i64 %i.ef, 2                 ; 2 uses
  %.not73 = icmp eq ptr %i.eb, %i.ec
  %.pre96 = load ptr, ptr %10, align 8, !tbaa !163 ; 6 uses
  br i1 %.not73, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.m
  %i.eh = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !187
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = ptrtoint ptr %.pre96 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %.fr74 = freeze i64 %i.el
  %i.em = icmp eq i64 %.fr74, 4
  %i.en = load ptr, ptr %i.n, align 8, !tbaa !186 ; 2 uses
  br i1 %i.em, label %.lr.ph65.split.us.preheader, label %.lr.ph65.split

.lr.ph65.split.us.preheader:                      ; preds = %.lr.ph65
  %.pre95 = load i32, ptr %.pre96, align 4, !tbaa !164
  br label %.lr.ph65.split.us

.lr.ph65.split.us:                                ; preds = %.lr.ph65.split.us.preheader, %.lr.ph65.split.us
  %indvars.iv80 = phi i64 [ 0, %.lr.ph65.split.us.preheader ], [ %indvars.iv.next81, %.lr.ph65.split.us ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv80
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !164
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !163
  store i32 %.pre95, ptr %i.es, align 4, !tbaa !164
  %indvars.iv.next81 = add i64 %indvars.iv80, 1   ; 2 uses
  %i.et = and i64 %indvars.iv.next81, 4294967295
  %i.eu = icmp ugt i64 %i.eg, %i.et
  br i1 %i.eu, label %.lr.ph65.split.us, label %._crit_edge66.thread, !llvm.loop !326

._crit_edge66:                                    ; preds = %bb.m
  %.not.i.i.i49 = icmp eq ptr %.pre96, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %._crit_edge66.thread

._crit_edge66.thread:                             ; preds = %.lr.ph65.split, %.lr.ph65.split.us, %._crit_edge66
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !188
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %.pre96 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %.pre96, i64 noundef %i.ez) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge66, %._crit_edge66.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.loopexit

.lr.ph65.split:                                   ; preds = %.lr.ph65, %.lr.ph65.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph65.split ], [ 0, %.lr.ph65 ] ; 3 uses
  %spec.select = getelementptr inbounds nuw [4 x i8], ptr %.pre96, i64 %indvars.iv
  %i.fa = load i32, ptr %spec.select, align 4, !tbaa !164
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !164
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !163
  store i32 %i.fa, ptr %i.ff, align 4, !tbaa !164
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.fg = and i64 %indvars.iv.next, 4294967295
  %i.fh = icmp ugt i64 %i.eg, %i.fg
  br i1 %i.fh, label %.lr.ph65.split, label %._crit_edge66.thread, !llvm.loop !326

bb.n:                                             ; preds = %.lr.ph68, %_ZNK12Transduction7ManUtilIN6NewBdd3ManEjLj4294967295EE6UpdateERjj.exit54
end_hunk_0
begin_hunk_1_@Gia_ManTransductionTt:bb.a
  call void @_ZSt16__throw_bad_castv() #23
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !93
  %.not.i1.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i1.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 67
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !94
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.q:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bf) #22
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !71
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef signext i8 %i.bm(ptr noundef nonnull align 8 dereferenceable(570) %i.bf, i8 noundef signext 10) #22, !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i = phi i8 [ %i.bj, %bb.p ], [ %i.bn, %bb.q ]
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.az, i8 noundef signext %.0.i.i.i) #22
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo) #22 ; 0 uses
  br label %_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE11RepeatResubEbb.exit

_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE11RepeatResubEbb.exit: ; preds = %.split.i.us.i, %_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE11RepeatResubEbb.exit10.i, %.split.us.i, %.split.i, %bb.d, %bb.e, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f
  %i.bq = call noundef ptr @_ZNK12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE11GenerateAigEv(ptr noundef nonnull align 8 dereferenceable(456) %12)
  call void @_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EED2Ev(ptr noundef nonnull align 8 dead_on_return(456) dereferenceable(456) %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  ret ptr %i.bq
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EEC2EP10Gia_Man_t_ibiibS6_RS3_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6, ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8) unnamed_addr #0 comdat align 2 {
bb.a:
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %"class.std::vector.8", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.b = zext i1 %3 to i8
  %i.c = zext i1 %6 to i8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.d, align 8, !tbaa !231
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.e, align 4, !tbaa !232
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.c, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, i8 0, i64 48, i1 false)
  store ptr %i.i, ptr %i.j, align 8, !tbaa !133
  store ptr %i.i, ptr %i.i, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr null, ptr %i.o, align 8, !tbaa !135
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i32 0, ptr %i.p, align 8, !tbaa !136
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.r, align 8, !tbaa !135
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 0, ptr %i.s, align 8, !tbaa !136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr null, ptr %i.u, align 8, !tbaa !135
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %i.v, align 8, !tbaa !136
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(212) %i.k, i8 0, i64 212, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.t, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, i8 0, i64 32, i1 false)
  store i8 %i.b, ptr %i.y, align 8, !tbaa !234
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.z = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #22
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %9, align 8, !tbaa !139
  %i.ac = mul nsw i64 %i.ab, 1000000
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !140
  %i.af = sdiv i64 %i.ae, 1000
  %i.ag = add nsw i64 %i.af, %i.ac
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.ag, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %.0.i, ptr %i.ah, align 8, !tbaa !235
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 1, ptr %i.ai, align 8, !tbaa !226
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 4000, ptr %i.aj, align 4, !tbaa !227
  %i.ak = icmp ne i32 %4, 0
  %i.al = icmp slt i32 %4, 4
  %or.cond = and i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZL9Abc_Clockv.exit
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i8 1, ptr %i.am, align 4, !tbaa !225
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZL9Abc_Clockv.exit
  %i.an = call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #24 ; 2 uses
  %i.ao = getelementptr i8, ptr %1, i64 64
  %.val = load ptr, ptr %i.ao, align 8, !tbaa !160
  %i.ap = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.ap, align 4, !tbaa !161
  call void @_ZN5NewTt3ManC2EiNS_5ParamE(ptr noundef nonnull align 8 dereferenceable(112) %i.an, i32 noundef %.val.val, ptr noundef nonnull byval(%"struct.NewTt::Param") align 8 %8)
  store ptr %i.an, ptr %0, align 8, !tbaa !236
  call void @_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE9ImportAigEP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef %1)
  %i.aq = load ptr, ptr %i.m, align 8, !tbaa !163 ; 7 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !164 ; 2 uses
  %.not.i.i = icmp eq i32 %i.ar, -1
  %.pre = load ptr, ptr %0, align 8, !tbaa !236   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %.pre92 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !165 ; 6 uses
  %.phi.trans.insert93 = getelementptr inbounds nuw i8, ptr %.pre, i64 88
  %.pre94 = load ptr, ptr %.phi.trans.insert93, align 8, !tbaa !165
  %i.as = icmp eq ptr %.pre92, %.pre94            ; 2 uses
  br i1 %.not.i.i, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.as, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = lshr i32 %i.ar, 1
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.pre92, i64 %i.au ; 2 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !167 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aw, -1
  br i1 %.not.i.i.i, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = add i16 %i.aw, -1
  store i16 %i.ax, ptr %i.av, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i.thread

_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i.thread: ; preds = %bb.g, %bb.f
  store i32 0, ptr %i.aq, align 4, !tbaa !164
  br label %bb.h

_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i: ; preds = %bb.d
  store i32 0, ptr %i.aq, align 4, !tbaa !164
  br i1 %i.as, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i.thread, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i
  %i.ay = load i16, ptr %.pre92, align 2, !tbaa !167 ; 2 uses
  %.not.i.i5.i = icmp eq i16 %i.ay, -1
  br i1 %.not.i.i5.i, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = add nuw i16 %i.ay, 1
  store i16 %i.az, ptr %.pre92, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit

_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit: ; preds = %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i, %bb.h, %bb.i
  %i.ba = phi i1 [ true, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i ], [ false, %bb.h ], [ false, %bb.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !168 ; 2 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !169 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2                 ; 2 uses
  %.not72 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not72, label %._crit_edge, label %.lr.ph

_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit.thread: ; preds = %bb.e
  store i32 0, ptr %i.aq, align 4, !tbaa !164
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !168 ; 2 uses
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !169 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2
  %.not72138 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not72138, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit
  br i1 %i.ba, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit.thread, %.lr.ph
  %i.bp = phi ptr [ %i.bb, %.lr.ph ], [ %i.bi, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit.thread ] ; 2 uses
  %i.bq = phi i64 [ %i.bh, %.lr.ph ], [ %i.bo, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit.thread ] ; 3 uses
  %i.br = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.bs = trunc i64 %i.br to i32                  ; 3 uses
  %min.iters.check = icmp ult i32 %i.bs, 12
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader146, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.split.us.preheader
  %i.bt = call i64 @llvm.usub.sat.i64(i64 %i.bq, i64 1) ; 2 uses
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = icmp eq i64 %i.bu, 4294967295
  %i.bw = icmp ugt i64 %i.bt, 4294967295
  %i.bx = or i1 %i.bv, %i.bw
  br i1 %i.bx, label %.lr.ph.split.us.preheader146, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.bs, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.by = or disjoint i32 %index, 1
  %i.bz = zext i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.bz ; 2 uses
  %i.cb = shl <4 x i32> %vec.ind, splat (i32 1)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 1)
  %i.cc = add <4 x i32> %i.cb, splat (i32 2)
  %i.cd = add <4 x i32> %step.add, splat (i32 10)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x i32> %i.cc, ptr %i.ca, align 4, !tbaa !164
  store <4 x i32> %i.cd, ptr %i.ce, align 4, !tbaa !164
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.cf = icmp eq i32 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %n.vec, %i.bs
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader146

.lr.ph.split.us.preheader146:                     ; preds = %vector.scevcheck, %.lr.ph.split.us.preheader, %middle.block
  %.03662.us.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader146, %.lr.ph.split.us
  %.03662.us = phi i32 [ %i.cg, %.lr.ph.split.us ], [ %.03662.us.ph, %.lr.ph.split.us.preheader146 ] ; 2 uses
  %i.cg = add i32 %.03662.us, 1                   ; 2 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ch
  %i.cj = shl i32 %.03662.us, 1
  %i.ck = add i32 %i.cj, 2
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !164
  %i.cl = icmp ugt i64 %i.bq, %i.ch
  br i1 %i.cl, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !400

._crit_edge:                                      ; preds = %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit48, %.lr.ph.split.us, %middle.block, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit.thread, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit
  %i.cm = phi ptr [ %i.bi, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit.thread ], [ %i.bp, %middle.block ], [ %i.bb, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit ], [ %i.bp, %.lr.ph.split.us ], [ %i.bb, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit48 ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.cn, align 8, !tbaa !237
  call void @_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE5BuildEb(ptr noundef nonnull align 8 dereferenceable(456) %0, i1 noundef zeroext false)
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %.preheader, label %bb.m

.preheader:                                       ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !168 ; 2 uses
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !169 ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = ptrtoint ptr %i.cq to i64
  %i.ct = sub i64 %i.cr, %i.cs
  %i.cu = ashr exact i64 %i.ct, 2
  %.not75 = icmp eq ptr %i.cp, %i.cq
  br i1 %.not75, label %.loopexit, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader
  %i.cv = load ptr, ptr %i.n, align 8, !tbaa !186
  %i.cw = load ptr, ptr %0, align 8, !tbaa !236   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !165 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 88
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !165
  %i.db = icmp eq ptr %i.cy, %i.da                ; 2 uses
  br label %bb.n

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit48
  %.03662 = phi i32 [ %i.dc, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit48 ], [ 0, %.lr.ph ] ; 2 uses
  %i.dc = add i32 %.03662, 1                      ; 2 uses
  %i.dd = zext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.dd ; 2 uses
  %i.df = shl i32 %.03662, 1
  %i.dg = add i32 %i.df, 2                        ; 2 uses
  %i.dh = load i32, ptr %i.de, align 4, !tbaa !164 ; 2 uses
  %.not.i.i44 = icmp eq i32 %i.dh, -1
  br i1 %.not.i.i44, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i46.thread, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split
  %i.di = lshr i32 %i.dh, 1
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %.pre92, i64 %i.dj ; 2 uses
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !167 ; 2 uses
  %.not.i.i.i45 = icmp eq i16 %i.dl, -1
  br i1 %.not.i.i.i45, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i46.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dm = add i16 %i.dl, -1
  store i16 %i.dm, ptr %i.dk, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i46.thread

_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i46.thread: ; preds = %.lr.ph.split, %bb.j, %bb.k
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !164
  %i.dn = lshr exact i32 %i.dg, 1
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.pre92, i64 %i.do ; 2 uses
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !167 ; 2 uses
  %.not.i.i5.i47 = icmp eq i16 %i.dq, -1
  br i1 %.not.i.i5.i47, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit48, label %bb.l

bb.l:                                             ; preds = %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i46.thread
  %i.dr = add nuw i16 %i.dq, 1
  store i16 %i.dr, ptr %i.dp, align 2, !tbaa !167
  br label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit48

_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit48: ; preds = %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i46.thread, %bb.l
  %i.ds = icmp ugt i64 %i.bh, %i.dd
  br i1 %i.ds, label %.lr.ph.split, label %._crit_edge, !llvm.loop !401

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @_ZN12Transduction12TransductionIN5NewTt3ManENS1_5ParamEjLj4294967295EE7Aig2BddEP10Gia_Man_t_RSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(456) %0, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(24) %10)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !168 ; 2 uses
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !169 ; 4 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2                 ; 2 uses
  %.not73 = icmp eq ptr %i.du, %i.dv
  %.pre96 = load ptr, ptr %10, align 8, !tbaa !163 ; 6 uses
  br i1 %.not73, label %._crit_edge66, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !187
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %.pre96 to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %.fr74 = freeze i64 %i.ee
  %i.ef = icmp eq i64 %.fr74, 4
  %i.eg = load ptr, ptr %i.n, align 8, !tbaa !186 ; 2 uses
  br i1 %i.ef, label %.lr.ph65.split.us.preheader, label %.lr.ph65.split

.lr.ph65.split.us.preheader:                      ; preds = %.lr.ph65
  %.pre95 = load i32, ptr %.pre96, align 4, !tbaa !164
  br label %.lr.ph65.split.us

.lr.ph65.split.us:                                ; preds = %.lr.ph65.split.us.preheader, %.lr.ph65.split.us
  %indvars.iv80 = phi i64 [ 0, %.lr.ph65.split.us.preheader ], [ %indvars.iv.next81, %.lr.ph65.split.us ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv80
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !164
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ej
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !163
  store i32 %.pre95, ptr %i.el, align 4, !tbaa !164
  %indvars.iv.next81 = add i64 %indvars.iv80, 1   ; 2 uses
  %i.em = and i64 %indvars.iv.next81, 4294967295
  %i.en = icmp ugt i64 %i.dz, %i.em
  br i1 %i.en, label %.lr.ph65.split.us, label %._crit_edge66.thread, !llvm.loop !402

._crit_edge66:                                    ; preds = %bb.m
  %.not.i.i.i49 = icmp eq ptr %.pre96, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %._crit_edge66.thread

._crit_edge66.thread:                             ; preds = %.lr.ph65.split, %.lr.ph65.split.us, %._crit_edge66
  %i.eo = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !188
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %.pre96 to i64
  %i.es = sub i64 %i.eq, %i.er
  call void @_ZdlPvm(ptr noundef nonnull %.pre96, i64 noundef %i.es) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %._crit_edge66, %._crit_edge66.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.loopexit

.lr.ph65.split:                                   ; preds = %.lr.ph65, %.lr.ph65.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph65.split ], [ 0, %.lr.ph65 ] ; 3 uses
  %spec.select = getelementptr inbounds nuw [4 x i8], ptr %.pre96, i64 %indvars.iv
  %i.et = load i32, ptr %spec.select, align 4, !tbaa !164
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %indvars.iv
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !164
  %i.ew = sext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ew
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !163
  store i32 %i.et, ptr %i.ey, align 4, !tbaa !164
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ez = and i64 %indvars.iv.next, 4294967295
  %i.fa = icmp ugt i64 %i.dz, %i.ez
  br i1 %i.fa, label %.lr.ph65.split, label %._crit_edge66.thread, !llvm.loop !402

bb.n:                                             ; preds = %.lr.ph68, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit54
  %indvars.iv84 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next85, %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6UpdateERjj.exit54 ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv84
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !164
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !163 ; 4 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !164 ; 2 uses
  %.not.i.i50 = icmp eq i32 %i.fg, -1
  br i1 %.not.i.i50, label %_ZNK12Transduction7ManUtilIN5NewTt3ManEjLj4294967295EE6DecRefEj.exit.i52, label %bb.o
end_hunk_1
