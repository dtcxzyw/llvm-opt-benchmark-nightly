inline.NumInlined: 539
inline.NumDeleted: 336
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_Z11UpdateNodesRKSt6vectorIjSaIjEEP6aiNode:bb.a
  %.05065 = phi ptr [ %.252.3, %bb.m ], [ %.05065.ph, %.lr.ph.preheader ] ; 3 uses
  %i.v = load ptr, ptr %i.c, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv80
  %i.x = load i32, ptr %i.w, align 4
  %i.y = shl i32 %i.x, 2
  %i.z = zext i32 %i.y to i64                     ; 4 uses
  %i.aa = load ptr, ptr %0, align 8               ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %.not56 = icmp eq i32 %i.ac, -1
  br i1 %.not56, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.05065, i64 4
  store i32 %i.ac, ptr %.05065, align 4
  %.pre = load ptr, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.ae = phi ptr [ %.pre, %bb.f ], [ %i.aa, %.lr.ph ] ; 2 uses
  %.252 = phi ptr [ %i.ad, %bb.f ], [ %.05065, %.lr.ph ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not56.1 = icmp eq i32 %i.ah, -1
  br i1 %.not56.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.252, i64 4
  store i32 %i.ah, ptr %.252, align 4
  %.pre86 = load ptr, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = phi ptr [ %.pre86, %bb.h ], [ %i.ae, %bb.g ] ; 2 uses
  %.252.1 = phi ptr [ %i.ai, %bb.h ], [ %.252, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.z
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4            ; 2 uses
  %.not56.2 = icmp eq i32 %i.am, -1
  br i1 %.not56.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %.252.1, i64 4
  store i32 %i.am, ptr %.252.1, align 4
  %.pre87 = load ptr, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ao = phi ptr [ %.pre87, %bb.j ], [ %i.aj, %bb.i ]
  %.252.2 = phi ptr [ %i.an, %bb.j ], [ %.252.1, %bb.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.z
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %.not56.3 = icmp eq i32 %i.ar, -1
  br i1 %.not56.3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %.252.2, i64 4
  store i32 %i.ar, ptr %.252.2, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.252.3 = phi ptr [ %i.as, %bb.l ], [ %.252.2, %bb.k ] ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.at = load i32, ptr %i.a, align 8             ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next81, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !5

bb.n:                                             ; preds = %._crit_edge
  %i.aw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %_ZL17clearMeshesInNodeP6aiNode.exit58, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZdaPv(ptr noundef nonnull %i.aw) #20
  br label %_ZL17clearMeshesInNodeP6aiNode.exit58

_ZL17clearMeshesInNodeP6aiNode.exit58:            ; preds = %bb.o, %bb.n, %._crit_edge
  store i32 %op.rdx, ptr %i.a, align 8
  %i.ay = zext i32 %op.rdx to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [4 x i8], ptr %.252.3, i64 %i.az
  store ptr %i.ba, ptr %i.c, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZL17clearMeshesInNodeP6aiNode.exit58, %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %.not72 = icmp eq i32 %i.bc, 0
  br i1 %.not72, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 1112
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph70, %bb.q
  %indvars.iv83 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next84, %bb.q ] ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv83
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void @_Z11UpdateNodesRKSt6vectorIjSaIjEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %i.bg)
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bh = load i32, ptr %i.bb, align 8
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next84, %i.bi
  br i1 %i.bj, label %bb.q, label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %bb.q, %bb.p, %.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp18SortByPTypeProcess7ExecuteEP7aiScene(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr nofree noundef captures(none) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 15 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca [4 x i32], align 16               ; 7 uses
  %i.c = alloca [1024 x i8], align 16             ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %i.g = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv() ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str.1)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str.2)
  %i.h = load i32, ptr %i.d, align 8              ; 3 uses
  %.not574.a = icmp eq i32 %i.h, 0
  br i1 %.not574.a, label %._crit_edge996.thread, label %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit

._crit_edge996.thread:                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.is

_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit:     ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 4                  ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #21 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.m = shl i32 %i.h, 2                          ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %.loopexit612, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 3 uses
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #21
          to label %.loopexit612.thread unwind label %.thread1422 ; 5 uses

.loopexit612.thread:                              ; preds = %bb.d
  store ptr %i.p, ptr %2, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.r, ptr %i.s, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 -1, i64 %i.o, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store ptr %i.t, ptr %i.q, align 8
  br label %.lr.ph995

.loopexit612:                                     ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE7reserveEm.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %.lr.ph995

