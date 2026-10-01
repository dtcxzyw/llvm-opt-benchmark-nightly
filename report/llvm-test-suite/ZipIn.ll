Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/ZipIn?download=true
inline.NumInlined: 215
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.o, align 8, !tbaa !27
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !32   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #18, !inline_history !40
  br label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit

_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit:       ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.s, label %bb.a, label %._crit_edge, !llvm.loop !174
}

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #11

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %0, ptr noundef nonnull align 8 dereferenceable(179) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8NArchive4NZip10CLocalItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.e, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.c, align 8, !tbaa !27
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !62   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !62
  %i.j = add nsw i32 %i.i, %i.g
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef %i.j)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  %i.k = icmp sgt i32 %i.g, 0
  br i1 %i.k, label %.lr.ph.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.noexc3.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 136
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.g to i64
  br label %bb.b

bb.b:                                             ; preds = %.noexc4.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.noexc4.i.i ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i.i.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  %i.p = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.noexc4.i.i unwind label %.loopexit.i.i ; 0 uses

.noexc4.i.i:                                      ; preds = %bb.b
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit, label %bb.b, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.b
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i.i, %bb.a
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c) #19
  br label %.body

_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit:      ; preds = %.noexc4.i.i, %.noexc3.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.q, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.u = load i64, ptr %i.t, align 8, !tbaa !31   ; 4 uses
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_ZN7CBufferIhEC2ERKS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.v = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.u) #20
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.d
  %i.w = load i64, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %.not10.i.i.i = icmp eq i64 %i.w, 0
  %.pr.i.i = load ptr, ptr %i.s, align 8, !tbaa !32 ; 3 uses
  br i1 %.not10.i.i.i, label %thread-pre-split.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 %i.u)
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %.pr.i.i, i64 %i.x, i1 false)
  br label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %bb.e, %.noexc
  %i.y = icmp eq ptr %.pr.i.i, null
  br i1 %i.y, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i, label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pr.i.i) #18
  br label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i:           ; preds = %bb.f, %thread-pre-split.i.i
  store ptr %i.v, ptr %i.s, align 8, !tbaa !32
  store i64 %i.u, ptr %i.r, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.v, ptr align 1 %i.aa, i64 %i.ab, i1 false)
  br label %_ZN7CBufferIhEC2ERKS0_.exit

_ZN7CBufferIhEC2ERKS0_.exit:                      ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i, %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ac, ptr noundef nonnull align 8 dereferenceable(3) %i.ad, i64 3, i1 false)
  ret void

bb.g:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8NArchive4NZip11CExtraBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #19
  br label %.body

.body:                                            ; preds = %bb.c, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %lpad.phi.i.i, %bb.c ]
  tail call void @_ZN8NArchive4NZip10CLocalItemD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip10CLocalItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !54
  %i.g = add nsw i32 %i.f, 1                      ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %i.g to i64
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #20 ; 11 uses
  %2 = ptrtoaddr ptr %i.j to i64
  %i.k = load i32, ptr %i.d, align 4, !tbaa !52
  %i.l = icmp sgt i32 %i.k, 0
  %.pre4.i = load i32, ptr %i.c, align 8, !tbaa !54 ; 6 uses
  br i1 %i.l, label %.preheader.i.i, label %bb.c

