Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/io_util?download=true
inline.NumInlined: 2332
inline.NumDeleted: 950
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN5arrow8internal16PlatformFilename10FromStringESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
.thread:                                          ; preds = %bb.k
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !17, !noalias !125 ; 4 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 %i.ai, ptr %i.al, align 8, !tbaa !17, !alias.scope !125
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !125
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.am, ptr %9, align 8, !tbaa !8, !alias.scope !128
  br label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.s, align 8, !tbaa !16, !noalias !125
  store i64 %i.an, ptr %i.af, align 8, !tbaa !16, !alias.scope !125
  %.pre.i = load i64, ptr %i.ab, align 8, !tbaa !17, !noalias !125 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35, !noalias !125
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  store ptr %i.ap, ptr %9, align 8, !tbaa !8, !alias.scope !137
  %i.aq = icmp eq ptr %i.ag, %i.af
  br i1 %i.aq, label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread, label %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread: ; preds = %bb.l, %.thread
  %i.ar = phi ptr [ %i.am, %.thread ], [ %i.ap, %bb.l ] ; 2 uses
  %i.as = phi ptr [ %i.al, %.thread ], [ %i.ao, %bb.l ]
  %i.at = phi i64 [ %i.ai, %.thread ], [ %.pre.i, %bb.l ] ; 4 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.av, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !17, !alias.scope !137
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !14, !noalias !137
  store i64 0, ptr %i.as, align 8, !tbaa !17, !noalias !137
  store i8 0, ptr %i.af, align 8, !tbaa !16, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %i.ax, ptr %11, align 8, !tbaa !8
  br label %bb.m

_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit: ; preds = %bb.l
  store ptr %i.ag, ptr %9, align 8, !tbaa !14, !alias.scope !137
  %i.ay = load i64, ptr %i.af, align 8, !tbaa !16, !noalias !137
  store i64 %i.ay, ptr %i.ap, align 8, !tbaa !16, !alias.scope !137
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %.pre.i, ptr %i.az, align 8, !tbaa !17, !alias.scope !137
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !14, !noalias !137
  store i64 0, ptr %i.ao, align 8, !tbaa !17, !noalias !137
  store i8 0, ptr %i.af, align 8, !tbaa !16, !noalias !137
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store ptr %i.ba, ptr %11, align 8, !tbaa !8
  %i.bb = icmp eq ptr %i.ag, %i.ap
  br i1 %i.bb, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.m:                                             ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  %i.bc = phi ptr [ %i.ax, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread ], [ %i.ba, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit ] ; 2 uses
  %i.bd = phi ptr [ %i.aw, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread ], [ %i.az, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit ]
  %i.be = phi i64 [ %i.at, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread ], [ %.pre.i, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit ] ; 3 uses
  %i.bf = phi ptr [ %i.ar, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit.thread ], [ %i.ap, %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit ] ; 2 uses
  %i.bg = icmp ult i64 %i.be, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.be, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNO5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11ValueUnsafeEv.exit
  store ptr %i.ag, ptr %11, align 8, !tbaa !14
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !16
  store i64 %i.bi, ptr %i.ba, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.bj = phi ptr [ %i.bc, %bb.m ], [ %i.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 4 uses
  %i.bk = phi ptr [ %i.bd, %bb.m ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bl = phi i64 [ %i.be, %bb.m ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.bm = phi ptr [ %i.bf, %bb.m ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !17
  store ptr %i.bm, ptr %9, align 8, !tbaa !14
  store i64 0, ptr %i.bk, align 8, !tbaa !17
  store i8 0, ptr %i.bm, align 1, !tbaa !16
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 %11)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr null, ptr %0, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5arrow8internal16PlatformFilenameC1EOS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #40
  unreachable

_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit: ; preds = %bb.n
  call void @_ZN5arrow8internal16PlatformFilenameD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #35
  %i.br = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.bj
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit
  %i.bt = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow6ResultINS_8internal16PlatformFilenameEEC2EOS2_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.bv = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.bm
  br i1 %i.bw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bx = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #38
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !14   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.bj
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.p
  %i.cc = load i64, ptr %i.bj, align 8, !tbaa !16
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  %i.ce = load ptr, ptr %9, align 8, !tbaa !14    ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.bm
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %i.cg = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.ch) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ci = load ptr, ptr %8, align 8, !tbaa !41
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.q, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !97

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17
  %i.ck = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.af
  br i1 %i.cl, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i: ; preds = %bb.q
  %i.cm = load i64, ptr %i.af, align 8, !tbaa !16
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #38
  %.pr.pre.i = load ptr, ptr %8, align 8, !tbaa !41
  %i.co = icmp eq ptr %.pr.pre.i, null
  br i1 %i.co, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit, label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i, !prof !106

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i17
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(40) %8)
  br label %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit

_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit: ; preds = %bb.q, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.i, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.r

bb.r:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14.thread, %_ZN5arrow6ResultINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal16PlatformFilename4JoinERKS1_(ptr dead_on_unwind noalias writable sret(%"class.arrow::internal::PlatformFilename") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"struct.arrow::internal::PlatformFilename::Impl", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"struct.arrow::internal::PlatformFilename::Impl", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !17   ; 8 uses
  %i.e = icmp eq i64 %i.d, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !14  ; 3 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.pre, i64 %i.d
  %i.g = getelementptr i8, ptr %i.f, i64 -1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !16
  %i.i = icmp eq i8 %i.h, 47
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14, !noalias !138
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !17, !noalias !138 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 13 uses
  store ptr %i.n, ptr %4, align 8, !tbaa !8, !alias.scope !141
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 0, ptr %i.o, align 8, !tbaa !17, !alias.scope !141
  store i8 0, ptr %i.n, align 8, !tbaa !16, !alias.scope !141
  %i.p = add i64 %i.m, %i.d
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.p)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !17, !alias.scope !141
  %i.r = sub i64 4611686018427387903, %i.q
  %i.s = icmp ult i64 %i.r, %i.d
  br i1 %i.s, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %.pre, i64 noundef %i.d)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.e ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.u = load i64, ptr %i.o, align 8, !tbaa !17, !alias.scope !141
  %i.v = sub i64 4611686018427387903, %i.u
  %i.w = icmp ult i64 %i.v, %i.m
  br i1 %i.w, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #36
          to label %.cont.i.i unwind label %bb.e

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %4, align 8, !tbaa !14, !alias.scope !141 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !16, !alias.scope !141
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #38
  br label %common.resume