.lr.ph995:                                        ; preds = %.loopexit612, %.loopexit612.thread
  %i.u = phi ptr [ %i.p, %.loopexit612.thread ], [ null, %.loopexit612 ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.e

._crit_edge996:                                   ; preds = %bb.ir
  %i.y = icmp eq ptr %.sroa.0533.5, %.sroa.20.5
  br i1 %i.y, label %bb.is, label %bb.iw

.thread1422:                                      ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.jq

bb.e:                                             ; preds = %.lr.ph995, %bb.ir
  %indvars.iv1290 = phi i64 [ 0, %.lr.ph995 ], [ %indvars.iv.next1291, %bb.ir ] ; 4 uses
  %.sroa.0.0993 = phi i32 [ 0, %.lr.ph995 ], [ %spec.select434, %bb.ir ]
  %.sroa.7.0992 = phi i32 [ 0, %.lr.ph995 ], [ %.sroa.7.1, %bb.ir ]
  %.sroa.10.0991 = phi i32 [ 0, %.lr.ph995 ], [ %.sroa.10.1, %bb.ir ]
  %.sroa.13.0990 = phi i32 [ 0, %.lr.ph995 ], [ %.sroa.13.1, %bb.ir ]
  %.0291989 = phi i1 [ false, %.lr.ph995 ], [ %.2293, %bb.ir ]
  %.sroa.0533.0987 = phi ptr [ %i.k, %.lr.ph995 ], [ %.sroa.0533.5, %bb.ir ] ; 17 uses
  %.sroa.20.0986 = phi ptr [ %i.k, %.lr.ph995 ], [ %.sroa.20.5, %bb.ir ] ; 11 uses
  %.sroa.37.0985 = phi ptr [ %i.l, %.lr.ph995 ], [ %.sroa.37.5, %bb.ir ] ; 9 uses
  %.sroa.0527.0984 = phi ptr [ %i.u, %.lr.ph995 ], [ %.sroa.0527.3, %bb.ir ] ; 4 uses
  %i.aa = load ptr, ptr %i.v, align 8
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv1290
  %i.ac = load ptr, ptr %i.ab, align 8            ; 48 uses
  %i.ad = load i32, ptr %i.ac, align 8            ; 6 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.preheader, label %bb.k

.preheader:                                       ; preds = %bb.e
  %.not1017 = icmp eq ptr %.sroa.20.0986, %.sroa.0533.0987
  br i1 %.not1017, label %._crit_edge1007, label %.lr.ph1006.preheader

.lr.ph1006.preheader:                             ; preds = %.preheader
  %i.af = ptrtoint ptr %.sroa.20.0986 to i64
  %i.ag = ptrtoint ptr %.sroa.0533.0987 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 3
  br label %.lr.ph1006

._crit_edge1007:                                  ; preds = %bb.g, %.preheader
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  store ptr %i.ak, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA35_KcPS1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(35) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.h unwind label %bb.j

.lr.ph1006:                                       ; preds = %.lr.ph1006.preheader, %bb.g
  %.03041005 = phi i64 [ %i.ao, %bb.g ], [ 0, %.lr.ph1006.preheader ] ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0533.0987, i64 %.03041005
  %i.am = load ptr, ptr %i.al, align 8            ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph1006
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.am) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 1320) #20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph1006, %bb.f
  %i.ao = add nuw i64 %.03041005, 1               ; 2 uses
  %exitcond1292.not = icmp eq i64 %i.ao, %i.ai
  br i1 %exitcond1292.not, label %._crit_edge1007, label %.lr.ph1006, !llvm.loop !7

bb.h:                                             ; preds = %._crit_edge1007
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.jr unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.jn

bb.j:                                             ; preds = %._crit_edge1007
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @__cxa_free_exception(ptr nonnull %i.aj) #19
  br label %bb.jn

bb.k:                                             ; preds = %bb.e
  %spec.select = and i32 %i.ad, 1                 ; 2 uses
  %spec.select434 = add i32 %spec.select, %.sroa.0.0993 ; 2 uses
  %3 = lshr i32 %i.ad, 1
  %4 = and i32 %3, 1                              ; 2 uses
  %.1333 = add nuw nsw i32 %4, %spec.select
  %.sroa.7.1 = add i32 %4, %.sroa.7.0992          ; 2 uses
  %i.ar = lshr i32 %i.ad, 2
  %i.as = and i32 %i.ar, 1                        ; 2 uses
  %.2334 = add nuw nsw i32 %.1333, %i.as
  %.sroa.10.1 = add i32 %i.as, %.sroa.10.0991     ; 2 uses
  %i.at = lshr i32 %i.ad, 3
  %i.au = and i32 %i.at, 1                        ; 2 uses
  %.3335 = add nuw nsw i32 %.2334, %i.au          ; 2 uses
  %.sroa.13.1 = add i32 %i.au, %.sroa.13.0990     ; 2 uses
  %i.av = icmp eq i32 %.3335, 1
  br i1 %i.av, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.x, align 8
  %i.ax = and i32 %i.aw, %i.ad
  %.not426 = icmp eq i32 %i.ax, 0
  br i1 %.not426, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ay = ptrtoint ptr %.sroa.20.0986 to i64
  %i.az = ptrtoint ptr %.sroa.0533.0987 to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 6 uses
  %i.bb = ashr exact i64 %i.ba, 3                 ; 4 uses
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %.sroa.0527.0984, align 4
  %.not.i = icmp eq ptr %.sroa.20.0986, %.sroa.37.0985
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.ac, ptr %.sroa.20.0986, align 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = icmp eq i64 %i.ba, 9223372036854775800
  br i1 %i.bd, label %bb.p, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #22
          to label %.noexc438 unwind label %.loopexit.split-lp608

