Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpMultiVectorMatrix?download=true
inline.NumInlined: 892
inline.NumDeleted: 513
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5Ipopt17MultiVectorMatrix18AddRightMultMatrixEdRKS0_RKNS_6MatrixEd:bb.a
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ci = load i32, ptr %i.z, align 8, !tbaa !29
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %i.z, align 8, !tbaa !29
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.j, label %.body

bb.j:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cl = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(248) %i.x) #22, !inline_history !190
  br label %.body

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.co = load double, ptr %gep, align 8, !tbaa !79
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  store double %i.co, ptr %i.cp, align 8, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.cq = load double, ptr %gep.1, align 8, !tbaa !79
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next
  store double %i.cq, ptr %i.cr, align 8, !tbaa !79
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.cs = load double, ptr %gep.2, align 8, !tbaa !79
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.1
  store double %i.cs, ptr %i.ct, align 8, !tbaa !79
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.cu = load double, ptr %gep.3, align 8, !tbaa !79
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.next.2
  store double %i.cu, ptr %i.cv, align 8, !tbaa !79
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !191

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %._crit_edge
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.cw = load ptr, ptr %i.ac, align 8, !tbaa !36
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !64
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next55, %i.cz
  br i1 %i.da, label %bb.f, label %._crit_edge51, !llvm.loop !192

bb.k:                                             ; preds = %._crit_edge51
  %i.db = load i32, ptr %i.z, align 8, !tbaa !29
  %i.dc = add nsw i32 %i.db, -1                   ; 2 uses
  store i32 %i.dc, ptr %i.z, align 8, !tbaa !29
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.l, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit38

bb.l:                                             ; preds = %bb.k
  %i.de = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(248) %i.x) #22, !inline_history !190
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit38

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit38: ; preds = %bb.l, %bb.k
  %i.dh = load i32, ptr %i.g, align 8, !tbaa !29
  %i.di = add nsw i32 %i.dh, -1                   ; 2 uses
  store i32 %i.di, ptr %i.g, align 8, !tbaa !29
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit

bb.m:                                             ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit38
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void %i.dm(ptr noundef nonnull align 8 dereferenceable(160) %i.b) #22, !inline_history !193
  br label %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit38, %bb.m
  ret void

.body:                                            ; preds = %bb.d, %bb.e, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.j
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.ao, %bb.e ], [ %lpad.loopexit.split-lp60, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp60, %bb.j ]
  %i.dn = load i32, ptr %i.g, align 8, !tbaa !29
  %i.do = add nsw i32 %i.dn, -1                   ; 2 uses
  store i32 %i.do, ptr %i.g, align 8, !tbaa !29
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.n, label %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit41

bb.n:                                             ; preds = %.body
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(160) %i.b) #22, !inline_history !193
  br label %_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit41

_ZN5Ipopt8SmartPtrIKNS_16DenseVectorSpaceEED2Ev.exit41: ; preds = %bb.n, %.body
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5Ipopt17MultiVectorMatrix19HasValidNumbersImplEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !64
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %._crit_edge.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.h = phi ptr [ %i.b, %.lr.ph ], [ %i.aa, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.c, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  br label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit:    ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.k, %bb.b ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 200 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !207
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !85
  %.not.i7 = icmp eq i32 %i.p, %i.r
  br i1 %.not.i7, label %._crit_edge.i, label %_ZNK5Ipopt6Vector15HasValidNumbersEv.exit

._crit_edge.i:                                    ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 204
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !208, !range !75
  %i.s = trunc nuw i8 %.pre.i to i1
  br i1 %i.s, label %bb.d, label %._crit_edge.i._crit_edge

_ZNK5Ipopt6Vector15HasValidNumbersEv.exit:        ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit
  %i.t = load ptr, ptr %.0.i, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 216
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(205) %.0.i), !inline_history !205 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 204
  %i.y = zext i1 %i.w to i8
  store i8 %i.y, ptr %i.x, align 4, !tbaa !208
  %i.z = load i32, ptr %i.q, align 8, !tbaa !85
  store i32 %i.z, ptr %i.o, align 8, !tbaa !207
  br i1 %i.w, label %_ZNK5Ipopt6Vector15HasValidNumbersEv.exit._crit_edge, label %._crit_edge.i._crit_edge

