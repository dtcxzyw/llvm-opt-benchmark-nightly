inline.NumInlined: 6631
inline.NumDeleted: 2675
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEEC2ERKNS_6StatusE:bb.a
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.m = load ptr, ptr %3, align 8, !tbaa !97     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !95
  %i.q = add i64 %i.p, 1
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !98, !noalias !114
  switch i32 %i.b, label %bb.rf [
    i32 0, label %_ZN5arrow6StatusD2Ev.exit18.thread
    i32 1, label %_ZN5arrow6StatusD2Ev.exit18.thread
    i32 3, label %_ZN5arrow6StatusD2Ev.exit18.thread
    i32 2, label %_ZN5arrow6StatusD2Ev.exit18.thread
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
    i32 15, label %_ZN5arrow6StatusD2Ev.exit18.thread
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
    i32 32, label %_ZN5arrow6StatusD2Ev.exit18.thread
    i32 26, label %_ZN5arrow6StatusD2Ev.exit18.thread
    i32 27, label %bb.rb
    i32 28, label %bb.rc
    i32 29, label %_ZN5arrow6StatusD2Ev.exit.i27
    i32 38, label %bb.rd
    i32 31, label %_ZN5arrow6StatusD2Ev.exit.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19, !noalias !117
  %i.c = load ptr, ptr %1, align 8, !tbaa !120, !noalias !117, !nonnull !75, !align !121
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33, !noalias !117
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122, !noalias !117
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i450 = load ptr, ptr %i.h, align 8, !tbaa !77, !noalias !117
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !126, !noalias !129 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !noalias !129 ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19, !noalias !129
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !130, !noalias !129
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %3, i64 noundef %i.n, ptr noundef %.val.i450), !noalias !129
  %i.o = load ptr, ptr %3, align 8, !tbaa !60, !noalias !129
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.c, !prof !63

bb.c:                                             ; preds = %bb.b
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #19, !noalias !117
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !129
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !143, !noalias !144 ; 2 uses
  store i64 %i.r, ptr %4, align 8, !tbaa !143, !alias.scope !145, !noalias !129
  store ptr null, ptr %i.q, align 8, !tbaa !143, !noalias !144
  %.cast.i.i472 = inttoptr i64 %i.r to ptr
  %i.s = getelementptr inbounds nuw i8, ptr %.cast.i.i472, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !129 ; 8 uses
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !126, !noalias !129
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !130, !noalias !129 ; 4 uses
  %i.x = lshr i64 %i.w, 1                         ; 8 uses
  %.not.i.i473 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i473, label %._crit_edge.i.i477, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.y = ptrtoaddr ptr %i.t to i64
  %min.iters.check714 = icmp ult i64 %i.w, 8
  %i.z = sub i64 %i.l, %i.y
  %diff.check712 = icmp ugt i64 %i.z, -32
  %or.cond = select i1 %min.iters.check714, i1 true, i1 %diff.check712
  br i1 %or.cond, label %.lr.ph.i.i474.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check715 = icmp ult i64 %i.w, 32
  br i1 %min.iters.check715, label %vec.epilog.ph, label %vector.ph716

vector.ph716:                                     ; preds = %vector.main.loop.iter.check
  %n.vec718 = and i64 %i.x, 9223372036854775792   ; 4 uses
  br label %vector.body719

vector.body719:                                   ; preds = %vector.body719, %vector.ph716
  %index720 = phi i64 [ 0, %vector.ph716 ], [ %index.next723, %vector.body719 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index720 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load721 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !146, !noalias !129
  %wide.load722 = load <8 x i16>, ptr %i.ab, align 2, !tbaa !146, !noalias !129
  %i.ac = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load721)
  %i.ad = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load722)
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index720 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <8 x i16> %i.ac, ptr %i.ae, align 2, !tbaa !146, !noalias !129
  store <8 x i16> %i.ad, ptr %i.af, align 2, !tbaa !146, !noalias !129
  %index.next723 = add nuw i64 %index720, 16      ; 2 uses
  %i.ag = icmp eq i64 %index.next723, %n.vec718
  br i1 %i.ag, label %middle.block724, label %vector.body719, !llvm.loop !147

middle.block724:                                  ; preds = %vector.body719
  %cmp.n725 = icmp eq i64 %i.x, %n.vec718
  br i1 %cmp.n725, label %._crit_edge.i.i477, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block724
  %i.ah = and i64 %i.w, 24
  %min.epilog.iters.check = icmp eq i64 %i.ah, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i474.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec718, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec727 = and i64 %i.x, 9223372036854775804   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index728 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next730, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %index728
  %wide.load729 = load <4 x i16>, ptr %i.ai, align 2, !tbaa !146, !noalias !129
  %i.aj = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load729)
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %index728
  store <4 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !146, !noalias !129
  %index.next730 = add nuw i64 %index728, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next730, %n.vec727
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !152

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n731 = icmp eq i64 %i.x, %n.vec727
  br i1 %cmp.n731, label %._crit_edge.i.i477, label %.lr.ph.i.i474.preheader

.lr.ph.i.i474.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01.i.i475.ph = phi i64 [ 0, %iter.check ], [ %n.vec718, %vec.epilog.iter.check ], [ %n.vec727, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter758 = and i64 %i.x, 3                  ; 2 uses
  %lcmp.mod759.not = icmp eq i64 %xtraiter758, 0
  br i1 %lcmp.mod759.not, label %.lr.ph.i.i474.prol.loopexit, label %.lr.ph.i.i474.prol

.lr.ph.i.i474.prol:                               ; preds = %.lr.ph.i.i474.preheader, %.lr.ph.i.i474.prol
  %.01.i.i475.prol = phi i64 [ %i.ap, %.lr.ph.i.i474.prol ], [ %.01.i.i475.ph, %.lr.ph.i.i474.preheader ] ; 3 uses
  %prol.iter760 = phi i64 [ %prol.iter760.next, %.lr.ph.i.i474.prol ], [ 0, %.lr.ph.i.i474.preheader ]
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01.i.i475.prol
  %i.an = load i16, ptr %i.am, align 2, !tbaa !146, !noalias !129
  %rev.i.i.i.prol = call noundef i16 @llvm.bswap.i16(i16 %i.an)
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.01.i.i475.prol
  store i16 %rev.i.i.i.prol, ptr %i.ao, align 2, !tbaa !146, !noalias !129
  %i.ap = add nuw nsw i64 %.01.i.i475.prol, 1     ; 2 uses
  %prol.iter760.next = add i64 %prol.iter760, 1   ; 2 uses
  %prol.iter760.cmp.not = icmp eq i64 %prol.iter760.next, %xtraiter758
  br i1 %prol.iter760.cmp.not, label %.lr.ph.i.i474.prol.loopexit, label %.lr.ph.i.i474.prol, !llvm.loop !153

.lr.ph.i.i474.prol.loopexit:                      ; preds = %.lr.ph.i.i474.prol, %.lr.ph.i.i474.preheader
  %.01.i.i475.unr = phi i64 [ %.01.i.i475.ph, %.lr.ph.i.i474.preheader ], [ %i.ap, %.lr.ph.i.i474.prol ]
  %i.aq = sub nsw i64 %.01.i.i475.ph, %i.x
  %i.ar = icmp ugt i64 %i.aq, -4
  br i1 %i.ar, label %._crit_edge.i.i477, label %.lr.ph.i.i474

._crit_edge.i.i477:                               ; preds = %.lr.ph.i.i474.prol.loopexit, %.lr.ph.i.i474, %middle.block724, %vec.epilog.middle.block, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !129
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i481 unwind label %bb.e, !noalias !129

.lr.ph.i.i474:                                    ; preds = %.lr.ph.i.i474.prol.loopexit, %.lr.ph.i.i474
  %.01.i.i475 = phi i64 [ %i.bh, %.lr.ph.i.i474 ], [ %.01.i.i475.unr, %.lr.ph.i.i474.prol.loopexit ] ; 6 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %.01.i.i475
  %i.at = load i16, ptr %i.as, align 2, !tbaa !146, !noalias !129
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %.01.i.i475
  store i16 %rev.i.i.i, ptr %i.au, align 2, !tbaa !146, !noalias !129
  %i.av = add nuw nsw i64 %.01.i.i475, 1          ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !146, !noalias !129
  %rev.i.i.i.1 = call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.av
  store i16 %rev.i.i.i.1, ptr %i.ay, align 2, !tbaa !146, !noalias !129
  %i.az = add nuw nsw i64 %.01.i.i475, 2          ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !146, !noalias !129
  %rev.i.i.i.2 = call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.az
  store i16 %rev.i.i.i.2, ptr %i.bc, align 2, !tbaa !146, !noalias !129
  %i.bd = add nuw nsw i64 %.01.i.i475, 3          ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !146, !noalias !129
  %rev.i.i.i.3 = call noundef i16 @llvm.bswap.i16(i16 %i.bf)
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.bd
  store i16 %rev.i.i.i.3, ptr %i.bg, align 2, !tbaa !146, !noalias !129
  %i.bh = add nuw nsw i64 %.01.i.i475, 4          ; 2 uses
  %exitcond.not.i.i476.3 = icmp eq i64 %i.bh, %i.x
  br i1 %exitcond.not.i.i476.3, label %._crit_edge.i.i477, label %.lr.ph.i.i474, !llvm.loop !155

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i481: ; preds = %._crit_edge.i.i477
  store ptr null, ptr %6, align 8, !tbaa !60, !alias.scope !123, !noalias !117
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = load <2 x ptr>, ptr %5, align 16, !tbaa !93, !noalias !129
  store <2 x ptr> %i.bj, ptr %i.bi, align 8, !tbaa !93, !alias.scope !123, !noalias !117
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !129
  %i.bk = load ptr, ptr %4, align 8, !tbaa !143, !noalias !129 ; 3 uses
  %.not.i.i.i482 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i482, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i484, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i483

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i483: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i481
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !88, !noalias !129
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !129
  call void %i.bn(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bk) #19, !noalias !129, !inline_history !156
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i484

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i484: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i483, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i481
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !129
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i477
  %i.bo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !129
  %i.bp = load ptr, ptr %4, align 8, !tbaa !143, !noalias !129 ; 3 uses
  %.not.i20.i.i478 = icmp eq ptr %i.bp, null
  br i1 %.not.i20.i.i478, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i480, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i479

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i479: ; preds = %bb.e
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !88, !noalias !129
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !129
  call void %i.bs(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bp) #19, !noalias !129, !inline_history !156
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i480

common.resume:                                    ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i, %bb.ft, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i339, %bb.eu, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i, %bb.dd, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i480, %bb.k, %bb.rk, %bb.qv, %bb.qg, %bb.pr, %bb.pc, %bb.ny, %bb.ng, %bb.nd, %bb.lz, %bb.lh, %bb.kp, %bb.jx, %bb.jf, %bb.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i275, %bb.dv, %bb.ce, %bb.bm, %bb.au, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %i.bxa, %bb.rk ], [ %i.ek, %bb.ac ], [ %i.go, %bb.au ], [ %i.is, %bb.bm ], [ %i.kw, %bb.ce ], [ %i.cg, %bb.k ], [ %i.sa, %bb.dv ], [ %i.pw, %bb.dd ], [ %i.xa, %bb.eu ], [ %i.afn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i275 ], [ %i.ahk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ], [ %i.akw, %bb.in ], [ %i.ana, %bb.jf ], [ %i.ape, %bb.jx ], [ %i.ari, %bb.kp ], [ %i.atm, %bb.lh ], [ %i.avq, %bb.lz ], [ %.pn21.i, %bb.nd ], [ %i.bbs, %bb.ng ], [ %i.bdw, %bb.ny ], [ %.pn20.i92, %bb.pc ], [ %.pn20.i65, %bb.pr ], [ %.pn20.i41, %bb.qg ], [ %.pn20.i, %bb.qv ], [ %i.bo, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i480 ], [ %i.pe, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i ], [ %i.wi, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i339 ], [ %i.abi, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i ], [ %i.aca, %bb.ft ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i480: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i479, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !129
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !129
  br label %common.resume

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i484, %bb.c
  %i.bt = load ptr, ptr %3, align 8, !tbaa !60, !noalias !129 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.g, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i451, !prof !63

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !143, !noalias !129 ; 3 uses
  %.not.i.i.i.i.i.i468 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i468, label %bb.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i469

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i469: ; preds = %bb.g
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !88, !noalias !117
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !117
  call void %i.bz(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bw) #19, !noalias !117, !inline_history !157
  %.pr.pre.i.i.i470 = load ptr, ptr %3, align 8, !tbaa !60, !noalias !129 ; 2 uses
  %.not.i.i23.i.i471 = icmp eq ptr %.pr.pre.i.i.i470, null
  br i1 %.not.i.i23.i.i471, label %bb.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i451, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i451: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i469, %bb.f
  %i.ca = phi ptr [ %.pr.pre.i.i.i470, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i469 ], [ %i.bt, %bb.f ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !64, !range !74, !noalias !117, !noundef !75
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i451
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #19, !noalias !117
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i451, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i469, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19, !noalias !129
  %i.ce = load ptr, ptr %6, align 8, !tbaa !60, !noalias !117
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.l, label %bb.j, !prof !63

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !117
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.cf, label %bb.cd, !prof !63

bb.cd:                                            ; preds = %bb.cc
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !208
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i391 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !208
  br label %common.resume

bb.cf:                                            ; preds = %bb.cc
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kz = load <2 x ptr>, ptr %i.kx, align 8, !tbaa !93, !noalias !211
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, i8 0, i64 16, i1 false), !noalias !208
  %i.la = load ptr, ptr %i.ky, align 8, !tbaa !33, !noalias !208
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !122, !noalias !208 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !91, !noalias !208 ; 8 uses
  store <2 x ptr> %i.kz, ptr %i.ld, align 8, !tbaa !93, !noalias !208
  %.not.i.i.i.i.i400 = icmp eq ptr %i.lf, null
  br i1 %.not.i.i.i.i.i400, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i404, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 4 uses
  %i.lh = load atomic i64, ptr %i.lg acquire, align 8, !noalias !208 ; 2 uses
  %i.li = icmp eq i64 %i.lh, 4294967297
  %i.lj = trunc i64 %i.lh to i32                  ; 2 uses
  br i1 %i.li, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.lg, align 8, !tbaa !80, !noalias !208
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 12
  store i32 0, ptr %i.lk, align 4, !tbaa !87, !noalias !208
  %i.ll = load ptr, ptr %i.lf, align 8, !tbaa !88, !noalias !208
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !208
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #19, !noalias !208, !inline_history !216
  %i.lo = load ptr, ptr %i.lf, align 8, !tbaa !88, !noalias !208
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lq = load ptr, ptr %i.lp, align 8, !noalias !208
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #19, !noalias !208, !inline_history !216
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i404

bb.ci:                                            ; preds = %bb.cg
  %i.lr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !208
  %.not.i.i.i.i.i.i401 = icmp eq i8 %i.lr, 0
  br i1 %.not.i.i.i.i.i.i401, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ls = add nsw i32 %i.lj, -1
  store i32 %i.ls, ptr %i.lg, align 8, !tbaa !3, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i402

bb.ck:                                            ; preds = %bb.ci
  %i.lt = atomicrmw volatile add ptr %i.lg, i32 -1 acq_rel, align 4, !noalias !208
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i402

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i402: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i.i.i403 = phi i32 [ %i.lj, %bb.cj ], [ %i.lt, %bb.ck ]
  %i.lu = icmp eq i32 %.0.i.i.i.i.i.i.i403, 1
  br i1 %i.lu, label %bb.cl, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i404, !prof !96

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i402
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lf) #19, !noalias !208
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i404

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i404: ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i402, %bb.ch, %bb.cf
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !217
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i391

_ZN5arrow6StatusC2ERKS0_.exit.i391:               ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i404, %bb.cd
  %i.lv = load ptr, ptr %10, align 8, !tbaa !60, !noalias !208 ; 2 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.cm, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i392, !prof !63