.noexc438:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 1)
  %i.be = add nsw i64 %.sroa.speculated.i.i.i, %i.bb ; 2 uses
  %i.bf = icmp ult i64 %i.be, %i.bb
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.be, i64 1152921504606846975)
  %i.bh = select i1 %i.bf, i64 1152921504606846975, i64 %i.bg ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bi = shl nuw nsw i64 %i.bh, 3
  %i.bj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bi) #21
          to label %.noexc439.a unwind label %.loopexit607 ; 4 uses

.noexc439.a:                                      ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 %i.ba ; 2 uses
  store ptr %i.ac, ptr %i.bk, align 8
  %i.bl = icmp sgt i64 %i.ba, 0
  br i1 %i.bl, label %bb.q, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.q:                                             ; preds = %.noexc439.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bj, ptr align 8 %.sroa.0533.0987, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.q, %.noexc439.a
  %.not.i17.i.i = icmp eq ptr %.sroa.0533.0987, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.0987, i64 noundef %i.ba) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bh
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit

_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.n
  %.sroa.37.12 = phi ptr [ %i.bm, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.37.0985, %bb.n ]
  %.pn577 = phi ptr [ %i.bk, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.20.0986, %bb.n ]
  %.sroa.0533.12 = phi ptr [ %i.bj, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0533.0987, %bb.n ]
  %.sroa.20.7 = getelementptr inbounds nuw i8, ptr %.pn577, i64 8
  br label %bb.t

.loopexit607:                                     ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit609 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

.loopexit.split-lp608:                            ; preds = %bb.p
  %lpad.loopexit.split-lp610 = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.s:                                             ; preds = %bb.l
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.ac) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 1320) #20
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit
  %.sroa.37.1 = phi ptr [ %.sroa.37.12, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.37.0985, %bb.s ]
  %.sroa.20.1 = phi ptr [ %.sroa.20.7, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.20.0986, %bb.s ]
  %.sroa.0533.1 = phi ptr [ %.sroa.0533.12, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ %.sroa.0533.0987, %bb.s ]
  %.1292 = phi i1 [ %.0291989, %_ZNSt6vectorIP6aiMeshSaIS1_EE12emplace_backIJRKS1_EEERS1_DpOT_.exit ], [ true, %bb.s ]
  %i.bn = load ptr, ptr %i.v, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv1290
  store ptr null, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0527.0984, i64 16
  br label %bb.ir

bb.u:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ac, i64 208 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.iq, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8            ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %.idx1009 = shl nuw nsw i64 %i.bv, 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx1009
  %.not381919 = icmp eq i32 %i.bu, 0
  br i1 %.not381919, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.v, %bb.aa
  %.0336921 = phi i32 [ %.1337566, %bb.aa ], [ 0, %bb.v ] ; 2 uses
  %.0338920 = phi ptr [ %i.ck, %bb.aa ], [ %i.br, %bb.v ] ; 2 uses
  %i.bx = load i32, ptr %.0338920, align 8        ; 4 uses
  %i.by = add i32 %i.bx, -1
  %or.cond = icmp ult i32 %i.by, 3
  br i1 %or.cond, label %.thread564, label %bb.w

.thread564:                                       ; preds = %.lr.ph
  %i.bz = zext nneg i32 %i.bx to i64
  %i.ca = getelementptr [4 x i8], ptr %i.b, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4     ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = add i32 %i.cc, 1
  store i32 %i.cd, ptr %i.cb, align 4
  br label %bb.aa

