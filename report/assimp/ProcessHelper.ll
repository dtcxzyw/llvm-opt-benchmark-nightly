inline.NumInlined: 318
inline.NumDeleted: 153
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [50 x i8] c"ConvertListToString: String list is ill-formatted\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Box\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Cylinder\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"BUG\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@switch.table._ZN6Assimp19MappingTypeToStringE16aiTextureMapping = private unnamed_addr constant [6 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, ptr @.str.6], align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp20ConvertListToStringsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_4listIS5_SaIS5_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load i8, ptr %i.c, align 1               ; 2 uses
  %.not32 = icmp eq i8 %i.g, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %i.l = phi i8 [ %i.g, %.lr.ph ], [ %i.cd, %bb.x ]
  %.033 = phi ptr [ %i.c, %.lr.ph ], [ %.3, %bb.x ] ; 3 uses
  %i.m = ptrtoint ptr %.033 to i64
  %i.n = sub i64 %i.h, %i.m
  %scevgep.i.i = getelementptr i8, ptr %.033, i64 %i.n ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.o = phi i8 [ %i.l, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %.033, %bb.b ], [ %i.p, %bb.e ] ; 3 uses
  switch i8 %i.o, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %i.f
  br i1 %.not.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.p, align 1
  br label %bb.c, !llvm.loop !3

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split: ; preds = %bb.d
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit: ; preds = %bb.c, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split
  %i.q = phi i8 [ %.pr, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split ], [ %i.o, %bb.c ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split ], [ %.0.i.i, %bb.c ] ; 4 uses
  %i.r = icmp eq i8 %i.q, 39
  br i1 %i.r, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 5 uses
  %.pr24 = load i8, ptr %i.s, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.t = phi i8 [ %i.v, %bb.h ], [ %.pr24, %bb.f ]
  %.1 = phi ptr [ %i.u, %bb.h ], [ %i.s, %bb.f ]  ; 3 uses
  %.not9 = icmp eq i8 %i.t, 39
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.v = load i8, ptr %i.u, align 1               ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.l, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.g
  %i.x = ptrtoint ptr %.1 to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y                       ; 4 uses
  %i.aa = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 3 uses
  store ptr %i.ac, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.z, ptr %i.a, align 8
  %i.ad = icmp ugt i64 %i.z, 15
  br i1 %i.ad, label %.noexc.i.i14, label %._crit_edge.i.i.i13

.noexc.i.i14:                                     ; preds = %bb.i
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i ; 2 uses

.noexc9.i:                                        ; preds = %.noexc.i.i14
  store ptr %i.ae, ptr %i.ab, align 8
  %i.af = load i64, ptr %i.a, align 8
  store i64 %i.af, ptr %i.ac, align 8
  br label %._crit_edge.i.i.i13

._crit_edge.i.i.i13:                              ; preds = %.noexc9.i, %bb.i
  %i.ag = phi ptr [ %i.ae, %.noexc9.i ], [ %i.ac, %bb.i ] ; 2 uses
  switch i64 %i.z, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %.thread
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i13
  %i.ah = load i8, ptr %i.s, align 1
  store i8 %i.ah, ptr %i.ag, align 1
  br label %.thread

bb.k:                                             ; preds = %._crit_edge.i.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr nonnull align 1 %i.s, i64 %i.z, i1 false)
  br label %.thread

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i
  %common.resume.op = phi { ptr, i32 } [ %i.ai, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i: ; preds = %.noexc.i.i14
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef 48) #18
  br label %common.resume

.thread:                                          ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i13
  %i.aj = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.ab, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %i.an = load i64, ptr %i.k, align 8
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.k, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.aq = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.aq, ptr noundef nonnull @.str)
  br label %.loopexit

