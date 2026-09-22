Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/util?download=true
inline.NumInlined: 6631
inline.NumDeleted: 2675
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE:bb.a
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #22
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %4 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %5 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %6 = alloca %"class.arrow::Result.123", align 8 ; 14 uses
  %7 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %8 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %9 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %10 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %11 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %12 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %13 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %14 = alloca %"class.arrow::Result.123", align 8 ; 14 uses
  %15 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %16 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %17 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %18 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %19 = alloca %"class.arrow::Result.123", align 8 ; 14 uses
  %20 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %21 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %22 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %23 = alloca %"class.arrow::Result.123", align 8 ; 14 uses
  %24 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %29 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %30 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %31 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %32 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %33 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %34 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %35 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %36 = alloca %"class.std::__shared_ptr.37", align 16 ; 5 uses
  %37 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %38 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %39 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %40 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %41 = alloca %"class.std::__shared_ptr.37", align 16 ; 5 uses
  %42 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %43 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %44 = alloca %"class.std::__shared_ptr.37", align 16 ; 5 uses
  %45 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %46 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %47 = alloca %"class.std::__shared_ptr.37", align 16 ; 5 uses
  %48 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %49 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %50 = alloca %"class.std::__shared_ptr.37", align 16 ; 5 uses
  %51 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %52 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %53 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %54 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %55 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %56 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %57 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %58 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %59 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %60 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %61 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %62 = alloca %"class.arrow::Result", align 8    ; 12 uses
  %63 = alloca %"class.arrow::Status", align 8    ; 85 uses
  %64 = alloca %"class.arrow::Status", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #19
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !135, !noalias !630
  switch i32 %i.b, label %bb.rf [
    i32 0, label %_ZN5arrow6StatusD2Ev.exit17.thread
    i32 1, label %_ZN5arrow6StatusD2Ev.exit17.thread
    i32 3, label %_ZN5arrow6StatusD2Ev.exit17.thread
    i32 2, label %_ZN5arrow6StatusD2Ev.exit17.thread
    i32 5, label %bb.b
    i32 4, label %bb.aa
    i32 7, label %bb.as
    i32 6, label %bb.bk
    i32 9, label %bb.cc
    i32 8, label %bb.cu
    i32 10, label %bb.dt
    i32 11, label %bb.el
    i32 12, label %bb.fk
    i32 13, label %bb.gj
    i32 39, label %bb.gv
    i32 14, label %bb.gy
    i32 40, label %bb.hk
    i32 34, label %bb.hn
    i32 35, label %bb.hz
    i32 15, label %_ZN5arrow6StatusD2Ev.exit17.thread
    i32 33, label %bb.il
    i32 16, label %bb.jd
    i32 17, label %bb.jv
    i32 18, label %bb.kn
    i32 19, label %bb.lf
    i32 20, label %bb.lx
    i32 37, label %bb.mp
    i32 21, label %bb.ne
    i32 22, label %bb.nw
    i32 43, label %bb.oo
    i32 44, label %bb.pd
    i32 23, label %bb.ps
    i32 24, label %bb.qh
    i32 25, label %bb.qw
    i32 36, label %bb.qx
    i32 41, label %bb.qy
    i32 42, label %bb.qz
    i32 30, label %bb.ra
    i32 32, label %_ZN5arrow6StatusD2Ev.exit17.thread
    i32 26, label %_ZN5arrow6StatusD2Ev.exit17.thread
    i32 27, label %bb.rb
    i32 28, label %bb.rc
    i32 29, label %_ZN5arrow6StatusD2Ev.exit.i26
    i32 38, label %bb.rd
    i32 31, label %_ZN5arrow6StatusD2Ev.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !631
  %i.c = load ptr, ptr %1, align 8, !tbaa !136, !noalias !631, !nonnull !104, !align !137
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !631
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !138, !noalias !631
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i449 = load ptr, ptr %i.h, align 8, !tbaa !108, !noalias !631
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !141, !noalias !633 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !633 ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !633
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !148, !noalias !633
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %3, i64 noundef %i.n, ptr noundef %.val.i449), !noalias !633
  %i.o = load ptr, ptr %3, align 8, !tbaa !91, !noalias !633
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c, !prof !92

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #19, !noalias !631
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !633
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !149, !noalias !636 ; 2 uses
  store i64 %i.r, ptr %4, align 8, !tbaa !149, !alias.scope !637, !noalias !633
  store ptr null, ptr %i.q, align 8, !tbaa !149, !noalias !636
  %.cast.i.i471 = inttoptr i64 %i.r to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %.cast.i.i471, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !633 ; 8 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !141, !noalias !633
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !148, !noalias !633 ; 4 uses
  %i.x = lshr i64 %i.w, 1                         ; 8 uses
  %.not.i.i472 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i472, label %._crit_edge.i.i476, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.y = ptrtoaddr ptr %i.t to i64
  %min.iters.check692 = icmp ult i64 %i.w, 8
  %i.z = sub i64 %i.l, %i.y
  %diff.check690 = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check692, i1 true, i1 %diff.check690
  br i1 %or.cond, label %.lr.ph.i.i473.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check693 = icmp ult i64 %i.w, 32
  br i1 %min.iters.check693, label %vec.epilog.ph, label %vector.ph694

