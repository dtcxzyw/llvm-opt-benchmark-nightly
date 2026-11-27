Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_heuristics?download=true
inline.NumInlined: 3479
inline.NumDeleted: 1820
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !421
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %5, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #28, !noalias !421
  %i.v = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, i64 noundef 0) #28, !noalias !421 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 3 uses
  br i1 %i.w, label %.critedge.i25, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.v, ptr %i.x, align 8, !tbaa !111, !alias.scope !421
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26

.critedge.i25:                                    ; preds = %bb.d
  store i32 0, ptr %i.x, align 8, !tbaa !111, !alias.scope !421
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %9, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !108, !noalias !421
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !108, !alias.scope !421
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26: ; preds = %bb.e, %.critedge.i25
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !421
  %.pre47 = load i32, ptr %i.x, align 8, !tbaa !111 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.af = icmp eq i32 %.pre47, 0
  br i1 %i.af, label %bb.f, label %.thread43

.thread43:                                        ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.pre47, ptr %i.ag, align 8, !tbaa !107
  br label %bb.l

bb.f:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(60) %9, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.ai) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !108, !noalias !422
  store i64 %i.al, ptr %i.aj, align 8, !tbaa !108, !alias.scope !422
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !423
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %i.a, i32 noundef %i.b, i64 noundef 4) #28, !noalias !423
  %i.am = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %1, i64 noundef 0) #28, !noalias !423 ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 3 uses
  br i1 %i.an, label %.critedge.i27, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !111, !alias.scope !423
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit28

.critedge.i27:                                    ; preds = %bb.f
  store i32 0, ptr %i.ao, align 8, !tbaa !111, !alias.scope !423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %11, ptr noundef nonnull align 8 dereferenceable(56) %4, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.at = load i64, ptr %i.as, align 8, !tbaa !108, !noalias !423
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !108, !alias.scope !423
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit28

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit28: ; preds = %bb.g, %.critedge.i27
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.au) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !423
  %.pre49 = load i32, ptr %i.ao, align 8, !tbaa !111 ; 2 uses
  %i.av = icmp eq i32 %.pre49, 0
  br i1 %i.av, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit28
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 %.pre49, ptr %i.aw, align 8, !tbaa !107
  br label %bb.j

bb.h:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit28
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(60) %11, i64 24, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.az) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !108, !noalias !424
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !108, !alias.scope !424
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bd, i8 0, i64 144, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %13, ptr noundef nonnull align 8 dereferenceable(56) %8, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 3 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.q) #28 ; 0 uses
  %i.bg = load i64, ptr %i.s, align 8, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !108
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 3 uses
  %i.bk = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #28 ; 0 uses
  %i.bl = load i64, ptr %i.aj, align 8, !tbaa !108
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 104 ; 2 uses
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 3 uses
  %i.bp = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.ay) #28 ; 0 uses
  %i.bq = load i64, ptr %i.ba, align 8, !tbaa !108
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 160 ; 2 uses
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !108
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(148) %i.bs, i8 0, i64 148, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(168) %13, i64 24, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #28 ; 0 uses
  %i.bv = load i64, ptr %i.bh, align 8, !tbaa !108
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bx, ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bz = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bj) #28 ; 0 uses
  %i.ca = load i64, ptr %i.bm, align 8, !tbaa !108
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !108
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cc, ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i64 24, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ce = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.bo) #28 ; 0 uses
  %i.cf = load i64, ptr %i.br, align 8, !tbaa !108
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !108
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bo) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bj) #28
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.be) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ay) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.pr = load i32, ptr %i.ax, align 8, !tbaa !111
  %i.ch = icmp eq i32 %.pr, 0
  br i1 %i.ch, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.az) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ah) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.pr42 = load i32, ptr %i.ae, align 8, !tbaa !111
  %i.ci = icmp eq i32 %.pr42, 0
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ai) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.thread43
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pr44 = load i32, ptr %i.m, align 8, !tbaa !111
  %i.cj = icmp eq i32 %.pr44, 0
  br i1 %i.cj, label %bb.m, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit30

bb.m:                                             ; preds = %bb.l
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.r) #28
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit30

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit30:       ; preds = %.thread45, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i32 @_ZN3jxl12_GLOBAL__N_124DownsampleImage2_SharperERKNS_5PlaneIfEEPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.jxl::Plane.61", align 8     ; 8 uses
  %3 = alloca %"class.jxl::Plane.61", align 8     ; 8 uses
  %4 = alloca %"class.jxl::StatusOr.62", align 8  ; 9 uses
  %5 = alloca %"class.jxl::Plane.61", align 8     ; 13 uses
  %6 = alloca %"class.jxl::StatusOr.62", align 8  ; 7 uses
  %7 = alloca %"class.jxl::Plane.61", align 8     ; 6 uses
  %8 = alloca %"class.jxl::StatusOr.62", align 8  ; 9 uses
  %9 = alloca %"class.jxl::Plane.61", align 8     ; 7 uses
  %i.a = alloca [12 x ptr], align 16              ; 17 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !89   ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !442
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %3, i32 noundef %i.d, i32 noundef %i.g, i64 noundef 4) #28, !noalias !442
  %i.i = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %i.c, i64 noundef 0) #28, !noalias !442 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 4 uses
  br i1 %i.j, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.i, ptr %i.k, align 8, !tbaa !111, !alias.scope !442
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

