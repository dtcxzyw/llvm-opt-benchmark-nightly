Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/csmith/original/Statement?download=true
inline.NumInlined: 1230
inline.NumDeleted: 609
begin_hunk_0_@_ZNK9Statement19get_referenced_ptrsERSt6vectorIPK8VariableSaIS3_EE:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !128
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #26
  br label %_ZNSt6vectorIPK10ExpressionSaIS2_EED2Ev.exit24

_ZNSt6vectorIPK10ExpressionSaIS2_EED2Ev.exit24:   ; preds = %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit22, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %lpad.loopexit.split-lp70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK9Statement13get_blk_depthEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.04 = phi i32 [ 0, %bb.a ], [ %i.a, %bb.b ]    ; 2 uses
  %.pn = phi ptr [ %0, %bb.a ], [ %.0, %bb.b ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !109 ; 2 uses
  %.not = icmp eq ptr %.0, null
  %i.a = add nuw nsw i32 %.04, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !230

bb.c:                                             ; preds = %bb.b
  ret i32 %.04
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9Statement11is_ptr_usedEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.11", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  invoke void @_ZNK9Statement19get_referenced_ptrsERSt6vectorIPK8VariableSaIS3_EE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !231    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !231
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.a to i64
  %i.h = sub i64 %i.f, %i.g
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.h) #26
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit:        ; preds = %bb.b, %bb.c
  %i.i = icmp ne ptr %i.a, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i1 %i.i

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %1, align 8, !tbaa !233    ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !232
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #26
  br label %_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit3

_ZNSt6vectorIPK8VariableSaIS2_EED2Ev.exit3:       ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9StatementC2E14eStatementTypeP5Block(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #11 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTV9Statement, i64 16), ptr %0, align 8, !tbaa !28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !110
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !108
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.f, align 8, !tbaa !109
  %i.g = load i32, ptr @_ZN9Statement3sidE, align 4, !tbaa !95 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.g, ptr %i.h, align 4, !tbaa !129
  %i.i = add nsw i32 %i.g, 1
  store i32 %i.i, ptr @_ZN9Statement3sidE, align 4, !tbaa !95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN9StatementD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(32) %0) unnamed_addr #12 align 2 {