.preheader.i.i:                                   ; preds = %bb.b
  %i.m = icmp sgt i32 %.pre4.i, 0
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !53 ; 10 uses
  br i1 %i.m, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i7 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre4.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre4.i, 4
  %3 = sub i64 %.pre.i.i7, %2
  %diff.check = icmp ugt i64 %3, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp ult i32 %.pre4.i, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.n = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <16 x i8>, ptr %i.o, align 1, !tbaa !34
  %wide.load9 = load <16 x i8>, ptr %i.p, align 1, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <16 x i8> %wide.load, ptr %i.q, align 1, !tbaa !34
  store <16 x i8> %wide.load9, ptr %i.r, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !57

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index11
  %wide.load12 = load <4 x i8>, ptr %i.t, align 1, !tbaa !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %index11
  store <4 x i8> %wide.load12, ptr %i.u, align 1, !tbaa !34
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !176

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %n.vec10, %wide.trip.count.i.i
  br i1 %cmp.n14, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %4 = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %5 = load i8, ptr %4, align 1, !tbaa !34
  %6 = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i.prol
  store i8 %5, ptr %6, align 1, !tbaa !34
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !177

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %7 = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %8 = icmp ugt i64 %7, -4
  br i1 %8, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.w = icmp eq ptr %.pre.i.i, null
  br i1 %i.w, label %bb.c, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %9 = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %10 = load i8, ptr %9, align 1, !tbaa !34
  %11 = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.i.i
  store i8 %10, ptr %11, align 1, !tbaa !34
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %13 = load i8, ptr %12, align 1, !tbaa !34
  %14 = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i
  store i8 %13, ptr %14, align 1, !tbaa !34
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.1
  store i8 %16, ptr %17, align 1, !tbaa !34
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.2
  store i8 %i.y, ptr %i.z, align 1, !tbaa !34
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !178

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #18
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !54
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.b
  %i.aa = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre4.i, %._crit_edge.i.i ], [ %.pre4.i, %bb.b ]
  store ptr %i.j, ptr %i.a, align 8, !tbaa !53
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %i.j, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !34
  store i32 %i.g, ptr %i.d, align 4, !tbaa !52
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.c, %bb.a
  %i.ad = phi ptr [ null, %bb.a ], [ %i.j, %bb.c ]
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.ad, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.ah, %bb.d ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ae, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.af, %bb.d ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.ag = load i8, ptr %.0.i.i, align 1, !tbaa !34 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  store i8 %i.ag, ptr %.04.i.i, align 1, !tbaa !34
  %.not.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i, label %_ZN11CStringBaseIcEC2ERKS0_.exit, label %bb.d, !llvm.loop !2

_ZN11CStringBaseIcEC2ERKS0_.exit:                 ; preds = %bb.d
  %i.ai = load i32, ptr %i.e, align 8, !tbaa !54
  store i32 %i.ai, ptr %i.c, align 8, !tbaa !54
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.al, align 8, !tbaa !80
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.aj, align 8, !tbaa !27
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %_ZN11CStringBaseIcEC2ERKS0_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.an = load i32, ptr %i.am, align 4, !tbaa !62 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !62
  %i.aq = add nsw i32 %i.ap, %i.an
  invoke void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i32 noundef %i.aq)
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.i.i

.noexc3.i.i:                                      ; preds = %.noexc.i.i
  %i.ar = icmp sgt i32 %i.an, 0
  br i1 %i.ar, label %.lr.ph.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit

.lr.ph.i.i.i.i:                                   ; preds = %.noexc3.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.an to i64
  br label %bb.e

bb.e:                                             ; preds = %.noexc4.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %.noexc4.i.i ] ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !61
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !63
  %i.aw = invoke noundef i32 @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %.noexc4.i.i unwind label %.loopexit.i.i ; 0 uses

.noexc4.i.i:                                      ; preds = %bb.e
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit, label %bb.e, !llvm.loop !1

.loopexit.i.i:                                    ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i.i, %_ZN11CStringBaseIcEC2ERKS0_.exit
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.aj) #19
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.f

_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit:      ; preds = %.noexc4.i.i, %.noexc3.i.i
  ret void

bb.f:                                             ; preds = %.body
  tail call void @_ZdaPv(ptr noundef nonnull %i.ax) #18
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %.body, %bb.f
  resume { ptr, i32 } %lpad.phi.i.i
}