bb.cm:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i391
  %i.lx = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !91, !noalias !208 ; 8 uses
  %.not.i.i.i.i.i7.i393 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i.i.i.i7.i393, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 4 uses
  %i.ma = load atomic i64, ptr %i.lz acquire, align 8 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 4294967297
  %i.mc = trunc i64 %i.ma to i32                  ; 2 uses
  br i1 %i.mb, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store i32 0, ptr %i.lz, align 8, !tbaa !80
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 12
  store i32 0, ptr %i.md, align 4, !tbaa !87
  %i.me = load ptr, ptr %i.ly, align 8, !tbaa !88
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8
  call void %i.mg(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #19, !inline_history !220
  %i.mh = load ptr, ptr %i.ly, align 8, !tbaa !88
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8
  call void %i.mj(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #19, !inline_history !220
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397

bb.cp:                                            ; preds = %bb.cn
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !208
  %.not.i.i.i.i.i.i.i394 = icmp eq i8 %i.mk, 0
  br i1 %.not.i.i.i.i.i.i.i394, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ml = add nsw i32 %i.mc, -1
  store i32 %i.ml, ptr %i.lz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i395

bb.cr:                                            ; preds = %bb.cp
  %i.mm = atomicrmw volatile add ptr %i.lz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i395

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i395: ; preds = %bb.cr, %bb.cq
  %.0.i.i.i.i.i.i.i.i396 = phi i32 [ %i.mc, %bb.cq ], [ %i.mm, %bb.cr ]
  %i.mn = icmp eq i32 %.0.i.i.i.i.i.i.i.i396, 1
  br i1 %i.mn, label %bb.cs, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397, !prof !96

bb.cs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i395
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ly) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397: ; preds = %bb.cs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i395, %bb.co, %bb.cm
  %.pr.i.i398 = load ptr, ptr %10, align 8, !tbaa !60, !noalias !208 ; 2 uses
  %.not.i.i8.i399 = icmp eq ptr %.pr.i.i398, null
  br i1 %.not.i.i8.i399, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9Int64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i392, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i392: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397, %_ZN5arrow6StatusC2ERKS0_.exit.i391
  %i.mo = phi ptr [ %.pr.i.i398, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397 ], [ %i.lv, %_ZN5arrow6StatusC2ERKS0_.exit.i391 ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 1
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !64, !range !74, !noundef !75
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9Int64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.ct

bb.ct:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i392
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9Int64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9Int64TypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i397, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i392, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19, !noalias !208
  br label %_ZN5arrow6StatusD2Ev.exit

bb.cu:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19, !noalias !221
  %i.ms = load ptr, ptr %1, align 8, !tbaa !120, !noalias !221, !nonnull !75, !align !121
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !33, !noalias !221
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !122, !noalias !221
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i359 = load ptr, ptr %i.mx, align 8, !tbaa !77, !noalias !221
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.my = load ptr, ptr %i.mw, align 8, !tbaa !126, !noalias !227 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !227 ; 7 uses
  %i.nb = ptrtoaddr ptr %i.na to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19, !noalias !227
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !130, !noalias !227
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %11, i64 noundef %i.nd, ptr noundef %.val.i359), !noalias !227
  %i.ne = load ptr, ptr %11, align 8, !tbaa !60, !noalias !227
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %bb.cw, label %bb.cv, !prof !63

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %11) #19, !noalias !221
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19, !noalias !227
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.ng = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !143, !noalias !234 ; 2 uses
  store i64 %i.nh, ptr %12, align 8, !tbaa !143, !alias.scope !235, !noalias !227
  store ptr null, ptr %i.ng, align 8, !tbaa !143, !noalias !234
  %.cast.i.i380 = inttoptr i64 %i.nh to ptr
  %i.ni = getelementptr inbounds nuw i8, ptr %.cast.i.i380, i64 16
  %i.nj = load ptr, ptr %i.ni, align 8, !noalias !227 ; 7 uses
  %i.nk = load ptr, ptr %i.mw, align 8, !tbaa !126, !noalias !227
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 24
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !130, !noalias !227 ; 2 uses
  %i.nn = lshr i64 %i.nm, 3                       ; 6 uses
  %.not.i.i381 = icmp eq i64 %i.nn, 0
  br i1 %.not.i.i381, label %._crit_edge.i.i385, label %.lr.ph.i.i382.preheader

.lr.ph.i.i382.preheader:                          ; preds = %bb.cw
  %i.no = ptrtoaddr ptr %i.nj to i64
  %min.iters.check699 = icmp ult i64 %i.nm, 48
  %i.np = sub i64 %i.nb, %i.no
  %diff.check697 = icmp ugt i64 %i.np, -32
  %or.cond733 = select i1 %min.iters.check699, i1 true, i1 %diff.check697
  br i1 %or.cond733, label %.lr.ph.i.i382.preheader740, label %vector.ph700

vector.ph700:                                     ; preds = %.lr.ph.i.i382.preheader
  %n.vec702 = and i64 %i.nn, 2305843009213693948  ; 3 uses
  br label %vector.body703

vector.body703:                                   ; preds = %vector.body703, %vector.ph700
  %index704 = phi i64 [ 0, %vector.ph700 ], [ %index.next707, %vector.body703 ] ; 3 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %index704 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %wide.load705 = load <2 x i64>, ptr %i.nq, align 8, !tbaa !236, !noalias !227
  %wide.load706 = load <2 x i64>, ptr %i.nr, align 8, !tbaa !236, !noalias !227
  %i.ns = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load705)
  %i.nt = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load706)
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %index704 ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  store <2 x i64> %i.ns, ptr %i.nu, align 8, !tbaa !236, !noalias !227
  store <2 x i64> %i.nt, ptr %i.nv, align 8, !tbaa !236, !noalias !227
  %index.next707 = add nuw i64 %index704, 4       ; 2 uses
  %i.nw = icmp eq i64 %index.next707, %n.vec702
  br i1 %i.nw, label %middle.block708, label %vector.body703, !llvm.loop !237

middle.block708:                                  ; preds = %vector.body703
  %cmp.n709 = icmp eq i64 %i.nn, %n.vec702
  br i1 %cmp.n709, label %._crit_edge.i.i385, label %.lr.ph.i.i382.preheader740

.lr.ph.i.i382.preheader740:                       ; preds = %.lr.ph.i.i382.preheader, %middle.block708
  %.01.i.i383.ph = phi i64 [ 0, %.lr.ph.i.i382.preheader ], [ %n.vec702, %middle.block708 ] ; 3 uses
  %xtraiter755 = and i64 %i.nn, 3                 ; 2 uses
  %lcmp.mod756.not = icmp eq i64 %xtraiter755, 0
  br i1 %lcmp.mod756.not, label %.lr.ph.i.i382.prol.loopexit, label %.lr.ph.i.i382.prol

.lr.ph.i.i382.prol:                               ; preds = %.lr.ph.i.i382.preheader740, %.lr.ph.i.i382.prol
  %.01.i.i383.prol = phi i64 [ %i.ob, %.lr.ph.i.i382.prol ], [ %.01.i.i383.ph, %.lr.ph.i.i382.preheader740 ] ; 3 uses
  %prol.iter757 = phi i64 [ %prol.iter757.next, %.lr.ph.i.i382.prol ], [ 0, %.lr.ph.i.i382.preheader740 ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %.01.i.i383.prol
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !236, !noalias !227
  %i.nz = call noundef i64 @llvm.bswap.i64(i64 %i.ny)
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %.01.i.i383.prol
  store i64 %i.nz, ptr %i.oa, align 8, !tbaa !236, !noalias !227
  %i.ob = add nuw nsw i64 %.01.i.i383.prol, 1     ; 2 uses
  %prol.iter757.next = add i64 %prol.iter757, 1   ; 2 uses
  %prol.iter757.cmp.not = icmp eq i64 %prol.iter757.next, %xtraiter755
  br i1 %prol.iter757.cmp.not, label %.lr.ph.i.i382.prol.loopexit, label %.lr.ph.i.i382.prol, !llvm.loop !238

.lr.ph.i.i382.prol.loopexit:                      ; preds = %.lr.ph.i.i382.prol, %.lr.ph.i.i382.preheader740
  %.01.i.i383.unr = phi i64 [ %.01.i.i383.ph, %.lr.ph.i.i382.preheader740 ], [ %i.ob, %.lr.ph.i.i382.prol ]
  %i.oc = sub nsw i64 %.01.i.i383.ph, %i.nn
  %i.od = icmp ugt i64 %i.oc, -4
  br i1 %i.od, label %._crit_edge.i.i385, label %.lr.ph.i.i382

._crit_edge.i.i385:                               ; preds = %.lr.ph.i.i382.prol.loopexit, %.lr.ph.i.i382, %middle.block708, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19, !noalias !227
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i386 unwind label %bb.cx, !noalias !227

.lr.ph.i.i382:                                    ; preds = %.lr.ph.i.i382.prol.loopexit, %.lr.ph.i.i382
  %.01.i.i383 = phi i64 [ %i.ox, %.lr.ph.i.i382 ], [ %.01.i.i383.unr, %.lr.ph.i.i382.prol.loopexit ] ; 6 uses
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %.01.i.i383
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !236, !noalias !227
  %i.og = call noundef i64 @llvm.bswap.i64(i64 %i.of)
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %.01.i.i383
  store i64 %i.og, ptr %i.oh, align 8, !tbaa !236, !noalias !227
  %i.oi = add nuw nsw i64 %.01.i.i383, 1          ; 2 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.oi
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !236, !noalias !227
  %i.ol = call noundef i64 @llvm.bswap.i64(i64 %i.ok)
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.oi
  store i64 %i.ol, ptr %i.om, align 8, !tbaa !236, !noalias !227
  %i.on = add nuw nsw i64 %.01.i.i383, 2          ; 2 uses
  %i.oo = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.on
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !236, !noalias !227
  %i.oq = call noundef i64 @llvm.bswap.i64(i64 %i.op)
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.on
  store i64 %i.oq, ptr %i.or, align 8, !tbaa !236, !noalias !227
  %i.os = add nuw nsw i64 %.01.i.i383, 3          ; 2 uses
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.na, i64 %i.os
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !236, !noalias !227
  %i.ov = call noundef i64 @llvm.bswap.i64(i64 %i.ou)
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.nj, i64 %i.os
  store i64 %i.ov, ptr %i.ow, align 8, !tbaa !236, !noalias !227
  %i.ox = add nuw nsw i64 %.01.i.i383, 4          ; 2 uses
  %exitcond.not.i.i384.3 = icmp eq i64 %i.ox, %i.nn
  br i1 %exitcond.not.i.i384.3, label %._crit_edge.i.i385, label %.lr.ph.i.i382, !llvm.loop !239

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i386: ; preds = %._crit_edge.i.i385
  store ptr null, ptr %14, align 8, !tbaa !60, !alias.scope !224, !noalias !221
  %i.oy = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.oz = load <2 x ptr>, ptr %13, align 16, !tbaa !93, !noalias !227
  store <2 x ptr> %i.oz, ptr %i.oy, align 8, !tbaa !93, !alias.scope !224, !noalias !221
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !227
  %i.pa = load ptr, ptr %12, align 8, !tbaa !143, !noalias !227 ; 3 uses
  %.not.i.i.i387 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i387, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i389, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i388

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i388: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i386
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !88, !noalias !227
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pd = load ptr, ptr %i.pc, align 8, !noalias !227
  call void %i.pd(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.pa) #19, !noalias !227, !inline_history !240
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i389

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i389: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i388, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i386
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !227
  br label %bb.cy

bb.cx:                                            ; preds = %._crit_edge.i.i385
  %i.pe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19, !noalias !227
  %i.pf = load ptr, ptr %12, align 8, !tbaa !143, !noalias !227 ; 3 uses
  %.not.i20.i.i = icmp eq ptr %i.pf, null
  br i1 %.not.i20.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i: ; preds = %bb.cx
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !88, !noalias !227
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !noalias !227
  call void %i.pi(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.pf) #19, !noalias !227, !inline_history !240
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21.i.i, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19, !noalias !227
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #19, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !227
  br label %common.resume

bb.cy:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i389, %bb.cv
  %i.pj = load ptr, ptr %11, align 8, !tbaa !60, !noalias !227 ; 2 uses
  %i.pk = icmp eq ptr %i.pj, null
  br i1 %i.pk, label %bb.cz, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i360, !prof !63

bb.cz:                                            ; preds = %bb.cy
  %i.pl = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !143, !noalias !227 ; 3 uses
  %.not.i.i.i.i.i.i377 = icmp eq ptr %i.pm, null
  br i1 %.not.i.i.i.i.i.i377, label %bb.db, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i378

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i378: ; preds = %bb.cz
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !88, !noalias !221
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !noalias !221
  call void %i.pp(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.pm) #19, !noalias !221, !inline_history !241
  %.pr.pre.i.i.i379 = load ptr, ptr %11, align 8, !tbaa !60, !noalias !227 ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %.pr.pre.i.i.i379, null
  br i1 %.not.i.i23.i.i, label %bb.db, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i360, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i360: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i378, %bb.cy
  %i.pq = phi ptr [ %.pr.pre.i.i.i379, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i378 ], [ %i.pj, %bb.cy ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 1
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !64, !range !74, !noalias !221, !noundef !75
  %i.pt = trunc nuw i8 %i.ps to i1
  br i1 %i.pt, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i360
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #19, !noalias !221
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i360, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i378, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19, !noalias !227
  %i.pu = load ptr, ptr %14, align 8, !tbaa !60, !noalias !221
  %i.pv = icmp eq ptr %i.pu, null
  br i1 %i.pv, label %bb.de, label %bb.dc, !prof !63

bb.dc:                                            ; preds = %bb.db
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !221
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i363 unwind label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.pw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19, !noalias !221
  br label %common.resume

bb.de:                                            ; preds = %bb.db
  %i.px = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.pz = load <2 x ptr>, ptr %i.px, align 8, !tbaa !93, !noalias !242
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.px, i8 0, i64 16, i1 false), !noalias !221
  %i.qa = load ptr, ptr %i.py, align 8, !tbaa !33, !noalias !221
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !122, !noalias !221 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qf = load ptr, ptr %i.qe, align 8, !tbaa !91, !noalias !221 ; 8 uses
  store <2 x ptr> %i.pz, ptr %i.qd, align 8, !tbaa !93, !noalias !221
  %.not.i.i.i.i.i372 = icmp eq ptr %i.qf, null
  br i1 %.not.i.i.i.i.i372, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i376, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 4 uses
  %i.qh = load atomic i64, ptr %i.qg acquire, align 8, !noalias !221 ; 2 uses
  %i.qi = icmp eq i64 %i.qh, 4294967297
  %i.qj = trunc i64 %i.qh to i32                  ; 2 uses
  br i1 %i.qi, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  br i1 %i.rz, label %bb.dw, label %bb.du, !prof !63

bb.du:                                            ; preds = %bb.dt
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !252
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i345 unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.sa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !252
  br label %common.resume

bb.dw:                                            ; preds = %bb.dt
  %i.sb = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.sd = load <2 x ptr>, ptr %i.sb, align 8, !tbaa !93, !noalias !255
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sb, i8 0, i64 16, i1 false), !noalias !252
  %i.se = load ptr, ptr %i.sc, align 8, !tbaa !33, !noalias !252
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 40
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !122, !noalias !252 ; 2 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !91, !noalias !252 ; 8 uses
  store <2 x ptr> %i.sd, ptr %i.sh, align 8, !tbaa !93, !noalias !252
  %.not.i.i.i.i.i354 = icmp eq ptr %i.sj, null
  br i1 %.not.i.i.i.i.i354, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i358, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8 ; 4 uses
  %i.sl = load atomic i64, ptr %i.sk acquire, align 8, !noalias !252 ; 2 uses
  %i.sm = icmp eq i64 %i.sl, 4294967297
  %i.sn = trunc i64 %i.sl to i32                  ; 2 uses
  br i1 %i.sm, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 0, ptr %i.sk, align 8, !tbaa !80, !noalias !252
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 12
  store i32 0, ptr %i.so, align 4, !tbaa !87, !noalias !252
  %i.sp = load ptr, ptr %i.sj, align 8, !tbaa !88, !noalias !252
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8, !noalias !252
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #19, !noalias !252, !inline_history !260
  %i.ss = load ptr, ptr %i.sj, align 8, !tbaa !88, !noalias !252
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 24
  %i.su = load ptr, ptr %i.st, align 8, !noalias !252
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #19, !noalias !252, !inline_history !260
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i358

