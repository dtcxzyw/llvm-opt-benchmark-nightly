Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.create?download=true
inline.NumInlined: 847
inline.NumDeleted: 412
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0
@.str.17 = private unnamed_addr constant [18 x i8] c"number is too big\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"invalid format string\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"cannot switch from manual to automatic argument indexing\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"cannot switch from automatic to manual argument indexing\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"invalid precision\00", align 1
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks = private unnamed_addr constant [5 x i32] [i32 0, i32 127, i32 31, i32 15, i32 7], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins = private unnamed_addr constant [5 x i32] [i32 4194304, i32 0, i32 128, i32 2048, i32 65536], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc = private unnamed_addr constant [5 x i32] [i32 0, i32 18, i32 12, i32 6, i32 0], align 16
@__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte = private unnamed_addr constant [5 x i32] [i32 0, i32 6, i32 4, i32 2, i32 0], align 16
@.str.23 = private unnamed_addr constant [32 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\02\02\02\02\03\03\04\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\1F\1F\00\01\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"argument not found\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"width/precision is out of range\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"width/precision is not integer\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"duplicate named arg\00", align 1
@_ZN5vcpkg3msg7value_t4nameE = external local_unnamed_addr global %"struct.vcpkg::StringLiteral", align 8
@_ZN5vcpkg3msg6path_t4nameE = external local_unnamed_addr global %"struct.vcpkg::StringLiteral", align 8
@.str.31 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.32 = private unnamed_addr constant [63 x i8] c"/opt-bench/work/vcpkg/vcpkg-tool/include/vcpkg/base/expected.h\00", align 1
@__func__._ZNKR5vcpkg9ExpectedTIiNS_15LocalizedStringEE5errorEv = private unnamed_addr constant [6 x i8] c"error\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN5vcpkg14command_createERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(400) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 6 uses
  %3 = alloca %"struct.vcpkg::msg::TagArg.61", align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.vcpkg::ParsedArguments", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.std::vector.44", align 8    ; 14 uses
  %8 = alloca [5 x %"struct.vcpkg::CMakeVariable"], align 8 ; 33 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"struct.vcpkg::Path", align 8     ; 9 uses
  %11 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  %12 = alloca %"struct.vcpkg::LineInfo", align 8 ; 7 uses
  %13 = alloca %"struct.vcpkg::ProcessLaunchSettings", align 8 ; 15 uses
  %14 = alloca %"struct.vcpkg::Optional.62", align 8 ; 11 uses
  %15 = alloca %"struct.vcpkg::ExpectedT", align 8 ; 7 uses
  %16 = alloca %"struct.vcpkg::Command", align 8  ; 9 uses
  %17 = alloca %"struct.vcpkg::LineInfo", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNK5vcpkg17VcpkgCmdArguments15parse_argumentsERKNS_15CommandMetadataE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ParsedArguments") align 8 %4, ptr noundef nonnull align 8 dereferenceable(1752) %0, ptr noundef nonnull align 8 dereferenceable(184) @_ZN5vcpkg21CommandCreateMetadataE)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 8 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !13
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.h, ptr %i.a, align 8, !tbaa !20
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.aj    ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.j, ptr %6, align 8, !tbaa !16
  %i.k = load i64, ptr %i.a, align 8, !tbaa !20
  store i64 %i.k, ptr %i.e, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %i.f, align 1, !tbaa !21
  store i8 %i.m, ptr %i.l, align 1, !tbaa !21
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.n = load i64, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !19
  %i.p = load ptr, ptr %6, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.r = load ptr, ptr %6, align 8, !tbaa !16, !noalias !25 ; 3 uses
  %i.s = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !25 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s ; 4 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.v = ptrtoint ptr %i.r to i64                 ; 4 uses
  %i.w = ashr i64 %i.s, 2                         ; 3 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.d
  %i.y = and i64 %i.s, -4
  %i.z = sub i64 %i.u, %i.y
  %i.aa = mul nsw i64 %i.w, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.t, i64 %i.aa
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.k, %.lr.ph.i.preheader.i.i.i
  %i.ab = phi ptr [ %i.am, %bb.k ], [ %i.t, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %i.ac = phi i64 [ %i.ar, %bb.k ], [ %i.u, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.ap, %bb.k ], [ %i.w, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !21, !noalias !28
  %.not18.i.i.i.i = icmp eq i8 %i.af, 47
  br i1 %.not18.i.i.i.i, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21, !noalias !28
  %.not19.i.i.i.i = icmp eq i8 %i.ah, 47
  br i1 %.not19.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds i8, ptr %i.ab, i64 -1
  %.cast.i.i.i.i = ptrtoint ptr %i.ai to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21, !noalias !28
  %.not21.i.i.i.i = icmp eq i8 %i.ak, 47
  br i1 %.not21.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.ab, i64 -2
  %.cast20.i.i.i.i = ptrtoint ptr %i.al to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21, !noalias !28
  %.not23.i.i.i.i = icmp eq i8 %i.an, 47
  br i1 %.not23.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds i8, ptr %i.ab, i64 -3
  %.cast22.i.i.i.i = ptrtoint ptr %i.ao to i64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.k:                                             ; preds = %bb.i
  %i.ap = add nsw i64 %.036.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.036.i.i.i.i, 1
  %i.ar = ptrtoint ptr %i.am to i64
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !35

._crit_edge.i.i.i.i:                              ; preds = %bb.k, %bb.d
  %i.as = phi i64 [ %i.u, %bb.d ], [ %i.z, %bb.k ] ; 5 uses
  %i.at = phi ptr [ %i.t, %bb.d ], [ %scevgep.i.i.i, %bb.k ] ; 2 uses
  %i.au = sub i64 %i.as, %i.v
  switch i64 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i [
    i64 3, label %bb.l
    i64 2, label %bb.n
    i64 1, label %bb.p
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.av = inttoptr i64 %i.as to ptr
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !21, !noalias !28
  %.not.i.i.i.i = icmp eq i8 %i.ax, 47
  br i1 %.not.i.i.i.i, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 -1 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i
  %i.ba = phi ptr [ %i.ay, %bb.m ], [ %i.at, %._crit_edge.i.i.i.i ]
  %i.bb = phi i64 [ %i.az, %bb.m ], [ %i.as, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !21, !noalias !28
  %.not16.i.i.i.i = icmp eq i8 %i.be, 47
  br i1 %.not16.i.i.i.i, label %bb.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds i8, ptr %i.ba, i64 -1
  %i.bg = ptrtoint ptr %i.bf to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i
  %i.bh = phi i64 [ %i.bg, %bb.o ], [ %i.as, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !21, !noalias !28
  %.not17.i.i.i.i = icmp eq i8 %i.bk, 47
  br i1 %.not17.i.i.i.i, label %18, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

18:                                               ; preds = %bb.p
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i: ; preds = %.lr.ph.i.i.i.i, %18, %bb.p, %bb.n, %bb.l, %._crit_edge.i.i.i.i, %bb.j, %bb.h, %bb.f
  %.sink.i.i.i.i = phi i64 [ %i.bh, %bb.p ], [ %i.bb, %bb.n ], [ %i.as, %bb.l ], [ %i.v, %._crit_edge.i.i.i.i ], [ %.cast22.i.i.i.i, %bb.j ], [ %.cast20.i.i.i.i, %bb.h ], [ %.cast.i.i.i.i, %bb.f ], [ %i.v, %18 ], [ %i.ac, %.lr.ph.i.i.i.i ]
  %i.bl = sub i64 %.sink.i.i.i.i, %i.v            ; 2 uses
  store i64 %i.bl, ptr %i.o, align 8, !tbaa !19, !noalias !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bl
  store i8 0, ptr %i.bm, align 1, !tbaa !21, !noalias !22
  %i.bn = load ptr, ptr %6, align 8, !tbaa !16, !noalias !22 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bo, ptr %5, align 8, !tbaa !13, !alias.scope !22
  %i.bp = icmp eq ptr %i.bn, %i.e
  br i1 %i.bp, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !22 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEN9__gnu_cxx17__normal_iteratorIPKcS4_EES9_.exit.i
  store ptr %i.bn, ptr %5, align 8, !tbaa !16, !alias.scope !22
  %i.bt = load i64, ptr %i.e, align 8, !tbaa !21, !noalias !22
  store i64 %i.bt, ptr %i.bo, align 8, !tbaa !21, !alias.scope !22
  %.pre.i = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.q
  %i.bu = phi i64 [ %i.bq, %bb.q ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !19, !alias.scope !22
  store ptr %i.e, ptr %6, align 8, !tbaa !16, !noalias !22
  store i64 0, ptr %i.o, align 8, !tbaa !19, !noalias !22
  store i8 0, ptr %i.e, align 8, !tbaa !21, !noalias !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  invoke void @_ZN5vcpkg13CMakeVariableC1ENS_10StringViewEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.2, i64 3, ptr noundef nonnull @.str.3)
          to label %bb.r unwind label %bb.ak

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  invoke void @_ZN5vcpkg13CMakeVariableC1ENS_10StringViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr nonnull @.str.4, i64 4, ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.s unwind label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.by = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK5vcpkg10VcpkgPaths23builtin_ports_directoryEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.t unwind label %bb.al

bb.t:                                             ; preds = %bb.s
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #20
  %i.bz = load ptr, ptr %11, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cb = load i64, ptr %i.ca, align 8
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr %i.bz, i64 %i.cb)
          to label %bb.u unwind label %bb.al

bb.u:                                             ; preds = %bb.t
  invoke void @_ZNK5vcpkg4Path16generic_u8stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.v unwind label %bb.am

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5vcpkg13CMakeVariableC1ENS_10StringViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr nonnull @.str.5, i64 9, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %bb.an

bb.w:                                             ; preds = %bb.v
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  invoke void @_ZN5vcpkg13CMakeVariableC1ENS_10StringViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.cc, ptr nonnull @.str.6, i64 3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.x unwind label %bb.an

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 128 ; 4 uses
  invoke void @_ZN5vcpkg13CMakeVariableC1ENS_10StringViewEPKc(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr nonnull @.str.7, i64 18, ptr noundef nonnull @.str.8)
          to label %bb.y unwind label %bb.an

bb.y:                                             ; preds = %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.ce = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #21
          to label %_ZNSt12_Vector_baseIN5vcpkg13CMakeVariableESaIS1_EE11_M_allocateEm.exit.i.i unwind label %bb.z ; 3 uses

_ZNSt12_Vector_baseIN5vcpkg13CMakeVariableESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 160
  store ptr %i.ce, ptr %7, align 8, !tbaa !37
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 160
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !40
  %i.ci = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5vcpkg13CMakeVariableEPS1_ET0_T_S6_S5_(ptr noundef nonnull %8, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.ce)
          to label %bb.ab unwind label %bb.z

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIN5vcpkg13CMakeVariableESaIS1_EE11_M_allocateEm.exit.i.i, %bb.y
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %7, align 8, !tbaa !37    ; 3 uses
  %.not.i.i5.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i5.i, label %.body, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.ck to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.cp) #22
  br label %.body

bb.ab:                                            ; preds = %_ZNSt12_Vector_baseIN5vcpkg13CMakeVariableESaIS1_EE11_M_allocateEm.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  store ptr %i.ci, ptr %i.cq, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZN5vcpkg13CMakeVariableD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ab
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !21
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #22
  br label %_ZN5vcpkg13CMakeVariableD2Ev.exit

_ZN5vcpkg13CMakeVariableD2Ev.exit:                ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !16 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZN5vcpkg13CMakeVariableD2Ev.exit.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1: ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !21
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #22
  br label %_ZN5vcpkg13CMakeVariableD2Ev.exit.1

_ZN5vcpkg13CMakeVariableD2Ev.exit.1:              ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !16 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZN5vcpkg13CMakeVariableD2Ev.exit.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2: ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.1
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !21
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #22
  br label %_ZN5vcpkg13CMakeVariableD2Ev.exit.2

_ZN5vcpkg13CMakeVariableD2Ev.exit.2:              ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZN5vcpkg13CMakeVariableD2Ev.exit.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3: ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.2
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !21
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #22
  br label %_ZN5vcpkg13CMakeVariableD2Ev.exit.3

_ZN5vcpkg13CMakeVariableD2Ev.exit.3:              ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
  %i.dp = load ptr, ptr %8, align 8, !tbaa !16    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZN5vcpkg13CMakeVariableD2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4: ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.3
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !21
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #22
  br label %_ZN5vcpkg13CMakeVariableD2Ev.exit.4

_ZN5vcpkg13CMakeVariableD2Ev.exit.4:              ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
  %i.du = load ptr, ptr %9, align 8, !tbaa !16    ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49: ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.4
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !21
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %_ZN5vcpkg13CMakeVariableD2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
  %i.dz = load ptr, ptr %10, align 8, !tbaa !16   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZN5vcpkg4PathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !21
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #22
  br label %_ZN5vcpkg4PathD2Ev.exit

_ZN5vcpkg4PathD2Ev.exit:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 152
end_hunk_0