.critedge.i:                                      ; preds = %bb.a
  store i32 0, ptr %i.k, align 8, !tbaa !111, !alias.scope !442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.p = load i64, ptr %i.o, align 8, !tbaa !108, !noalias !442
  store i64 %i.p, ptr %i.n, align 8, !tbaa !108, !alias.scope !442
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit: ; preds = %bb.b, %.critedge.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.q) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !442
  %i.r = load i32, ptr %i.k, align 8, !tbaa !111  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.c, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit107

bb.c:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !443)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(60) %4, i64 24, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.u) #28
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !108, !noalias !443
  store i64 %i.x, ptr %i.v, align 8, !tbaa !108, !alias.scope !443
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.y = load i32, ptr %0, align 8, !tbaa !88, !noalias !444 ; 2 uses
  %i.z = load i32, ptr %5, align 8, !tbaa !88, !alias.scope !444
  %i.aa = icmp eq i32 %i.y, %i.z
  %i.ab = load i32, ptr %i.f, align 4, !noalias !444 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !444
  %i.ae = icmp eq i32 %i.ab, %i.ad
  %i.af = select i1 %i.aa, i1 %i.ae, i1 false
  br i1 %i.af, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.ag = icmp ne i32 %i.ab, 0
  %i.ah = icmp ne i32 %i.y, 0
  %or.cond.not20.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.not20.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !91, !alias.scope !444
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !92, !alias.scope !444
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.015.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %bb.e ] ; 3 uses
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !91, !noalias !444
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !92, !noalias !444
  %i.aq = mul i64 %i.ap, %.015.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ar, i64 64) ]
  %i.as = mul i64 %.015.i, %i.an
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.as ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.at, i64 64) ]
  %i.au = load i32, ptr %0, align 8, !tbaa !88, !noalias !444
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.at, ptr align 64 %i.ar, i64 %i.aw, i1 false), !noalias !444
  %i.ax = add nuw nsw i64 %.015.i, 1              ; 2 uses
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !89, !noalias !444
  %i.az = zext i32 %i.ay to i64
  %i.ba = icmp samesign ult i64 %i.ax, %i.az
  br i1 %i.ba, label %bb.e, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZN3jxl15DownsampleImageERKNS_5PlaneIfEEm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr.62") align 8 %6, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 noundef 2) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !111 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.f, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit106

bb.f:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(60) %6, i64 24, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bf) #28
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !108, !noalias !445
  store i64 %i.bi, ptr %i.bg, align 8, !tbaa !108, !alias.scope !445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %7, i64 24, i1 false)
  %i.bj = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.be) #28 ; 0 uses
  %i.bk = load i64, ptr %i.bg, align 8, !tbaa !108
  store i64 %i.bk, ptr %i.v, align 8, !tbaa !108
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.be) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.bl = load i32, ptr %5, align 8, !tbaa !88
  %i.bm = load i32, ptr %i.ac, align 4, !tbaa !89
  call void @llvm.experimental.noalias.scope.decl(metadata !446)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !446
  call void @_ZN3jxl6detail9PlaneBaseC2Ejjm(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %i.bl, i32 noundef %i.bm, i64 noundef 4) #28, !noalias !446
  %i.bn = call i32 @_ZN3jxl6detail9PlaneBase8AllocateEP22JxlMemoryManagerStructm(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.c, i64 noundef 0) #28, !noalias !446 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 4 uses
  br i1 %i.bo, label %.critedge.i104, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %i.bn, ptr %i.bp, align 8, !tbaa !111, !alias.scope !446
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit105

.critedge.i104:                                   ; preds = %bb.f
  store i32 0, ptr %i.bp, align 8, !tbaa !111, !alias.scope !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %8, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.br) #28
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !108, !noalias !446
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !108, !alias.scope !446
  br label %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit105