bb.dz:                                            ; preds = %bb.dx
  %i.sv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !252
  %.not.i.i.i.i.i.i355 = icmp eq i8 %i.sv, 0
  br i1 %.not.i.i.i.i.i.i355, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.sw = add nsw i32 %i.sn, -1
  store i32 %i.sw, ptr %i.sk, align 8, !tbaa !3, !noalias !252
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i356

bb.eb:                                            ; preds = %bb.dz
  %i.sx = atomicrmw volatile add ptr %i.sk, i32 -1 acq_rel, align 4, !noalias !252
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i356

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i356: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i.i.i.i357 = phi i32 [ %i.sn, %bb.ea ], [ %i.sx, %bb.eb ]
  %i.sy = icmp eq i32 %.0.i.i.i.i.i.i.i357, 1
  br i1 %i.sy, label %bb.ec, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i358, !prof !96

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i356
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sj) #19, !noalias !252
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i358

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i358: ; preds = %bb.ec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i356, %bb.dy, %bb.dw
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !261
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i345

_ZN5arrow6StatusC2ERKS0_.exit.i345:               ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i358, %bb.du
  %i.sz = load ptr, ptr %15, align 8, !tbaa !60, !noalias !252 ; 2 uses
  %i.ta = icmp eq ptr %i.sz, null
  br i1 %i.ta, label %bb.ed, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i346, !prof !63

bb.ed:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i345
  %i.tb = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !91, !noalias !252 ; 8 uses
  %.not.i.i.i.i.i7.i347 = icmp eq ptr %i.tc, null
  br i1 %.not.i.i.i.i.i7.i347, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8 ; 4 uses
  %i.te = load atomic i64, ptr %i.td acquire, align 8 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 4294967297
  %i.tg = trunc i64 %i.te to i32                  ; 2 uses
  br i1 %i.tf, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 0, ptr %i.td, align 8, !tbaa !80
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 12
  store i32 0, ptr %i.th, align 4, !tbaa !87
  %i.ti = load ptr, ptr %i.tc, align 8, !tbaa !88
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %i.tk = load ptr, ptr %i.tj, align 8
  call void %i.tk(ptr noundef nonnull align 8 dereferenceable(16) %i.tc) #19, !inline_history !264
  %i.tl = load ptr, ptr %i.tc, align 8, !tbaa !88
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tn = load ptr, ptr %i.tm, align 8
  call void %i.tn(ptr noundef nonnull align 8 dereferenceable(16) %i.tc) #19, !inline_history !264
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351

bb.eg:                                            ; preds = %bb.ee
  %i.to = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !252
  %.not.i.i.i.i.i.i.i348 = icmp eq i8 %i.to, 0
  br i1 %.not.i.i.i.i.i.i.i348, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.tp = add nsw i32 %i.tg, -1
  store i32 %i.tp, ptr %i.td, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i349

bb.ei:                                            ; preds = %bb.eg
  %i.tq = atomicrmw volatile add ptr %i.td, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i349

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i349: ; preds = %bb.ei, %bb.eh
  %.0.i.i.i.i.i.i.i.i350 = phi i32 [ %i.tg, %bb.eh ], [ %i.tq, %bb.ei ]
  %i.tr = icmp eq i32 %.0.i.i.i.i.i.i.i.i350, 1
  br i1 %i.tr, label %bb.ej, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351, !prof !96

bb.ej:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i349
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.tc) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351: ; preds = %bb.ej, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i349, %bb.ef, %bb.ed
  %.pr.i.i352 = load ptr, ptr %15, align 8, !tbaa !60, !noalias !252 ; 2 uses
  %.not.i.i8.i353 = icmp eq ptr %.pr.i.i352, null
  br i1 %.not.i.i8.i353, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13HalfFloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i346, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i346: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351, %_ZN5arrow6StatusC2ERKS0_.exit.i345
  %i.ts = phi ptr [ %.pr.i.i352, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351 ], [ %i.sz, %_ZN5arrow6StatusC2ERKS0_.exit.i345 ]
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 1
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !64, !range !74, !noundef !75
  %i.tv = trunc nuw i8 %i.tu to i1
  br i1 %i.tv, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13HalfFloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i346
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %15) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13HalfFloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13HalfFloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i351, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i346, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19, !noalias !252
  br label %_ZN5arrow6StatusD2Ev.exit

bb.el:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19, !noalias !265
  %i.tw = load ptr, ptr %1, align 8, !tbaa !120, !noalias !265, !nonnull !75, !align !121
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !33, !noalias !265
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 40
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !122, !noalias !265
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 16 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i309 = load ptr, ptr %i.ub, align 8, !tbaa !77, !noalias !265
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.uc = load ptr, ptr %i.ua, align 8, !tbaa !126, !noalias !271 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8, !noalias !271 ; 7 uses
  %i.uf = ptrtoaddr ptr %i.ue to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19, !noalias !271
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uc, i64 24
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !130, !noalias !271
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %16, i64 noundef %i.uh, ptr noundef %.val.i309), !noalias !271
  %i.ui = load ptr, ptr %16, align 8, !tbaa !60, !noalias !271
  %i.uj = icmp eq ptr %i.ui, null
  br i1 %i.uj, label %bb.en, label %bb.em, !prof !63

bb.em:                                            ; preds = %bb.el
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(8) %16) #19, !noalias !265
  br label %bb.ep

bb.en:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19, !noalias !271
  call void @llvm.experimental.noalias.scope.decl(metadata !272)
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.uk = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !143, !noalias !278 ; 2 uses
  store i64 %i.ul, ptr %17, align 8, !tbaa !143, !alias.scope !279, !noalias !271
  store ptr null, ptr %i.uk, align 8, !tbaa !143, !noalias !278
  %.cast.i.i331 = inttoptr i64 %i.ul to ptr
  %i.um = getelementptr inbounds nuw i8, ptr %.cast.i.i331, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !noalias !271 ; 7 uses
  %i.uo = load ptr, ptr %i.ua, align 8, !tbaa !126, !noalias !271
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 24
  %i.uq = load i64, ptr %i.up, align 8, !tbaa !130, !noalias !271 ; 2 uses
  %i.ur = lshr i64 %i.uq, 2                       ; 6 uses
  %.not.i.i332 = icmp eq i64 %i.ur, 0
  br i1 %.not.i.i332, label %._crit_edge.i.i336, label %.lr.ph.i.i333.preheader

.lr.ph.i.i333.preheader:                          ; preds = %bb.en
  %i.us = ptrtoaddr ptr %i.un to i64
  %min.iters.check684 = icmp ult i64 %i.uq, 32
  %i.ut = sub i64 %i.uf, %i.us
  %diff.check682 = icmp ugt i64 %i.ut, -32
  %or.cond734 = select i1 %min.iters.check684, i1 true, i1 %diff.check682
  br i1 %or.cond734, label %.lr.ph.i.i333.preheader741, label %vector.ph685

vector.ph685:                                     ; preds = %.lr.ph.i.i333.preheader
  %n.vec687 = and i64 %i.ur, 4611686018427387896  ; 3 uses
  br label %vector.body688

vector.body688:                                   ; preds = %vector.body688, %vector.ph685
  %index689 = phi i64 [ 0, %vector.ph685 ], [ %index.next692, %vector.body688 ] ; 3 uses
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %index689 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 16
  %wide.load690 = load <4 x i32>, ptr %i.uu, align 4, !tbaa !280, !noalias !271
  %wide.load691 = load <4 x i32>, ptr %i.uv, align 4, !tbaa !280, !noalias !271
  %i.uw = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load690)
  %i.ux = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load691)
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %index689 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 16
  store <4 x i32> %i.uw, ptr %i.uy, align 4, !tbaa !280, !noalias !271
  store <4 x i32> %i.ux, ptr %i.uz, align 4, !tbaa !280, !noalias !271
  %index.next692 = add nuw i64 %index689, 8       ; 2 uses
  %i.va = icmp eq i64 %index.next692, %n.vec687
  br i1 %i.va, label %middle.block693, label %vector.body688, !llvm.loop !282

middle.block693:                                  ; preds = %vector.body688
  %cmp.n694 = icmp eq i64 %i.ur, %n.vec687
  br i1 %cmp.n694, label %._crit_edge.i.i336, label %.lr.ph.i.i333.preheader741

.lr.ph.i.i333.preheader741:                       ; preds = %.lr.ph.i.i333.preheader, %middle.block693
  %.01.i.i334.ph = phi i64 [ 0, %.lr.ph.i.i333.preheader ], [ %n.vec687, %middle.block693 ] ; 3 uses
  %xtraiter752 = and i64 %i.ur, 3                 ; 2 uses
  %lcmp.mod753.not = icmp eq i64 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %.lr.ph.i.i333.prol.loopexit, label %.lr.ph.i.i333.prol

.lr.ph.i.i333.prol:                               ; preds = %.lr.ph.i.i333.preheader741, %.lr.ph.i.i333.prol
  %.01.i.i334.prol = phi i64 [ %i.vf, %.lr.ph.i.i333.prol ], [ %.01.i.i334.ph, %.lr.ph.i.i333.preheader741 ] ; 3 uses
  %prol.iter754 = phi i64 [ %prol.iter754.next, %.lr.ph.i.i333.prol ], [ 0, %.lr.ph.i.i333.preheader741 ]
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %.01.i.i334.prol
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !280, !noalias !271
  %i.vd = call i32 @llvm.bswap.i32(i32 %i.vc)
  %i.ve = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %.01.i.i334.prol
  store i32 %i.vd, ptr %i.ve, align 4, !tbaa !280, !noalias !271
  %i.vf = add nuw nsw i64 %.01.i.i334.prol, 1     ; 2 uses
  %prol.iter754.next = add i64 %prol.iter754, 1   ; 2 uses
  %prol.iter754.cmp.not = icmp eq i64 %prol.iter754.next, %xtraiter752
  br i1 %prol.iter754.cmp.not, label %.lr.ph.i.i333.prol.loopexit, label %.lr.ph.i.i333.prol, !llvm.loop !283

.lr.ph.i.i333.prol.loopexit:                      ; preds = %.lr.ph.i.i333.prol, %.lr.ph.i.i333.preheader741
  %.01.i.i334.unr = phi i64 [ %.01.i.i334.ph, %.lr.ph.i.i333.preheader741 ], [ %i.vf, %.lr.ph.i.i333.prol ]
  %i.vg = sub nsw i64 %.01.i.i334.ph, %i.ur
  %i.vh = icmp ugt i64 %i.vg, -4
  br i1 %i.vh, label %._crit_edge.i.i336, label %.lr.ph.i.i333

._crit_edge.i.i336:                               ; preds = %.lr.ph.i.i333.prol.loopexit, %.lr.ph.i.i333, %middle.block693, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19, !noalias !271
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i340 unwind label %bb.eo, !noalias !271

.lr.ph.i.i333:                                    ; preds = %.lr.ph.i.i333.prol.loopexit, %.lr.ph.i.i333
  %.01.i.i334 = phi i64 [ %i.wb, %.lr.ph.i.i333 ], [ %.01.i.i334.unr, %.lr.ph.i.i333.prol.loopexit ] ; 6 uses
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %.01.i.i334
  %i.vj = load i32, ptr %i.vi, align 4, !tbaa !280, !noalias !271
  %i.vk = call i32 @llvm.bswap.i32(i32 %i.vj)
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %.01.i.i334
  store i32 %i.vk, ptr %i.vl, align 4, !tbaa !280, !noalias !271
  %i.vm = add nuw nsw i64 %.01.i.i334, 1          ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.vm
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !280, !noalias !271
  %i.vp = call i32 @llvm.bswap.i32(i32 %i.vo)
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.vm
  store i32 %i.vp, ptr %i.vq, align 4, !tbaa !280, !noalias !271
  %i.vr = add nuw nsw i64 %.01.i.i334, 2          ; 2 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !280, !noalias !271
  %i.vu = call i32 @llvm.bswap.i32(i32 %i.vt)
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.vr
  store i32 %i.vu, ptr %i.vv, align 4, !tbaa !280, !noalias !271
  %i.vw = add nuw nsw i64 %.01.i.i334, 3          ; 2 uses
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.ue, i64 %i.vw
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !280, !noalias !271
  %i.vz = call i32 @llvm.bswap.i32(i32 %i.vy)
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %i.vw
  store i32 %i.vz, ptr %i.wa, align 4, !tbaa !280, !noalias !271
  %i.wb = add nuw nsw i64 %.01.i.i334, 4          ; 2 uses
  %exitcond.not.i.i335.3 = icmp eq i64 %i.wb, %i.ur
  br i1 %exitcond.not.i.i335.3, label %._crit_edge.i.i336, label %.lr.ph.i.i333, !llvm.loop !284

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i340: ; preds = %._crit_edge.i.i336
  store ptr null, ptr %19, align 8, !tbaa !60, !alias.scope !268, !noalias !265
  %i.wc = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.wd = load <2 x ptr>, ptr %18, align 16, !tbaa !93, !noalias !271
  store <2 x ptr> %i.wd, ptr %i.wc, align 8, !tbaa !93, !alias.scope !268, !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !271
  %i.we = load ptr, ptr %17, align 8, !tbaa !143, !noalias !271 ; 3 uses
  %.not.i.i.i341 = icmp eq ptr %i.we, null
  br i1 %.not.i.i.i341, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i343, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i342

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i342: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i340
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !88, !noalias !271
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8, !noalias !271
  call void %i.wh(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.we) #19, !noalias !271, !inline_history !285
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i343

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i343: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i342, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !271
  br label %bb.ep

bb.eo:                                            ; preds = %._crit_edge.i.i336
  %i.wi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19, !noalias !271
  %i.wj = load ptr, ptr %17, align 8, !tbaa !143, !noalias !271 ; 3 uses
  %.not.i22.i.i337 = icmp eq ptr %i.wj, null
  br i1 %.not.i22.i.i337, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i339, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i.i338

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i.i338: ; preds = %bb.eo
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !88, !noalias !271
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = load ptr, ptr %i.wl, align 8, !noalias !271
  call void %i.wm(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.wj) #19, !noalias !271, !inline_history !285
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i339

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i339: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i.i338, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19, !noalias !271
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #19, !noalias !271
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !271
  br label %common.resume

bb.ep:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i343, %bb.em
  %i.wn = load ptr, ptr %16, align 8, !tbaa !60, !noalias !271 ; 2 uses
  %i.wo = icmp eq ptr %i.wn, null
  br i1 %i.wo, label %bb.eq, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i310, !prof !63

bb.eq:                                            ; preds = %bb.ep
  %i.wp = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !143, !noalias !271 ; 3 uses
  %.not.i.i.i.i.i.i327 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i.i.i.i.i327, label %bb.es, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i328

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i328: ; preds = %bb.eq
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !88, !noalias !265
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !noalias !265
  call void %i.wt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.wq) #19, !noalias !265, !inline_history !286
  %.pr.pre.i.i.i329 = load ptr, ptr %16, align 8, !tbaa !60, !noalias !271 ; 2 uses
  %.not.i.i25.i.i330 = icmp eq ptr %.pr.pre.i.i.i329, null
  br i1 %.not.i.i25.i.i330, label %bb.es, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i310, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i310: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i328, %bb.ep
  %i.wu = phi ptr [ %.pr.pre.i.i.i329, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i328 ], [ %i.wn, %bb.ep ]
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 1
  %i.ww = load i8, ptr %i.wv, align 1, !tbaa !64, !range !74, !noalias !265, !noundef !75
  %i.wx = trunc nuw i8 %i.ww to i1
  br i1 %i.wx, label %bb.es, label %bb.er

