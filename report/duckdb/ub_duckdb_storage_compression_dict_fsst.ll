inline.NumInlined: 1572
inline.NumDeleted: 732
begin_hunk_0_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  br label %bb.l

bb.l:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit54, %_ZNK6duckdb15SelectionVector9get_indexEm.exit51
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !370 ; 14 uses
  %i.bn = icmp ugt i64 %i.bm, %i.be
  br i1 %i.bn, label %bb.m, label %.preheader

end_hunk_0
begin_hunk_1_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2                 ; 5 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.bu) ; 5 uses
  %i.bv = xor i64 %i.bm, -1
  %i.bw = add i64 %i.be, %i.bv
  %8 = sub i64 %umax, %i.bm
  %umin89 = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 %8)
  %i.bx = add i64 %umin89, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.bx, 7
end_hunk_1
begin_hunk_2_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  %scevgep86 = getelementptr i8, ptr %i.bq, i64 4
  %i.bz = xor i64 %i.bm, -1
  %i.ca = add i64 %i.be, %i.bz
  %9 = sub i64 %umax, %i.bm
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 %9)
  %i.cb = add i64 %i.bm, %umin
  %i.cc = shl i64 %i.cb, 2
end_hunk_2
begin_hunk_3_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  %n.vec = sub i64 %i.bx, %i.ce                   ; 2 uses
  %i.cf = add i64 %i.bm, %n.vec
  %i.cg = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  %i.ch = add i64 %i.bm, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_3
begin_hunk_4_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  %wide.load91 = load <2 x i32>, ptr %i.cl, align 4, !tbaa !3, !alias.scope !372
  %i.cm = add <2 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.cn = add <2 x i32> %vec.phi90, %wide.load91  ; 2 uses
  %i.co = add i64 %i.ci, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cp = add i64 %i.ci, 4
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !375

end_hunk_4
begin_hunk_5_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.ph92, ptr %i.b, align 8, !tbaa !46
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !46
  %exitcond69.not.prol = icmp eq i64 %.ph92, %umax
  br i1 %exitcond69.not.prol, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol:      ; preds = %scalar.ph.prol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_5
begin_hunk_6_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = add i32 %.ph, %i.cv                     ; 3 uses
  store i32 %i.cw, ptr %i.w, align 8, !tbaa !371
  %i.cx = add i64 %.ph92, 1                       ; 2 uses
  store i64 %i.cx, ptr %i.t, align 8, !tbaa !370
  br label %scalar.ph.prol.loopexit

end_hunk_6
begin_hunk_7_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.dg, ptr %i.b, align 8, !tbaa !46
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !46
  %exitcond69.not = icmp eq i64 %i.dg, %umax
  br i1 %exitcond69.not, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit, !prof !53

.noexc.i:                                         ; preds = %scalar.ph.prol, %scalar.ph, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  %i.dh = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
end_hunk_7
begin_hunk_8_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !3
  %i.dt = add i32 %i.df, %i.ds                    ; 2 uses
  store i32 %i.dt, ptr %i.w, align 8, !tbaa !371
  %i.du = add i64 %i.dg, 1                        ; 4 uses
  store i64 %i.du, ptr %i.t, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.du, ptr %i.b, align 8, !tbaa !46
  store i64 %i.bu, ptr %i.c, align 8, !tbaa !46
  %exitcond69.not.1 = icmp eq i64 %i.du, %umax
  br i1 %exitcond69.not.1, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.1:         ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
end_hunk_8
begin_hunk_9_@_ZN6duckdb9dict_fsst25CompressedStringScanState16ScanToFlatVectorERNS_6VectorEmmm:bb.a
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !3
  %i.dx = add i32 %i.dt, %i.dw                    ; 3 uses
  store i32 %i.dx, ptr %i.w, align 8, !tbaa !371
  %i.dy = add i64 %i.dg, 2                        ; 3 uses
  store i64 %i.dy, ptr %i.t, align 8, !tbaa !370
  %exitcond69.not.1.a = icmp eq i64 %i.dy, %i.be
  br i1 %exitcond69.not.1.a, label %._crit_edge, label %scalar.ph, !llvm.loop !382
end_hunk_9
begin_hunk_10_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm
define void @_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, i64 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.94", align 1 ; 5 uses
end_hunk_10
begin_hunk_11_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
  br i1 %.not, label %._crit_edge31, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 100
  %8 = add i64 %2, 1
  br label %bb.b

._crit_edge31:                                    ; preds = %._crit_edge, %bb.a
end_hunk_11
begin_hunk_12_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.n, %bb.c ], [ %.028, %bb.b ] ; 4 uses
  %i.p = add i64 %i.d, %i.o                       ; 4 uses
  %i.q = load i64, ptr %i.g, align 8, !tbaa !370  ; 14 uses
  %i.r = icmp ugt i64 %i.q, %i.p
  br i1 %i.r, label %bb.d, label %.preheader

end_hunk_12
begin_hunk_13_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a

.lr.ph:                                           ; preds = %.preheader
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !197
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !163  ; 7 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2                   ; 5 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.y) ; 5 uses
  %i.z = add i64 %2, %i.o
  %i.aa = sub i64 %i.z, %i.q
  %9 = sub i64 %umax, %i.q
  %umin45 = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %9)
  %i.ab = add i64 %umin45, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck
end_hunk_13
begin_hunk_14_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
  %scevgep42 = getelementptr i8, ptr %i.u, i64 4
  %i.ad = add i64 %2, %i.o
  %i.ae = sub i64 %i.ad, %i.q
  %10 = sub i64 %umax, %i.q
  %umin = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %10)
  %i.af = add i64 %i.q, %umin
  %i.ag = shl i64 %i.af, 2
  %scevgep43 = getelementptr i8, ptr %scevgep42, i64 %i.ag
end_hunk_14
begin_hunk_15_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
  %n.vec = sub i64 %i.ab, %i.ai                   ; 2 uses
  %i.aj = add i64 %i.q, %n.vec
  %i.ak = insertelement <2 x i32> <i32 poison, i32 0>, i32 %.pre, i64 0
  %i.al = add i64 %i.q, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_15
begin_hunk_16_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
  %wide.load47 = load <2 x i32>, ptr %i.ap, align 4, !tbaa !3, !alias.scope !384
  %i.aq = add <2 x i32> %vec.phi, %wide.load      ; 2 uses
  %i.ar = add <2 x i32> %vec.phi46, %wide.load47  ; 2 uses
  %i.as = add i64 %i.am, 3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.at = add i64 %i.am, 4
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !387

end_hunk_16
begin_hunk_17_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.ph = phi i32 [ %.pre, %vector.memcheck ], [ %.pre, %.lr.ph ], [ %i.av, %middle.block ] ; 2 uses
  %.ph48 = phi i64 [ %i.q, %vector.memcheck ], [ %i.q, %.lr.ph ], [ %i.aj, %middle.block ] ; 6 uses
  %11 = add i64 %8, %i.o
  %12 = sub i64 %11, %.ph48
  %13 = freeze i64 %12                            ; 2 uses
  %xtraiter = and i64 %13, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.ph48, ptr %i.b, align 8, !tbaa !46
  store i64 %i.y, ptr %i.c, align 8, !tbaa !46
  %exitcond.not.prol = icmp eq i64 %.ph48, %umax
  br i1 %exitcond.not.prol, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol:      ; preds = %scalar.ph.prol
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %14 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.ph48
  %15 = load i32, ptr %14, align 4, !tbaa !3
  %16 = add i32 %.ph, %15                         ; 3 uses
  store i32 %16, ptr %i.j, align 8, !tbaa !371
  %17 = add i64 %.ph48, 1                         ; 2 uses
  store i64 %17, ptr %i.g, align 8, !tbaa !370
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol, %scalar.ph.preheader
  %.lcssa50.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %16, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %.unr = phi i32 [ %.ph, %scalar.ph.preheader ], [ %16, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %.unr51 = phi i64 [ %.ph48, %scalar.ph.preheader ], [ %17, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.prol ]
  %18 = icmp eq i64 %13, 1
  br i1 %18, label %._crit_edge, label %scalar.ph

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
end_hunk_17
begin_hunk_18_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.a
  %i.bc = phi i32 [ %i.bq, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.a ], [ %.unr, %scalar.ph.prol.loopexit ]
  %i.bd = phi i64 [ %i.br, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.a ], [ %.unr51, %scalar.ph.prol.loopexit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !46
  store i64 %i.y, ptr %i.c, align 8, !tbaa !46
  %exitcond.not = icmp eq i64 %i.bd, %umax
  br i1 %exitcond.not, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit, !prof !53

.noexc.i:                                         ; preds = %scalar.ph.prol, %scalar.ph, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  %i.be = tail call ptr @__cxa_allocate_exception(i64 16) #24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
end_hunk_18
begin_hunk_19_@_ZN6duckdb9dict_fsst25CompressedStringScanState6SelectERNS_6VectorEmRKNS_15SelectionVectorEm:bb.a
bb.j:                                             ; preds = %bb.h
  unreachable

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit:           ; preds = %scalar.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %19 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.bd
  %20 = load i32, ptr %19, align 4, !tbaa !3
  %21 = add i32 %i.bc, %20                        ; 2 uses
  store i32 %21, ptr %i.j, align 8, !tbaa !371
  %22 = add i64 %i.bd, 1                          ; 4 uses
  store i64 %22, ptr %i.g, align 8, !tbaa !370
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %22, ptr %i.b, align 8, !tbaa !46
  store i64 %i.y, ptr %i.c, align 8, !tbaa !46
  %exitcond.not.1 = icmp eq i64 %22, %umax
  br i1 %exitcond.not.1, label %.noexc.i, label %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.a, !prof !53

_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.a:         ; preds = %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %22
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = add i32 %21, %i.bp                      ; 3 uses
  store i32 %i.bq, ptr %i.j, align 8, !tbaa !371
  %i.br = add i64 %i.bd, 2                        ; 3 uses
  store i64 %i.br, ptr %i.g, align 8, !tbaa !370
  %exitcond.not.a = icmp eq i64 %i.br, %i.p
  br i1 %exitcond.not.a, label %._crit_edge, label %scalar.ph, !llvm.loop !390

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.a, %.preheader
  %23 = phi i32 [ %.pre, %.preheader ], [ %.lcssa50.unr, %scalar.ph.prol.loopexit ], [ %i.bq, %_ZN6duckdb6vectorIjLb1ESaIjEEixEm.exit.a ]
  %i.bs = tail call { i64, ptr } @_ZN6duckdb9dict_fsst25CompressedStringScanState19FetchStringFromDictERNS_6VectorEjm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i32 noundef %23, i64 noundef %i.p) ; 2 uses
  %i.bt = extractvalue { i64, ptr } %i.bs, 0
  %i.bu = extractvalue { i64, ptr } %i.bs, 1
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.028 ; 2 uses
end_hunk_19
begin_hunk_20_@llvm.umax.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_20
