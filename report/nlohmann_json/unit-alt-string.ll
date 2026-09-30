Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nlohmann_json/original/unit-alt-string?download=true
inline.NumInlined: 5792
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 62
begin_hunk_0
@.str.259 = private unnamed_addr constant [15 x i8] c"unsuccessful: \00", align 1
@.str.260 = private unnamed_addr constant [18 x i8] c"operation value '\00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"' is invalid\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.263 = private unnamed_addr constant [12 x i8] c"operation '\00", align 1
@.str.264 = private unnamed_addr constant [20 x i8] c" must have member '\00", align 1
@.str.265 = private unnamed_addr constant [27 x i8] c" must have string member '\00", align 1
@.str.266 = private unnamed_addr constant [29 x i8] c"type must be string, but is \00", align 1
@.str.267 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.268 = private unnamed_addr constant [27 x i8] c"JSON pointer has no parent\00", align 1
@.str.269 = private unnamed_addr constant [29 x i8] c"cannot use push_back() with \00", align 1
@.str.270 = private unnamed_addr constant [26 x i8] c"cannot use insert() with \00", align 1
@.str.271 = private unnamed_addr constant [41 x i8] c"cannot use offsets with object iterators\00", align 1
@.str.272 = private unnamed_addr constant [3 x i8] c"/-\00", align 1
@.str.274 = private unnamed_addr constant [21 x i8] c"iterators do not fit\00", align 1
@.str.275 = private unnamed_addr constant [45 x i8] c"passed iterators may not belong to container\00", align 1
@.str.276 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_unit_alt_string.cpp, ptr null }]
@switch.table._ZNK8nlohmann16json_abi_v3_12_010basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES3_IhSaIhEEvE9type_nameEv = private unnamed_addr constant [10 x ptr] [ptr @.str.94, ptr @.str.29, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.100, ptr @.str.100, ptr @.str.100, ptr @.str.98, ptr @.str.99], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISA_E10token_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = private unnamed_addr constant [17 x ptr] [ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.210, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.220, ptr @.str.218, ptr @.str.219], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail6parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE17exception_messageENS1_10lexer_baseISA_E10token_typeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.2 = private unnamed_addr constant [16 x ptr] [ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.210, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219], align 8
@switch.table._ZN8nlohmann16json_abi_v3_12_06detail19json_sax_dom_parserINS0_10basic_jsonISt3mapSt6vector10alt_stringblmdSaNS0_14adl_serializerES5_IhSaIhEEvEENS1_22iterator_input_adapterIPKcEEE11start_arrayEm = private unnamed_addr constant [3 x i64] [i64 0, i64 115292150460684697, i64 576460752303423487], align 8

declare noundef i32 @_ZN7doctest6detail12setTestSuiteERKNS0_9TestSuiteE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN7doctest6detail9TestSuitemlEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13int_to_stringR10alt_stringm(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %class.alt_string, align 8          ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.b = icmp ult i64 %1, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.g
  %.029.i.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.i, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.c = icmp ult i64 %.02328.i.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.e = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.i = udiv i64 %.02328.i.i, 10000
  %i.j = add i32 %.029.i.i, 4                     ; 2 uses
  %i.k = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %bb.a
  %.022.i.i = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ 1, %bb.a ], [ %i.j, %bb.g ]
  %i.l = zext i32 %.022.i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.m, ptr %3, align 8, !tbaa !30, !alias.scope !244
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.l, i8 noundef signext 0)
  %i.n = load ptr, ptr %3, align 8, !tbaa !33, !alias.scope !244 ; 4 uses
  %i.o = icmp ugt i64 %1, 99
  br i1 %i.o, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34, !alias.scope !244
  %i.r = trunc i64 %i.q to i32
  %i.s = add i32 %i.r, -1
  br label %.lr.ph.i6.i

.lr.ph.i6.i:                                      ; preds = %.lr.ph.i6.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.v, %.lr.ph.i6.i ], [ %1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.af, %.lr.ph.i6.i ], [ %i.s, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.t = urem i64 %.020.i.i, 100
  %i.u = shl nuw nsw i64 %i.t, 1
  %i.v = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.u ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !35, !noalias !244
  %i.z = zext i32 %.01819.i.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.z
  store i8 %i.y, ptr %i.aa, align 1, !tbaa !35
  %i.ab = load i8, ptr %i.w, align 2, !tbaa !35, !noalias !244
  %i.ac = add i32 %.01819.i.i, -1
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ad
  store i8 %i.ab, ptr %i.ae, align 1, !tbaa !35
  %i.af = add i32 %.01819.i.i, -2
  %i.ag = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.ag, label %.lr.ph.i6.i, label %._crit_edge.i.i, !llvm.loop !1

._crit_edge.i.i:                                  ; preds = %.lr.ph.i6.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %i.v, %.lr.ph.i6.i ] ; 3 uses
  %i.ah = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !35, !noalias !244
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.al, ptr %i.am, align 1, !tbaa !35
  %i.an = load i8, ptr %i.aj, align 2, !tbaa !35, !noalias !244
  br label %_ZNSt7__cxx119to_stringEm.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.ao = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.ap = or disjoint i8 %i.ao, 48
  br label %_ZNSt7__cxx119to_stringEm.exit