bb.er:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i310
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %16) #19, !noalias !265
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i310, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i328, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19, !noalias !271
  %i.wy = load ptr, ptr %19, align 8, !tbaa !60, !noalias !265
  %i.wz = icmp eq ptr %i.wy, null
  br i1 %i.wz, label %bb.ev, label %bb.et, !prof !63

bb.et:                                            ; preds = %bb.es
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !265
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i313 unwind label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.xa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !265
  br label %common.resume

bb.ev:                                            ; preds = %bb.es
  %i.xb = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.xc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xd = load <2 x ptr>, ptr %i.xb, align 8, !tbaa !93, !noalias !287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xb, i8 0, i64 16, i1 false), !noalias !265
  %i.xe = load ptr, ptr %i.xc, align 8, !tbaa !33, !noalias !265
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 40
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !122, !noalias !265 ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xg, i64 24
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !91, !noalias !265 ; 8 uses
  store <2 x ptr> %i.xd, ptr %i.xh, align 8, !tbaa !93, !noalias !265
  %.not.i.i.i.i.i322 = icmp eq ptr %i.xj, null
  br i1 %.not.i.i.i.i.i322, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i326, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 8 ; 4 uses
  %i.xl = load atomic i64, ptr %i.xk acquire, align 8, !noalias !265 ; 2 uses
  %i.xm = icmp eq i64 %i.xl, 4294967297
  %i.xn = trunc i64 %i.xl to i32                  ; 2 uses
  br i1 %i.xm, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  store i32 0, ptr %i.xk, align 8, !tbaa !80, !noalias !265
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xj, i64 12
  store i32 0, ptr %i.xo, align 4, !tbaa !87, !noalias !265
  %i.xp = load ptr, ptr %i.xj, align 8, !tbaa !88, !noalias !265
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.xr = load ptr, ptr %i.xq, align 8, !noalias !265
  call void %i.xr(ptr noundef nonnull align 8 dereferenceable(16) %i.xj) #19, !noalias !265, !inline_history !292
  %i.xs = load ptr, ptr %i.xj, align 8, !tbaa !88, !noalias !265
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xu = load ptr, ptr %i.xt, align 8, !noalias !265
  call void %i.xu(ptr noundef nonnull align 8 dereferenceable(16) %i.xj) #19, !noalias !265, !inline_history !292
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i326

bb.ey:                                            ; preds = %bb.ew
  %i.xv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !265
  %.not.i.i.i.i.i7.i323 = icmp eq i8 %i.xv, 0
  br i1 %.not.i.i.i.i.i7.i323, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.xw = add nsw i32 %i.xn, -1
  store i32 %i.xw, ptr %i.xk, align 8, !tbaa !3, !noalias !265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i324

bb.fa:                                            ; preds = %bb.ey
  %i.xx = atomicrmw volatile add ptr %i.xk, i32 -1 acq_rel, align 4, !noalias !265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i324

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i324: ; preds = %bb.fa, %bb.ez
  %.0.i.i.i.i.i.i.i325 = phi i32 [ %i.xn, %bb.ez ], [ %i.xx, %bb.fa ]
  %i.xy = icmp eq i32 %.0.i.i.i.i.i.i.i325, 1
  br i1 %i.xy, label %bb.fb, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i326, !prof !96

bb.fb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i324
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xj) #19, !noalias !265
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i326

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i326: ; preds = %bb.fb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i324, %bb.ex, %bb.ev
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !293
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i313

_ZN5arrow6StatusC2ERKS0_.exit.i313:               ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i326, %bb.et
  %i.xz = load ptr, ptr %19, align 8, !tbaa !60, !noalias !265 ; 2 uses
  %i.ya = icmp eq ptr %i.xz, null
  br i1 %i.ya, label %bb.fc, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i314, !prof !63

bb.fc:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i313
  %i.yb = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !91, !noalias !265 ; 8 uses
  %.not.i.i.i.i.i9.i315 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i.i.i.i9.i315, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 8 ; 4 uses
  %i.ye = load atomic i64, ptr %i.yd acquire, align 8 ; 2 uses
  %i.yf = icmp eq i64 %i.ye, 4294967297
  %i.yg = trunc i64 %i.ye to i32                  ; 2 uses
  br i1 %i.yf, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 0, ptr %i.yd, align 8, !tbaa !80
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 12
  store i32 0, ptr %i.yh, align 4, !tbaa !87
  %i.yi = load ptr, ptr %i.yc, align 8, !tbaa !88
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  %i.yk = load ptr, ptr %i.yj, align 8
  call void %i.yk(ptr noundef nonnull align 8 dereferenceable(16) %i.yc) #19, !inline_history !296
  %i.yl = load ptr, ptr %i.yc, align 8, !tbaa !88
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yn = load ptr, ptr %i.ym, align 8
  call void %i.yn(ptr noundef nonnull align 8 dereferenceable(16) %i.yc) #19, !inline_history !296
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319

bb.ff:                                            ; preds = %bb.fd
  %i.yo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !265
  %.not.i.i.i.i.i.i.i316 = icmp eq i8 %i.yo, 0
  br i1 %.not.i.i.i.i.i.i.i316, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.yp = add nsw i32 %i.yg, -1
  store i32 %i.yp, ptr %i.yd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i317

bb.fh:                                            ; preds = %bb.ff
  %i.yq = atomicrmw volatile add ptr %i.yd, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i317

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i317: ; preds = %bb.fh, %bb.fg
  %.0.i.i.i.i.i.i.i.i318 = phi i32 [ %i.yg, %bb.fg ], [ %i.yq, %bb.fh ]
  %i.yr = icmp eq i32 %.0.i.i.i.i.i.i.i.i318, 1
  br i1 %i.yr, label %bb.fi, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319, !prof !96

bb.fi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i317
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yc) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319: ; preds = %bb.fi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i317, %bb.fe, %bb.fc
  %.pr.i.i320 = load ptr, ptr %19, align 8, !tbaa !60, !noalias !265 ; 2 uses
  %.not.i.i10.i321 = icmp eq ptr %.pr.i.i320, null
  br i1 %.not.i.i10.i321, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9FloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i314, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i314: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319, %_ZN5arrow6StatusC2ERKS0_.exit.i313
  %i.ys = phi ptr [ %.pr.i.i320, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319 ], [ %i.xz, %_ZN5arrow6StatusC2ERKS0_.exit.i313 ]
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 1
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !64, !range !74, !noundef !75
  %i.yv = trunc nuw i8 %i.yu to i1
  br i1 %i.yv, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9FloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit, label %bb.fj

bb.fj:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i314
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %19) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9FloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_9FloatTypeEEENSt9enable_ifIXaaaasr3std10is_base_ofINS_14FixedWidthTypeET_EE5valuentsr3std10is_base_ofINS_19FixedSizeBinaryTypeES6_EE5valuentsr3std10is_base_ofINS_14DictionaryTypeES6_EE5valueENS_6StatusEE4typeERKS6_.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i319, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i314, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19, !noalias !265
  br label %_ZN5arrow6StatusD2Ev.exit

bb.fk:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19, !noalias !297
  %i.yw = load ptr, ptr %1, align 8, !tbaa !120, !noalias !297, !nonnull !75, !align !121
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !33, !noalias !297
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 40
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !122, !noalias !297
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16 ; 2 uses
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i292 = load ptr, ptr %i.zb, align 8, !tbaa !77, !noalias !297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.zc = load ptr, ptr %i.za, align 8, !tbaa !126, !noalias !303 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 16
  %i.ze = load ptr, ptr %i.zd, align 8, !noalias !303 ; 7 uses
  %i.zf = ptrtoaddr ptr %i.ze to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19, !noalias !303
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !130, !noalias !303
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %20, i64 noundef %i.zh, ptr noundef %.val.i292), !noalias !303
  %i.zi = load ptr, ptr %20, align 8, !tbaa !60, !noalias !303
  %i.zj = icmp eq ptr %i.zi, null
  br i1 %i.zj, label %bb.fm, label %bb.fl, !prof !63

bb.fl:                                            ; preds = %bb.fk
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(8) %20) #19, !noalias !297
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19, !noalias !303
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.zk = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.zl = load i64, ptr %i.zk, align 8, !tbaa !143, !noalias !310 ; 2 uses
  store i64 %i.zl, ptr %21, align 8, !tbaa !143, !alias.scope !311, !noalias !303
  store ptr null, ptr %i.zk, align 8, !tbaa !143, !noalias !310
  %.cast.i.i = inttoptr i64 %i.zl to ptr
  %i.zm = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 16
  %i.zn = load ptr, ptr %i.zm, align 8, !noalias !303 ; 7 uses
  %i.zo = load ptr, ptr %i.za, align 8, !tbaa !126, !noalias !303
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zo, i64 24
  %i.zq = load i64, ptr %i.zp, align 8, !tbaa !130, !noalias !303 ; 2 uses
  %i.zr = lshr i64 %i.zq, 3                       ; 6 uses
  %.not.i.i307 = icmp eq i64 %i.zr, 0
  br i1 %.not.i.i307, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.fm
  %i.zs = ptrtoaddr ptr %i.zn to i64
  %min.iters.check669 = icmp ult i64 %i.zq, 48
  %i.zt = sub i64 %i.zf, %i.zs
  %diff.check667 = icmp ugt i64 %i.zt, -32
  %or.cond735 = select i1 %min.iters.check669, i1 true, i1 %diff.check667
  br i1 %or.cond735, label %.lr.ph.i.i.preheader742, label %vector.ph670

vector.ph670:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec672 = and i64 %i.zr, 2305843009213693948  ; 3 uses
  br label %vector.body673

vector.body673:                                   ; preds = %vector.body673, %vector.ph670
  %index674 = phi i64 [ 0, %vector.ph670 ], [ %index.next677, %vector.body673 ] ; 3 uses
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %index674 ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %wide.load675 = load <2 x i64>, ptr %i.zu, align 8, !tbaa !312, !noalias !303
  %wide.load676 = load <2 x i64>, ptr %i.zv, align 8, !tbaa !312, !noalias !303
  %i.zw = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load675)
  %i.zx = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load676)
  %i.zy = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %index674 ; 2 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 16
  store <2 x i64> %i.zw, ptr %i.zy, align 8, !tbaa !312, !noalias !303
  store <2 x i64> %i.zx, ptr %i.zz, align 8, !tbaa !312, !noalias !303
  %index.next677 = add nuw i64 %index674, 4       ; 2 uses
  %i.aaa = icmp eq i64 %index.next677, %n.vec672
  br i1 %i.aaa, label %middle.block678, label %vector.body673, !llvm.loop !314

middle.block678:                                  ; preds = %vector.body673
  %cmp.n679 = icmp eq i64 %i.zr, %n.vec672
  br i1 %cmp.n679, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader742

.lr.ph.i.i.preheader742:                          ; preds = %.lr.ph.i.i.preheader, %middle.block678
  %.01.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec672, %middle.block678 ] ; 3 uses
  %xtraiter749 = and i64 %i.zr, 3                 ; 2 uses
  %lcmp.mod750.not = icmp eq i64 %xtraiter749, 0
  br i1 %lcmp.mod750.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader742, %.lr.ph.i.i.prol
  %.01.i.i.prol = phi i64 [ %i.aaf, %.lr.ph.i.i.prol ], [ %.01.i.i.ph, %.lr.ph.i.i.preheader742 ] ; 3 uses
  %prol.iter751 = phi i64 [ %prol.iter751.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader742 ]
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %.01.i.i.prol
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !312, !noalias !303
  %i.aad = call i64 @llvm.bswap.i64(i64 %i.aac)
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %.01.i.i.prol
  store i64 %i.aad, ptr %i.aae, align 8, !tbaa !312, !noalias !303
  %i.aaf = add nuw nsw i64 %.01.i.i.prol, 1       ; 2 uses
  %prol.iter751.next = add i64 %prol.iter751, 1   ; 2 uses
  %prol.iter751.cmp.not = icmp eq i64 %prol.iter751.next, %xtraiter749
  br i1 %prol.iter751.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !315

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader742
  %.01.i.i.unr = phi i64 [ %.01.i.i.ph, %.lr.ph.i.i.preheader742 ], [ %i.aaf, %.lr.ph.i.i.prol ]
  %i.aag = sub nsw i64 %.01.i.i.ph, %i.zr
  %i.aah = icmp ugt i64 %i.aag, -4
  br i1 %i.aah, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block678, %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19, !noalias !303
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i unwind label %bb.fn, !noalias !303

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.01.i.i = phi i64 [ %i.abb, %.lr.ph.i.i ], [ %.01.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %.01.i.i
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !312, !noalias !303
  %i.aak = call i64 @llvm.bswap.i64(i64 %i.aaj)
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %.01.i.i
  store i64 %i.aak, ptr %i.aal, align 8, !tbaa !312, !noalias !303
  %i.aam = add nuw nsw i64 %.01.i.i, 1            ; 2 uses
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aam
  %i.aao = load i64, ptr %i.aan, align 8, !tbaa !312, !noalias !303
  %i.aap = call i64 @llvm.bswap.i64(i64 %i.aao)
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.aam
  store i64 %i.aap, ptr %i.aaq, align 8, !tbaa !312, !noalias !303
  %i.aar = add nuw nsw i64 %.01.i.i, 2            ; 2 uses
  %i.aas = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aar
  %i.aat = load i64, ptr %i.aas, align 8, !tbaa !312, !noalias !303
  %i.aau = call i64 @llvm.bswap.i64(i64 %i.aat)
  %i.aav = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.aar
  store i64 %i.aau, ptr %i.aav, align 8, !tbaa !312, !noalias !303
  %i.aaw = add nuw nsw i64 %.01.i.i, 3            ; 2 uses
  %i.aax = getelementptr inbounds nuw [8 x i8], ptr %i.ze, i64 %i.aaw
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !312, !noalias !303
  %i.aaz = call i64 @llvm.bswap.i64(i64 %i.aay)
  %i.aba = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %i.aaw
  store i64 %i.aaz, ptr %i.aba, align 8, !tbaa !312, !noalias !303
  %i.abb = add nuw nsw i64 %.01.i.i, 4            ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.abb, %i.zr
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !316

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %._crit_edge.i.i
  store ptr null, ptr %23, align 8, !tbaa !60, !alias.scope !300, !noalias !297
  %i.abc = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.abd = load <2 x ptr>, ptr %22, align 16, !tbaa !93, !noalias !303
  store <2 x ptr> %i.abd, ptr %i.abc, align 8, !tbaa !93, !alias.scope !300, !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19, !noalias !303
  %i.abe = load ptr, ptr %21, align 8, !tbaa !143, !noalias !303 ; 3 uses
  %.not.i.i.i308 = icmp eq ptr %i.abe, null
  br i1 %.not.i.i.i308, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !88, !noalias !303
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 8
  %i.abh = load ptr, ptr %i.abg, align 8, !noalias !303
  call void %i.abh(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.abe) #19, !noalias !303, !inline_history !317
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i.i, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19, !noalias !303
  br label %bb.fo

bb.fn:                                            ; preds = %._crit_edge.i.i
  %i.abi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19, !noalias !303
  %i.abj = load ptr, ptr %21, align 8, !tbaa !143, !noalias !303 ; 3 uses
  %.not.i22.i.i = icmp eq ptr %i.abj, null
  br i1 %.not.i22.i.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i.i: ; preds = %bb.fn
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !88, !noalias !303
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !noalias !303
  call void %i.abm(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.abj) #19, !noalias !303, !inline_history !317
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i.i, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19, !noalias !303
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #19, !noalias !303
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19, !noalias !303
  br label %common.resume

bb.fo:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i.i, %bb.fl
  %i.abn = load ptr, ptr %20, align 8, !tbaa !60, !noalias !303 ; 2 uses
  %i.abo = icmp eq ptr %i.abn, null
  br i1 %i.abo, label %bb.fp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !63

bb.fp:                                            ; preds = %bb.fo
  %i.abp = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !143, !noalias !303 ; 3 uses
  %.not.i.i.i.i.i.i305 = icmp eq ptr %i.abq, null
  br i1 %.not.i.i.i.i.i.i305, label %bb.fr, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i: ; preds = %bb.fp
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !88, !noalias !297
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abt = load ptr, ptr %i.abs, align 8, !noalias !297
  call void %i.abt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.abq) #19, !noalias !297, !inline_history !318
  %.pr.pre.i.i.i306 = load ptr, ptr %20, align 8, !tbaa !60, !noalias !303 ; 2 uses
  %.not.i.i25.i.i = icmp eq ptr %.pr.pre.i.i.i306, null
  br i1 %.not.i.i25.i.i, label %bb.fr, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.fo
  %i.abu = phi ptr [ %.pr.pre.i.i.i306, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i ], [ %i.abn, %bb.fo ]
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 1
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !64, !range !74, !noalias !297, !noundef !75
  %i.abx = trunc nuw i8 %i.abw to i1
  br i1 %i.abx, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %20) #19, !noalias !297
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i.i, %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19, !noalias !303
  %i.aby = load ptr, ptr %23, align 8, !tbaa !60, !noalias !297
  %i.abz = icmp eq ptr %i.aby, null
  br i1 %i.abz, label %bb.fu, label %bb.fs, !prof !63