_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit105: ; preds = %bb.g, %.critedge.i104
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bv) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !446
  %i.bw = load i32, ptr %i.bp, align 8, !tbaa !111 ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit105
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(60) %8, i64 24, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  call void @_ZN3jxl13AlignedMemoryC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.bz) #28
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !108, !noalias !447
  store i64 %i.cc, ptr %i.ca, align 8, !tbaa !108, !alias.scope !447
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val = load i64, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %.val103 = load ptr, ptr %i.ce, align 8
  call fastcc void @_ZN3jxl12_GLOBAL__N_110CreateMaskERKNS_5PlaneIfEERS2_(ptr noundef nonnull align 8 dereferenceable(56) %5, i64 %.val, ptr %.val103) #24
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !89 ; 4 uses
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %._crit_edge158, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !91 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !92
  %i.cm = load ptr, ptr %i.ce, align 8, !tbaa !91 ; 2 uses
  %i.cn = load i64, ptr %i.cd, align 8, !tbaa !92
  %i.co = add nsw i64 %i.h, -1                    ; 12 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !91 ; 12 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !92 ; 12 uses
  %i.ct = load i32, ptr %1, align 8, !tbaa !88    ; 2 uses
  %i.cu = zext i32 %i.ct to i64
  %.not159 = icmp eq i32 %i.ct, 0
  %i.cv = add nsw i64 %i.e, -1                    ; 12 uses
  br i1 %.not159, label %.lr.ph.split.peel.next167, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  br label %.lr.ph.split.us

.lr.ph.split.peel.next167:                        ; preds = %.lr.ph
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cj, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cm, i64 64) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %switch = icmp ult i32 %i.cg, 4
  br i1 %switch, label %._crit_edge158, label %.lr.ph.split.preheader249

.lr.ph.split.preheader249:                        ; preds = %.lr.ph.split.peel.next167
  %i.dh = add nsw i64 %i.ch, -3                   ; 2 uses
  %xtraiter = and i64 %i.dh, 7                    ; 3 uses
  %i.di = add i32 %i.cg, -4
  %i.dj = icmp ult i32 %i.di, 7
  br i1 %i.dj, label %.lr.ph.split.epil.preheader, label %.lr.ph.split.preheader249.new