bb.w:                                             ; preds = %.lr.ph
  %i.ce = load i32, ptr %i.w, align 4
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.w, align 4
  %i.cg = add i32 %i.bx, %.0336921                ; 2 uses
  %i.ch = icmp eq i32 %i.bx, 0
  br i1 %i.ch, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ci = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull @.str.4)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.aa:                                            ; preds = %.thread564, %bb.w, %bb.y
  %.1337566 = phi i32 [ %.0336921, %.thread564 ], [ %i.cg, %bb.w ], [ %i.cg, %bb.y ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0338920, i64 16 ; 2 uses
  %.not381 = icmp eq ptr %i.ck, %i.bw
  br i1 %.not381, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.aa, %bb.v
  %.0336.lcssa = phi i32 [ 0, %bb.v ], [ %.1337566, %bb.aa ]
  %i.cl = invoke noundef ptr @_ZN6Assimp28ComputeVertexBoneWeightTableEPK6aiMesh(ptr noundef %i.ac)
          to label %.preheader601 unwind label %bb.ac ; 5 uses

.preheader601:                                    ; preds = %._crit_edge
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ac, i64 236
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 240
  %i.co = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ac, i64 112 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 176
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ac, i64 1264 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ac, i64 1272 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 216 ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ac, i64 224 ; 2 uses
  %i.cz = add nsw i32 %.3335, -1
  %.not392 = icmp eq ptr %i.cl, null              ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %i.ac, i64 120 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ac, i64 180
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ac, i64 128 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ac, i64 188
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ac, i64 144 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.ac, i64 192
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ac, i64 152 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ac, i64 196
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ac, i64 168 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.ac, i64 204
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp18SortByPTypeProcess7ExecuteEP7aiScene:bb.a
bb.ii:                                            ; preds = %.loopexit579, %.loopexit.split-lp, %bb.hz, %bb.if, %bb.ey
  %.0.lcssa.i.i.i.i.i1421 = phi ptr [ %scevgep.i.i.i.i.i, %bb.ey ], [ %.0.lcssa.i.i.i.i.i1420.a, %bb.hz ], [ %.0.lcssa.i.i.i.i.i1420.a, %bb.if ], [ %.0.lcssa.i.i.i.i.i1420.a, %.loopexit579 ], [ %.0.lcssa.i.i.i.i.i1420.a, %.loopexit.split-lp ] ; 2 uses
  %.sink.i1419 = phi i64 [ %i.xw, %bb.ey ], [ %.sink.i1418.a, %bb.hz ], [ %.sink.i1418.a, %bb.if ], [ %.sink.i1418.a, %.loopexit579 ], [ %.sink.i1418.a, %.loopexit.split-lp ]
  %.sroa.0484.01417 = phi ptr [ %i.ph, %bb.ey ], [ %.sroa.0484.01416, %bb.hz ], [ %.sroa.0484.01416, %bb.if ], [ %.sroa.0484.01416, %.loopexit579 ], [ %.sroa.0484.01416, %.loopexit.split-lp ] ; 5 uses
  %.pn405 = phi { ptr, i32 } [ %i.zv, %bb.ey ], [ %i.alb, %bb.hz ], [ %i.amv, %bb.if ], [ %lpad.loopexit, %.loopexit579 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not4.i.i.i457 = icmp eq ptr %.sroa.0484.01417, %.0.lcssa.i.i.i.i.i1421
  br i1 %.not4.i.i.i457, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465, label %.lr.ph.i.i.i458

.lr.ph.i.i.i458:                                  ; preds = %bb.ii, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461
  %.05.i.i.i459 = phi ptr [ %i.anm, %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461 ], [ %.sroa.0484.01417, %bb.ii ] ; 3 uses
  %i.ang = load ptr, ptr %.05.i.i.i459, align 8   ; 3 uses
  %.not.i.i.i.i.i.i.i460 = icmp eq ptr %i.ang, null
  br i1 %.not.i.i.i.i.i.i.i460, label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461, label %bb.ij

bb.ij:                                            ; preds = %.lr.ph.i.i.i458
  %i.anh = getelementptr inbounds nuw i8, ptr %.05.i.i.i459, i64 16
  %i.ani = load ptr, ptr %i.anh, align 8
  %i.anj = ptrtoint ptr %i.ani to i64
  %i.ank = ptrtoint ptr %i.ang to i64
  %i.anl = sub i64 %i.anj, %i.ank
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ang, i64 noundef %i.anl) #20
  br label %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461

_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461: ; preds = %bb.ij, %.lr.ph.i.i.i458
  %i.anm = getelementptr inbounds nuw i8, ptr %.05.i.i.i459, i64 24 ; 2 uses
  %.not.i.i.i462 = icmp eq ptr %i.anm, %.0.lcssa.i.i.i.i.i1421
  br i1 %.not.i.i.i462, label %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465, label %.lr.ph.i.i.i458, !llvm.loop !35

_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465: ; preds = %_ZSt8_DestroyISt6vectorI14aiVertexWeightSaIS1_EEEvPT_.exit.i.i.i461, %bb.ii
  %.not.i.i1.i466 = icmp eq ptr %.sroa.0484.01417, null
  br i1 %.not.i.i1.i466, label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467, label %bb.ik

bb.ik:                                            ; preds = %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465
  %i.ann = ptrtoint ptr %.sroa.0484.01417 to i64
  %i.ano = sub i64 %.sink.i1419, %i.ann
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0484.01417, i64 noundef %i.ano) #20
  br label %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467