bb.fs:                                            ; preds = %bb.fr
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !297
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i293 unwind label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19, !noalias !297
  br label %common.resume

bb.fu:                                            ; preds = %bb.fr
  %i.acb = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acd = load <2 x ptr>, ptr %i.acb, align 8, !tbaa !93, !noalias !319
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.acb, i8 0, i64 16, i1 false), !noalias !297
  %i.ace = load ptr, ptr %i.acc, align 8, !tbaa !33, !noalias !297
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 40
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !122, !noalias !297 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 16
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 24
  %i.acj = load ptr, ptr %i.aci, align 8, !tbaa !91, !noalias !297 ; 8 uses
  store <2 x ptr> %i.acd, ptr %i.ach, align 8, !tbaa !93, !noalias !297
  %.not.i.i.i.i.i300 = icmp eq ptr %i.acj, null
  br i1 %.not.i.i.i.i.i300, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i304, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8 ; 4 uses
  %i.acl = load atomic i64, ptr %i.ack acquire, align 8, !noalias !297 ; 2 uses
  %i.acm = icmp eq i64 %i.acl, 4294967297
  %i.acn = trunc i64 %i.acl to i32                ; 2 uses
  br i1 %i.acm, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper8SwapTypeERKNS_8DataTypeE:bb.a
  %i.bdz = load <2 x ptr>, ptr %i.bdx, align 8, !tbaa !93, !noalias !472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdx, i8 0, i64 16, i1 false), !noalias !469
  %i.bea = load ptr, ptr %i.bdy, align 8, !tbaa !33, !noalias !469
  %i.beb = getelementptr inbounds nuw i8, ptr %i.bea, i64 40
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !122, !noalias !469 ; 2 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 16
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bec, i64 24
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !91, !noalias !469 ; 8 uses
  store <2 x ptr> %i.bdz, ptr %i.bed, align 8, !tbaa !93, !noalias !469
  %.not.i.i.i.i.i121 = icmp eq ptr %i.bef, null
  br i1 %.not.i.i.i.i.i121, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.beg = getelementptr inbounds nuw i8, ptr %i.bef, i64 8 ; 4 uses
  %i.beh = load atomic i64, ptr %i.beg acquire, align 8, !noalias !469 ; 2 uses
  %i.bei = icmp eq i64 %i.beh, 4294967297
  %i.bej = trunc i64 %i.beh to i32                ; 2 uses
  br i1 %i.bei, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  store i32 0, ptr %i.beg, align 8, !tbaa !80, !noalias !469
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bef, i64 12
  store i32 0, ptr %i.bek, align 4, !tbaa !87, !noalias !469
  %i.bel = load ptr, ptr %i.bef, align 8, !tbaa !88, !noalias !469
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 16
  %i.ben = load ptr, ptr %i.bem, align 8, !noalias !469
  call void %i.ben(ptr noundef nonnull align 8 dereferenceable(16) %i.bef) #19, !noalias !469, !inline_history !477
  %i.beo = load ptr, ptr %i.bef, align 8, !tbaa !88, !noalias !469
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 24
  %i.beq = load ptr, ptr %i.bep, align 8, !noalias !469
  call void %i.beq(ptr noundef nonnull align 8 dereferenceable(16) %i.bef) #19, !noalias !469, !inline_history !477
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.oc:                                            ; preds = %bb.oa
  %i.ber = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !469
  %.not.i.i.i.i.i.i122 = icmp eq i8 %i.ber, 0
  br i1 %.not.i.i.i.i.i.i122, label %bb.oe, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.bes = add nsw i32 %i.bej, -1
  store i32 %i.bes, ptr %i.beg, align 8, !tbaa !3, !noalias !469
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i123

bb.oe:                                            ; preds = %bb.oc
  %i.bet = atomicrmw volatile add ptr %i.beg, i32 -1 acq_rel, align 4, !noalias !469
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i123

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i123: ; preds = %bb.oe, %bb.od
  %.0.i.i.i.i.i.i.i124 = phi i32 [ %i.bej, %bb.od ], [ %i.bet, %bb.oe ]
  %i.beu = icmp eq i32 %.0.i.i.i.i.i.i.i124, 1
  br i1 %i.beu, label %bb.of, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !96

bb.of:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i123
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bef) #19, !noalias !469
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.of, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i123, %bb.ob, %bb.nz
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !478
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i120

_ZN5arrow6StatusC2ERKS0_.exit.i120:               ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.nx
  %i.bev = load ptr, ptr %40, align 8, !tbaa !60, !noalias !469 ; 2 uses
  %i.bew = icmp eq ptr %i.bev, null
  br i1 %i.bew, label %bb.og, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !63

bb.og:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i120
  %i.bex = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !91, !noalias !469 ; 8 uses
  %.not.i.i.i.i.i7.i = icmp eq ptr %i.bey, null
  br i1 %.not.i.i.i.i.i7.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bey, i64 8 ; 4 uses
  %i.bfa = load atomic i64, ptr %i.bez acquire, align 8 ; 2 uses
  %i.bfb = icmp eq i64 %i.bfa, 4294967297
  %i.bfc = trunc i64 %i.bfa to i32                ; 2 uses
  br i1 %i.bfb, label %bb.oi, label %bb.oj

bb.oi:                                            ; preds = %bb.oh
  store i32 0, ptr %i.bez, align 8, !tbaa !80
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.bey, i64 12
  store i32 0, ptr %i.bfd, align 4, !tbaa !87
  %i.bfe = load ptr, ptr %i.bey, align 8, !tbaa !88
  %i.bff = getelementptr inbounds nuw i8, ptr %i.bfe, i64 16
  %i.bfg = load ptr, ptr %i.bff, align 8
  call void %i.bfg(ptr noundef nonnull align 8 dereferenceable(16) %i.bey) #19, !inline_history !481
  %i.bfh = load ptr, ptr %i.bey, align 8, !tbaa !88
  %i.bfi = getelementptr inbounds nuw i8, ptr %i.bfh, i64 24
  %i.bfj = load ptr, ptr %i.bfi, align 8
  call void %i.bfj(ptr noundef nonnull align 8 dereferenceable(16) %i.bey) #19, !inline_history !481
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

bb.oj:                                            ; preds = %bb.oh
  %i.bfk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !469
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bfk, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ol, label %bb.ok

bb.ok:                                            ; preds = %bb.oj
  %i.bfl = add nsw i32 %i.bfc, -1
  store i32 %i.bfl, ptr %i.bez, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.ol:                                            ; preds = %bb.oj
  %i.bfm = atomicrmw volatile add ptr %i.bez, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.ol, %bb.ok
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.bfc, %bb.ok ], [ %i.bfm, %bb.ol ]
  %i.bfn = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.bfn, label %bb.om, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, !prof !96

bb.om:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bey) #19
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i: ; preds = %bb.om, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.oi, %bb.og
  %.pr.i.i = load ptr, ptr %40, align 8, !tbaa !60, !noalias !469 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i8.i, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_19DayTimeIntervalTypeE.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, !prof !158

_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6StatusC2ERKS0_.exit.i120
  %i.bfo = phi ptr [ %.pr.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i ], [ %i.bev, %_ZN5arrow6StatusC2ERKS0_.exit.i120 ]
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 1
  %i.bfq = load i8, ptr %i.bfp, align 1, !tbaa !64, !range !74, !noundef !75
  %i.bfr = trunc nuw i8 %i.bfq to i1
  br i1 %i.bfr, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_19DayTimeIntervalTypeE.exit, label %bb.on

bb.on:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %40) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_19DayTimeIntervalTypeE.exit

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitERKNS_19DayTimeIntervalTypeE.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE7DestroyEv.exit.thread.i.i, %bb.on
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19, !noalias !469
  br label %_ZN5arrow6StatusD2Ev.exit

bb.oo:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.bfs = load ptr, ptr %1, align 8, !tbaa !120, !noalias !482, !nonnull !75, !align !121
  %i.bft = load ptr, ptr %i.bfs, align 8, !tbaa !33, !noalias !482
  %i.bfu = getelementptr inbounds nuw i8, ptr %i.bft, i64 40
  %i.bfv = load ptr, ptr %i.bfu, align 8, !tbaa !122, !noalias !482
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 16
  %i.bfx = load ptr, ptr %i.bfw, align 8, !tbaa !126, !noalias !482 ; 3 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 9
  %i.bfz = load i8, ptr %i.bfy, align 1, !tbaa !440, !range !74, !noalias !482, !noundef !75
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfx, i64 16
  %i.bgb = load ptr, ptr %i.bga, align 8, !noalias !482
  %i.bgc = getelementptr inbounds nuw i8, ptr %i.bfx, i64 24
  %i.bgd = load i64, ptr %i.bgc, align 8, !tbaa !130, !noalias !482 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #19, !noalias !482
  %i.bge = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !77, !noalias !482
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %42, i64 noundef %i.bgd, ptr noundef %i.bgf), !noalias !482
  %i.bgg = load ptr, ptr %42, align 8, !tbaa !60, !noalias !482
  %i.bgh = icmp eq ptr %i.bgg, null
  br i1 %i.bgh, label %bb.or, label %bb.op, !prof !63

bb.op:                                            ; preds = %bb.oo
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !482
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %42)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i93 unwind label %bb.oq

bb.oq:                                            ; preds = %bb.op
  %i.bgi = landingpad { ptr, i32 }
          cleanup
  br label %bb.pc

bb.or:                                            ; preds = %bb.oo
  %.idx.i99 = and i64 %i.bgd, -4                  ; 2 uses
  %i.bgj = trunc nuw i8 %i.bfz to i1
  %i.bgk = select i1 %i.bgj, ptr %i.bgb, ptr null, !prof !63 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #19, !noalias !482
  call void @llvm.experimental.noalias.scope.decl(metadata !485)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.bgl = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.bgm = load i64, ptr %i.bgl, align 8, !tbaa !143, !noalias !491 ; 2 uses
  store i64 %i.bgm, ptr %43, align 8, !tbaa !143, !alias.scope !492, !noalias !482
  store ptr null, ptr %i.bgl, align 8, !tbaa !143, !noalias !491
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgk, i64 %.idx.i99
  %.not2.i100 = icmp samesign eq i64 %.idx.i99, 0
  br i1 %.not2.i100, label %._crit_edge.i108, label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %bb.or
  %i.bgo = ptrtoaddr ptr %i.bgk to i64
  %.cast.i102 = inttoptr i64 %i.bgm to ptr        ; 3 uses
  %i.bgp = getelementptr inbounds nuw i8, ptr %.cast.i102, i64 9
  %i.bgq = load i8, ptr %i.bgp, align 1, !tbaa !440, !range !74, !noalias !482, !noundef !75
  %i.bgr = trunc nuw i8 %i.bgq to i1
  %i.bgs = getelementptr inbounds nuw i8, ptr %.cast.i102, i64 8
  %i.bgt = load i8, ptr %i.bgs, align 8, !range !74, !noalias !482
  %i.bgu = trunc nuw i8 %i.bgt to i1
  %i.bgv = select i1 %i.bgr, i1 %i.bgu, i1 false, !prof !63
  %i.bgw = getelementptr inbounds nuw i8, ptr %.cast.i102, i64 16
  %i.bgx = load ptr, ptr %i.bgw, align 8, !noalias !482
  %i.bgy = select i1 %i.bgv, ptr %i.bgx, ptr null, !prof !63 ; 4 uses
  %i.bgz = add i64 %i.bgd, -4                     ; 2 uses
  %i.bha = lshr i64 %i.bgz, 2
  %i.bhb = add nuw nsw i64 %i.bha, 1              ; 2 uses
  %min.iters.check651 = icmp ult i64 %i.bgz, 28
  %i.bhc = ptrtoaddr ptr %i.bgy to i64
  %i.bhd = sub i64 %i.bgo, %i.bhc
  %diff.check649 = icmp ugt i64 %i.bhd, -32
  %or.cond737 = select i1 %min.iters.check651, i1 true, i1 %diff.check649
  br i1 %or.cond737, label %.lr.ph.i.i.i103.preheader, label %vector.ph652

vector.ph652:                                     ; preds = %.lr.ph.i101
  %n.vec654 = and i64 %i.bhb, 9223372036854775800 ; 3 uses
  %i.bhe = shl i64 %n.vec654, 2                   ; 2 uses
  %i.bhf = getelementptr i8, ptr %i.bgk, i64 %i.bhe
  %i.bhg = getelementptr i8, ptr %i.bgy, i64 %i.bhe
  br label %vector.body655

vector.body655:                                   ; preds = %vector.body655, %vector.ph652
  %index656 = phi i64 [ 0, %vector.ph652 ], [ %index.next661, %vector.body655 ] ; 2 uses
  %i.bhh = shl i64 %index656, 2                   ; 2 uses
  %next.gep657 = getelementptr i8, ptr %i.bgk, i64 %i.bhh ; 2 uses
  %next.gep658 = getelementptr i8, ptr %i.bgy, i64 %i.bhh ; 2 uses
  %i.bhi = getelementptr i8, ptr %next.gep657, i64 16
  %wide.load659 = load <4 x i32>, ptr %next.gep657, align 4, !noalias !482
  %wide.load660 = load <4 x i32>, ptr %i.bhi, align 4, !noalias !482
  %i.bhj = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load659)
  %i.bhk = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load660)
  %i.bhl = getelementptr i8, ptr %next.gep658, i64 16
  store <4 x i32> %i.bhj, ptr %next.gep658, align 4, !noalias !482
  store <4 x i32> %i.bhk, ptr %i.bhl, align 4, !noalias !482
  %index.next661 = add nuw i64 %index656, 8       ; 2 uses
  %i.bhm = icmp eq i64 %index.next661, %n.vec654
  br i1 %i.bhm, label %middle.block662, label %vector.body655, !llvm.loop !493

middle.block662:                                  ; preds = %vector.body655
  %cmp.n663 = icmp eq i64 %i.bhb, %n.vec654
  br i1 %cmp.n663, label %._crit_edge.i108, label %.lr.ph.i.i.i103.preheader

.lr.ph.i.i.i103.preheader:                        ; preds = %.lr.ph.i101, %middle.block662
  %.0164.i104.ph = phi ptr [ %i.bgk, %.lr.ph.i101 ], [ %i.bhf, %middle.block662 ]
  %.0173.i105.ph = phi ptr [ %i.bgy, %.lr.ph.i101 ], [ %i.bhg, %middle.block662 ]
  br label %.lr.ph.i.i.i103

._crit_edge.i108:                                 ; preds = %.lr.ph.i.i.i103, %middle.block662, %bb.or
  %i.bhn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !33, !noalias !482
  %i.bhp = getelementptr inbounds nuw i8, ptr %i.bho, i64 40
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !122, !noalias !482 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #19, !noalias !482
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %.noexc.i112 unwind label %bb.oy, !noalias !482