bb.a:
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN9StatementD0Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  tail call void @llvm.trap() #30
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #14

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK9Statement8in_blockEPK5Block(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #9 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn = phi ptr [ %0, %bb.a ], [ %.0, %bb.b ]
  %.0.in = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !109 ; 3 uses
  %.not = icmp ne ptr %.0, null                   ; 2 uses
  %i.a = icmp ne ptr %.0, %1
  %or.cond.not = and i1 %i.a, %.not
  br i1 %or.cond.not, label %bb.b, label %bb.c, !llvm.loop !234

bb.c:                                             ; preds = %bb.b
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9Statement8dominateEPKS_(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %i.e = phi ptr [ %i.b, %.lr.ph ], [ %i.r, %.thread ]
  %i.f = phi ptr [ %i.a, %.lr.ph ], [ %i.q, %.thread ]
  %.tr1719 = phi ptr [ %1, %.lr.ph ], [ %.016, %.thread ] ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !129
  %i.k = getelementptr inbounds nuw i8, ptr %.tr1719, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !129
  %i.m = icmp sle i32 %i.j, %i.l
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = tail call noundef ptr @_ZNK9Statement18find_container_stmEv(ptr noundef nonnull align 8 dereferenceable(32) %.tr1719) ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %.016 = phi ptr [ %i.p, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.016, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !109  ; 2 uses
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.thread, %bb.e, %bb.a, %bb.c
  %.1 = phi i1 [ %i.m, %bb.c ], [ true, %bb.a ], [ true, %.thread ], [ false, %bb.e ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK9Statement18find_container_stmEv(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.3", align 8     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !110
  %2 = icmp eq i32 %i.b, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %3 = select i1 %2, ptr %0, ptr %i.d             ; 9 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 3 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !125
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !126  ; 2 uses
  %.not2037.not = icmp eq ptr %i.i, %i.j
  br i1 %.not2037.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit
  %i.m = add nuw i64 %.01238, 1                   ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !109  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !126  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %.not20 = icmp ult i64 %i.m, %i.v
  br i1 %.not20, label %bb.d, label %.thread, !llvm.loop !235

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.w = phi ptr [ %i.j, %.lr.ph ], [ %i.r, %bb.c ]
  %.01238 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.01238
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !28
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.o

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %1, align 8, !tbaa !237   ; 6 uses
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !237 ; 4 uses
  %i.ae = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 3 uses
  %i.ah = ashr i64 %i.ag, 5                       ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.aj = and i64 %i.ag, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.ac, i64 %i.aj ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i ], [ %i.aw, %bb.j ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.av, %bb.j ] ; 9 uses
  %i.ak = load ptr, ptr %.sroa.032.051.i.i.i, align 8, !tbaa !123
  %i.al = icmp eq ptr %i.ak, %3
  br i1 %i.al, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !123
  %i.ao = icmp eq ptr %i.an, %3
  br i1 %i.ao, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit52, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !123
  %i.ar = icmp eq ptr %i.aq, %3
  br i1 %i.ar, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit50, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !123
  %i.au = icmp eq ptr %i.at, %3
  br i1 %i.au, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.aw = add nsw i64 %.052.i.i.i, -1
  %i.ax = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.ax, label %bb.f, label %._crit_edge.loopexit.i.i.i, !llvm.loop !236

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.j
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.ae, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.e
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ag, %bb.e ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ac, %bb.e ] ; 5 uses
  %i.ay = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.ay, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit [
    i64 3, label %bb.k
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i
  %i.az = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8, !tbaa !123
  %i.ba = icmp eq ptr %i.az, %3
  br i1 %i.ba, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.l
  %.sroa.032.1.i.i.i = phi ptr [ %i.bb, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bc = load ptr, ptr %.sroa.032.1.i.i.i, align 8, !tbaa !123
  %i.bd = icmp eq ptr %i.bc, %3
  br i1 %i.bd, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.m
  %.sroa.032.2.i.i.i = phi ptr [ %i.be, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bf = load ptr, ptr %.sroa.032.2.i.i.i, align 8, !tbaa !123
  %i.bg = icmp eq ptr %i.bf, %3
  %spec.select.i.i.i = select i1 %i.bg, ptr %.sroa.032.2.i.i.i, ptr %i.ad
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit50: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit52: ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit: ; preds = %bb.f, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit50, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit52, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.k, %._crit_edge.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.ad, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.k ], [ %i.bj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit52 ], [ %i.bh, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit ], [ %i.bi, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.loopexit.split.loop.exit50 ], [ %.sroa.032.051.i.i.i, %bb.f ]
  %i.bk = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ad
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !127
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.af
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.bn) #26
  br label %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit

_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit:           ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPK5BlockSt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %i.bk, label %bb.c, label %.thread

bb.o:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %.not.i.i.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i21, label %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit22, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !127
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #26
  br label %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit22

_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit22:         ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.bo

.thread:                                          ; preds = %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit, %bb.c, %.preheader, %bb.a, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ null, %.preheader ], [ %i.y, %_ZNSt6vectorIPK5BlockSaIS2_EED2Ev.exit ], [ null, %bb.c ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK9Statement11has_edge_inEbb(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef nonnull %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !133  ; 3 uses
  %.not1920.not = icmp eq ptr %i.f, %i.g
  br i1 %.not1920.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 3
  %i.l = zext i1 %2 to i8
  %i.m = zext i1 %1 to i8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.01521 = phi i64 [ 0, %.lr.ph ], [ %i.y, %.critedge ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.01521
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !135  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !137
  %i.r = icmp eq ptr %i.q, %0
  br i1 %i.r, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 25
  %i.t = load i8, ptr %i.s, align 1, !tbaa !138, !range !33, !noundef !34
  %i.u = icmp eq i8 %i.t, %i.l
  br i1 %i.u, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = load i8, ptr %i.v, align 8, !tbaa !139, !range !33, !noundef !34
  %i.x = icmp eq i8 %i.w, %i.m
  br i1 %i.x, label %.thread, label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c
  %i.y = add nuw i64 %.01521, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.k
  br i1 %exitcond.not, label %.thread, label %bb.c, !llvm.loop !1

.thread:                                          ; preds = %bb.e, %.critedge, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.e ], [ false, %.critedge ]
  ret i1 %.3
}

declare noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK9Statement13find_edges_inERSt6vectorIPK7CFGEdgeSaIS3_EEbb(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !133    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit, label %_ZSt8_DestroyIPPK7CFGEdgeS2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPK7CFGEdgeS2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !132
  br label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit

_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit:     ; preds = %bb.a, %_ZSt8_DestroyIPPK7CFGEdgeS2_EvT_S4_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE5clearEv.exit
  %i.f = tail call noundef ptr @_Z21get_fact_mgr_for_funcPK8Function(ptr noundef nonnull %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !133  ; 2 uses
  %.not13 = icmp eq ptr %i.i, %i.j
  br i1 %.not13, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = zext i1 %3 to i8
  %i.l = zext i1 %2 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE9push_backERKS2_.exit
  %i.n = phi ptr [ %i.j, %.lr.ph ], [ %i.as, %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE9push_backERKS2_.exit ] ; 5 uses
  %.012 = phi i64 [ 0, %.lr.ph ], [ %i.at, %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.012
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !135  ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !137
  %i.s = icmp eq ptr %i.r, %0
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !138, !range !33, !noundef !34
  %i.v = icmp eq i8 %i.u, %i.k
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE9push_backERKS2_.exit

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !139, !range !33, !noundef !34
  %i.y = icmp eq i8 %i.x, %i.l
  br i1 %i.y, label %bb.f, label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE9push_backERKS2_.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !132  ; 4 uses
  %i.aa = load ptr, ptr %i.m, align 8, !tbaa !140
  %.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.p, ptr %i.z, align 8, !tbaa !135
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ab, ptr %i.b, align 8, !tbaa !132
  br label %_ZNSt6vectorIPK7CFGEdgeSaIS2_EE9push_backERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %1, align 8, !tbaa !133   ; 4 uses
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.i, label %_ZNKSt6vectorIPK7CFGEdgeSaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #29
  unreachable

_ZNKSt6vectorIPK7CFGEdgeSaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
end_hunk_0