_ZNK5Ipopt6Vector15HasValidNumbersEv.exit._crit_edge: ; preds = %_ZNK5Ipopt6Vector15HasValidNumbersEv.exit
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5Ipopt6Vector15HasValidNumbersEv.exit._crit_edge, %._crit_edge.i
  %i.aa = phi ptr [ %.pre, %_ZNK5Ipopt6Vector15HasValidNumbersEv.exit._crit_edge ], [ %i.h, %._crit_edge.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !64
  %i.ad = sext i32 %i.ac to i64
  %.not = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %.not, label %bb.b, label %._crit_edge.i._crit_edge, !llvm.loop !206

._crit_edge.i._crit_edge:                         ; preds = %bb.d, %_ZNK5Ipopt6Vector15HasValidNumbersEv.exit, %._crit_edge.i, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %._crit_edge.i ], [ false, %_ZNK5Ipopt6Vector15HasValidNumbersEv.exit ], [ true, %bb.d ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK5Ipopt17MultiVectorMatrix18ComputeRowAMaxImplERNS_6VectorEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i1 zeroext %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = tail call ptr @__cxa_allocate_exception(i64 112) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 53, ptr %i.c, align 8, !tbaa !99
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %4, align 8, !tbaa !101
  %i.g = load i64, ptr %i.c, align 8, !tbaa !99   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.f, ptr noundef nonnull align 1 dereferenceable(53) @.str, i64 53, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 30, ptr %i.b, align 8, !tbaa !99
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc10 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc10:                                         ; preds = %.noexc
  store ptr %i.k, ptr %5, align 8, !tbaa !101
  %i.l = load i64, ptr %i.b, align 8, !tbaa !99   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.k, ptr noundef nonnull align 1 dereferenceable(30) @.str.1, i64 30, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !103
  %i.n = load ptr, ptr %5, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 34, ptr %i.a, align 8, !tbaa !99
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.c   ; 3 uses

.noexc12:                                         ; preds = %.noexc10
  store ptr %i.q, ptr %3, align 8, !tbaa !101
  %i.r = load i64, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.q, ptr noundef nonnull align 1 dereferenceable(34) @.str.9, i64 34, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 293, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc12
  %i.u = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.p
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.w = load i64, ptr %i.p, align 8, !tbaa !102
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.b:                                             ; preds = %.noexc12
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.p
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.b
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !102
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE, i64 16), ptr %i.d, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #24
          to label %bb.f unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread: ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.c:                                             ; preds = %.noexc10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %.0 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ true, %.noexc10 ]
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.c
  %.0.lpad-body = phi i1 [ %.0, %bb.c ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.c ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ] ; 4 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.j
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !102
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aj = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.e
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.am = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !102
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #23
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %6 = load i64, ptr %i.h, align 8, !tbaa !103
  %7 = icmp ult i64 %6, 16
  call void @llvm.assume(i1 %7)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !102
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ar) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.lpad-body, label %bb.d, label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.lpad-body, label %bb.d, label %bb.e

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread
  %.pn.pn20.ph = phi { ptr, i32 } [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn20 = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn20.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.d
  %.pn.pn19 = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn20, %bb.d ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  resume { ptr, i32 } %.pn.pn19

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !102
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !101  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !102
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !102
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noreturn uwtable
define void @_ZNK5Ipopt17MultiVectorMatrix18ComputeColAMaxImplERNS_6VectorEb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i1 zeroext %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.d = tail call ptr @__cxa_allocate_exception(i64 112) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 53, ptr %i.c, align 8, !tbaa !99
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %4, align 8, !tbaa !101
  %i.g = load i64, ptr %i.c, align 8, !tbaa !99   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(53) %i.f, ptr noundef nonnull align 1 dereferenceable(53) @.str.2, i64 53, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 30, ptr %i.b, align 8, !tbaa !99
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc10 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc10:                                         ; preds = %.noexc
  store ptr %i.k, ptr %5, align 8, !tbaa !101
  %i.l = load i64, ptr %i.b, align 8, !tbaa !99   ; 3 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.k, ptr noundef nonnull align 1 dereferenceable(30) @.str.1, i64 30, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !103
  %i.n = load ptr, ptr %5, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 34, ptr %i.a, align 8, !tbaa !99
  %i.q = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.c   ; 3 uses

.noexc12:                                         ; preds = %.noexc10
  store ptr %i.q, ptr %3, align 8, !tbaa !101
  %i.r = load i64, ptr %i.a, align 8, !tbaa !99   ; 3 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.q, ptr noundef nonnull align 1 dereferenceable(34) @.str.9, i64 34, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.r, ptr %i.s, align 8, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r
  store i8 0, ptr %i.t, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 301, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc12
  %i.u = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.p
  br i1 %i.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.w = load i64, ptr %i.p, align 8, !tbaa !102
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.b:                                             ; preds = %.noexc12
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %3, align 8, !tbaa !101    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.p
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.b
  %i.ab = load i64, ptr %i.p, align 8, !tbaa !102
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE, i64 16), ptr %i.d, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN5Ipopt34UNIMPLEMENTED_LINALG_METHOD_CALLEDE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #24
          to label %bb.f unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread: ; preds = %.noexc.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.c:                                             ; preds = %.noexc10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %.0 = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ], [ true, %.noexc10 ]
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.c
  %.0.lpad-body = phi i1 [ %.0, %bb.c ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ] ; 2 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.c ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ] ; 4 uses
  %i.af = load ptr, ptr %5, align 8, !tbaa !101   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.j
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.ah = load i64, ptr %i.j, align 8, !tbaa !102
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.aj = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.e
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.am = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !102
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #23
  br label %.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %6 = load i64, ptr %i.h, align 8, !tbaa !103
  %7 = icmp ult i64 %6, 16
  call void @llvm.assume(i1 %7)
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !102
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.ar) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.lpad-body, label %bb.d, label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br i1 %.0.lpad-body, label %bb.d, label %bb.e

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread
  %.pn.pn20.ph = phi { ptr, i32 } [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread27 ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn20 = phi { ptr, i32 } [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn20.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %bb.d
  %.pn.pn19 = phi { ptr, i32 } [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %.pn.pn20, %bb.d ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  resume { ptr, i32 } %.pn.pn19

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5Ipopt17MultiVectorMatrix9PrintImplERKNS_10JournalistENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSD_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(32) %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %8 = alloca %"class.Ipopt::SmartPtr.36", align 8 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void (ptr, i32, i32, ptr, ...) %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.3)
  %i.f = load ptr, ptr %6, align 8, !tbaa !101
  %i.g = load ptr, ptr %4, align 8, !tbaa !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !64
  %i.l = load ptr, ptr %1, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void (ptr, i32, i32, i32, ptr, ...) %i.n(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @.str.4, ptr noundef %i.f, ptr noundef %i.g, i32 noundef %i.k)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !64
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = add nsw i32 %5, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.o, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 7 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit:    ; preds = %bb.b
  %i.ab = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.n, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread: ; preds = %bb.b, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.ae = load ptr, ptr %4, align 8, !tbaa !101
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
  %i.ag = call noundef i32 (ptr, i64, ptr, ...) @_ZN5Ipopt8SnprintfEPclPKcz(ptr noundef nonnull %i.b, i64 noundef 255, ptr noundef nonnull @.str.5, ptr noundef %i.ae, i32 noundef %i.af) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %i.u, ptr %7, align 8, !tbaa !98
  %i.ah = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !99
  %i.ai = icmp ugt i64 %i.ah, 15
  br i1 %i.ai, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread
  %i.aj = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aj, ptr %7, align 8, !tbaa !101
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !99
  store i64 %i.ak, ptr %i.u, align 8, !tbaa !102
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread
  %i.al = phi ptr [ %i.aj, %.noexc.i ], [ %i.u, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.thread ] ; 2 uses
  switch i64 %i.ah, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.am = load i8, ptr %i.b, align 16, !tbaa !102
  store i8 %i.am, ptr %i.al, align 1, !tbaa !102
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 16 %i.b, i64 %i.ah, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.an = load i64, ptr %i.a, align 8, !tbaa !99  ; 2 uses
  store i64 %i.an, ptr %i.v, align 8, !tbaa !103
  %i.ao = load ptr, ptr %7, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !42 ; 2 uses
  %.not.i33 = icmp eq ptr %i.as, null
  br i1 %.not.i33, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0.i34 = phi ptr [ %i.av, %bb.f ], [ %i.as, %bb.e ]
  %i.aw = load i32, ptr %i.w, align 8, !tbaa !29
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.w, align 8, !tbaa !29
  store ptr %1, ptr %8, align 8, !tbaa !213
  invoke void @_ZNK5Ipopt6Vector5PrintENS_8SmartPtrIKNS_10JournalistEEENS_13EJournalLevelENS_16EJournalCategoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSE_(ptr noundef nonnull align 8 dereferenceable(205) %.0.i34, ptr noundef nonnull align 8 %8, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %8, align 8, !tbaa !213   ; 4 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !29
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !29
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

bb.j:                                             ; preds = %bb.i
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #22, !inline_history !209
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit:   ; preds = %bb.h, %bb.i, %bb.j
  %i.bg = load ptr, ptr %7, align 8, !tbaa !101   ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.u
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit
  %i.bi = load i64, ptr %i.u, align 8, !tbaa !102
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %8, align 8, !tbaa !213   ; 4 uses
  %.not.i.i36 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i36, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !29
  %i.bo = add nsw i32 %i.bn, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.bm, align 8, !tbaa !29
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit37

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #22, !inline_history !209
  br label %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit37

_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit37: ; preds = %bb.m, %bb.l, %bb.k
  %i.bt = load ptr, ptr %7, align 8, !tbaa !101   ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.u
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN5Ipopt8SmartPtrIKNS_10JournalistEED2Ev.exit37
  %i.bv = load i64, ptr %i.u, align 8, !tbaa !102
  %i.bw = add i64 %i.bv, 1
end_hunk_0