.noexc.i112:                                      ; preds = %._crit_edge.i108
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhq, i64 16 ; 2 uses
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.bhq, i64 24
  %i.bht = load ptr, ptr %i.bhs, align 8, !tbaa !91, !noalias !482 ; 8 uses
  %i.bhu = load <2 x ptr>, ptr %i.bhr, align 8, !tbaa !93, !noalias !482
  %i.bhv = load <2 x ptr>, ptr %41, align 16, !tbaa !93, !noalias !482
  store <2 x ptr> %i.bhv, ptr %i.bhr, align 8, !tbaa !93, !noalias !482
  store <2 x ptr> %i.bhu, ptr %41, align 16, !tbaa !93, !noalias !482
  %.not.i.i.i.i.i113 = icmp eq ptr %i.bht, null
  br i1 %.not.i.i.i.i.i113, label %bb.oz, label %bb.os

bb.os:                                            ; preds = %.noexc.i112
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.bht, i64 8 ; 4 uses
  %i.bhx = load atomic i64, ptr %i.bhw acquire, align 8, !noalias !482 ; 2 uses
  %i.bhy = icmp eq i64 %i.bhx, 4294967297
  %i.bhz = trunc i64 %i.bhx to i32                ; 2 uses
  br i1 %i.bhy, label %bb.ot, label %bb.ou

bb.ot:                                            ; preds = %bb.os
  store i32 0, ptr %i.bhw, align 8, !tbaa !80, !noalias !482
  %i.bia = getelementptr inbounds nuw i8, ptr %i.bht, i64 12
  store i32 0, ptr %i.bia, align 4, !tbaa !87, !noalias !482
  %i.bib = load ptr, ptr %i.bht, align 8, !tbaa !88, !noalias !482
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 16
  %i.bid = load ptr, ptr %i.bic, align 8, !noalias !482
  call void %i.bid(ptr noundef nonnull align 8 dereferenceable(16) %i.bht) #19, !noalias !482, !inline_history !494
  %i.bie = load ptr, ptr %i.bht, align 8, !tbaa !88, !noalias !482
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bie, i64 24
  %i.big = load ptr, ptr %i.bif, align 8, !noalias !482
  call void %i.big(ptr noundef nonnull align 8 dereferenceable(16) %i.bht) #19, !noalias !482, !inline_history !494
  br label %bb.oz

bb.ou:                                            ; preds = %bb.os
  %i.bih = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !482
  %.not.i.i.i.i.i.i114 = icmp eq i8 %i.bih, 0
  br i1 %.not.i.i.i.i.i.i114, label %bb.ow, label %bb.ov

bb.ov:                                            ; preds = %bb.ou
  %i.bii = add nsw i32 %i.bhz, -1
  store i32 %i.bii, ptr %i.bhw, align 8, !tbaa !3, !noalias !482
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

bb.ow:                                            ; preds = %bb.ou
  %i.bij = atomicrmw volatile add ptr %i.bhw, i32 -1 acq_rel, align 4, !noalias !482
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115: ; preds = %bb.ow, %bb.ov
  %.0.i.i.i.i.i.i.i116 = phi i32 [ %i.bhz, %bb.ov ], [ %i.bij, %bb.ow ]
  %i.bik = icmp eq i32 %.0.i.i.i.i.i.i.i116, 1
  br i1 %i.bik, label %bb.ox, label %bb.oz, !prof !96

bb.ox:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bht) #19, !noalias !482
  br label %bb.oz

bb.oy:                                            ; preds = %._crit_edge.i108
  %i.bil = landingpad { ptr, i32 }
          cleanup
  %i.bim = load ptr, ptr %43, align 8, !tbaa !143, !noalias !482 ; 3 uses
  %.not.i22.i109 = icmp eq ptr %i.bim, null
  br i1 %.not.i22.i109, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i111, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i110

.lr.ph.i.i.i103:                                  ; preds = %.lr.ph.i.i.i103.preheader, %.lr.ph.i.i.i103
  %.0164.i104 = phi ptr [ %i.bip, %.lr.ph.i.i.i103 ], [ %.0164.i104.ph, %.lr.ph.i.i.i103.preheader ] ; 2 uses
  %.0173.i105 = phi ptr [ %i.bio, %.lr.ph.i.i.i103 ], [ %.0173.i105.ph, %.lr.ph.i.i.i103.preheader ] ; 2 uses
  %i.bin = load i32, ptr %.0164.i104, align 4, !noalias !482
  %i.bio = getelementptr inbounds nuw i8, ptr %.0173.i105, i64 4
  %.sroa.0.0.insert.insert.i106 = call i32 @llvm.bswap.i32(i32 %i.bin)
  store i32 %.sroa.0.0.insert.insert.i106, ptr %.0173.i105, align 4, !noalias !482
  %i.bip = getelementptr inbounds nuw i8, ptr %.0164.i104, i64 4 ; 2 uses
  %.not.i107 = icmp eq ptr %i.bip, %i.bgn
  br i1 %.not.i107, label %._crit_edge.i108, label %.lr.ph.i.i.i103, !llvm.loop !495

bb.oz:                                            ; preds = %bb.ox, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i115, %bb.ot, %.noexc.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #19, !noalias !482
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !496
  %i.biq = load ptr, ptr %43, align 8, !tbaa !143, !noalias !482 ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.biq, null
  br i1 %.not.i.i117, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i119, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i118

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i118: ; preds = %bb.oz
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !88, !noalias !482
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 8
  %i.bit = load ptr, ptr %i.bis, align 8, !noalias !482
  call void %i.bit(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.biq) #19, !noalias !482, !inline_history !499
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i119

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i119: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i118, %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !482
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i93

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i110: ; preds = %bb.oy
  %i.biu = load ptr, ptr %i.bim, align 8, !tbaa !88, !noalias !482
  %i.biv = getelementptr inbounds nuw i8, ptr %i.biu, i64 8
  %i.biw = load ptr, ptr %i.biv, align 8, !noalias !482
  call void %i.biw(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bim) #19, !noalias !482, !inline_history !499
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i111

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i111: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i110, %bb.oy
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #19, !noalias !482
  br label %bb.pc

_ZN5arrow6StatusC2ERKS0_.exit.i93:                ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i119, %bb.op
  %i.bix = load ptr, ptr %42, align 8, !tbaa !60, !noalias !482 ; 2 uses
  %i.biy = icmp eq ptr %i.bix, null
  br i1 %i.biy, label %bb.pa, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i94, !prof !63

bb.pa:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i93
  %i.biz = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.bja = load ptr, ptr %i.biz, align 8, !tbaa !143, !noalias !482 ; 3 uses
  %.not.i.i.i.i25.i95 = icmp eq ptr %i.bja, null
  br i1 %.not.i.i.i.i25.i95, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i96

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i96: ; preds = %bb.pa
  %i.bjb = load ptr, ptr %i.bja, align 8, !tbaa !88
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.bjb, i64 8
  %i.bjd = load ptr, ptr %i.bjc, align 8
  call void %i.bjd(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bja) #19, !inline_history !500
  %.pr.pre.i.i97 = load ptr, ptr %42, align 8, !tbaa !60, !noalias !482 ; 2 uses
  %.not.i.i.i98 = icmp eq ptr %.pr.pre.i.i97, null
  br i1 %.not.i.i.i98, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i94, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i94: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i96, %_ZN5arrow6StatusC2ERKS0_.exit.i93
  %i.bje = phi ptr [ %.pr.pre.i.i97, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i96 ], [ %i.bix, %_ZN5arrow6StatusC2ERKS0_.exit.i93 ]
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.bje, i64 1
  %i.bjg = load i8, ptr %i.bjf, align 1, !tbaa !64, !range !74, !noundef !75
  %i.bjh = trunc nuw i8 %i.bjg to i1
  br i1 %i.bjh, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %bb.pb

bb.pb:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i94
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %42) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.pc:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i111, %bb.oq
  %.pn20.i92 = phi { ptr, i32 } [ %i.bgi, %bb.oq ], [ %i.bil, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i111 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %42) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !482
  br label %common.resume

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal32TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit: ; preds = %bb.pa, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i96, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i94, %bb.pb
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #19, !noalias !482
  br label %_ZN5arrow6StatusD2Ev.exit

bb.pd:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.bji = load ptr, ptr %1, align 8, !tbaa !120, !noalias !501, !nonnull !75, !align !121
  %i.bjj = load ptr, ptr %i.bji, align 8, !tbaa !33, !noalias !501
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 40
  %i.bjl = load ptr, ptr %i.bjk, align 8, !tbaa !122, !noalias !501
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bjl, i64 16
  %i.bjn = load ptr, ptr %i.bjm, align 8, !tbaa !126, !noalias !501 ; 3 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjn, i64 9
  %i.bjp = load i8, ptr %i.bjo, align 1, !tbaa !440, !range !74, !noalias !501, !noundef !75
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjn, i64 16
  %i.bjr = load ptr, ptr %i.bjq, align 8, !noalias !501
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.bjn, i64 24
  %i.bjt = load i64, ptr %i.bjs, align 8, !tbaa !130, !noalias !501 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19, !noalias !501
  %i.bju = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !77, !noalias !501
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %45, i64 noundef %i.bjt, ptr noundef %i.bjv), !noalias !501
  %i.bjw = load ptr, ptr %45, align 8, !tbaa !60, !noalias !501
  %i.bjx = icmp eq ptr %i.bjw, null
  br i1 %i.bjx, label %bb.pg, label %bb.pe, !prof !63

bb.pe:                                            ; preds = %bb.pd
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !501
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i66 unwind label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bjy = landingpad { ptr, i32 }
          cleanup
  br label %bb.pr

bb.pg:                                            ; preds = %bb.pd
  %.idx.i72 = and i64 %i.bjt, -8                  ; 2 uses
  %i.bjz = trunc nuw i8 %i.bjp to i1
  %i.bka = select i1 %i.bjz, ptr %i.bjr, ptr null, !prof !63 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19, !noalias !501
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.bkb = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.bkc = load i64, ptr %i.bkb, align 8, !tbaa !143, !noalias !510 ; 2 uses
  store i64 %i.bkc, ptr %46, align 8, !tbaa !143, !alias.scope !511, !noalias !501
  store ptr null, ptr %i.bkb, align 8, !tbaa !143, !noalias !510
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bka, i64 %.idx.i72
  %.not2.i73 = icmp samesign eq i64 %.idx.i72, 0
  br i1 %.not2.i73, label %._crit_edge.i80, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.pg
  %i.bke = ptrtoaddr ptr %i.bka to i64
  %.cast.i75 = inttoptr i64 %i.bkc to ptr         ; 3 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %.cast.i75, i64 9
  %i.bkg = load i8, ptr %i.bkf, align 1, !tbaa !440, !range !74, !noalias !501, !noundef !75
  %i.bkh = trunc nuw i8 %i.bkg to i1
  %i.bki = getelementptr inbounds nuw i8, ptr %.cast.i75, i64 8
  %i.bkj = load i8, ptr %i.bki, align 8, !range !74, !noalias !501
  %i.bkk = trunc nuw i8 %i.bkj to i1
  %i.bkl = select i1 %i.bkh, i1 %i.bkk, i1 false, !prof !63
  %i.bkm = getelementptr inbounds nuw i8, ptr %.cast.i75, i64 16
  %i.bkn = load ptr, ptr %i.bkm, align 8, !noalias !501
  %i.bko = select i1 %i.bkl, ptr %i.bkn, ptr null, !prof !63 ; 4 uses
  %i.bkp = add i64 %i.bjt, -8                     ; 2 uses
  %i.bkq = lshr i64 %i.bkp, 3
  %i.bkr = add nuw nsw i64 %i.bkq, 1              ; 2 uses
  %min.iters.check = icmp ult i64 %i.bkp, 56
  %i.bks = ptrtoaddr ptr %i.bko to i64
  %i.bkt = sub i64 %i.bke, %i.bks
  %diff.check = icmp ugt i64 %i.bkt, -32
  %or.cond739 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond739, label %.lr.ph.i.i.i76.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i74
  %n.vec = and i64 %i.bkr, 4611686018427387900    ; 3 uses
  %i.bku = shl i64 %n.vec, 3                      ; 2 uses
  %i.bkv = getelementptr i8, ptr %i.bka, i64 %i.bku
  %i.bkw = getelementptr i8, ptr %i.bko, i64 %i.bku
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bkx = shl i64 %index, 3                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bka, i64 %i.bkx ; 2 uses
  %next.gep645 = getelementptr i8, ptr %i.bko, i64 %i.bkx ; 2 uses
  %i.bky = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !noalias !501
  %wide.load646 = load <2 x i64>, ptr %i.bky, align 8, !noalias !501
  %i.bkz = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.bla = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load646)
  %i.blb = getelementptr i8, ptr %next.gep645, i64 16
  store <2 x i64> %i.bkz, ptr %next.gep645, align 8, !noalias !501
  store <2 x i64> %i.bla, ptr %i.blb, align 8, !noalias !501
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.blc = icmp eq i64 %index.next, %n.vec
  br i1 %i.blc, label %middle.block, label %vector.body, !llvm.loop !512

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bkr, %n.vec
  br i1 %cmp.n, label %._crit_edge.i80, label %.lr.ph.i.i.i76.preheader

.lr.ph.i.i.i76.preheader:                         ; preds = %.lr.ph.i74, %middle.block
  %.0164.i77.ph = phi ptr [ %i.bka, %.lr.ph.i74 ], [ %i.bkv, %middle.block ]
  %.0173.i78.ph = phi ptr [ %i.bko, %.lr.ph.i74 ], [ %i.bkw, %middle.block ]
  br label %.lr.ph.i.i.i76

._crit_edge.i80:                                  ; preds = %.lr.ph.i.i.i76, %middle.block, %bb.pg
  %i.bld = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ble = load ptr, ptr %i.bld, align 8, !tbaa !33, !noalias !501
  %i.blf = getelementptr inbounds nuw i8, ptr %i.ble, i64 40
  %i.blg = load ptr, ptr %i.blf, align 8, !tbaa !122, !noalias !501 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #19, !noalias !501
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %.noexc.i84 unwind label %bb.pn, !noalias !501

.noexc.i84:                                       ; preds = %._crit_edge.i80
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blg, i64 16 ; 2 uses
  %i.bli = getelementptr inbounds nuw i8, ptr %i.blg, i64 24
  %i.blj = load ptr, ptr %i.bli, align 8, !tbaa !91, !noalias !501 ; 8 uses
  %i.blk = load <2 x ptr>, ptr %i.blh, align 8, !tbaa !93, !noalias !501
  %i.bll = load <2 x ptr>, ptr %44, align 16, !tbaa !93, !noalias !501
  store <2 x ptr> %i.bll, ptr %i.blh, align 8, !tbaa !93, !noalias !501
  store <2 x ptr> %i.blk, ptr %44, align 16, !tbaa !93, !noalias !501
  %.not.i.i.i.i.i85 = icmp eq ptr %i.blj, null
  br i1 %.not.i.i.i.i.i85, label %bb.po, label %bb.ph

bb.ph:                                            ; preds = %.noexc.i84
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blj, i64 8 ; 4 uses
  %i.bln = load atomic i64, ptr %i.blm acquire, align 8, !noalias !501 ; 2 uses
  %i.blo = icmp eq i64 %i.bln, 4294967297
  %i.blp = trunc i64 %i.bln to i32                ; 2 uses
  br i1 %i.blo, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  store i32 0, ptr %i.blm, align 8, !tbaa !80, !noalias !501
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blj, i64 12
  store i32 0, ptr %i.blq, align 4, !tbaa !87, !noalias !501
  %i.blr = load ptr, ptr %i.blj, align 8, !tbaa !88, !noalias !501
  %i.bls = getelementptr inbounds nuw i8, ptr %i.blr, i64 16
  %i.blt = load ptr, ptr %i.bls, align 8, !noalias !501
  call void %i.blt(ptr noundef nonnull align 8 dereferenceable(16) %i.blj) #19, !noalias !501, !inline_history !513
  %i.blu = load ptr, ptr %i.blj, align 8, !tbaa !88, !noalias !501
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 24
  %i.blw = load ptr, ptr %i.blv, align 8, !noalias !501
  call void %i.blw(ptr noundef nonnull align 8 dereferenceable(16) %i.blj) #19, !noalias !501, !inline_history !513
  br label %bb.po