bb.il:                                            ; preds = %bb.ab
  %i.anp = getelementptr inbounds i8, ptr %i.cl, i64 -8 ; 2 uses
  %i.anq = load i64, ptr %i.anp, align 8          ; 2 uses
  %.idx = mul i64 %i.anq, 24                      ; 2 uses
  %i.anr = icmp eq i64 %i.anq, 0
  br i1 %i.anr, label %.loopexit600, label %.preheader599.preheader

.preheader599.preheader:                          ; preds = %bb.il
  %i.ans = getelementptr inbounds i8, ptr %i.cl, i64 %.idx
  br label %.preheader599

.preheader599:                                    ; preds = %.preheader599.preheader, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit
  %i.ant = phi ptr [ %i.anu, %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit ], [ %i.ans, %.preheader599.preheader ] ; 2 uses
  %i.anu = getelementptr inbounds i8, ptr %i.ant, i64 -24 ; 3 uses
  %i.anv = load ptr, ptr %i.anu, align 8          ; 3 uses
  %.not.i.i.i468.a = icmp eq ptr %i.anv, null
  br i1 %.not.i.i.i468.a, label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, label %bb.im

bb.im:                                            ; preds = %.preheader599
  %i.anw = getelementptr inbounds i8, ptr %i.ant, i64 -8
  %i.anx = load ptr, ptr %i.anw, align 8
  %i.any = ptrtoint ptr %i.anx to i64
  %i.anz = ptrtoint ptr %i.anv to i64
  %i.aoa = sub i64 %i.any, %i.anz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.anv, i64 noundef %i.aoa) #20
  br label %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit:        ; preds = %.preheader599, %bb.im
  %i.aob = icmp eq ptr %i.anu, %i.cl
  br i1 %i.aob, label %.loopexit600, label %.preheader599

.loopexit600:                                     ; preds = %_ZNSt6vectorISt4pairIjfESaIS1_EED2Ev.exit, %bb.il
  %i.aoc = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.anp, i64 noundef %i.aoc) #20
  br label %bb.in

bb.in:                                            ; preds = %.loopexit600, %bb.ab
  %i.aod = icmp eq ptr %i.ac, null
  br i1 %i.aod, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.ac) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 1320) #20
  br label %bb.ip

bb.ip:                                            ; preds = %bb.io, %bb.in
  %i.aoe = load ptr, ptr %i.v, align 8
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.aoe, i64 %indvars.iv1290
  store ptr null, ptr %i.aof, align 8
  br label %bb.iq

