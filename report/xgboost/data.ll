Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/data?download=true
inline.NumInlined: 10971
inline.NumDeleted: 3124
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 110
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZN12_GLOBAL__N_115SaveTensorFieldIfLi2EEEvPN4dmlc6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost8DataTypeERKNSC_6linalg6TensorIT_XT0_EEE:bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !210
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !209
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  store i64 %i.at, ptr %i.a, align 8, !tbaa !74
  %i.au = load ptr, ptr %0, align 8, !tbaa !70
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !492 ; 0 uses
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !74
  %.not.i.i.i.i11 = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i.i11, label %_ZN4dmlc6Stream5WriteISt6vectorIfSaIfEEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit
  %i.az = load ptr, ptr %i.am, align 8, !tbaa !209 ; 2 uses
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !210
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = load ptr, ptr %0, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.az, i64 noundef %i.bd), !inline_history !493 ; 0 uses
  br label %_ZN4dmlc6Stream5WriteISt6vectorIfSaIfEEEEvRKT_.exit

_ZN4dmlc6Stream5WriteISt6vectorIfSaIfEEEEvRKT_.exit: ; preds = %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115SaveVectorFieldIfEEvPN4dmlc6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost8DataTypeESt4pairImmERKNSC_16HostDeviceVectorIT_EE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.std::pair", align 8        ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store i64 %2, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %3, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !120
  store i64 %i.h, ptr %i.b, align 8, !tbaa !74
  %i.i = load ptr, ptr %0, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8), !inline_history !494 ; 0 uses
  %i.m = load i64, ptr %i.b, align 8, !tbaa !74
  %.not.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !56
  %i.o = load i64, ptr %i.g, align 8, !tbaa !120
  %i.p = load ptr, ptr %0, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.n, i64 noundef %i.o), !inline_history !495 ; 0 uses
  br label %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i

_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i8 1, ptr %i.c, align 1, !tbaa !57
  %i.t = load ptr, ptr %0, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 noundef 1), !inline_history !496 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i8 0, ptr %i.d, align 1, !tbaa !212
  %i.x = load ptr, ptr %0, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 noundef 1), !inline_history !497 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ab = load ptr, ptr %0, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 8), !inline_history !498 ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 8), !inline_history !498 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !210
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !209
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 2
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !74
  %i.aq = load ptr, ptr %0, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !499 ; 0 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !74
  %.not.i.i.i.i8.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i8.i, label %_ZN12_GLOBAL__N_115SaveVectorFieldIfEEvPN4dmlc6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost8DataTypeESt4pairImmERKSt6vectorIT_SaISH_EE.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !209 ; 2 uses
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !210
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = load ptr, ptr %0, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.av, i64 noundef %i.az), !inline_history !500 ; 0 uses
  br label %_ZN12_GLOBAL__N_115SaveVectorFieldIfEEvPN4dmlc6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost8DataTypeESt4pairImmERKSt6vectorIT_SaISH_EE.exit

_ZN12_GLOBAL__N_115SaveVectorFieldIfEEvPN4dmlc6StreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost8DataTypeESt4pairImmERKSt6vectorIT_SaISH_EE.exit: ; preds = %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

declare noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_115SaveVectorFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvPN4dmlc6StreamERKS6_N7xgboost8DataTypeESt4pairImmERKSt6vectorIT_SaISH_EE(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 %2, i64 %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.std::pair", align 8        ; 3 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  store i64 %2, ptr %5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %3, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !120
  store i64 %i.h, ptr %i.c, align 8, !tbaa !74
  %i.i = load ptr, ptr %0, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 8), !inline_history !6 ; 0 uses
  %i.m = load i64, ptr %i.c, align 8, !tbaa !74
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !tbaa !56
  %i.o = load i64, ptr %i.g, align 8, !tbaa !120
  %i.p = load ptr, ptr %0, align 8, !tbaa !70
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.n, i64 noundef %i.o), !inline_history !7 ; 0 uses
  br label %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit

_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i8 5, ptr %i.d, align 1, !tbaa !57
  %i.t = load ptr, ptr %0, align 8, !tbaa !70
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 noundef 1), !inline_history !8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i8 0, ptr %i.e, align 1, !tbaa !212
  %i.x = load ptr, ptr %0, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 noundef 1), !inline_history !9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.ab = load ptr, ptr %0, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 8), !inline_history !4 ; 0 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !70
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 8), !inline_history !4 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !205
  %i.al = load ptr, ptr %4, align 8, !tbaa !204
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 5
  store i64 %i.ap, ptr %i.b, align 8, !tbaa !74
  %i.aq = load ptr, ptr %0, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8), !inline_history !501 ; 0 uses
  %i.au = load ptr, ptr %i.aj, align 8, !tbaa !205 ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !204   ; 3 uses
  %i.aw = icmp eq ptr %i.au, %i.av                ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.aw, ptr null, ptr %i.av
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 5
  br i1 %i.aw, label %_ZN4dmlc6Stream5WriteISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRKT_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit, %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi i64 [ %i.bp, %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i ], [ 0, %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i.i.i.i.i, i64 %.05.i.i.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !120
  store i64 %i.bd, ptr %i.a, align 8, !tbaa !74
  %i.be = load ptr, ptr %0, align 8, !tbaa !70
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8), !inline_history !502 ; 0 uses
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !74
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !56
  %i.bk = load i64, ptr %i.bc, align 8, !tbaa !120
  %i.bl = load ptr, ptr %0, align 8, !tbaa !70
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = call noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.bj, i64 noundef %i.bk), !inline_history !503 ; 0 uses
  br label %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i

