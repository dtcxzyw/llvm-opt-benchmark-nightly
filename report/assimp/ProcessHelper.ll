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
  %3 = ptrtoint ptr %i.f to i64                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %i.k = phi i8 [ %i.g, %.lr.ph ], [ %i.cb, %bb.x ]
  %.033 = phi ptr [ %i.c, %.lr.ph ], [ %.3, %bb.x ] ; 3 uses
  %4 = ptrtoint ptr %.033 to i64
  %i.l = sub i64 %3, %4
  %scevgep.i.i = getelementptr i8, ptr %.033, i64 %i.l ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.m = phi i8 [ %i.k, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %.033, %bb.b ], [ %i.n, %bb.e ] ; 3 uses
  switch i8 %i.m, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit [
    i8 32, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
    i8 10, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %.not.i.i = icmp eq ptr %.0.i.i, %i.f
  br i1 %.not.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.n, align 1
  br label %bb.c, !llvm.loop !3

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split: ; preds = %bb.d
  %.pr = load i8, ptr %scevgep.i.i, align 1
  br label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit: ; preds = %bb.c, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split
  %i.o = phi i8 [ %.pr, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split ], [ %i.m, %bb.c ] ; 2 uses
  %.0.lcssa.i.i = phi ptr [ %scevgep.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exitthread-pre-split ], [ %.0.i.i, %bb.c ] ; 4 uses
  %i.p = icmp eq i8 %i.o, 39
  br i1 %i.p, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1 ; 5 uses
  %.pr24 = load i8, ptr %i.q, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.r = phi i8 [ %i.t, %bb.h ], [ %.pr24, %bb.f ]
  %.1 = phi ptr [ %i.s, %bb.h ], [ %i.q, %bb.f ]  ; 3 uses
  %.not9 = icmp eq i8 %i.r, 39
  br i1 %.not9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.l, label %bb.g, !llvm.loop !5

bb.i:                                             ; preds = %bb.g
  %i.v = ptrtoint ptr %.1 to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 3 uses
  store ptr %i.aa, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.x, ptr %i.a, align 8
  %i.ab = icmp ugt i64 %i.x, 15
  br i1 %i.ab, label %.noexc.i.i14, label %._crit_edge.i.i.i13

.noexc.i.i14:                                     ; preds = %bb.i
  %i.ac = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc9.i unwind label %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i ; 2 uses

.noexc9.i:                                        ; preds = %.noexc.i.i14
  store ptr %i.ac, ptr %i.z, align 8
  %i.ad = load i64, ptr %i.a, align 8
  store i64 %i.ad, ptr %i.aa, align 8
  br label %._crit_edge.i.i.i13

._crit_edge.i.i.i13:                              ; preds = %.noexc9.i, %bb.i
  %i.ae = phi ptr [ %i.ac, %.noexc9.i ], [ %i.aa, %bb.i ] ; 2 uses
  switch i64 %i.x, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %.thread
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i13
  %i.af = load i8, ptr %i.q, align 1
  store i8 %i.af, ptr %i.ae, align 1
  br label %.thread

bb.k:                                             ; preds = %._crit_edge.i.i.i13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr nonnull align 1 %i.q, i64 %i.x, i1 false)
  br label %.thread

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev.exit11.i: ; preds = %.noexc.i.i14
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 48) #18
  br label %common.resume

.thread:                                          ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i13
  %i.ah = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = load ptr, ptr %i.z, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %i.al = load i64, ptr %i.j, align 8
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.j, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.1, i64 1
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.ao = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ao, ptr noundef nonnull @.str)
  br label %.loopexit