bb.m:                                             ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %i.ar = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.as = sub i64 %i.h, %i.ar
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.as
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %3 = phi i8 [ %i.q, %bb.m ], [ %.pre38, %bb.p ]
  %.0.i.i.i = phi ptr [ %.0.lcssa.i.i, %bb.m ], [ %i.at, %bb.p ] ; 3 uses
  switch i8 %3, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i [
    i8 32, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 10, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.f
  br i1 %.not.i.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  %.pre38 = load i8, ptr %i.at, align 1, !noalias !6
  br label %bb.n, !llvm.loop !3

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i: ; preds = %bb.o, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %scevgep.i.i.i, %bb.o ] ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i
  %storemerge.i = phi ptr [ %.0.lcssa.i.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i ], [ %i.av, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ] ; 4 uses
  %i.au = load i8, ptr %storemerge.i, align 1, !noalias !6
  switch i8 %i.au, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
    i8 10, label %bb.r
    i8 0, label %bb.r
    i8 12, label %bb.r
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.q, !llvm.loop !9

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.aw = ptrtoint ptr %storemerge.i to i64
  %i.ax = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 4 uses
  store ptr %i.i, ptr %2, align 8, !alias.scope !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !6
  store i64 %i.ay, ptr %i.b, align 8, !noalias !6
  %i.az = icmp ugt i64 %i.ay, 15
  br i1 %i.az, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  %i.ba = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !alias.scope !6
  %i.bb = load i64, ptr %i.b, align 8, !noalias !6
  store i64 %i.bb, ptr %i.i, align 8, !alias.scope !6
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.r
  %i.bc = phi ptr [ %i.ba, %.noexc.i.i ], [ %i.i, %bb.r ] ; 2 uses
  switch i64 %i.ay, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.bd = load i8, ptr %.0.lcssa.i.i.i, align 1
  store i8 %i.bd, ptr %i.bc, align 1
  br label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %.0.lcssa.i.i.i, i64 %i.ay, i1 false)
  br label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit

_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit:     ; preds = %._crit_edge.i.i.i, %bb.s, %bb.t
  %i.be = load i64, ptr %i.b, align 8, !noalias !6 ; 2 uses
  store i64 %i.be, ptr %i.j, align 8, !alias.scope !6
  %i.bf = load ptr, ptr %2, align 8, !alias.scope !6
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 0, ptr %i.bg, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !6
  %i.bh = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %.noexc unwind label %bb.w     ; 4 uses

.noexc:                                           ; preds = %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8
  %i.bk = load ptr, ptr %2, align 8               ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.i
  br i1 %i.bl, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %.noexc
  %i.bm = load i64, ptr %i.j, align 8             ; 3 uses
  %i.bn = icmp ult i64 %i.bm, 16
  call void @llvm.assume(i1 %i.bn)
  %i.bo = add nuw nsw i64 %i.bm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.bo, i1 false)
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.noexc
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bp = load i64, ptr %i.i, align 8
  store i64 %i.bp, ptr %i.bj, align 8
  %.pre.i.i.i = load i64, ptr %i.j, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.u
  %i.bq = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bm, %bb.u ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %i.bq, ptr %i.br, align 8
  store ptr %i.i, ptr %2, align 8
  store i64 0, ptr %i.j, align 8
  store i8 0, ptr %i.i, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %i.bs = load i64, ptr %i.k, align 8
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.k, align 8
  %i.bu = load ptr, ptr %2, align 8               ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.i
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.bw = load i64, ptr %i.i, align 8
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.x

bb.w:                                             ; preds = %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %2, align 8               ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.i
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.w
  %i.cb = load i64, ptr %i.i, align 8
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cc) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

bb.x:                                             ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi ptr [ %i.ap, %.thread ], [ %storemerge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cd = load i8, ptr %.3, align 1               ; 2 uses
  %.not = icmp eq i8 %i.cd, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !10

.loopexit:                                        ; preds = %bb.x, %bb.a, %bb.l
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #2

declare void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp19FindAABBTransformedEPK6aiMeshR10aiVector3tIfES5_RK12aiMatrix4x4tIfE(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(12) initializes((0, 12)) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3) local_unnamed_addr #3 {
bb.a:
  store <2 x float> splat (float f0x51BA43B7), ptr %1, align 4
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store float f0x51BA43B7, ptr %.sroa.539.0..sroa_idx, align 4
  store <2 x float> splat (float f0xD1BA43B7), ptr %2, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store float f0xD1BA43B7, ptr %.sroa.5.0..sroa_idx, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 44
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %indvars.iv ; 3 uses
  %i.j = load float, ptr %i.i, align 4            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.l = load float, ptr %i.k, align 4            ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load float, ptr %i.m, align 4            ; 2 uses
  %i.o = load float, ptr %i.d, align 4
  %i.p = load float, ptr %i.e, align 4
  %i.q = fmul float %i.l, %i.p
  %i.r = tail call float @llvm.fmuladd.f32(float %i.o, float %i.j, float %i.q)
  %i.s = load float, ptr %i.f, align 4
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.n, float %i.r)
  %i.u = load float, ptr %i.g, align 4
  %i.v = fadd float %i.u, %i.t                    ; 4 uses
  %i.w = load <8 x float>, ptr %3, align 4        ; 4 uses
  %i.x = insertelement <2 x float> poison, float %i.l, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %i.z = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.aa = fmul <2 x float> %i.y, %i.z
  %i.ab = shufflevector <8 x float> %i.w, <8 x float> poison, <2 x i32> <i32 0, i32 4>
end_hunk_0