.lr.ph.split.preheader249.new:                    ; preds = %.lr.ph.split.preheader249
  %unroll_iter = and i64 %i.dh, -8
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %._crit_edge.us
  %.093156.us = phi i64 [ %i.it, %._crit_edge.us ], [ 0, %.lr.ph.split.us.preheader ] ; 4 uses
  %i.dk = mul i64 %i.cl, %.093156.us
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.dk ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dl, i64 64) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.dm = mul i64 %i.cn, %.093156.us
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dm ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dn, i64 64) ]
  %i.do = shl nuw nsw i64 %.093156.us, 1          ; 13 uses
  %i.dp = call i64 @llvm.smax.i64(i64 %i.do, i64 5)
  %spec.store.select.us = add nsw i64 %i.dp, -5   ; 2 uses
  %.not100.us = icmp samesign ult i64 %spec.store.select.us, %i.h
  %spec.select.us = select i1 %.not100.us, i64 %spec.store.select.us, i64 %i.co
  %i.dq = mul i64 %i.cs, %spec.select.us
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dr, i64 64) ]
  store ptr %i.dr, ptr %i.a, align 16, !tbaa !448
  %i.ds = call i64 @llvm.smax.i64(i64 %i.do, i64 4)
  %spec.store.select.us.1 = add nsw i64 %i.ds, -4 ; 2 uses
  %.not100.us.1 = icmp samesign ult i64 %spec.store.select.us.1, %i.h
  %spec.select.us.1 = select i1 %.not100.us.1, i64 %spec.store.select.us.1, i64 %i.co
  %i.dt = mul i64 %i.cs, %spec.select.us.1
  %i.du = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dt ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.du, i64 64) ]
  store ptr %i.du, ptr %i.cw, align 8, !tbaa !448
  %i.dv = call i64 @llvm.smax.i64(i64 %i.do, i64 3)
  %spec.store.select.us.2 = add nsw i64 %i.dv, -3 ; 2 uses
  %.not100.us.2 = icmp samesign ult i64 %spec.store.select.us.2, %i.h
  %spec.select.us.2 = select i1 %.not100.us.2, i64 %spec.store.select.us.2, i64 %i.co
  %i.dw = mul i64 %i.cs, %spec.select.us.2
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dw ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.dx, i64 64) ]
  store ptr %i.dx, ptr %i.cx, align 16, !tbaa !448
  %i.dy = call i64 @llvm.smax.i64(i64 %i.do, i64 2)
  %spec.store.select.us.3 = add nsw i64 %i.dy, -2 ; 2 uses
  %.not100.us.3 = icmp samesign ult i64 %spec.store.select.us.3, %i.h
  %spec.select.us.3 = select i1 %.not100.us.3, i64 %spec.store.select.us.3, i64 %i.co
  %i.dz = mul i64 %i.cs, %spec.select.us.3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.dz ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ea, i64 64) ]
  store ptr %i.ea, ptr %i.cy, align 8, !tbaa !448
  %i.eb = call i64 @llvm.smax.i64(i64 %i.do, i64 1)
  %spec.store.select.us.4 = add nsw i64 %i.eb, -1 ; 2 uses
  %.not100.us.4 = icmp samesign ult i64 %spec.store.select.us.4, %i.h
  %spec.select.us.4 = select i1 %.not100.us.4, i64 %spec.store.select.us.4, i64 %i.co
  %i.ec = mul i64 %i.cs, %spec.select.us.4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ec ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ed, i64 64) ]
  store ptr %i.ed, ptr %i.cz, align 16, !tbaa !448
  %.not100.us.5 = icmp samesign ult i64 %i.do, %i.h
  %spec.select.us.5 = select i1 %.not100.us.5, i64 %i.do, i64 %i.co
  %i.ee = mul i64 %i.cs, %spec.select.us.5
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ee ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ef, i64 64) ]
  store ptr %i.ef, ptr %i.da, align 8, !tbaa !448
  %i.eg = or disjoint i64 %i.do, 1                ; 2 uses
  %.not100.us.6 = icmp samesign ult i64 %i.eg, %i.h
  %spec.select.us.6 = select i1 %.not100.us.6, i64 %i.eg, i64 %i.co
  %i.eh = mul i64 %i.cs, %spec.select.us.6
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.eh ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ei, i64 64) ]
  store ptr %i.ei, ptr %i.db, align 16, !tbaa !448
  %i.ej = add nuw nsw i64 %i.do, 2                ; 2 uses
  %.not100.us.7 = icmp samesign ult i64 %i.ej, %i.h
  %spec.select.us.7 = select i1 %.not100.us.7, i64 %i.ej, i64 %i.co
  %i.ek = mul i64 %i.cs, %spec.select.us.7
  %i.el = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ek ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.el, i64 64) ]
  store ptr %i.el, ptr %i.dc, align 8, !tbaa !448
  %i.em = add nuw nsw i64 %i.do, 3                ; 2 uses
  %.not100.us.8 = icmp samesign ult i64 %i.em, %i.h
  %spec.select.us.8 = select i1 %.not100.us.8, i64 %i.em, i64 %i.co
  %i.en = mul i64 %i.cs, %spec.select.us.8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.en ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eo, i64 64) ]
  store ptr %i.eo, ptr %i.dd, align 16, !tbaa !448
  %i.ep = add nuw nsw i64 %i.do, 4                ; 2 uses
  %.not100.us.9 = icmp samesign ult i64 %i.ep, %i.h
  %spec.select.us.9 = select i1 %.not100.us.9, i64 %i.ep, i64 %i.co
  %i.eq = mul i64 %i.cs, %spec.select.us.9
  %i.er = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.eq ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.er, i64 64) ]
  store ptr %i.er, ptr %i.de, align 8, !tbaa !448
  %i.es = add nuw nsw i64 %i.do, 5                ; 2 uses
  %.not100.us.10 = icmp samesign ult i64 %i.es, %i.h
  %spec.select.us.10 = select i1 %.not100.us.10, i64 %i.es, i64 %i.co
  %i.et = mul i64 %i.cs, %spec.select.us.10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.et ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.eu, i64 64) ]
  store ptr %i.eu, ptr %i.df, align 16, !tbaa !448
  %i.ev = add nuw nsw i64 %i.do, 6                ; 2 uses
  %.not100.us.11 = icmp samesign ult i64 %i.ev, %i.h
  %spec.select.us.11 = select i1 %.not100.us.11, i64 %i.ev, i64 %i.co
  %i.ew = mul i64 %i.cs, %spec.select.us.11
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.ew ; 2 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ex, i64 64) ]
  store ptr %i.ex, ptr %i.dg, align 8, !tbaa !448
  br label %.preheader142.us