bb.iq:                                            ; preds = %bb.u, %bb.ip
  %.sroa.0527.2 = phi ptr [ %.sroa.0527.0984, %bb.u ], [ %i.anf, %bb.ip ]
  %.sroa.37.4 = phi ptr [ %.sroa.37.0985, %bb.u ], [ %.sroa.37.3, %bb.ip ]
  %.sroa.20.4 = phi ptr [ %.sroa.20.0986, %bb.u ], [ %.sroa.20.3, %bb.ip ]
  %.sroa.0533.4 = phi ptr [ %.sroa.0533.0987, %bb.u ], [ %.sroa.0533.3, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.t
  %.sroa.0527.3 = phi ptr [ %i.bp, %bb.t ], [ %.sroa.0527.2, %bb.iq ]
  %.sroa.37.5 = phi ptr [ %.sroa.37.1, %bb.t ], [ %.sroa.37.4, %bb.iq ] ; 7 uses
  %.sroa.20.5 = phi ptr [ %.sroa.20.1, %bb.t ], [ %.sroa.20.4, %bb.iq ] ; 3 uses
  %.sroa.0533.5 = phi ptr [ %.sroa.0533.1, %bb.t ], [ %.sroa.0533.4, %bb.iq ] ; 11 uses
  %.2293 = phi i1 [ %.1292, %bb.t ], [ true, %bb.iq ] ; 2 uses
  %indvars.iv.next1291 = add nuw nsw i64 %indvars.iv1290, 1 ; 2 uses
  %i.aog = load i32, ptr %i.d, align 8            ; 2 uses
  %i.aoh = zext i32 %i.aog to i64
  %i.aoi = icmp samesign ult i64 %indvars.iv.next1291, %i.aoh
  br i1 %i.aoi, label %bb.e, label %._crit_edge996, !llvm.loop !37

_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467: ; preds = %bb.au, %bb.bf, %bb.cd, %bb.eh, %bb.dq, %bb.dh, %bb.ik, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465, %bb.ew, %.loopexit602, %.loopexit.split-lp603, %bb.ac, %bb.at, %bb.z
  %.sroa.37.6 = phi ptr [ %.sroa.37.0985, %bb.z ], [ %.sroa.20.2980, %.loopexit.split-lp603 ], [ %.sroa.37.13, %bb.at ], [ %.sroa.37.0985, %bb.ac ], [ %.sroa.37.2979.lcssa, %.loopexit602 ], [ %.sroa.37.13, %bb.ew ], [ %.sroa.37.13, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.sroa.37.13, %bb.ik ], [ %.sroa.37.13, %bb.dh ], [ %.sroa.37.13, %bb.dq ], [ %.sroa.37.13, %bb.eh ], [ %.sroa.37.13, %bb.cd ], [ %.sroa.37.13, %bb.bf ], [ %.sroa.37.13, %bb.au ]
  %.sroa.0533.6 = phi ptr [ %.sroa.0533.0987, %bb.z ], [ %.sroa.0533.2981, %.loopexit.split-lp603 ], [ %.sroa.0533.13, %bb.at ], [ %.sroa.0533.0987, %bb.ac ], [ %.sroa.0533.2981, %.loopexit602 ], [ %.sroa.0533.13, %bb.ew ], [ %.sroa.0533.13, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.sroa.0533.13, %bb.ik ], [ %.sroa.0533.13, %bb.dh ], [ %.sroa.0533.13, %bb.dq ], [ %.sroa.0533.13, %bb.eh ], [ %.sroa.0533.13, %bb.cd ], [ %.sroa.0533.13, %bb.bf ], [ %.sroa.0533.13, %bb.au ]
  %.pn424 = phi { ptr, i32 } [ %i.cj, %bb.z ], [ %lpad.loopexit.split-lp605, %.loopexit.split-lp603 ], [ %i.hh, %bb.at ], [ %i.dw, %bb.ac ], [ %lpad.loopexit604, %.loopexit602 ], [ %i.yb, %bb.ew ], [ %.pn405, %_ZSt8_DestroyIPSt6vectorI14aiVertexWeightSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i465 ], [ %.pn405, %bb.ik ], [ %i.qb, %bb.dh ], [ %i.ru, %bb.dq ], [ %i.ul, %bb.eh ], [ %i.mx, %bb.cd ], [ %i.jb, %bb.bf ], [ %i.hi, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.jn

bb.is:                                            ; preds = %._crit_edge996.thread, %._crit_edge996
  %.sroa.0533.0.lcssa1408 = phi ptr [ null, %._crit_edge996.thread ], [ %.sroa.0533.5, %._crit_edge996 ] ; 2 uses
  %.sroa.37.0.lcssa1405.a = phi ptr [ null, %._crit_edge996.thread ], [ %.sroa.37.5, %._crit_edge996 ] ; 2 uses
  %i.aoj = tail call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.aoj, ptr noundef nonnull @.str.5)
          to label %bb.it unwind label %bb.iu

bb.it:                                            ; preds = %bb.is
  invoke void @__cxa_throw(ptr nonnull %i.aoj, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.jr unwind label %bb.iv

bb.iu:                                            ; preds = %bb.is
  %i.aok = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aoj) #19
  br label %bb.jn

bb.iv:                                            ; preds = %._crit_edge1311, %bb.jb, %bb.ix, %bb.it
  %.sroa.0533.0.lcssa1407 = phi ptr [ %.sroa.0533.5, %._crit_edge1311 ], [ %.sroa.0533.5, %bb.jb ], [ %.sroa.0533.5, %bb.ix ], [ %.sroa.0533.0.lcssa1408, %bb.it ]
  %.sroa.37.0.lcssa1406 = phi ptr [ %.sroa.37.5, %._crit_edge1311 ], [ %.sroa.37.5, %bb.jb ], [ %.sroa.37.5, %bb.ix ], [ %.sroa.37.0.lcssa1405.a, %bb.it ]
  %i.aol = landingpad { ptr, i32 }
          cleanup
  br label %bb.jn

bb.iw:                                            ; preds = %._crit_edge996
  br i1 %.2293, label %bb.ix, label %bb.iy

bb.ix:                                            ; preds = %bb.iw
  %i.aom = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aon = load ptr, ptr %i.aom, align 8
  invoke void @_Z11UpdateNodesRKSt6vectorIjSaIjEEP6aiNode(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.aon)
          to label %._crit_edge1309 unwind label %bb.iv

._crit_edge1309:                                  ; preds = %bb.ix
  %.pre1310 = load i32, ptr %i.d, align 8
  br label %bb.iy

bb.iy:                                            ; preds = %._crit_edge1309, %bb.iw
  %i.aoo = phi i32 [ %.pre1310, %._crit_edge1309 ], [ %i.aog, %bb.iw ]
  %i.aop = ptrtoint ptr %.sroa.20.5 to i64
  %i.aoq = ptrtoint ptr %.sroa.0533.5 to i64      ; 2 uses
  %i.aor = sub i64 %i.aop, %i.aoq                 ; 2 uses
  %i.aos = ashr exact i64 %i.aor, 3               ; 3 uses
  %i.aot = zext i32 %i.aoo to i64                 ; 2 uses
  %.not = icmp eq i64 %i.aos, %i.aot
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.pre1312.a = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not, label %._crit_edge1311, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.aou = icmp eq ptr %.pre1312.a, null
  br i1 %i.aou, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  tail call void @_ZdaPv(ptr noundef nonnull %.pre1312.a) #20
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  %i.aov = trunc i64 %i.aos to i32
  store i32 %i.aov, ptr %i.d, align 8
  %i.aow = and i64 %i.aor, 34359738360
  %i.aox = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aow) #21
          to label %bb.jc unwind label %bb.iv     ; 2 uses