bb.pj:                                            ; preds = %bb.ph
  %i.blx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95, !noalias !501
  %.not.i.i.i.i.i.i86 = icmp eq i8 %i.blx, 0
  br i1 %.not.i.i.i.i.i.i86, label %bb.pl, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.bly = add nsw i32 %i.blp, -1
  store i32 %i.bly, ptr %i.blm, align 8, !tbaa !3, !noalias !501
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i87

bb.pl:                                            ; preds = %bb.pj
  %i.blz = atomicrmw volatile add ptr %i.blm, i32 -1 acq_rel, align 4, !noalias !501
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i87

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i87: ; preds = %bb.pl, %bb.pk
  %.0.i.i.i.i.i.i.i88 = phi i32 [ %i.blp, %bb.pk ], [ %i.blz, %bb.pl ]
  %i.bma = icmp eq i32 %.0.i.i.i.i.i.i.i88, 1
  br i1 %i.bma, label %bb.pm, label %bb.po, !prof !96

bb.pm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i87
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.blj) #19, !noalias !501
  br label %bb.po

bb.pn:                                            ; preds = %._crit_edge.i80
  %i.bmb = landingpad { ptr, i32 }
          cleanup
  %i.bmc = load ptr, ptr %46, align 8, !tbaa !143, !noalias !501 ; 3 uses
  %.not.i22.i81 = icmp eq ptr %i.bmc, null
  br i1 %.not.i22.i81, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i83, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i82

.lr.ph.i.i.i76:                                   ; preds = %.lr.ph.i.i.i76.preheader, %.lr.ph.i.i.i76
  %.0164.i77 = phi ptr [ %i.bmf, %.lr.ph.i.i.i76 ], [ %.0164.i77.ph, %.lr.ph.i.i.i76.preheader ] ; 2 uses
  %.0173.i78 = phi ptr [ %i.bme, %.lr.ph.i.i.i76 ], [ %.0173.i78.ph, %.lr.ph.i.i.i76.preheader ] ; 2 uses
  %i.bmd = load i64, ptr %.0164.i77, align 8, !noalias !501
  %i.bme = getelementptr inbounds nuw i8, ptr %.0173.i78, i64 8
  %.sroa.0.0.insert.insert.i = call i64 @llvm.bswap.i64(i64 %i.bmd)
  store i64 %.sroa.0.0.insert.insert.i, ptr %.0173.i78, align 8, !noalias !501
  %i.bmf = getelementptr inbounds nuw i8, ptr %.0164.i77, i64 8 ; 2 uses
  %.not.i79 = icmp eq ptr %i.bmf, %i.bkd
  br i1 %.not.i79, label %._crit_edge.i80, label %.lr.ph.i.i.i76, !llvm.loop !514

bb.po:                                            ; preds = %bb.pm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i87, %bb.pi, %.noexc.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #19, !noalias !501
  store ptr null, ptr %63, align 8, !tbaa !60, !alias.scope !515
  %i.bmg = load ptr, ptr %46, align 8, !tbaa !143, !noalias !501 ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.bmg, null
  br i1 %.not.i.i89, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i91, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i90

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i90: ; preds = %bb.po
  %i.bmh = load ptr, ptr %i.bmg, align 8, !tbaa !88, !noalias !501
  %i.bmi = getelementptr inbounds nuw i8, ptr %i.bmh, i64 8
  %i.bmj = load ptr, ptr %i.bmi, align 8, !noalias !501
  call void %i.bmj(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bmg) #19, !noalias !501, !inline_history !518
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i91

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i91: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i.i90, %bb.po
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !501
  br label %_ZN5arrow6StatusC2ERKS0_.exit.i66

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i82: ; preds = %bb.pn
  %i.bmk = load ptr, ptr %i.bmc, align 8, !tbaa !88, !noalias !501
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8
  %i.bmm = load ptr, ptr %i.bml, align 8, !noalias !501
  call void %i.bmm(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bmc) #19, !noalias !501, !inline_history !518
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i83

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i83: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i23.i82, %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19, !noalias !501
  br label %bb.pr

_ZN5arrow6StatusC2ERKS0_.exit.i66:                ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit.i91, %bb.pe
  %i.bmn = load ptr, ptr %45, align 8, !tbaa !60, !noalias !501 ; 2 uses
  %i.bmo = icmp eq ptr %i.bmn, null
  br i1 %i.bmo, label %bb.pp, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i67, !prof !63

bb.pp:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i66
  %i.bmp = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.bmq = load ptr, ptr %i.bmp, align 8, !tbaa !143, !noalias !501 ; 3 uses
  %.not.i.i.i.i25.i68 = icmp eq ptr %i.bmq, null
  br i1 %.not.i.i.i.i25.i68, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i69

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i69: ; preds = %bb.pp
  %i.bmr = load ptr, ptr %i.bmq, align 8, !tbaa !88
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 8
  %i.bmt = load ptr, ptr %i.bms, align 8
  call void %i.bmt(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bmq) #19, !inline_history !519
  %.pr.pre.i.i70 = load ptr, ptr %45, align 8, !tbaa !60, !noalias !501 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %.pr.pre.i.i70, null
  br i1 %.not.i.i.i71, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i67, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i67: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i69, %_ZN5arrow6StatusC2ERKS0_.exit.i66
  %i.bmu = phi ptr [ %.pr.pre.i.i70, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i69 ], [ %i.bmn, %_ZN5arrow6StatusC2ERKS0_.exit.i66 ]
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmu, i64 1
  %i.bmw = load i8, ptr %i.bmv, align 1, !tbaa !64, !range !74, !noundef !75
  %i.bmx = trunc nuw i8 %i.bmw to i1
  br i1 %i.bmx, label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit, label %bb.pq

bb.pq:                                            ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i67
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %45) #19
  br label %_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit

bb.pr:                                            ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i83, %bb.pf
  %.pn20.i65 = phi { ptr, i32 } [ %i.bjy, %bb.pf ], [ %i.bmb, %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit24.i83 ]
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %45) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !501
  br label %common.resume

_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper5VisitINS_13Decimal64TypeEEENSt9enable_ifIXsr15is_decimal_typeIT_EE5valueENS_6StatusEE4typeERKS5_.exit: ; preds = %bb.pp, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i.i69, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i.i67, %bb.pq
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19, !noalias !501
  br label %_ZN5arrow6StatusD2Ev.exit

bb.ps:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !520)
  %i.bmy = load ptr, ptr %1, align 8, !tbaa !120, !noalias !520, !nonnull !75, !align !121
  %i.bmz = load ptr, ptr %i.bmy, align 8, !tbaa !33, !noalias !520
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmz, i64 40
  %i.bnb = load ptr, ptr %i.bna, align 8, !tbaa !122, !noalias !520
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bnb, i64 16
  %i.bnd = load ptr, ptr %i.bnc, align 8, !tbaa !126, !noalias !520 ; 3 uses
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bnd, i64 9
  %i.bnf = load i8, ptr %i.bne, align 1, !tbaa !440, !range !74, !noalias !520, !noundef !75
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnd, i64 16
  %i.bnh = load ptr, ptr %i.bng, align 8, !noalias !520
end_hunk_3
begin_hunk_4_@_ZN5arrow8internal25RechunkArraysConsistentlyERKSt6vectorIS1_ISt10shared_ptrINS_5ArrayEESaIS4_EESaIS6_EE:bb.a
  %i.f = sub i64 %i.d, %i.e                       ; 10 uses
  %i.g = sdiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i

_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.b
  %i.j = phi ptr [ null, %bb.b ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !1339
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !1336
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !1340
  %i.n = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.c, ptr %i.b, ptr noundef %i.j)
          to label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.f) #21
  br label %common.resume

common.resume:                                    ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit89, %bb.i, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aj, %bb.i ], [ %i.o, %bb.d ], [ %i.o, %bb.e ], [ %i.aj, %bb.j ], [ %.pn56.pn139, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit89 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.n, ptr %i.k, align 8, !tbaa !1336
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !1341 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1341 ; 2 uses
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.t = icmp eq i64 %i.z, 0
  br i1 %i.t, label %._crit_edge.thread, label %bb.k

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0191 = phi i64 [ %i.z, %.lr.ph ], [ 0, %bb.f ]
  %.sroa.0126.0190 = phi ptr [ %i.aa, %.lr.ph ], [ %i.p, %bb.f ] ; 2 uses
  %i.u = load ptr, ptr %.sroa.0126.0190, align 8, !tbaa !1327
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !1342
  %i.z = add nsw i64 %i.y, %.0191                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0126.0190, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.r
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.f, %._crit_edge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i60 = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge.thread
  %i.ac = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.ac, label %.noexc.i.i64, label %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61, !prof !96

.noexc.i.i64:                                     ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61: ; preds = %bb.g
  %i.ad = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61, %._crit_edge.thread
  %i.ae = phi ptr [ null, %._crit_edge.thread ], [ %i.ad, %_ZNSt15__new_allocatorISt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS4_EEE8allocateEmPKv.exit.i.i.i.i61 ] ; 6 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !1339
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !1336
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !1340
  %i.ai = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr nonnull %i.c, ptr %i.b, ptr noundef %i.ae)
          to label %_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit65 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i62, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.f) #21
  br label %common.resume

_ZNSt6vectorIS_ISt10shared_ptrIN5arrow5ArrayEESaIS3_EESaIS5_EEC2ERKS7_.exit65: ; preds = %bb.h
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !1336
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EED2Ev.exit

bb.k:                                             ; preds = %._crit_edge
  %i.ak = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.ak, label %.noexc, label %.lr.ph.preheader.i.i.i.i.i

.noexc:                                           ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
  unreachable

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.k
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 3 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !1339
  %i.am = getelementptr i8, ptr %i.al, i64 %i.f   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.al, i8 0, i64 %i.f, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !1340
  store ptr %i.am, ptr %i.an, align 8, !tbaa !1336
  %i.ap = icmp eq ptr %i.c, %i.b
  br i1 %i.ap, label %.preheader142, label %.lr.ph199

.preheader142:                                    ; preds = %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.sroa.0108.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.0108.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 7 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 3 uses
  %.sroa.13121.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.13121.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 3 uses
  %.sroa.0115.0.lcssa = phi ptr [ null, %.lr.ph.preheader.i.i.i.i.i ], [ %.sroa.0115.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ] ; 7 uses
  %i.aq = icmp sgt i64 %i.z, 0
  br i1 %i.aq, label %.preheader141.lr.ph, label %._crit_edge219

.preheader141.lr.ph:                              ; preds = %.preheader142
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !1336
  %.pre248 = load ptr, ptr %1, align 8, !tbaa !1339
  br label %.preheader141