declare noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { cold noreturn }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS9IInStream", !11, i64 0}
!13 = !{!"_ZTS9CMyComPtrI9IInStreamE", !12, i64 0}
!14 = !{!"long long", !8, i64 0}
!15 = !{!"bool", !8, i64 0}
!16 = !{!"p1 omnipotent char", !11, i64 0}
!17 = !{!"p1 _ZTS19ISequentialInStream", !11, i64 0}
!18 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !17, i64 0}
!19 = !{!"_ZTS9CInBuffer", !16, i64 0, !16, i64 8, !16, i64 16, !18, i64 24, !14, i64 32, !9, i64 40, !15, i64 44}
!20 = !{!"long", !8, i64 0}
!21 = !{!"_ZTS7CBufferIhE", !20, i64 8, !16, i64 16}
!22 = !{!"_ZTSN8NArchive4NZip14CInArchiveInfoE", !14, i64 0, !14, i64 8, !14, i64 16, !21, i64 24}
!23 = !{!"_ZTSN8NArchive4NZip10CInArchiveE", !13, i64 0, !9, i64 8, !14, i64 16, !14, i64 24, !15, i64 32, !19, i64 40, !22, i64 88, !15, i64 136, !15, i64 137}
!24 = !{!23, !15, i64 32}
!25 = !{!18, !17, i64 0}
!26 = !{!"vtable pointer", !7, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!13, !12, i64 0}
!29 = !{!23, !14, i64 16}
!30 = !{!23, !14, i64 24}
!31 = !{!21, !20, i64 8}
!32 = !{!21, !16, i64 16}
!33 = !{!20, !20, i64 0}
!34 = !{!8, !8, i64 0}
!35 = !{!"short", !8, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!14, !14, i64 0}
!39 = !{!23, !14, i64 96}
!40 = !{ptr @_ZN7CBufferIhED2Ev}
!41 = !{i8 0, i8 2}
!42 = !{}
!43 = !{!19, !16, i64 8}
!44 = !{!19, !16, i64 0}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!"_ZTS16CSystemException", !9, i64 0}
!47 = !{!46, !9, i64 0}
!48 = !{!"_ZTSN8NArchive4NZip19CInArchiveException10ECauseTypeE", !8, i64 0}
!49 = !{!"_ZTSN8NArchive4NZip19CInArchiveExceptionE", !48, i64 0}
!50 = !{!49, !48, i64 0}
!51 = !{!"_ZTS11CStringBaseIcE", !16, i64 0, !9, i64 8, !9, i64 12}
!52 = !{!51, !9, i64 12}
!53 = !{!51, !16, i64 0}
!54 = !{!51, !9, i64 8}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!"branch_weights", i32 4, i32 28}
!58 = !{!"_ZTSN8NArchive4NZip14CExtraSubBlockE", !35, i64 0, !21, i64 8}
!59 = !{!58, !35, i64 0}
!60 = !{!"_ZTS17CBaseRecordVector", !9, i64 8, !9, i64 12, !11, i64 16, !20, i64 24}
!61 = !{!60, !11, i64 16}
!62 = !{!60, !9, i64 12}
!63 = !{!11, !11, i64 0}
!64 = !{!"_ZTSN8NArchive4NZip8CVersionE", !8, i64 0, !8, i64 1}
!65 = !{!"_ZTS13CRecordVectorIPvE", !60, i64 0}
!66 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE", !65, i64 0}
!67 = !{!"_ZTSN8NArchive4NZip11CExtraBlockE", !66, i64 0}
!68 = !{!"_ZTSN8NArchive4NZip10CLocalItemE", !64, i64 0, !35, i64 2, !35, i64 4, !9, i64 8, !9, i64 12, !14, i64 16, !14, i64 24, !51, i64 32, !67, i64 48}
!69 = !{!68, !8, i64 0}
!70 = !{!68, !8, i64 1}
!71 = !{!"_ZTS9_FILETIME", !9, i64 0, !9, i64 4}
!72 = !{!"_ZTSN8NArchive4NZip5CItemE", !68, i64 0, !64, i64 80, !35, i64 82, !9, i64 84, !14, i64 88, !71, i64 96, !71, i64 104, !71, i64 112, !67, i64 120, !21, i64 152, !15, i64 176, !15, i64 177, !15, i64 178}
!73 = !{!"_ZTSN8NArchive4NZip7CItemExE", !72, i64 0, !9, i64 180, !35, i64 184}
!74 = !{!73, !35, i64 184}
!75 = !{!73, !9, i64 180}
!76 = !{!72, !15, i64 176}
!77 = !{!23, !14, i64 88}
!78 = !{!72, !14, i64 88}
!79 = !{ptr @_ZN8NArchive4NZip10CInArchive4SeekEy}
!80 = !{!60, !20, i64 24}
!81 = !{!68, !35, i64 4}
!82 = !{!68, !9, i64 12}
!83 = !{!68, !14, i64 16}
!84 = !{!68, !14, i64 24}
!85 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev}
!86 = !{!68, !35, i64 2}
!87 = !{!72, !15, i64 177}
!88 = !{!72, !35, i64 82}
!89 = !{!72, !9, i64 84}
!90 = !{!"_ZTSN8NArchive4NZip7CCdInfoE", !14, i64 0, !14, i64 8}
!91 = !{!90, !14, i64 0}
!92 = !{!90, !14, i64 8}
!93 = !{!23, !9, i64 8}
!94 = distinct !{ptr @_ZN8NArchive4NZip10CInArchive5CloseEv, null, null}
!95 = distinct !{ptr @_ZN8NArchive4NZip10CInArchive5CloseEv, null}
!96 = distinct !{null}
!97 = distinct !{null, null}
!98 = distinct !{null}
!99 = distinct !{!99, !37}
!100 = distinct !{!100, !45}
!101 = distinct !{!101, !37}
!102 = distinct !{!102, !37}
!103 = distinct !{!103, !37, !55, !56}
!104 = distinct !{!104, !37, !55, !56}
!105 = distinct !{!105, !45}
!106 = distinct !{!106, !37, !55}
!107 = distinct !{!107, !37, !55, !56}
!108 = distinct !{!108, !37, !55, !56}
!109 = distinct !{!109, !45}
!110 = distinct !{!110, !37, !55}
!111 = distinct !{!111, !37}
!112 = distinct !{!112, !37, !55, !56}
!113 = distinct !{!113, !37, !55, !56}
!114 = distinct !{!114, !45}
!115 = distinct !{!115, !37, !55}
!116 = distinct !{!116, !37}
!117 = !{ptr @_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy}
!118 = !{!72, !8, i64 80}
!119 = !{!72, !8, i64 81}
!120 = distinct !{!120, !37}
!121 = !{ptr @_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE}
!122 = distinct !{!122, !37, !55, !56}
!123 = distinct !{!123, !37, !55, !56}
!124 = distinct !{!124, !45}
!125 = distinct !{!125, !37, !55}
!126 = distinct !{!126, !37, !55, !56}
!127 = distinct !{!127, !37, !55, !56}
!128 = distinct !{!128, !45}
!129 = distinct !{!129, !37, !55}
!130 = distinct !{!130, !37, !55, !56}
!131 = distinct !{!131, !37, !55, !56}
!132 = distinct !{!132, !45}
!133 = distinct !{!133, !37, !55}
!134 = distinct !{!134, !37}
!135 = distinct !{!135, !37, !55, !56}
!136 = distinct !{!136, !37, !55, !56}
!137 = distinct !{!137, !45}
!138 = distinct !{!138, !37, !55}
!139 = distinct !{!139, !37}
!140 = distinct !{!140, !37}
!141 = distinct !{!141, !45}
!142 = !{!"_ZTSN8NArchive4NZip4CEcdE", !35, i64 0, !35, i64 2, !35, i64 4, !35, i64 6, !9, i64 8, !9, i64 12, !35, i64 16}
!143 = !{!142, !35, i64 0}
!144 = !{!142, !35, i64 2}
!145 = !{!142, !35, i64 4}
!146 = !{!142, !35, i64 6}
!147 = !{!142, !9, i64 8}
!148 = !{!142, !9, i64 12}
!149 = !{!142, !35, i64 16}
!150 = !{!"_ZTSN8NArchive4NZip6CEcd64E", !35, i64 0, !35, i64 2, !9, i64 4, !9, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40}
!151 = !{!150, !35, i64 0}
!152 = !{!150, !35, i64 2}
!153 = !{!150, !9, i64 4}
!154 = !{!150, !9, i64 8}
!155 = !{!150, !14, i64 16}
!156 = !{!150, !14, i64 24}
!157 = !{!150, !14, i64 32}
!158 = !{!150, !14, i64 40}
!159 = !{!23, !15, i64 136}
!160 = !{!23, !15, i64 137}
!161 = !{!23, !14, i64 104}
!162 = distinct !{null}
!163 = distinct !{null}
!164 = !{!"_ZTS13CMyUnknownImp", !9, i64 0}
!165 = !{!164, !9, i64 0}
!166 = !{ptr @_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy}
!167 = !{!"_ZTS8IUnknown"}
!168 = !{!"_ZTS19ISequentialInStream", !167, i64 0}
!169 = !{!"_ZTS26CLimitedSequentialInStream", !168, i64 0, !164, i64 8, !18, i64 16, !14, i64 24, !14, i64 32, !15, i64 40}
!170 = !{!169, !14, i64 24}
!171 = !{!169, !14, i64 32}
!172 = !{!169, !15, i64 40}
!173 = distinct !{null}
!174 = distinct !{!174, !37}
!175 = distinct !{!175, !37, !55, !56}
!176 = distinct !{!176, !37, !55, !56}
!177 = distinct !{!177, !45}
!178 = distinct !{!178, !37, !55}
end_hunk_0