bb.jc:                                            ; preds = %bb.jb
  store ptr %i.aox, ptr %.phi.trans.insert, align 8
  %.pre1313 = and i64 %i.aos, 4294967295
  br label %._crit_edge1311

._crit_edge1311:                                  ; preds = %bb.iy, %bb.jc
  %.pre-phi = phi i64 [ %.pre1313, %bb.jc ], [ %i.aot, %bb.iy ]
  %i.aoy = phi ptr [ %i.aox, %bb.jc ], [ %.pre1312.a, %bb.iy ]
  %i.aoz = shl nuw nsw i64 %.pre-phi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aoy, ptr nonnull align 8 %.sroa.0533.5, i64 %i.aoz, i1 false)
  %i.apa = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.jd unwind label %bb.iv

bb.jd:                                            ; preds = %._crit_edge1311
  br i1 %i.apa, label %bb.jk, label %bb.je

bb.je:                                            ; preds = %bb.jd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.apb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.apc = load i32, ptr %i.apb, align 8          ; 4 uses
  %5 = and i32 %i.apc, 1
  %.not373 = icmp eq i32 %5, 0
  %i.apd = select i1 %.not373, ptr @.str.8, ptr @.str.7
  %i.ape = and i32 %i.apc, 2
  %.not374 = icmp eq i32 %i.ape, 0
  %i.apf = select i1 %.not374, ptr @.str.8, ptr @.str.7
  %i.apg = and i32 %i.apc, 4
  %.not375 = icmp eq i32 %i.apg, 0
  %i.aph = select i1 %.not375, ptr @.str.8, ptr @.str.7
  %i.api = and i32 %i.apc, 8
  %.not376 = icmp eq i32 %i.api, 0
  %i.apj = select i1 %.not376, ptr @.str.8, ptr @.str.7
  %i.apk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 1024, ptr noundef nonnull @.str.6, i32 noundef %spec.select434, ptr noundef nonnull %i.apd, i32 noundef %.sroa.7.1, ptr noundef nonnull %i.apf, i32 noundef %.sroa.10.1, ptr noundef nonnull %i.aph, i32 noundef %.sroa.13.1, ptr noundef nonnull %i.apj) #19 ; 0 uses
  %i.apl = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.jf unwind label %bb.jj

bb.jf:                                            ; preds = %bb.je
  invoke void @_ZN6Assimp6Logger4infoIJRA1024_cEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.apl, ptr noundef nonnull align 1 dereferenceable(1024) %i.c)
          to label %bb.jg unwind label %bb.jj

bb.jg:                                            ; preds = %bb.jf
  %i.apm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.jh unwind label %bb.jj

bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.apm, ptr noundef nonnull @.str.9)
          to label %bb.ji unwind label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jh, %bb.jg, %bb.jf, %bb.je
  %i.apn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.jn

bb.jk:                                            ; preds = %bb.ji, %bb.jd
  %i.apo = load ptr, ptr %2, align 8              ; 3 uses
  %.not.i.i.i469.a = icmp eq ptr %i.apo, null
  br i1 %.not.i.i.i469.a, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.app = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.apq = load ptr, ptr %i.app, align 8
  %i.apr = ptrtoint ptr %i.apq to i64
  %i.aps = ptrtoint ptr %i.apo to i64
  %i.apt = sub i64 %i.apr, %i.aps
  call void @_ZdlPvm(ptr noundef nonnull %i.apo, i64 noundef %i.apt) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.jk, %bb.jl
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.not.i.i.i470 = icmp eq ptr %.sroa.0533.5, null
  br i1 %.not.i.i.i470, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.jm