bb.i:                                             ; preds = %.preheader.us
  %i.ey = fcmp olt float %i.ig, %.sroa.speculated111.us.1
  %.sroa.speculated111.us.1161 = select i1 %i.ey, float %i.ig, float %.sroa.speculated111.us.1 ; 2 uses
  %i.ez = fcmp olt float %i.ii, %.sroa.speculated111.us.1161
  %.sroa.speculated111.us.1.1 = select i1 %i.ez, float %i.ii, float %.sroa.speculated111.us.1161
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.090155.us ; 2 uses
  store float %i.ht, ptr %i.fa, align 4, !tbaa !112
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.090155.us
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !112 ; 2 uses
  %i.fd = fsub float %.sroa.speculated111.us.1.1, %i.fc ; 2 uses
  %i.fe = fcmp olt float %i.ht, %i.fd
  br i1 %i.fe, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ff = fcmp olt float %.sroa.speculated.us.1, %i.ig
  %.sroa.speculated.us.1162 = select i1 %i.ff, float %i.ig, float %.sroa.speculated.us.1 ; 2 uses
  %i.fg = fcmp olt float %.sroa.speculated.us.1162, %i.ii
  %.sroa.speculated.us.1.1 = select i1 %i.fg, float %i.ii, float %.sroa.speculated.us.1162
  %i.fh = fadd float %.sroa.speculated.us.1.1, %i.fc ; 2 uses
  %i.fi = fcmp ogt float %i.ht, %i.fh
  br i1 %i.fi, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.i, %bb.j
  %.sink = phi float [ %i.fh, %bb.j ], [ %i.fd, %bb.i ]
  store float %.sink, ptr %i.fa, align 4, !tbaa !112
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %i.fj = add nuw nsw i64 %.090155.us, 1          ; 2 uses
  %exitcond163.not = icmp eq i64 %i.fj, %i.cu
  br i1 %exitcond163.not, label %._crit_edge.us, label %.preheader142.us, !llvm.loop !437