vector.ph694:                                     ; preds = %vector.main.loop.iter.check
  %n.vec695 = and i64 %i.x, 9223372036854775792   ; 4 uses
  br label %vector.body696

vector.body696:                                   ; preds = %vector.ph694, %vector.body696
  %index697 = phi i64 [ 0, %vector.ph694 ], [ %index.next700, %vector.body696 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index697 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load698 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !150, !noalias !633
  %wide.load699 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !150, !noalias !633
  %i.ac = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load698)
  %i.ad = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load699)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index697 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <8 x i16> %i.ac, ptr %i.ae, align 2, !tbaa !150, !noalias !633
  store <8 x i16> %i.ad, ptr %i.af, align 2, !tbaa !150, !noalias !633
  %index.next700 = add nuw i64 %index697, 16      ; 2 uses
  %i.ag = icmp eq i64 %index.next700, %n.vec695
  br i1 %i.ag, label %middle.block701, label %vector.body696, !llvm.loop !307

middle.block701:                                  ; preds = %vector.body696
  %cmp.n702 = icmp eq i64 %i.x, %n.vec695
  br i1 %cmp.n702, label %._crit_edge.i.i476, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block701
  %i.ah = and i64 %i.w, 24
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i473.preheader, label %vec.epilog.ph, !prof !154

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec695, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec703 = and i64 %i.x, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index704 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next706, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index704
  %wide.load705 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !150, !noalias !633
  %i.aj = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load705)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index704
  store <4 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !150, !noalias !633
  %index.next706 = add nuw i64 %index704, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next706, %n.vec703
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !308

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n707 = icmp eq i64 %i.x, %n.vec703
  br i1 %cmp.n707, label %._crit_edge.i.i476, label %.lr.ph.i.i473.preheader