common.resume:                                    ; preds = %bb.k, %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.av, %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15 ], [ %i.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ], [ %i.y, %bb.e ], [ %i.bp, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.ad = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.n
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !17  ; 3 uses
  %i.ah = add nuw nsw i64 %i.ag, 1
  %i.ai = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.ah, i1 false)
  br label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
  %i.aj = load i64, ptr %i.n, align 8, !tbaa !16
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !17
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !16, !alias.scope !144
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i
  %i.ak = phi i64 [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  %.sink.i = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i ]
  store ptr %i.n, ptr %4, align 8, !tbaa !14
  store i64 0, ptr %i.o, align 8, !tbaa !17
  store i8 0, ptr %i.n, align 8, !tbaa !16
  store ptr %.sink.i, ptr %3, align 8, !tbaa !8, !alias.scope !149
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !17, !alias.scope !144
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENS1_4ImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 %3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !16
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #38
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ar = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.n
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit
  %i.at = load i64, ptr %i.n, align 8, !tbaa !16
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13: ; preds = %bb.h
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #38
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13
  %i.bb = load ptr, ptr %4, align 8, !tbaa !14    ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.n
  br i1 %i.bc, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit15
  %i.bd = load i64, ptr %i.n, align 8, !tbaa !16
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.be) #38
  br label %common.resume

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 47, ptr %i.a, align 1, !tbaa !16, !noalias !151
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.bf, ptr %7, align 8, !tbaa !8, !alias.scope !154
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  store i64 0, ptr %i.bg, align 8, !tbaa !17, !alias.scope !154
  store i8 0, ptr %i.bf, align 8, !tbaa !16, !alias.scope !154
  %i.bh = add i64 %i.d, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.bh)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !17, !alias.scope !154
  %i.bj = sub i64 4611686018427387903, %i.bi
  %i.bk = icmp ult i64 %i.bj, %i.d
  br i1 %i.bk, label %.invoke.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i22: ; preds = %bb.j
  %i.bl = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %.pre, i64 noundef %i.d)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i23 unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i22
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !17, !alias.scope !154
  %i.bn = icmp eq i64 %i.bm, 4611686018427387903
  br i1 %i.bn, label %.invoke.i.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i24

.invoke.i.i25:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i23, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #36
          to label %.cont.i.i26 unwind label %bb.k

.cont.i.i26:                                      ; preds = %.invoke.i.i25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i23
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull %i.a, i64 noundef 1)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i24, %.invoke.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i22, %bb.i
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %7, align 8, !tbaa !14, !alias.scope !154 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bf
  br i1 %i.br, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i19: ; preds = %bb.k
  %i.bs = load i64, ptr %i.bf, align 8, !tbaa !16, !alias.scope !154
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #38
  br label %common.resume

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bu = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !17, !noalias !157 ; 2 uses
  %i.bx = load i64, ptr %i.bg, align 8, !tbaa !17, !noalias !157
  %i.by = sub i64 4611686018427387903, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.l:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.80) #36
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_S5_.exit
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !14, !noalias !157
  %i.cb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ca, i64 noundef %i.bw)
          to label %.noexc31 unwind label %bb.p   ; 8 uses