.preheader.us:                                    ; preds = %.preheader142.us, %.preheader.us
  %.085154.us = phi i64 [ 0, %.preheader142.us ], [ %i.hu, %.preheader.us ] ; 3 uses
  %.086153.us = phi float [ 0.000000e+00, %.preheader142.us ], [ %i.ht, %.preheader.us ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.085154.us
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !448 ; 12 uses
  %.idx.us = mul nuw nsw i64 %.085154.us, 48
  %i.fm = getelementptr inbounds nuw i8, ptr @_ZZN3jxl12_GLOBAL__N_124DownsampleImage2_SharperERKNS_5PlaneIfEEPS2_E6kernel, i64 %.idx.us ; 12 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !112
  %i.fp = load float, ptr %i.fm, align 16, !tbaa !112
  %i.fq = call float @llvm.fmuladd.f32(float %i.fo, float %i.fp, float %.086153.us)
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.1
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !112
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !112
  %i.fv = call float @llvm.fmuladd.f32(float %i.fs, float %i.fu, float %i.fq)
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.2
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !112
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !112
  %i.ga = call float @llvm.fmuladd.f32(float %i.fx, float %i.fz, float %i.fv)
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.3
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !112
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !112
  %i.gf = call float @llvm.fmuladd.f32(float %i.gc, float %i.ge, float %i.ga)
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !112
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.gj = load float, ptr %i.gi, align 16, !tbaa !112
  %i.gk = call float @llvm.fmuladd.f32(float %i.gh, float %i.gj, float %i.gf)
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select101.us
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !112
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.go = load float, ptr %i.gn, align 4, !tbaa !112
  %i.gp = call float @llvm.fmuladd.f32(float %i.gm, float %i.go, float %i.gk)
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select101.us.1
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !112
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.gt = load float, ptr %i.gs, align 8, !tbaa !112
  %i.gu = call float @llvm.fmuladd.f32(float %i.gr, float %i.gt, float %i.gp)
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.7
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !112
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fm, i64 28
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !112
  %i.gz = call float @llvm.fmuladd.f32(float %i.gw, float %i.gy, float %i.gu)
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.8
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !112
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.hd = load float, ptr %i.hc, align 16, !tbaa !112
  %i.he = call float @llvm.fmuladd.f32(float %i.hb, float %i.hd, float %i.gz)
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.9
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !112
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fm, i64 36
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !112
  %i.hj = call float @llvm.fmuladd.f32(float %i.hg, float %i.hi, float %i.he)
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.10
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !112
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.hn = load float, ptr %i.hm, align 8, !tbaa !112
  %i.ho = call float @llvm.fmuladd.f32(float %i.hl, float %i.hn, float %i.hj)
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %spec.select102.us.11
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !112
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !112
  %i.ht = call float @llvm.fmuladd.f32(float %i.hq, float %i.hs, float %i.ho) ; 4 uses
  %i.hu = add nuw nsw i64 %.085154.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.hu, 12
  br i1 %exitcond.not, label %bb.i, label %.preheader.us, !llvm.loop !438

.preheader142.us:                                 ; preds = %.lr.ph.split.us, %bb.k
  %.090155.us = phi i64 [ %i.fj, %bb.k ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.hv = shl nuw nsw i64 %.090155.us, 1          ; 13 uses
  %.not99.us = icmp samesign ult i64 %i.hv, %i.e
  %spec.select101.us = select i1 %.not99.us, i64 %i.hv, i64 %i.cv ; 3 uses
  %i.hw = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %spec.select101.us
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !112 ; 4 uses
  %i.hy = fcmp olt float %i.hx, f0x7F7FFFFF
  %.sroa.speculated111.us = select i1 %i.hy, float %i.hx, float f0x7F7FFFFF ; 2 uses
  %i.hz = fcmp ogt float %i.hx, f0x00800000
  %.sroa.speculated.us = select i1 %i.hz, float %i.hx, float f0x00800000 ; 2 uses
  %i.ia = or disjoint i64 %i.hv, 1                ; 2 uses
  %.not99.us.1 = icmp samesign ult i64 %i.ia, %i.e
  %spec.select101.us.1 = select i1 %.not99.us.1, i64 %i.ia, i64 %i.cv ; 3 uses
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %spec.select101.us.1
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !112 ; 4 uses
  %i.id = fcmp olt float %i.ic, %.sroa.speculated111.us
  %.sroa.speculated111.us.1 = select i1 %i.id, float %i.ic, float %.sroa.speculated111.us ; 2 uses
  %i.ie = fcmp olt float %.sroa.speculated.us, %i.ic
  %.sroa.speculated.us.1 = select i1 %i.ie, float %i.ic, float %.sroa.speculated.us ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %spec.select101.us
  %i.ig = load float, ptr %i.if, align 4, !tbaa !112 ; 4 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %spec.select101.us.1
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !112 ; 4 uses
  %i.ij = call i64 @llvm.smax.i64(i64 %i.hv, i64 5)
  %spec.store.select2.us = add nsw i64 %i.ij, -5  ; 2 uses
  %.not.us = icmp samesign ult i64 %spec.store.select2.us, %i.e
  %spec.select102.us = select i1 %.not.us, i64 %spec.store.select2.us, i64 %i.cv
  %i.ik = call i64 @llvm.smax.i64(i64 %i.hv, i64 4)
  %spec.store.select2.us.1 = add nsw i64 %i.ik, -4 ; 2 uses
  %.not.us.1 = icmp samesign ult i64 %spec.store.select2.us.1, %i.e
  %spec.select102.us.1 = select i1 %.not.us.1, i64 %spec.store.select2.us.1, i64 %i.cv
  %i.il = call i64 @llvm.smax.i64(i64 %i.hv, i64 3)
  %spec.store.select2.us.2 = add nsw i64 %i.il, -3 ; 2 uses
  %.not.us.2 = icmp samesign ult i64 %spec.store.select2.us.2, %i.e
  %spec.select102.us.2 = select i1 %.not.us.2, i64 %spec.store.select2.us.2, i64 %i.cv
  %i.im = call i64 @llvm.smax.i64(i64 %i.hv, i64 2)
  %spec.store.select2.us.3 = add nsw i64 %i.im, -2 ; 2 uses
  %.not.us.3 = icmp samesign ult i64 %spec.store.select2.us.3, %i.e
  %spec.select102.us.3 = select i1 %.not.us.3, i64 %spec.store.select2.us.3, i64 %i.cv
  %i.in = call i64 @llvm.smax.i64(i64 %i.hv, i64 1)
  %spec.store.select2.us.4 = add nsw i64 %i.in, -1 ; 2 uses
  %.not.us.4 = icmp samesign ult i64 %spec.store.select2.us.4, %i.e
  %spec.select102.us.4 = select i1 %.not.us.4, i64 %spec.store.select2.us.4, i64 %i.cv
  %i.io = add nuw nsw i64 %i.hv, 2                ; 2 uses
  %.not.us.7 = icmp samesign ult i64 %i.io, %i.e
  %spec.select102.us.7 = select i1 %.not.us.7, i64 %i.io, i64 %i.cv
  %i.ip = add nuw nsw i64 %i.hv, 3                ; 2 uses
  %.not.us.8 = icmp samesign ult i64 %i.ip, %i.e
  %spec.select102.us.8 = select i1 %.not.us.8, i64 %i.ip, i64 %i.cv
  %i.iq = add nuw nsw i64 %i.hv, 4                ; 2 uses
  %.not.us.9 = icmp samesign ult i64 %i.iq, %i.e
  %spec.select102.us.9 = select i1 %.not.us.9, i64 %i.iq, i64 %i.cv
  %i.ir = add nuw nsw i64 %i.hv, 5                ; 2 uses
  %.not.us.10 = icmp samesign ult i64 %i.ir, %i.e
  %spec.select102.us.10 = select i1 %.not.us.10, i64 %i.ir, i64 %i.cv
  %i.is = add nuw nsw i64 %i.hv, 6                ; 2 uses
  %.not.us.11 = icmp samesign ult i64 %i.is, %i.e
  %spec.select102.us.11 = select i1 %.not.us.11, i64 %i.is, i64 %i.cv
  br label %.preheader.us

._crit_edge.us:                                   ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.it = add nuw nsw i64 %.093156.us, 1          ; 2 uses
  %exitcond164.not = icmp eq i64 %i.it, %i.ch
  br i1 %exitcond164.not, label %._crit_edge158, label %.lr.ph.split.us, !llvm.loop !439

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader249.new
  %niter = phi i64 [ 0, %.lr.ph.split.preheader249.new ], [ %niter.next.7, %.lr.ph.split ]
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge158.loopexit.unr-lcssa, label %.lr.ph.split, !llvm.loop !440

._crit_edge158.loopexit.unr-lcssa:                ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge158, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge158.loopexit.unr-lcssa, %.lr.ph.split.preheader249
  %lcmp.mod251 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod251)
  br label %.lr.ph.split.epil

.lr.ph.split.epil:                                ; preds = %.lr.ph.split.epil, %.lr.ph.split.epil.preheader
  %epil.iter = phi i64 [ 0, %.lr.ph.split.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.epil ]
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge158, label %.lr.ph.split.epil, !llvm.loop !441

._crit_edge158:                                   ; preds = %._crit_edge.us, %._crit_edge158.loopexit.unr-lcssa, %.lr.ph.split.epil, %.lr.ph.split.peel.next167, %bb.h
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.by) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %.pr = load i32, ptr %i.bp, align 8, !tbaa !111
  %i.iu = icmp eq i32 %.pr, 0
  br i1 %i.iu, label %bb.l, label %.thread