bb.m:                                             ; preds = %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %5 = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.ap = sub i64 %3, %5
  %scevgep.i.i.i = getelementptr i8, ptr %.0.lcssa.i.i, i64 %i.ap
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.aq = phi i8 [ %i.o, %bb.m ], [ %.pre38, %bb.p ]
  %.0.i.i.i = phi ptr [ %.0.lcssa.i.i, %bb.m ], [ %i.ar, %bb.p ] ; 3 uses
  switch i8 %i.aq, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i [
    i8 32, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
    i8 10, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, %i.f
  br i1 %.not.i.i.i, label %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  %.pre38 = load i8, ptr %i.ar, align 1, !noalias !6
  br label %bb.n, !llvm.loop !3

_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i: ; preds = %bb.o, %bb.n
  %.0.lcssa.i.i.i = phi ptr [ %.0.i.i.i, %bb.n ], [ %scevgep.i.i.i, %bb.o ] ; 4 uses
  br label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i
  %storemerge.i = phi ptr [ %.0.lcssa.i.i.i, %_ZN6Assimp20SkipSpacesAndLineEndIcEEbPPKT_S3_.exit.i ], [ %i.at, %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i ] ; 4 uses
  %i.as = load i8, ptr %storemerge.i, align 1, !noalias !6
  switch i8 %i.as, label %_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i [
    i8 32, label %bb.r
    i8 9, label %bb.r
    i8 13, label %bb.r
    i8 10, label %bb.r
    i8 0, label %bb.r
    i8 12, label %bb.r
  ]

_ZN6Assimp16IsSpaceOrNewLineIcEEbT_.exit.i:       ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.q, !llvm.loop !9

bb.r:                                             ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.au = ptrtoint ptr %storemerge.i to i64
  %i.av = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  store ptr %i.h, ptr %2, align 8, !alias.scope !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17, !noalias !6
  store i64 %i.aw, ptr %i.b, align 8, !noalias !6
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.r
  %i.ay = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.ay, ptr %2, align 8, !alias.scope !6
  %i.az = load i64, ptr %i.b, align 8, !noalias !6
  store i64 %i.az, ptr %i.h, align 8, !alias.scope !6
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %bb.r
  %i.ba = phi ptr [ %i.ay, %.noexc.i.i ], [ %i.h, %bb.r ] ; 2 uses
  switch i64 %i.aw, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  ]

bb.s:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %.0.lcssa.i.i.i, align 1
  store i8 %i.bb, ptr %i.ba, align 1
  br label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit

bb.t:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %.0.lcssa.i.i.i, i64 %i.aw, i1 false)
  br label %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit

_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit:     ; preds = %._crit_edge.i.i.i, %bb.s, %bb.t
  %i.bc = load i64, ptr %i.b, align 8, !noalias !6 ; 2 uses
  store i64 %i.bc, ptr %i.i, align 8, !alias.scope !6
  %i.bd = load ptr, ptr %2, align 8, !alias.scope !6
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 0, ptr %i.be, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17, !noalias !6
  %i.bf = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16
          to label %.noexc unwind label %bb.w     ; 4 uses

.noexc:                                           ; preds = %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 32 ; 3 uses
  store ptr %i.bh, ptr %i.bg, align 8
  %i.bi = load ptr, ptr %2, align 8               ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.h
  br i1 %i.bj, label %bb.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.u:                                             ; preds = %.noexc
  %i.bk = load i64, ptr %i.i, align 8             ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.bm, i1 false)
  br label %bb.v

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.noexc
  store ptr %i.bi, ptr %i.bg, align 8
  %i.bn = load i64, ptr %i.h, align 8
  store i64 %i.bn, ptr %i.bh, align 8
  %.pre.i.i.i = load i64, ptr %i.i, align 8
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.u
  %i.bo = phi i64 [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.bk, %bb.u ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %i.bo, ptr %i.bp, align 8
  store ptr %i.h, ptr %2, align 8
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.h, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %1) #17
  %i.bq = load i64, ptr %i.j, align 8
  %i.br = add i64 %i.bq, 1
  store i64 %i.br, ptr %i.j, align 8
  %i.bs = load ptr, ptr %2, align 8               ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.h
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.bu = load i64, ptr %i.h, align 8
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %bb.x

bb.w:                                             ; preds = %_ZN6Assimp12GetNextTokenB5cxx11ERPKcS1_.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %2, align 8               ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.h
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.w
  %i.bz = load i64, ptr %i.h, align 8
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %common.resume