.noexc31:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 11 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !14 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16 ; 7 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %.thread, label %bb.m

.thread:                                          ; preds = %.noexc31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !17 ; 4 uses
  %i.ci = icmp ult i64 %i.ch, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ch, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cc, ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.ch, ptr %i.cl, align 8, !tbaa !17, !alias.scope !157
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !14
  store i64 0, ptr %i.ck, align 8, !tbaa !17
  store i8 0, ptr %i.ce, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i36

bb.m:                                             ; preds = %.noexc31
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !16
  store i64 %i.cm, ptr %i.cc, align 8, !tbaa !16, !alias.scope !157
  %.phi.trans.insert.i28 = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.pre.i29 = load i64, ptr %.phi.trans.insert.i28, align 8, !tbaa !17 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %.pre.i29, ptr %i.co, align 8, !tbaa !17, !alias.scope !157
  store ptr %i.ce, ptr %i.cb, align 8, !tbaa !14
  store i64 0, ptr %i.cn, align 8, !tbaa !17
  store i8 0, ptr %i.ce, align 8, !tbaa !16
  %i.cp = icmp eq ptr %i.cd, %i.cc
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i36, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i36: ; preds = %.thread, %bb.m
  %i.cq = phi ptr [ %i.cl, %.thread ], [ %i.co, %bb.m ]
  %i.cr = phi i64 [ %i.ch, %.thread ], [ %.pre.i29, %bb.m ] ; 3 uses
  %i.cs = add nuw nsw i64 %i.cr, 1
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cu = icmp ult i64 %i.cr, 16
  call void @llvm.assume(i1 %i.cu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %i.cc, i64 %i.cs, i1 false)
  br label %bb.n

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32: ; preds = %bb.m
  %i.cv = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !16, !alias.scope !160
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i36
  %i.cx = phi ptr [ %i.cq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i36 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32 ]
  %i.cy = phi i64 [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i36 ], [ %.pre.i29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32 ]
  %.sink.i35 = phi ptr [ %i.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread.i36 ], [ %i.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i32 ]
  store ptr %i.cc, ptr %6, align 8, !tbaa !14
  store i64 0, ptr %i.cx, align 8, !tbaa !17
  store i8 0, ptr %i.cc, align 8, !tbaa !16
  store ptr %.sink.i35, ptr %5, align 8, !tbaa !8, !alias.scope !165
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !17, !alias.scope !160
  invoke void @_ZN5arrow8internal16PlatformFilenameC1ENS1_4ImplE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 %5)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.da = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38: ; preds = %bb.o
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !16
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #38
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i38
  %i.df = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cc
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40
  %i.dh = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %i.dj = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bf
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.dl = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.l
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

bb.q:                                             ; preds = %bb.n
  %i.do = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit49, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47: ; preds = %bb.q
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !16
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #38
  br label %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit49

_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit49: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i47
  %i.du = load ptr, ptr %6, align 8, !tbaa !14    ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.cc
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit49
  %i.dw = load i64, ptr %i.cc, align 8, !tbaa !16
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.dn, %bb.p ], [ %i.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50 ], [ %i.do, %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit49 ]
  %i.dy = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bf
  br i1 %i.dz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52
  %i.ea = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.eb = add i64 %i.ea, 1
  call void @_ZdlPvm(ptr noundef %i.dy, i64 noundef %i.eb) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  br label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow8internal16PlatformFilename4ImplD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow8internal16PlatformFilename4JoinESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 %2, ptr nofree readonly captures(address_is_null) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.arrow::Result", align 8     ; 14 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 7 uses
  %7 = alloca %"class.arrow::internal::PlatformFilename", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !8
  %i.c = icmp eq ptr %3, null
  %i.d = icmp ne i64 %2, 0
  %or.cond.i.i.i = and i1 %i.d, %i.c
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.74) #36
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %2, ptr %i.a, align 8, !tbaa !12
  %i.e = icmp ugt i64 %2, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.c
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc12 unwind label %bb.i   ; 2 uses

.noexc12:                                         ; preds = %.noexc.i.i.i
  store ptr %i.f, ptr %5, align 8, !tbaa !14
  %i.g = load i64, ptr %i.a, align 8, !tbaa !12
  store i64 %i.g, ptr %i.b, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc12, %bb.c
  %i.h = phi ptr [ %i.f, %.noexc12 ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %3, align 1, !tbaa !16
end_hunk_0