bb.l:                                             ; preds = %._crit_edge158
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bz) #28
  br label %.thread

.thread:                                          ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit105, %bb.l, %._crit_edge158
  %.sroa.0.0131 = phi i32 [ 0, %bb.l ], [ 0, %._crit_edge158 ], [ %i.bw, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit105 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.pr132 = load i32, ptr %i.bb, align 8, !tbaa !111
  %i.iv = icmp eq i32 %.pr132, 0
  br i1 %i.iv, label %bb.m, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit106

bb.m:                                             ; preds = %.thread
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bf) #28
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit106

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit106:      ; preds = %.loopexit, %.thread, %bb.m
  %.sroa.0.1135 = phi i32 [ %.sroa.0.0131, %bb.m ], [ %.sroa.0.0131, %.thread ], [ %i.bc, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.n

bb.n:                                             ; preds = %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit106, %bb.c
  %.sroa.0.2 = phi i32 [ %.sroa.0.1135, %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit106 ], [ 1, %bb.c ] ; 2 uses
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.t) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %.pr136 = load i32, ptr %i.k, align 8, !tbaa !111
  %i.iw = icmp eq i32 %.pr136, 0
  br i1 %i.iw, label %bb.o, label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit107

bb.o:                                             ; preds = %bb.n
  call void @_ZN3jxl13AlignedMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #28
  br label %_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit107