bb.jm:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.apu = ptrtoint ptr %.sroa.37.5 to i64
  %i.apv = sub i64 %i.apu, %i.aoq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.5, i64 noundef %i.apv) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.jm, %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.b
  ret void

bb.jn:                                            ; preds = %.loopexit607, %.loopexit.split-lp608, %bb.j, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467, %bb.i, %bb.jj, %bb.iv, %bb.iu
  %.sroa.37.8 = phi ptr [ %.sroa.37.5, %bb.jj ], [ %.sroa.37.0.lcssa1406, %bb.iv ], [ %.sroa.37.0.lcssa1405.a, %bb.iu ], [ %.sroa.37.0985, %bb.j ], [ %.sroa.37.0985, %bb.i ], [ %.sroa.37.6, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467 ], [ %.sroa.20.0986, %.loopexit607 ], [ %.sroa.20.0986, %.loopexit.split-lp608 ]
  %.sroa.0533.8 = phi ptr [ %.sroa.0533.5, %bb.jj ], [ %.sroa.0533.0.lcssa1407, %bb.iv ], [ %.sroa.0533.0.lcssa1408, %bb.iu ], [ %.sroa.0533.0987, %bb.j ], [ %.sroa.0533.0987, %bb.i ], [ %.sroa.0533.6, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467 ], [ %.sroa.0533.0987, %.loopexit607 ], [ %.sroa.0533.0987, %.loopexit.split-lp608 ] ; 2 uses
  %.pn429.pn = phi { ptr, i32 } [ %i.apn, %bb.jj ], [ %i.aol, %bb.iv ], [ %i.aok, %bb.iu ], [ %i.aq, %bb.j ], [ %i.ap, %bb.i ], [ %.pn424, %_ZNSt6vectorIS_I14aiVertexWeightSaIS0_EESaIS2_EED2Ev.exit467 ], [ %lpad.loopexit609, %.loopexit607 ], [ %lpad.loopexit.split-lp610, %.loopexit.split-lp608 ] ; 2 uses
  %i.apw = load ptr, ptr %2, align 8              ; 3 uses
  %.not.i.i.i471.a = icmp eq ptr %i.apw, null
  br i1 %.not.i.i.i471.a, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %i.apx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.apy = load ptr, ptr %i.apx, align 8
  %i.apz = ptrtoint ptr %i.apy to i64
  %i.aqa = ptrtoint ptr %i.apw to i64
  %i.aqb = sub i64 %i.apz, %i.aqa
  call void @_ZdlPvm(ptr noundef nonnull %i.apw, i64 noundef %i.aqb) #20
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jn, %bb.jo
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %.not.i.i.i473 = icmp eq ptr %.sroa.0533.8, null
  br i1 %.not.i.i.i473, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit474, label %bb.jq

bb.jq:                                            ; preds = %.thread1422, %bb.jp
  %.pn429.pn.pn1429.a = phi { ptr, i32 } [ %i.z, %.thread1422 ], [ %.pn429.pn, %bb.jp ]
  %.sroa.0533.91428 = phi ptr [ %i.k, %.thread1422 ], [ %.sroa.0533.8, %bb.jp ] ; 2 uses
  %.sroa.37.91427 = phi ptr [ %i.l, %.thread1422 ], [ %.sroa.37.8, %bb.jp ]
  %i.aqc = ptrtoint ptr %.sroa.37.91427 to i64
  %i.aqd = ptrtoint ptr %.sroa.0533.91428 to i64
  %i.aqe = sub i64 %i.aqc, %i.aqd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0533.91428, i64 noundef %i.aqe) #20
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit474

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit474:        ; preds = %bb.jp, %bb.jq
  %.pn429.pn.pn1430 = phi { ptr, i32 } [ %.pn429.pn, %bb.jp ], [ %.pn429.pn.pn1429.a, %bb.jq ]
  resume { ptr, i32 } %.pn429.pn.pn1430

bb.jr:                                            ; preds = %bb.it, %bb.h
  unreachable
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #4

declare void @_ZN6Assimp6Logger5debugEPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #20
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #20
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.k, label %bb.j

.preheader47.preheader:                           ; preds = %bb.y
  %i.p = load ptr, ptr %i.an, align 8             ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader47.1, label %bb.z

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #20
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.y) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_ZdaPv(ptr noundef nonnull %i.ab) #20
  br label %bb.s
end_hunk_1