_ZNSt7__cxx119to_stringEm.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.ap, %bb.i ], [ %i.an, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.n, align 1, !tbaa !35
  %i.aq = load ptr, ptr %3, align 8, !tbaa !33    ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.ar, ptr %2, align 8, !tbaa !30
  %i.as = icmp eq ptr %i.aq, null
  br i1 %i.as, label %.noexc.i, label %bb.j

.noexc.i:                                         ; preds = %_ZNSt7__cxx119to_stringEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #30
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.j:                                             ; preds = %_ZNSt7__cxx119to_stringEm.exit
  %i.at = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #29 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.at, ptr %i.a, align 8, !tbaa !36
  %i.au = icmp ugt i64 %i.at, 15
  br i1 %i.au, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.j
  %i.av = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3 unwind label %bb.s    ; 2 uses

.noexc3:                                          ; preds = %.noexc.i.i
  store ptr %i.av, ptr %2, align 8, !tbaa !33
  %i.aw = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.aw, ptr %i.ar, align 8, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc3, %bb.j
  %i.ax = phi ptr [ %i.av, %.noexc3 ], [ %i.ar, %bb.j ] ; 2 uses
  switch i64 %i.at, label %bb.l [
    i64 1, label %bb.k
    i64 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !35
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !35
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr nonnull align 1 %i.aq, i64 %i.at, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i
  %i.az = load i64, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !34
  %i.bb = load ptr, ptr %2, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.az
  store i8 0, ptr %i.bc, align 1, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.bd = load ptr, ptr %0, align 8, !tbaa !33    ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %4 = icmp eq ptr %i.bd, %i.be
  %i.bf = load ptr, ptr %2, align 8, !tbaa !33    ; 5 uses
  %i.bg = icmp eq ptr %i.bf, %i.ar                ; 2 uses
  br i1 %4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  br i1 %i.bg, label %bb.n, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.m
  br i1 %i.bg, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bh = load i64, ptr %i.ba, align 8, !tbaa !34 ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 16
  call void @llvm.assume(i1 %i.bi)
  switch i64 %i.bh, label %bb.p [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.bj = load i8, ptr %i.bf, align 1, !tbaa !35
  store i8 %i.bj, ptr %i.bd, align 1, !tbaa !35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.bf, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n
  %i.bk = load i64, ptr %i.ba, align 8, !tbaa !34 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !34
  %i.bm = load ptr, ptr %0, align 8, !tbaa !33
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 0, ptr %i.bn, align 1, !tbaa !35
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !33
  br label %_ZN10alt_stringaSEOS_.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %0, align 8, !tbaa !33
  %i.bp = load <2 x i64>, ptr %i.ba, align 8, !tbaa !35
  store <2 x i64> %i.bp, ptr %i.bo, align 8, !tbaa !35
  br label %bb.r

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.bq = load i64, ptr %i.be, align 8, !tbaa !35
  store ptr %i.bf, ptr %0, align 8, !tbaa !33
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load <2 x i64>, ptr %i.ba, align 8, !tbaa !35
  store <2 x i64> %i.bs, ptr %i.br, align 8, !tbaa !35
  %.not.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.bd, ptr %2, align 8, !tbaa !33
  store i64 %i.bq, ptr %i.ar, align 8, !tbaa !35
  br label %_ZN10alt_stringaSEOS_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ar, ptr %2, align 8, !tbaa !33
  br label %_ZN10alt_stringaSEOS_.exit

_ZN10alt_stringaSEOS_.exit:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.q, %bb.r
  %i.bt = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.bd, %bb.q ], [ %i.ar, %bb.r ]
  store i64 0, ptr %i.ba, align 8, !tbaa !34
  store i8 0, ptr %i.bt, align 1, !tbaa !35
  %i.bu = load ptr, ptr %2, align 8, !tbaa !33    ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ar
  br i1 %i.bv, label %_ZN10alt_stringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN10alt_stringaSEOS_.exit
  call void @_ZdlPv(ptr noundef %i.bu) #31
  br label %_ZN10alt_stringD2Ev.exit

_ZN10alt_stringD2Ev.exit:                         ; preds = %_ZN10alt_stringaSEOS_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.m
  br i1 %i.bx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZN10alt_stringD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN10alt_stringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void

bb.s:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %3, align 8, !tbaa !33    ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.m
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.s
  call void @_ZdlPv(ptr noundef %i.bz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %i.by
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.029.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i64 %.02328.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.029.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp ult i64 %.02328.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.029.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02328.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.029.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02328.i, 10000
  %i.i = add i32 %.029.i, 4                       ; 2 uses
  %i.j = icmp ult i64 %.02328.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.022.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.022.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !30
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0)
  %i.m = load ptr, ptr %0, align 8, !tbaa !33     ; 4 uses
  %i.n = icmp ugt i64 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !34
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.u, %.lr.ph.i6 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ae, %.lr.ph.i6 ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %i.s = urem i64 %.020.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = udiv i64 %.020.i, 100                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = zext i32 %.01819.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !35
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !35
  %i.ab = add i32 %.01819.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !35
  %i.ae = add i32 %.01819.i, -2
  %i.af = icmp ugt i64 %.020.i, 9999
  br i1 %i.af, label %.lr.ph.i6, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %.lr.ph.i6, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit ], [ %i.u, %.lr.ph.i6 ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !35
  %i.am = load i8, ptr %i.ai, align 2, !tbaa !35
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.an = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  store i8 %storemerge.i, ptr %i.m, align 1, !tbaa !35
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZltPKcRK10alt_string(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29 ; 2 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.b) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %i.d, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !33
  %i.f = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef nonnull %0, i64 noundef %.sroa.speculated.i.i) #29 ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.a
  %i.g = sub i64 %i.b, %i.c
  %spec.select7.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.g, i64 -2147483648)
  %.08.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i, i64 2147483647)
  %.0.i6.i.i = trunc nsw i64 %.08.i.i.i to i32
  br label %_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit

_ZStltIcSt11char_traitsIcESaIcEEbPKT_RKNSt7__cxx1112basic_stringIS3_T0_T1_EE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %.0.i.i = phi i32 [ %i.f, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ %.0.i6.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ]
  %i.h = icmp sgt i32 %.0.i.i, 0
  ret i1 %i.h
}

end_hunk_0