_ZN3jxl8StatusOrINS_5PlaneIfEEED2Ev.exit107:      ; preds = %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit, %bb.n, %bb.o
  %.sroa.0.3139 = phi i32 [ %.sroa.0.2, %bb.o ], [ %.sroa.0.2, %bb.n ], [ %i.r, %_ZN3jxl5PlaneIfE6CreateEP22JxlMemoryManagerStructmmm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret i32 %.sroa.0.3139
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(168) ptr @_ZN3jxl6Image3IfEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b) #28 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load i64, ptr %i.d, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.e, ptr %i.f, align 8, !tbaa !108
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j) #28 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.m = load i64, ptr %i.l, align 8, !tbaa !108
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.m, ptr %i.n, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.o, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #28 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.u = load i64, ptr %i.t, align 8, !tbaa !108
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.u, ptr %i.v, align 8, !tbaa !108
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl26DownsampleImage2_IterativeEPNS_6Image3IfEE(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %"class.jxl::Plane.61", align 8     ; 7 uses
  %2 = alloca %"class.jxl::Plane.61", align 8     ; 7 uses
  %3 = alloca %"class.jxl::Plane.61", align 8     ; 7 uses
  %4 = alloca %"class.jxl::StatusOr.62", align 8  ; 8 uses
  %5 = alloca %"class.jxl::Plane.61", align 8     ; 13 uses
  %6 = alloca %"class.jxl::StatusOr.62", align 8  ; 7 uses
  %7 = alloca %"class.jxl::Plane.61", align 8     ; 6 uses
  %8 = alloca %"class.jxl::StatusOr.62", align 8  ; 7 uses
  %9 = alloca %"class.jxl::Plane.61", align 8     ; 7 uses
  %10 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %11 = alloca %"class.jxl::Plane.61", align 8    ; 16 uses
  %12 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %13 = alloca %"class.jxl::Plane.61", align 8    ; 14 uses
  %14 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %15 = alloca %"class.jxl::Plane.61", align 8    ; 7 uses
  %16 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %17 = alloca %"class.jxl::Plane.61", align 8    ; 9 uses
  %18 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %19 = alloca %"class.jxl::Plane.61", align 8    ; 9 uses
  %20 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %21 = alloca %"class.jxl::Plane.61", align 8    ; 11 uses
  %22 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %23 = alloca %"class.jxl::Plane.61", align 8    ; 7 uses
  %24 = alloca %"class.jxl::StatusOr.62", align 8 ; 8 uses
  %25 = alloca %"class.jxl::Plane.61", align 8    ; 6 uses
  %26 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %27 = alloca %"class.jxl::Plane.61", align 8    ; 6 uses
  %28 = alloca %"class.jxl::Plane.61", align 8    ; 8 uses
  %29 = alloca %"class.jxl::StatusOr", align 8    ; 13 uses
  %30 = alloca %"class.jxl::Image3", align 8      ; 24 uses
  %31 = alloca %"class.jxl::StatusOr", align 8    ; 13 uses
  %32 = alloca %"class.jxl::Image3", align 8      ; 14 uses
  %33 = alloca %"struct.jxl::OpsinParams", align 4 ; 4 uses
  %34 = alloca %"class.jxl::RectT", align 8       ; 5 uses
  %35 = alloca %"class.jxl::StatusOr.62", align 8 ; 9 uses
  %36 = alloca %"class.jxl::Plane.61", align 8    ; 6 uses
  %37 = alloca %"struct.jxl::ButteraugliParams", align 8 ; 5 uses
  %38 = alloca %"class.jxl::StatusOr.64", align 8 ; 8 uses
  %39 = alloca %"class.jxl::StatusOr.62", align 8 ; 7 uses
  %40 = alloca %"class.jxl::Plane.61", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  %i.c = load i32, ptr %0, align 8, !tbaa !88
  %i.d = zext i32 %i.c to i64
  %i.e = add nuw nsw i64 %i.d, 1
  %i.f = lshr i64 %i.e, 1
  %i.g = add nuw nsw i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !89
  %i.j = zext i32 %i.i to i64
  %i.k = add nuw nsw i64 %i.j, 1
  %i.l = lshr i64 %i.k, 1
  %i.m = add nuw nsw i64 %i.l, 8
  call void @_ZN3jxl6Image3IfE6CreateEP22JxlMemoryManagerStructmm(ptr dead_on_unwind nonnull writable sret(%"class.jxl::StatusOr") align 8 %29, ptr noundef %i.b, i64 noundef %i.g, i64 noundef %i.m) #24
  %i.n = getelementptr inbounds nuw i8, ptr %29, i64 168 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !107  ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.b, label %_ZN3jxl8StatusOrINS_6Image3IfEEED2Ev.exit46

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.q = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.q, i8 0, i64 144, i1 false), !alias.scope !510
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %30, ptr noundef nonnull align 8 dereferenceable(172) %29, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %29, i64 24 ; 2 uses
  %i.s = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r) #28 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.u = load i64, ptr %i.t, align 8, !tbaa !108, !noalias !510
  %i.v = getelementptr inbounds nuw i8, ptr %30, i64 48
  store i64 %i.u, ptr %i.v, align 8, !tbaa !108, !alias.scope !510
  %i.w = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %30, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %i.w, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %30, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %29, i64 80 ; 2 uses
  %i.aa = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.z) #28 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %29, i64 104
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !108, !noalias !510
  %i.ad = getelementptr inbounds nuw i8, ptr %30, i64 104
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !108, !alias.scope !510
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 112
  %i.af = getelementptr inbounds nuw i8, ptr %30, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %30, i64 136 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %29, i64 136 ; 2 uses
  %i.ai = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN3jxl13AlignedMemoryaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.ah) #28 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %29, i64 160
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !108, !noalias !510
  %i.al = getelementptr inbounds nuw i8, ptr %30, i64 160
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !108, !alias.scope !510
  %i.am = load i32, ptr %30, align 8, !tbaa !88
  %i.an = zext i32 %i.am to i64
  %i.ao = add nsw i64 %i.an, -8                   ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %30, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !89
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nsw i64 %i.ar, -8                   ; 4 uses
  %i.at = trunc nuw i64 %i.ao to i32              ; 3 uses
  %i.au = trunc nuw i64 %i.as to i32              ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !109
  %i.ax = zext i32 %i.aw to i64
  %.not.i.i = icmp ugt i64 %i.ao, %i.ax
  %i.ay = getelementptr inbounds nuw i8, ptr %30, i64 12
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = zext i32 %i.az to i64
  %.not6.i.i = icmp ugt i64 %i.as, %i.ba
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %.not6.i.i
  br i1 %or.cond.i.i, label %bb.bj, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b
  store i32 %i.at, ptr %30, align 8, !tbaa !88
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !89
  %i.bb = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !109
  %i.bd = zext i32 %i.bc to i64
  %.not.i.1.i = icmp samesign ugt i64 %i.ao, %i.bd
end_hunk_0