bb.x:                                             ; preds = %.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.3 = phi ptr [ %i.an, %.thread ], [ %storemerge.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.cb = load i8, ptr %.3, align 1               ; 2 uses
  %.not = icmp eq i8 %i.cb, 0
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
end_hunk_0
begin_hunk_1_@_ZN6Assimp20GetMeshVFormatUniqueEPK6aiMesh:_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.2: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp eq i32 %i.x, 3
  %i.z = select i1 %i.y, i32 131584, i32 512
  %.3.1 = or disjoint i32 %i.z, %.3               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not.i20.not.2 = icmp eq ptr %i.ab, null
  br i1 %.not.i20.not.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.3

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.3: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.2
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = icmp eq i32 %i.ad, 3
  %i.af = select i1 %i.ae, i32 263168, i32 1024
  %.3.2 = or i32 %i.af, %.3.1                     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ah = load ptr, ptr %i.ag, align 8
  %.not.i20.not.3 = icmp eq ptr %i.ah, null
  br i1 %.not.i20.not.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.4

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.4: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.3
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = icmp eq i32 %i.aj, 3
  %i.al = select i1 %i.ak, i32 526336, i32 2048
  %.3.3 = or i32 %i.al, %.3.2                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.an = load ptr, ptr %i.am, align 8
  %.not.i20.not.4 = icmp eq ptr %i.an, null
  br i1 %.not.i20.not.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.5

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.5: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = icmp eq i32 %i.ap, 3
  %i.ar = select i1 %i.aq, i32 1052672, i32 4096
  %.3.4 = or i32 %i.ar, %.3.3                     ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.at = load ptr, ptr %i.as, align 8
  %.not.i20.not.5 = icmp eq ptr %i.at, null
  br i1 %.not.i20.not.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.6

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.6: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.5
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = icmp eq i32 %i.av, 3
  %i.ax = select i1 %i.aw, i32 2105344, i32 8192
  %.3.5 = or i32 %i.ax, %.3.4                     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.az = load ptr, ptr %i.ay, align 8
  %.not.i20.not.6 = icmp eq ptr %i.az, null
  br i1 %.not.i20.not.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.7

_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.7: ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.6
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.bb, 3
  %i.bd = select i1 %i.bc, i32 4210688, i32 16384
  %.3.6 = or i32 %i.bd, %.3.5                     ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bf = load ptr, ptr %i.be, align 8
  %.not.i20.not.7 = icmp eq ptr %i.bf, null
  br i1 %.not.i20.not.7, label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, label %bb.a

bb.a:                                             ; preds = %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread.split.7
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.bh, 3
  %i.bj = select i1 %i.bi, i32 8421376, i32 32768
  %.3.7 = or i32 %i.bj, %.3.6
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader

_ZNK6aiMesh16HasTextureCoordsEj.exit:             ; preds = %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader
  %i.bk = or i32 %.us-phi.ph, 16777216
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8
  %.not.i21.not.1 = icmp eq ptr %i.bm, null
  br i1 %.not.i21.not.1, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.1

_ZNK6aiMesh16HasTextureCoordsEj.exit.1:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit
  %i.bn = or i32 %.us-phi.ph, 50331648
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  %.not.i21.not.2 = icmp eq ptr %i.bp, null
  br i1 %.not.i21.not.2, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.2

_ZNK6aiMesh16HasTextureCoordsEj.exit.2:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.1
  %i.bq = or i32 %.us-phi.ph, 117440512
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %.not.i21.not.3 = icmp eq ptr %i.bs, null
  br i1 %.not.i21.not.3, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.3

_ZNK6aiMesh16HasTextureCoordsEj.exit.3:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.2
  %i.bt = or i32 %.us-phi.ph, 251658240
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not.i21.not.4 = icmp eq ptr %i.bv, null
  br i1 %.not.i21.not.4, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.4

_ZNK6aiMesh16HasTextureCoordsEj.exit.4:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.3
  %i.bw = or i32 %.us-phi.ph, 520093696
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.by = load ptr, ptr %i.bx, align 8
  %.not.i21.not.5 = icmp eq ptr %i.by, null
  br i1 %.not.i21.not.5, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.5

_ZNK6aiMesh16HasTextureCoordsEj.exit.5:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.4
  %i.bz = or i32 %.us-phi.ph, 1056964608
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not.i21.not.6 = icmp eq ptr %i.cb, null
  br i1 %.not.i21.not.6, label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread, label %_ZNK6aiMesh16HasTextureCoordsEj.exit.6

_ZNK6aiMesh16HasTextureCoordsEj.exit.6:           ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = load ptr, ptr %i.cc, align 8
  %.not.i21.not.7 = icmp eq ptr %i.cd, null
  %spec.select36.v = select i1 %.not.i21.not.7, i32 2130706432, i32 -16777216
  %spec.select36 = or i32 %.us-phi.ph, %spec.select36.v
  br label %_ZNK6aiMesh15HasVertexColorsEj.exit.thread

_ZNK6aiMesh15HasVertexColorsEj.exit.thread:       ; preds = %_ZNK6aiMesh16HasTextureCoordsEj.exit.6, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader, %_ZNK6aiMesh16HasTextureCoordsEj.exit, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread
  %.us-phi31 = phi i32 [ %i.l, %_ZNK6aiMesh24HasTangentsAndBitangentsEv.exit.thread ], [ %.us-phi.ph, %_ZNK6aiMesh15HasVertexColorsEj.exit.preheader ], [ %i.bt, %_ZNK6aiMesh16HasTextureCoordsEj.exit.3 ], [ %i.bk, %_ZNK6aiMesh16HasTextureCoordsEj.exit ], [ %spec.select36, %_ZNK6aiMesh16HasTextureCoordsEj.exit.6 ], [ %i.bn, %_ZNK6aiMesh16HasTextureCoordsEj.exit.1 ], [ %i.bw, %_ZNK6aiMesh16HasTextureCoordsEj.exit.4 ], [ %i.bq, %_ZNK6aiMesh16HasTextureCoordsEj.exit.2 ], [ %i.bz, %_ZNK6aiMesh16HasTextureCoordsEj.exit.5 ]
  ret i32 %.us-phi31
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_ZN6Assimp28ComputeVertexBoneWeightTableEPK6aiMesh(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4
  %.fr39 = freeze i32 %i.b                        ; 2 uses
  %.not19 = icmp eq i32 %.fr39, 0
  br i1 %.not19, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %.not20 = icmp eq i32 %i.d, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.c
  %i.e = zext i32 %.fr39 to i64                   ; 2 uses
  %i.f = mul nuw nsw i64 %i.e, 24                 ; 2 uses
  %i.g = add nuw nsw i64 %i.f, 8
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #16 ; 2 uses
  store i64 %i.e, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = add nsw i64 %i.f, -24                    ; 2 uses
  %i.k = urem i64 %i.j, 24
  %i.l = sub nuw nsw i64 %i.j, %i.k
  %i.m = add nuw nsw i64 %i.l, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, i8 0, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph25, %._crit_edge
  %i.o = phi i32 [ %i.d, %.lr.ph25 ], [ %i.x, %._crit_edge ]
  %indvars.iv29 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next30, %._crit_edge ] ; 4 uses
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv29
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1028 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %.not27 = icmp eq i32 %i.t, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1048
  %i.v = trunc nuw i64 %indvars.iv29 to i32
  %i.w = trunc nuw i64 %indvars.iv29 to i32
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %.pre = load i32, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.x = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.d ] ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next30, %i.y
  br i1 %i.z, label %bb.d, label %.loopexit, !llvm.loop !15

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit ] ; 2 uses
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.v, ptr %i.ah, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.al = load float, ptr %i.af, align 4
  store float %i.al, ptr %i.ak, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %i.ag, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ae, align 8            ; 7 uses
  %i.ao = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.aq = sub i64 %i.ao, %i.ap                    ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.h, label %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #16 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store i32 %i.w, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.af, align 4
  store float %i.bb, ptr %i.ba, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.an, %i.ah
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bc = ptrtoaddr ptr %i.ay to i64
  %i.bd = sub i64 %i.ao, %i.ap
  %i.be = add i64 %i.bd, -8                       ; 2 uses
  %i.bf = lshr i64 %i.be, 3
  %i.bg = add nuw nsw i64 %i.bf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.be, 24
  %i.bh = sub i64 %i.ap, %i.bc
  %diff.check = icmp ugt i64 %i.bh, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader43, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bg, 4611686018427387900     ; 3 uses
  %i.bi = shl i64 %n.vec, 3                       ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ay, i64 %i.bi  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.an, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bl = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %i.bl ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.an, i64 %i.bl ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.bm = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep40, align 4, !alias.scope !19, !noalias !16
  %wide.load41 = load <2 x i64>, ptr %i.bm, align 4, !alias.scope !19, !noalias !16
  %i.bn = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !16, !noalias !19
  store <2 x i64> %wide.load41, ptr %i.bn, align 4, !alias.scope !16, !noalias !19
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bg, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i.preheader43