_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bp = add nuw i64 %.05.i.i.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bp, %i.ba
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN4dmlc6Stream5WriteISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRKT_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !504

_ZN4dmlc6Stream5WriteISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEEvRKT_.exit: ; preds = %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit.i.i.i.i.i, %_ZN4dmlc6Stream5WriteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7xgboost10JsonObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7xgboost10JsonObjectE, i64 16), ptr %0, align 8, !tbaa !70
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7xgboost4JsonEESt10_Select1stISA_ESt4lessIvESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #38
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN7xgboost4JsonESt4lessIvESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZNK7xgboost12CatContainer4SaveEPNS_4JsonE(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef) local_unnamed_addr #4

declare void @_ZN7xgboost4Json4DumpES0_PSt6vectorIcSaIcEESt13_Ios_Openmode(ptr noundef align 8, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7xgboost15LoadFeatureTypeERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEPS0_INS_11FeatureTypeESaISB_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !506    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 17 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !507
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN7xgboost11FeatureTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7xgboost11FeatureTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !507
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN7xgboost11FeatureTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.d = load ptr, ptr %0, align 8, !tbaa !169    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169  ; 2 uses
  %.not80 = icmp eq ptr %i.d, %i.f
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE5clearEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 15 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE5clearEv.exit
  %.0.lcssa = phi i1 [ false, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE5clearEv.exit ], [ %.1, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ]
  ret i1 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.082 = phi i1 [ false, %.lr.ph ], [ %.1, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 9 uses
  %.sroa.065.081 = phi ptr [ %i.d, %.lr.ph ], [ %i.dz, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.065.081, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !120  ; 3 uses
  switch i64 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread72 [
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit27
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.b
  %i.j = load ptr, ptr %.sroa.065.081, align 8, !tbaa !56 ; 2 uses
  %i.k = load i16, ptr %i.j, align 1
  %i.l = xor i16 %i.k, 28265
  %i.m = getelementptr i8, ptr %i.j, i64 2
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i16
  %i.p = xor i16 %i.o, 116
  %i.q = or i16 %i.l, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread72

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !507  ; 4 uses
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !508
  %.not.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  store i8 0, ptr %i.u, align 1, !tbaa !228
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store ptr %i.w, ptr %i.b, align 8, !tbaa !507
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.d:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.x = load ptr, ptr %1, align 8, !tbaa !506    ; 4 uses
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ab, label %bb.e, label %_ZNKSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #41
  unreachable

_ZNKSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ac = add i64 %.sroa.speculated.i.i.i, %i.aa  ; 2 uses
  %i.ad = icmp ult i64 %i.ac, %i.aa
  %i.ae = call i64 @llvm.umin.i64(i64 %i.ac, i64 9223372036854775807)
  %i.af = select i1 %i.ad, i64 9223372036854775807, i64 %i.ae ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.af, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #40 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.aa ; 2 uses
  store i8 0, ptr %i.ah, align 1, !tbaa !228
  %i.ai = icmp sgt i64 %i.aa, 0
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ak = load ptr, ptr %i.g, align 8, !tbaa !508
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.am) #39
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ag, ptr %1, align 8, !tbaa !506
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !507
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  store ptr %i.an, ptr %i.g, align 8, !tbaa !508
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17: ; preds = %bb.b
  %.pre = load ptr, ptr %.sroa.065.081, align 8, !tbaa !56
  %bcmp.i16 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.21, i64 %i.i)
  %i.ao = icmp eq i32 %bcmp.i16, 0
  br i1 %i.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit47.thread72

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !507 ; 4 uses
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !508
  %.not.i18 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not.i18, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread
  store i8 0, ptr %i.ap, align 1, !tbaa !228
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !507
  br label %_ZNSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit17.thread
  %i.as = load ptr, ptr %1, align 8, !tbaa !506   ; 4 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au                    ; 7 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775807
  br i1 %i.aw, label %bb.j, label %_ZNKSt6vectorIN7xgboost11FeatureTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i19

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.211) #41
end_hunk_0