.lr.ph199:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit
  %.sroa.0115.0198 = phi ptr [ %.sroa.0115.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 10 uses
  %.sroa.10120.0197 = phi ptr [ %.sroa.10120.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 8 uses
  %.sroa.13121.0196 = phi ptr [ %.sroa.13121.3, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.0105.0195 = phi ptr [ %i.cm, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.13.0194 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.sroa.10.0193 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.sroa.0108.0192 = phi ptr [ %.sroa.0108.1, %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit ], [ null, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.as = load ptr, ptr %.sroa.0105.0195, align 8, !tbaa !1341 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.10120.0197, %.sroa.13121.0196
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph199
  %i.at = ptrtoint ptr %i.as to i64
  store i64 %i.at, ptr %.sroa.10120.0197, align 8, !tbaa !1341
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit

bb.m:                                             ; preds = %.lr.ph199
  %i.au = ptrtoint ptr %.sroa.10120.0197 to i64   ; 2 uses
  %i.av = ptrtoint ptr %.sroa.0115.0198 to i64    ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.n, label %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc70 unwind label %.loopexit.split-lp144

.noexc70:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.m
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 1152921504606846975)
  %i.bc = select i1 %i.ba, i64 1152921504606846975, i64 %i.bb ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #20
          to label %.noexc71 unwind label %.loopexit143 ; 8 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.aw
  %i.bg = ptrtoint ptr %i.as to i64
  store i64 %i.bg, ptr %i.bf, align 8, !tbaa !1341
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0115.0198, %.sroa.10120.0197
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc71
  %i.bh = ptrtoaddr ptr %i.be to i64
  %i.bi = sub i64 %i.au, %i.av
  %i.bj = add i64 %i.bi, -8                       ; 2 uses
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bj, 24
  %i.bm = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bm, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bl, 4611686018427387900     ; 3 uses
  %i.bn = shl i64 %n.vec, 3                       ; 2 uses
  %i.bo = getelementptr i8, ptr %i.be, i64 %i.bn  ; 2 uses
  %i.bp = getelementptr i8, ptr %.sroa.0115.0198, i64 %i.bn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.be, i64 %i.bq ; 2 uses
  %next.gep335 = getelementptr i8, ptr %.sroa.0115.0198, i64 %i.bq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.br = getelementptr i8, ptr %next.gep335, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep335, align 8, !tbaa !1341, !alias.scope !1346, !noalias !1343
  %wide.load336 = load <2 x i64>, ptr %i.br, align 8, !tbaa !1341, !alias.scope !1346, !noalias !1343
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !1341, !alias.scope !1343, !noalias !1346
  store <2 x i64> %wide.load336, ptr %i.bs, align 8, !tbaa !1341, !alias.scope !1343, !noalias !1346
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !1348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader343

.lr.ph.i.i.i.i.i.preheader343:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bo, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %.sroa.0115.0198, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader343, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader343 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.bu = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !1341, !alias.scope !1346, !noalias !1343
  store i64 %i.bu, ptr %.012.i.i.i.i.i, align 8, !tbaa !1341, !alias.scope !1343, !noalias !1346
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bv, %.sroa.10120.0197
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1349

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc71
  %.0.lcssa.i.i.i.i.i69 = phi ptr [ %i.be, %.noexc71 ], [ %i.bo, %middle.block ], [ %i.bw, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0115.0198, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0198, i64 noundef %i.aw) #21
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE11_S_relocateEPSA_SD_SD_RSB_.exit22.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  br label %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit

_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit: ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i, %bb.l
  %.sroa.13121.3 = phi ptr [ %i.bx, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.13121.0196, %bb.l ] ; 4 uses
  %.0.lcssa.i.i.i.i.i69.pn = phi ptr [ %.0.lcssa.i.i.i.i.i69, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.10120.0197, %bb.l ]
  %.sroa.0115.3 = phi ptr [ %i.be, %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE17_M_realloc_insertIJSA_EEEvNS1_IPSA_SC_EEDpOT_.exit.i ], [ %.sroa.0115.0198, %bb.l ] ; 4 uses
  %.sroa.10120.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i69.pn, i64 8
  %.not.i72 = icmp eq ptr %.sroa.10.0193, %.sroa.13.0194
  br i1 %.not.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit
  store i64 0, ptr %.sroa.10.0193, align 8, !tbaa !236
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit

bb.q:                                             ; preds = %_ZNSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12emplace_backIJSA_EEERSA_DpOT_.exit
  %i.by = ptrtoint ptr %.sroa.13.0194 to i64
  %i.bz = ptrtoint ptr %.sroa.0108.0192 to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 6 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.r, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc75 unwind label %.loopexit.split-lp149

.noexc75:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.q
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i.i73 = tail call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i.i73, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i.i74 = icmp ne i64 %i.cg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i74)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #20
          to label %.noexc76 unwind label %.loopexit148 ; 4 uses

.noexc76:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.ca ; 2 uses
  store i64 0, ptr %i.cj, align 8, !tbaa !236
  %i.ck = icmp sgt i64 %i.ca, 0
  br i1 %i.ck, label %bb.s, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.s:                                             ; preds = %.noexc76
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %.sroa.0108.0192, i64 %i.ca, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.s, %.noexc76
  %.not.i17.i.i = icmp eq ptr %.sroa.0108.0192, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.0192, i64 noundef %i.ca) #21
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.t, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  br label %_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit

_ZNSt6vectorIlSaIlEE12emplace_backIJiEEERlDpOT_.exit: ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.p
  %.sroa.0108.1 = phi ptr [ %i.ci, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.0108.0192, %bb.p ] ; 2 uses
  %.pn140 = phi ptr [ %i.cj, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.10.0193, %bb.p ]
  %.sroa.13.1 = phi ptr [ %i.cl, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %.sroa.13.0194, %bb.p ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn140, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0105.0195, i64 24 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, %i.b
  br i1 %i.cn, label %.preheader142, label %.lr.ph199

.loopexit143:                                     ; preds = %_ZNKSt6vectorIN9__gnu_cxx17__normal_iteratorIPKSt10shared_ptrIN5arrow5ArrayEES_IS5_SaIS5_EEEESaISA_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit145 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp144:                            ; preds = %bb.n
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit148:                                     ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit150 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp149:                            ; preds = %bb.r
  %lpad.loopexit.split-lp151 = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.preheader141:                                    ; preds = %.preheader141.lr.ph, %._crit_edge217
  %i.co = phi ptr [ %.pre248, %.preheader141.lr.ph ], [ %i.dm, %._crit_edge217 ] ; 4 uses
  %i.cp = phi ptr [ %.pre, %.preheader141.lr.ph ], [ %i.dn, %._crit_edge217 ] ; 2 uses
  %.052218 = phi i64 [ 0, %.preheader141.lr.ph ], [ %i.do, %._crit_edge217 ]
  %.not = icmp eq ptr %i.cp, %i.co
  br i1 %.not, label %._crit_edge217, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %.preheader141
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 24
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %bb.u
  %.051212 = phi i64 [ %i.dl, %bb.u ], [ 0, %.lr.ph213.preheader ] ; 3 uses
  %.0129211 = phi i64 [ %.sroa.speculated, %bb.u ], [ 9223372036854775807, %.lr.ph213.preheader ]
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0115.0.lcssa, i64 %.051212 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0108.0.lcssa, i64 %.051212 ; 2 uses
  %.promoted = load i64, ptr %i.cv, align 8, !tbaa !236 ; 2 uses
  %.promoted204 = load ptr, ptr %i.cu, align 8, !tbaa !1350 ; 2 uses
  %i.cw = load ptr, ptr %.promoted204, align 8, !tbaa !1327
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !33
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !1342 ; 2 uses
  %i.db = icmp eq i64 %.promoted, %i.da
  br i1 %i.db, label %.lr.ph206, label %bb.u

.lr.ph206:                                        ; preds = %.lr.ph213, %.lr.ph206
  %i.dc = phi ptr [ %i.dd, %.lr.ph206 ], [ %.promoted204, %.lr.ph213 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 3 uses
  store i64 0, ptr %i.cv, align 8, !tbaa !236
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1327
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !33
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !1342 ; 2 uses
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %.lr.ph206, label %._crit_edge207, !llvm.loop !1352

._crit_edge207:                                   ; preds = %.lr.ph206
  store ptr %i.dd, ptr %i.cu, align 8, !tbaa !1350
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge207, %.lr.ph213
  %.lcssa153 = phi i64 [ 0, %._crit_edge207 ], [ %.promoted, %.lr.ph213 ]
  %.lcssa = phi i64 [ %i.di, %._crit_edge207 ], [ %i.da, %.lr.ph213 ]
  %i.dk = sub nsw i64 %.lcssa, %.lcssa153
end_hunk_4
begin_hunk_5_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !95
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !95
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !97
  store i64 %.0, ptr %i.h, align 8, !tbaa !95
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1387 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #19, !inline_history !1390
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1372 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !95
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !87
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1300
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !88
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !inline_history !1300
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !95
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

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
  %i.a = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 8 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !130
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %2, i64 noundef %i.f, ptr noundef %.8.val)
  %i.g = load ptr, ptr %2, align 8, !tbaa !60
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !143, !noalias !1397 ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !143, !alias.scope !1397
  store ptr null, ptr %i.i, align 8, !tbaa !143, !noalias !1397
  %.cast = inttoptr i64 %i.j to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !130  ; 4 uses
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

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <8 x i16>, ptr %i.s, align 2, !tbaa !146
  %wide.load7 = load <8 x i16>, ptr %i.t, align 2, !tbaa !146
  %i.u = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.v = call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load7)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <8 x i16> %i.u, ptr %i.w, align 2, !tbaa !146
  store <8 x i16> %i.v, ptr %i.x, align 2, !tbaa !146
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1398

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.z = and i64 %i.o, 24
  %min.epilog.iters.check = icmp eq i64 %i.z, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !151

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %i.p, 9223372036854775804     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %index10
  %wide.load11 = load <4 x i16>, ptr %i.aa, align 2, !tbaa !146
  %i.ab = call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load11)
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %index10
  store <4 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !146
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1399

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %i.p, %n.vec9
  br i1 %cmp.n13, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01.prol = phi i64 [ %i.ah, %.lr.ph.prol ], [ %.01.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %.01.prol
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !146
  %rev.i.i.prol = call noundef i16 @llvm.bswap.i16(i16 %i.af)
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.01.prol
  store i16 %rev.i.i.prol, ptr %i.ag, align 2, !tbaa !146
  %i.ah = add nuw nsw i64 %.01.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1400

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
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !146
  %rev.i.i = call noundef i16 @llvm.bswap.i16(i16 %i.al)
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %.01
  store i16 %rev.i.i, ptr %i.am, align 2, !tbaa !146
  %i.an = add nuw nsw i64 %.01, 1                 ; 2 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !146
  %rev.i.i.1 = call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.an
  store i16 %rev.i.i.1, ptr %i.aq, align 2, !tbaa !146
  %i.ar = add nuw nsw i64 %.01, 2                 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !146
  %rev.i.i.2 = call noundef i16 @llvm.bswap.i16(i16 %i.at)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.ar
  store i16 %rev.i.i.2, ptr %i.au, align 2, !tbaa !146
  %i.av = add nuw nsw i64 %.01, 3                 ; 2 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !146
  %rev.i.i.3 = call noundef i16 @llvm.bswap.i16(i16 %i.ax)
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.av
  store i16 %rev.i.i.3, ptr %i.ay, align 2, !tbaa !146
  %i.az = add nuw nsw i64 %.01, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1401

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load <2 x ptr>, ptr %4, align 16, !tbaa !93
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bc = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bc) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bh = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bh, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21: ; preds = %bb.d
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bh) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bg

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.bl = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.f, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.f
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bo) #19, !inline_history !1403
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !60 ; 2 uses
  %.not.i.i23 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.e
  %i.bs = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bl, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64, !range !74, !noundef !75
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !130
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %2, i64 noundef %i.f, ptr noundef %.8.val)
  %i.g = load ptr, ptr %2, align 8, !tbaa !60
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1404)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !143, !noalias !1410 ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !143, !alias.scope !1410
  store ptr null, ptr %i.i, align 8, !tbaa !143, !noalias !1410
  %.cast = inttoptr i64 %i.j to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 7 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 6 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = ptrtoaddr ptr %i.l to i64
  %min.iters.check = icmp ult i64 %i.o, 32
  %i.r = sub i64 %i.d, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, 4611686018427387896      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !3
  %wide.load6 = load <4 x i32>, ptr %i.t, align 4, !tbaa !3
  %i.u = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.v = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load6)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4, !tbaa !3
  store <4 x i32> %i.v, ptr %i.x, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader7

.lr.ph.preheader7:                                ; preds = %.lr.ph.preheader, %middle.block
  %.01.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader7, %.lr.ph.prol
  %.01.prol = phi i64 [ %i.ad, %.lr.ph.prol ], [ %.01.ph, %.lr.ph.preheader7 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader7 ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.01.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01.prol
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = add nuw nsw i64 %.01.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1412

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader7
  %.01.unr = phi i64 [ %.01.ph, %.lr.ph.preheader7 ], [ %i.ad, %.lr.ph.prol ]
  %i.ae = sub nsw i64 %.01.ph, %i.p
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01 = phi i64 [ %i.az, %.lr.ph ], [ %.01.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.01
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = call noundef i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = add nuw nsw i64 %.01, 1                 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = add nuw nsw i64 %.01, 2                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ap
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = add nuw nsw i64 %.01, 3                 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = call noundef i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.au
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !3
  %i.az = add nuw nsw i64 %.01, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1413

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load <2 x ptr>, ptr %4, align 16, !tbaa !93
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bc = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bc) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bh = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bh, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21: ; preds = %bb.d
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bh) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bg

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.bl = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.f, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.f
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bo) #19, !inline_history !1403
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !60 ; 2 uses
  %.not.i.i23 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.e
  %i.bs = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bl, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64, !range !74, !noundef !75
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.f, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper14ByteSwapBufferIjEENS_6ResultISt10shared_ptrINS_6BufferEEEERKS6_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %3 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !130
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %2, i64 noundef %i.f, ptr noundef %.8.val)
  %i.g = load ptr, ptr %2, align 8, !tbaa !60
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1417)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !143, !noalias !1420 ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !143, !alias.scope !1420
  store ptr null, ptr %i.i, align 8, !tbaa !143, !noalias !1420
  %.cast = inttoptr i64 %i.j to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 7 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 6 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = ptrtoaddr ptr %i.l to i64
  %min.iters.check = icmp ult i64 %i.o, 32
  %i.r = sub i64 %i.d, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, 4611686018427387896      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !3
  %wide.load6 = load <4 x i32>, ptr %i.t, align 4, !tbaa !3
  %i.u = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.v = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load6)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %i.u, ptr %i.w, align 4, !tbaa !3
  store <4 x i32> %i.v, ptr %i.x, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1421

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader7

.lr.ph.preheader7:                                ; preds = %.lr.ph.preheader, %middle.block
  %.01.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader7, %.lr.ph.prol
  %.01.prol = phi i64 [ %i.ad, %.lr.ph.prol ], [ %.01.ph, %.lr.ph.preheader7 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader7 ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.01.prol
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = call noundef i32 @llvm.bswap.i32(i32 %i.aa)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01.prol
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !3
  %i.ad = add nuw nsw i64 %.01.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1422

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader7
  %.01.unr = phi i64 [ %.01.ph, %.lr.ph.preheader7 ], [ %i.ad, %.lr.ph.prol ]
  %i.ae = sub nsw i64 %.01.ph, %i.p
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01 = phi i64 [ %i.az, %.lr.ph ], [ %.01.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.01
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = call noundef i32 @llvm.bswap.i32(i32 %i.ah)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.01
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !3
  %i.ak = add nuw nsw i64 %.01, 1                 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = call noundef i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ak
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !3
  %i.ap = add nuw nsw i64 %.01, 2                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.as = call noundef i32 @llvm.bswap.i32(i32 %i.ar)
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ap
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = add nuw nsw i64 %.01, 3                 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ax = call noundef i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.au
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !3
  %i.az = add nuw nsw i64 %.01, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1423

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load <2 x ptr>, ptr %4, align 16, !tbaa !93
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bc = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bc) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bh = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bh, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21: ; preds = %bb.d
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bh) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bg

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.bl = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.f, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.f
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bo) #19, !inline_history !1403
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !60 ; 2 uses
  %.not.i.i23 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.e
  %i.bs = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bl, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64, !range !74, !noundef !75
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
define internal fastcc void @_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper14ByteSwapBufferIlEENS_6ResultISt10shared_ptrINS_6BufferEEEERKS6_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Result.130", align 8 ; 12 uses
  %3 = alloca %"class.std::unique_ptr.134", align 8 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.36", align 16 ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !126    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 7 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !130
  call void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.130") align 8 %2, i64 noundef %i.f, ptr noundef %.8.val)
  %i.g = load ptr, ptr %2, align 8, !tbaa !60
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %bb.b, !prof !63

bb.b:                                             ; preds = %bb.a
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !143, !noalias !1430 ; 2 uses
  store i64 %i.j, ptr %3, align 8, !tbaa !143, !alias.scope !1430
  store ptr null, ptr %i.i, align 8, !tbaa !143, !noalias !1430
  %.cast = inttoptr i64 %i.j to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %.cast, i64 16
  %i.l = load ptr, ptr %i.k, align 8              ; 7 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !126
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !130  ; 2 uses
  %i.p = lshr i64 %i.o, 3                         ; 6 uses
  %.not = icmp eq i64 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = ptrtoaddr ptr %i.l to i64
  %min.iters.check = icmp ult i64 %i.o, 48
  %i.r = sub i64 %i.d, %i.q
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader7, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.p, 2305843009213693948      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !236
  %wide.load6 = load <2 x i64>, ptr %i.t, align 8, !tbaa !236
  %i.u = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load)
  %i.v = call <2 x i64> @llvm.bswap.v2i64(<2 x i64> %wide.load6)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8, !tbaa !236
  store <2 x i64> %i.v, ptr %i.x, align 8, !tbaa !236
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1431

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.p, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader7

.lr.ph.preheader7:                                ; preds = %.lr.ph.preheader, %middle.block
  %.01.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader7, %.lr.ph.prol
  %.01.prol = phi i64 [ %i.ad, %.lr.ph.prol ], [ %.01.ph, %.lr.ph.preheader7 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader7 ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01.prol
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !236
  %i.ab = call noundef i64 @llvm.bswap.i64(i64 %i.aa)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01.prol
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !236
  %i.ad = add nuw nsw i64 %.01.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1432

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader7
  %.01.unr = phi i64 [ %.01.ph, %.lr.ph.preheader7 ], [ %i.ad, %.lr.ph.prol ]
  %i.ae = sub nsw i64 %.01.ph, %i.p
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01 = phi i64 [ %i.az, %.lr.ph ], [ %.01.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.01
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !236
  %i.ai = call noundef i64 @llvm.bswap.i64(i64 %i.ah)
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.01
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !236
  %i.ak = add nuw nsw i64 %.01, 1                 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !236
  %i.an = call noundef i64 @llvm.bswap.i64(i64 %i.am)
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !236
  %i.ap = add nuw nsw i64 %.01, 2                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !236
  %i.as = call noundef i64 @llvm.bswap.i64(i64 %i.ar)
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ap
  store i64 %i.as, ptr %i.at, align 8, !tbaa !236
  %i.au = add nuw nsw i64 %.01, 3                 ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !236
  %i.ax = call noundef i64 @llvm.bswap.i64(i64 %i.aw)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.au
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !236
  %i.az = add nuw nsw i64 %.01, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.az, %i.p
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1433

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load <2 x ptr>, ptr %4, align 16, !tbaa !93
  store <2 x ptr> %i.bb, ptr %i.ba, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bc = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i = icmp eq ptr %i.bc, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !88
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bc) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.bh = load ptr, ptr %3, align 8, !tbaa !143   ; 3 uses
  %.not.i20 = icmp eq ptr %i.bh, null
  br i1 %.not.i20, label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21: ; preds = %bb.d
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bh) #19, !inline_history !1402
  br label %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22

_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit22: ; preds = %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit.i21, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  call void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.bg

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN5arrow6BufferESt14default_deleteIS1_EED2Ev.exit, %bb.b
  %i.bl = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.f, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !63

bb.f:                                             ; preds = %bb.e
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !143 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i: ; preds = %bb.f
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.bo) #19, !inline_history !1403
  %.pr.pre.i = load ptr, ptr %2, align 8, !tbaa !60 ; 2 uses
  %.not.i.i23 = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i23, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, !prof !158

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %bb.e
  %i.bs = phi ptr [ %.pr.pre.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i ], [ %i.bl, %bb.e ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !64, !range !74, !noundef !75
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  br label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev.exit: ; preds = %bb.f, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_122ArrayDataEndianSwapper11SwapOffsetsIiEENS_6StatusEi(ptr dead_on_unwind noalias nonnull writable align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Result.123", align 8 ; 12 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !120, !nonnull !75, !align !121
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = zext nneg i32 %2 to i64                  ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !122
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.d ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !126  ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !122
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.d ; 2 uses
  store ptr %i.g, ptr %i.o, align 8, !tbaa !126
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !91   ; 4 uses
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !91   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEaSERKS2_.exit, label %bb.d
end_hunk_5