.lr.ph.i.i.i.i.i.preheader43:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ay, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader43, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader43 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.bp = load i64, ptr %.0911.i.i.i.i.i, align 4, !alias.scope !19, !noalias !16
  store i64 %i.bp, ptr %.012.i.i.i.i.i, align 4, !alias.scope !16, !noalias !19
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bq, %i.ah
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !24

_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ay, %_ZNKSt6vectorISt4pairIjfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bj, %middle.block ], [ %i.br, %.lr.ph.i.i.i.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i34.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.aq) #18
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorISt4pairIjfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  store ptr %i.ay, ptr %i.ae, align 8
  store ptr %i.bs, ptr %i.ag, align 8
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  store ptr %i.bt, ptr %i.ai, align 8
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairIjfESaIS1_EE12emplace_backIJRjRKfEEERS1_DpOT_.exit: ; preds = %bb.f, %_ZNSt6vectorISt4pairIjfESaIS1_EE17_M_realloc_insertIJRjRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bu = load i32, ptr %i.s, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next, %i.bv
  br i1 %i.bw, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !25

.loopexit:                                        ; preds = %._crit_edge, %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.b ], [ %i.i, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef nonnull ptr @_ZN6Assimp19MappingTypeToStringE16aiTextureMapping(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %0, 6
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp19MappingTypeToStringE16aiTextureMapping, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.7, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull ptr @_ZN6Assimp11MakeSubmeshEPK6aiMeshRKSt6vectorIjSaIjEEj(ptr nofree noundef readonly %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #16 ; 51 uses
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 224 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1272
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1312
  store ptr null, ptr %i.g, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.d, i8 0, i64 204, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.e, i8 0, i64 1044, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.f, i8 0, i64 36, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.i = load i32, ptr %i.h, align 4
  %.fr323 = freeze i32 %i.i                       ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.fr323, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %.noexc

.noexc:                                           ; preds = %bb.a
  %i.j = zext i32 %.fr323 to i64                  ; 2 uses
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #16 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.l, i8 -1, i64 %i.k, i1 false)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.j
  %i.n = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc, %bb.a
  %.sroa.17.0 = phi i64 [ 0, %bb.a ], [ %i.n, %.noexc ] ; 2 uses
  %.sroa.0252.0 = phi ptr [ null, %bb.a ], [ %i.l, %.noexc ] ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8                ; 3 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 2                   ; 5 uses
  %.not321 = icmp eq ptr %i.p, %i.q               ; 2 uses
  br i1 %.not321, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.c

._crit_edge286:                                   ; preds = %._crit_edge, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %.0174.lcssa = phi i64 [ 0, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ], [ %.1175.lcssa, %._crit_edge ] ; 5 uses
  %i.x = icmp eq ptr %i.a, %0
  br i1 %i.x, label %_ZN8aiStringaSERKS_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge286
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  %i.aa = load i32, ptr %i.y, align 4
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.aa, i32 1023) ; 2 uses
  store i32 %spec.select.i, ptr %i.z, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 240 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ad = zext nneg i32 %spec.select.i to i64     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr nonnull align 4 %i.ac, i64 %i.ad, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  store i8 0, ptr %i.ae, align 1
  br label %_ZN8aiStringaSERKS_.exit

_ZN8aiStringaSERKS_.exit:                         ; preds = %._crit_edge286, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i32 %i.ag, ptr %i.ah, align 8
  %i.ai = load i32, ptr %0, align 8
  store i32 %i.ai, ptr %i.a, align 8
  %i.aj = trunc nuw i64 %i.u to i32
  store i32 %i.aj, ptr %i.c, align 8
  %i.ak = trunc i64 %.0174.lcssa to i32
  store i32 %i.ak, ptr %i.b, align 4
  %i.al = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.0174.lcssa, i64 12) ; 2 uses
  %i.am = extractvalue { i64, i1 } %i.al, 1
  %i.an = extractvalue { i64, i1 } %i.al, 0       ; 6 uses
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an      ; 12 uses
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #16
          to label %bb.g unwind label %bb.j       ; 3 uses

bb.c:                                             ; preds = %.lr.ph285, %._crit_edge
  %indvars.iv335 = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next336, %._crit_edge ] ; 2 uses
  %.0174284 = phi i64 [ 0, %.lr.ph285 ], [ %.1175.lcssa, %._crit_edge ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv335
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.as ; 3 uses
end_hunk_1