.lr.ph.i.i473.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01.i.i474.ph = phi i64 [ 0, %iter.check ], [ %n.vec695, %vec.epilog.iter.check ], [ %n.vec703, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter735 = and i64 %i.x, 3                  ; 2 uses
  %lcmp.mod736.not = icmp eq i64 %xtraiter735, 0
  br i1 %lcmp.mod736.not, label %.lr.ph.i.i473.prol.loopexit, label %.lr.ph.i.i473.prol

.lr.ph.i.i473.prol:                               ; preds = %.lr.ph.i.i473.preheader, %.lr.ph.i.i473.prol
  %.01.i.i474.prol = phi i64 [ %i.ap, %.lr.ph.i.i473.prol ], [ %.01.i.i474.ph, %.lr.ph.i.i473.preheader ] ; 3 uses
  %prol.iter737 = phi i64 [ %prol.iter737.next, %.lr.ph.i.i473.prol ], [ 0, %.lr.ph.i.i473.preheader ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01.i.i474.prol
  %i.an = load i16, ptr %i.am, align 2, !tbaa !150, !noalias !633
  %rev.i.i.i.prol = call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.01.i.i474.prol
  store i16 %rev.i.i.i.prol, ptr %i.ao, align 2, !tbaa !150, !noalias !633
  %i.ap = add nuw nsw i64 %.01.i.i474.prol, 1     ; 2 uses
  %prol.iter737.next = add i64 %prol.iter737, 1   ; 2 uses
  %prol.iter737.cmp.not = icmp eq i64 %prol.iter737.next, %xtraiter735
  br i1 %prol.iter737.cmp.not, label %.lr.ph.i.i473.prol.loopexit, label %.lr.ph.i.i473.prol, !llvm.loop !309

.lr.ph.i.i473.prol.loopexit:                      ; preds = %.lr.ph.i.i473.prol, %.lr.ph.i.i473.preheader
  %.01.i.i474.unr = phi i64 [ %.01.i.i474.ph, %.lr.ph.i.i473.preheader ], [ %i.ap, %.lr.ph.i.i473.prol ]
  %i.aq = sub nsw i64 %.01.i.i474.ph, %i.x
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.i.i476, label %.lr.ph.i.i473

._crit_edge.i.i476:                               ; preds = %.lr.ph.i.i473.prol.loopexit, %.lr.ph.i.i473, %middle.block701, %vec.epilog.middle.block, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !633
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i480 unwind label %bb.e, !noalias !633

.lr.ph.i.i473:                                    ; preds = %.lr.ph.i.i473.prol.loopexit, %.lr.ph.i.i473
  %.01.i.i474 = phi i64 [ %i.bh, %.lr.ph.i.i473 ], [ %.01.i.i474.unr, %.lr.ph.i.i473.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01.i.i474
  %i.at = load i16, ptr %i.as, align 2, !tbaa !150, !noalias !633
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.01.i.i474
  store i16 %rev.i.i.i, ptr %i.au, align 2, !tbaa !150, !noalias !633
  %i.av = add nuw nsw i64 %.01.i.i474, 1          ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !150, !noalias !633
  %rev.i.i.i.1 = call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.av
  store i16 %rev.i.i.i.1, ptr %i.ay, align 2, !tbaa !150, !noalias !633
  %i.az = add nuw nsw i64 %.01.i.i474, 2          ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !150, !noalias !633
  %rev.i.i.i.2 = call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.az
  store i16 %rev.i.i.i.2, ptr %i.bc, align 2, !tbaa !150, !noalias !633
  %i.bd = add nuw nsw i64 %.01.i.i474, 3          ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !150, !noalias !633
  %rev.i.i.i.3 = call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bd
  store i16 %rev.i.i.i.3, ptr %i.bg, align 2, !tbaa !150, !noalias !633
  %i.bh = add nuw nsw i64 %.01.i.i474, 4          ; 2 uses
  %exitcond.not.i.i475.3 = icmp eq i64 %i.bh, %i.x
  br i1 %exitcond.not.i.i475.3, label %._crit_edge.i.i476, label %.lr.ph.i.i473, !llvm.loop !310

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i480: ; preds = %._crit_edge.i.i476
  store ptr null, ptr %6, align 8, !tbaa !91, !alias.scope !632, !noalias !631
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = load <2 x ptr>, ptr %5, align 16, !tbaa !116, !noalias !633
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !tbaa !116, !alias.scope !632, !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !633
  %i.bk = load ptr, ptr %4, align 8, !tbaa !149, !noalias !633 ; 3 uses
  %.not.i.i.i481 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i481, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i483, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i482

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i482: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i480
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !113, !noalias !633
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !633
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bk) #19, !noalias !633, !inline_history !311
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i483

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i483: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i482, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i480
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !633
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i476
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !633
  %i.bp = load ptr, ptr %4, align 8, !tbaa !149, !noalias !633 ; 3 uses
  %.not.i20.i.i477 = icmp eq ptr %i.bp, null
  br i1 %.not.i20.i.i477, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i479, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i478

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i478: ; preds = %bb.e
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !113, !noalias !633
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !633
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bp) #19, !noalias !633, !inline_history !311
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i479

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i, %bb.ft, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i338, %bb.eu, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i, %bb.dd, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i479, %bb.k, %bb.rk, %bb.qv, %bb.qg, %bb.pr, %bb.pc, %bb.ny, %bb.ng, %bb.nd, %bb.lz, %bb.lh, %bb.kp, %bb.jx, %bb.jf, %bb.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i274, %bb.dv, %bb.ce, %bb.bm, %bb.au, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.bxn, %bb.rk ], [ %i.ek, %bb.ac ], [ %i.go, %bb.au ], [ %i.is, %bb.bm ], [ %i.kw, %bb.ce ], [ %i.cg, %bb.k ], [ %i.sa, %bb.dv ], [ %i.pw, %bb.dd ], [ %i.xa, %bb.eu ], [ %i.afn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i274 ], [ %i.ahk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %i.akw, %bb.in ], [ %i.ana, %bb.jf ], [ %i.ape, %bb.jx ], [ %i.ari, %bb.kp ], [ %i.atm, %bb.lh ], [ %i.avq, %bb.lz ], [ %.pn21.i, %bb.nd ], [ %i.bbs, %bb.ng ], [ %i.bdw, %bb.ny ], [ %.pn20.i91, %bb.pc ], [ %.pn20.i64, %bb.pr ], [ %.pn20.i40, %bb.qg ], [ %.pn20.i, %bb.qv ], [ %i.bo, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i479 ], [ %i.pe, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i ], [ %i.wi, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i338 ], [ %i.abi, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i ], [ %i.aca, %bb.ft ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i479: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i478, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !633
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19, !noalias !633
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !633
  br label %common.resume

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i483, %bb.c
  %i.bt = load ptr, ptr %3, align 8, !tbaa !91, !noalias !633 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.g, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i450, !prof !92

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !149, !noalias !633 ; 3 uses
  %.not.i.i.i.i.i.i467 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i467, label %bb.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i468

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i468: ; preds = %bb.g
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !113, !noalias !631
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !631
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bw) #19, !noalias !631, !inline_history !312
  %.pr.pre.i.i.i469 = load ptr, ptr %3, align 8, !tbaa !91, !noalias !633 ; 2 uses
  %.not.i.i23.i.i470 = icmp eq ptr %.pr.pre.i.i.i469, null
  br i1 %.not.i.i23.i.i470, label %bb.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i450, !prof !156

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i450: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i468, %bb.f
  %i.ca = phi ptr [ %.pr.pre.i.i.i469, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i468 ], [ %i.bt, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !102, !range !103, !noalias !631, !noundef !104
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i450
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #19, !noalias !631
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i450, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i468, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !633
  %i.ce = load ptr, ptr %6, align 8, !tbaa !91, !noalias !631
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.l, label %bb.j, !prof !92

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %63, align 8, !tbaa !91, !alias.scope !631
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i453 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19, !noalias !631
  br label %common.resume

bb.l:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.af = load i64, ptr %i.h, align 8, !tbaa !117
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.ag) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !119
  store i64 %.0, ptr %i.h, align 8, !tbaa !117
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1471 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #19, !inline_history !1469
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !117
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #19
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !111
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !13
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !13
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !117
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !118

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper14ByteSwapBufferItEENS_6ResultISt10shared_ptrINS_6BufferEEEERKS6_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %3 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !141    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %2, i64 noundef %i.f, ptr noundef %.8.val)
  %i.g = load ptr, ptr %2, align 8, !tbaa !91
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !92

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !149, !noalias !1482 ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !149, !alias.scope !1482
  store ptr null, ptr %i.i, align 8, !tbaa !149, !noalias !1482
  %.cast = inttoptr i64 %i.j to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !141
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !148  ; 4 uses
  %i.p = lshr i64 %i.o, 1                         ; 8 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.q = ptrtoaddr ptr %i.l to i64
  %min.iters.check = icmp ult i64 %i.o, 8
  %i.r = sub i64 %i.d, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check6 = icmp ult i64 %i.o, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.p, 9223372036854775792      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <8 x i16>, ptr %i.s, align 2, !tbaa !150
  %wide.load7 = load <8 x i16>, ptr %i.t, align 2, !tbaa !150
  %i.u = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.v = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load7)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.u, ptr %i.w, align 2, !tbaa !150
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !150
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1476

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.z = and i64 %i.o, 24
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !154

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %i.p, 9223372036854775804     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index9
  %wide.load10 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !150
  %i.ab = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load10)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index9
  store <4 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !150
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.ad = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1477

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %i.p, %n.vec8
  br i1 %cmp.n12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01.prol = phi i64 [ %i.ah, %.lr.ph.prol ], [ %.01.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.01.prol
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !150
  %rev.i.i.prol = call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.01.prol
  store i16 %rev.i.i.prol, ptr %i.ag, align 2, !tbaa !150
  %i.ah = add nuw nsw i64 %.01.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1478

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.01.unr = phi i64 [ %.01.ph, %.lr.ph.preheader ], [ %i.ah, %.lr.ph.prol ]
  %i.ai = sub nsw i64 %.01.ph, %i.p
  %i.aj = icmp ugt i64 %i.ai, -4
  br i1 %i.aj, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01 = phi i64 [ %i.az, %.lr.ph ], [ %.01.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.01
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !150
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.01
  store i16 %rev.i.i, ptr %i.am, align 2, !tbaa !150
  %i.an = add nuw nsw i64 %.01, 1                 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !150
  %rev.i.i.1 = call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.an
  store i16 %rev.i.i.1, ptr %i.aq, align 2, !tbaa !150
  %i.ar = add nuw nsw i64 %.01, 2                 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !150
  %rev.i.i.2 = call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ar
  store i16 %rev.i.i.2, ptr %i.au, align 2, !tbaa !150
  %i.av = add nuw nsw i64 %.01, 3                 ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !150
  %rev.i.i.3 = call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.av
  store i16 %rev.i.i.3, ptr %i.ay, align 2, !tbaa !150
  %i.az = add nuw nsw i64 %.01, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1479

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !91
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load <2 x ptr>, ptr %4, align 16, !tbaa !116
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !116
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bc = load ptr, ptr %3, align 8, !tbaa !149   ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bc) #19, !inline_history !19
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bh = load ptr, ptr %3, align 8, !tbaa !149   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bh, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21: ; preds = %bb.d
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !113
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bh) #19, !inline_history !19
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bg

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.bl = load ptr, ptr %2, align 8, !tbaa !91    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.f, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !92

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.f
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !113
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bo) #19, !inline_history !20
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !91 ; 2 uses
  %.not.i.i23 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !156

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.e
  %i.bs = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bl, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !102, !range !103, !noundef !104
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.f, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper14ByteSwapBufferIiEENS_6ResultISt10shared_ptrINS_6BufferEEEERKS6_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %3 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !141    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !148
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %2, i64 noundef %i.f, ptr noundef %.8.val)
  %i.g = load ptr, ptr %2, align 8, !tbaa !91
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !92

bb.b:                                             ; preds = %bb.a
end_hunk_1
