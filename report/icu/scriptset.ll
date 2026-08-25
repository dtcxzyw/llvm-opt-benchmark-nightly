Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/scriptset?download=true
inline.NumInlined: 52
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_789ScriptSet12parseScriptsERKNS_13UnicodeStringER10UErrorCode:bb.a
  %i.y = icmp slt i32 %i.p, %i.x
  br i1 %i.y, label %bb.s, label %bb.j, !llvm.loop !19

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.j:                                             ; preds = %bb.f, %bb.h
  %i.aa = load i16, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.ab = icmp slt i16 %i.aa, 0
  %i.ac = ashr i16 %i.aa, 5
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i32, ptr %i.m, align 4
  %i.af = select i1 %i.ab, i32 %i.ae, i32 %i.ad   ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ah = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.af, ptr noundef nonnull %i.a, i32 noundef 39, i32 noundef 0)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.n, align 1, !tbaa !16
  %i.ai = invoke i32 @u_getPropertyValueEnum_78(i32 noundef 4106, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.o       ; 4 uses

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp eq i32 %i.ai, -1
  br i1 %i.aj, label %.thread.sink.split, label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.am = load i32, ptr %2, align 4, !tbaa !8
  %i.an = icmp slt i32 %i.am, 1
  br i1 %i.an, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %or.cond.i = icmp ugt i32 %i.ai, 223
  br i1 %or.cond.i, label %.thread.sink.split, label %select.unfold

.thread.sink.split:                               ; preds = %bb.q, %bb.m
  store i32 1, ptr %2, align 4, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.p, %.thread.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.loopexit

bb.r:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.ak, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.t

select.unfold:                                    ; preds = %bb.q
  %i.ao = lshr i32 %i.ai, 5
  %i.ap = and i32 %i.ai, 31
  %i.aq = shl nuw i32 1, %i.ap
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10
  %i.au = or i32 %i.at, %i.aq
  store i32 %i.au, ptr %i.as, align 4, !tbaa !10
  %i.av = load i16, ptr %i.d, align 8, !tbaa !16  ; 2 uses
  %i.aw = and i16 %i.av, 1
  %.not.i = icmp eq i16 %i.aw, 0
  %i.ax = and i16 %i.av, 30
  %storemerge.i = select i1 %.not.i, i16 %i.ax, i16 2
  store i16 %storemerge.i, ptr %i.d, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.s

bb.s:                                             ; preds = %select.unfold, %bb.j, %bb.h
  %i.ay = load i16, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.az = icmp slt i16 %i.ay, 0
  %i.ba = ashr i16 %i.ay, 5
  %i.bb = sext i16 %i.ba to i32
  %i.bc = load i32, ptr %i.f, align 4
  %i.bd = select i1 %i.az, i32 %i.bc, i32 %i.bb
  %.not39 = icmp slt i32 %i.p, %i.bd
  br i1 %.not39, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.b, %.thread
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.u

bb.t:                                             ; preds = %bb.i, %bb.r
  %.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %.pn, %bb.r ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %.pn.pn.pn

bb.u:                                             ; preds = %bb.a, %.loopexit
  ret ptr %0
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7813UnicodeString11moveIndex32Eii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #7

declare signext i8 @u_isUWhiteSpace_78(i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #7

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @u_getPropertyValueEnum_78(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_789ScriptSet19setScriptExtensionsEiR10UErrorCode(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(28) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::MaybeStackArray", align 8 ; 12 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 20, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i8 0, ptr %i.f, align 4, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit, %bb.b
  %i.g = phi i32 [ %i.i, %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit ], [ 20, %bb.b ]
  %i.h = phi ptr [ %i.o, %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit ], [ %i.d, %bb.b ]
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.i = invoke i32 @uscript_getScriptExtensions_78(i32 noundef %1, ptr noundef nonnull %i.h, i32 noundef %i.g, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.i       ; 6 uses

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.a, align 4, !tbaa !8    ; 3 uses
  %i.k = icmp eq i32 %i.j, 15
  br i1 %i.k, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.m = zext nneg i32 %i.i to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  %i.o = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.n) #15
          to label %.noexc unwind label %bb.i     ; 3 uses

.noexc:                                           ; preds = %bb.f
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.loopexit.sink.split, label %bb.g

bb.g:                                             ; preds = %.noexc
  %i.p = load i8, ptr %i.f, align 4, !tbaa !24
  %.not.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = load ptr, ptr %3, align 8, !tbaa !20
  invoke void @uprv_free_78(ptr noundef %i.q)
          to label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit unwind label %bb.i

_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE6resizeEii.exit: ; preds = %bb.g, %bb.h
  store ptr %i.o, ptr %3, align 8, !tbaa !20
  store i32 %i.i, ptr %i.e, align 8, !tbaa !23
  store i8 1, ptr %i.f, align 4, !tbaa !24
  br label %bb.c, !llvm.loop !25

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.r

bb.j:                                             ; preds = %bb.d
  %i.s = icmp slt i32 %i.j, 1
  br i1 %i.s, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.j
  %i.t = icmp sgt i32 %i.i, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.u = load ptr, ptr %3, align 8, !tbaa !20
  %.promoted = load i32, ptr %2, align 4, !tbaa !8
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.v = icmp slt i32 %.promoted, 1
  br label %bb.l

bb.k:                                             ; preds = %4
  %i.w = lshr i32 %i.ae, 5
  %i.x = and i32 %i.ae, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !10
  %i.ac = or i32 %i.ab, %i.y
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !26

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !27 ; 3 uses
  br i1 %i.v, label %4, label %.loopexit

4:                                                ; preds = %bb.l
  %or.cond.i = icmp ugt i32 %i.ae, 223
  br i1 %or.cond.i, label %.loopexit.sink.split, label %bb.k

.loopexit.sink.split:                             ; preds = %bb.e, %.noexc, %4, %bb.j
  %.sink = phi i32 [ %i.j, %bb.j ], [ 1, %4 ], [ 7, %.noexc ], [ 7, %bb.e ]
  store i32 %.sink, ptr %2, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.k, %.loopexit.sink.split, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.af = load i8, ptr %i.f, align 4, !tbaa !24
  %.not.i.i22 = icmp eq i8 %i.af, 0
  br i1 %.not.i.i22, label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.loopexit
  %i.ag = load ptr, ptr %3, align 8, !tbaa !20
  invoke void @uprv_free_78(ptr noundef %i.ag)
          to label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit: ; preds = %.loopexit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev.exit
  ret void
}

declare i32 @uscript_getScriptExtensions_78(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE12releaseArrayEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !20
  invoke void @uprv_free_78(ptr noundef %i.c)
          to label %_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE12releaseArrayEv.exit unwind label %bb.c

_ZN6icu_7815MaybeStackArrayI11UScriptCodeLi20EE12releaseArrayEv.exit: ; preds = %bb.a, %bb.b
  ret void

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define signext range(i8 0, 2) i8 @uhash_equalsScriptSet_78(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  %i.b = load i32, ptr %1, align 4, !tbaa !10
  %.not.i = icmp eq i32 %i.a, %i.b
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.1.i = icmp eq i32 %i.d, %i.f
  br i1 %.not.1.i, label %bb.c, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %.not.2.i = icmp eq i32 %i.h, %i.j
  br i1 %.not.2.i, label %bb.d, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
  %.not.3.i = icmp eq i32 %i.l, %i.n
  br i1 %.not.3.i, label %bb.e, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %.not.4.i = icmp eq i32 %i.p, %i.r
  br i1 %.not.4.i, label %bb.f, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10
  %.not.5.i = icmp eq i32 %i.t, %i.v
  br i1 %.not.5.i, label %bb.g, label %_ZNK6icu_789ScriptSeteqERKS0_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10
  %.not.6.i = icmp eq i32 %i.x, %i.z
  %i.aa = zext i1 %.not.6.i to i8
  br label %_ZNK6icu_789ScriptSeteqERKS0_.exit

_ZNK6icu_789ScriptSeteqERKS0_.exit:               ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.not.lcssa.i = phi i8 [ 0, %bb.a ], [ 0, %bb.f ], [ 0, %bb.b ], [ %i.aa, %bb.g ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i8 %.not.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @uhash_compareScriptSet_78(ptr nofree readonly captures(none) %0, ptr nofree readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  %.not10.i = icmp eq i32 %i.a, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.012.i = phi i32 [ %i.d, %.lr.ph.i ], [ %i.a, %bb.a ] ; 2 uses
  %.111.i = phi i32 [ %i.b, %.lr.ph.i ], [ 0, %bb.a ]
  %i.b = add nuw nsw i32 %.111.i, 1               ; 2 uses
  %i.c = add i32 %.012.i, -1
  %i.d = and i32 %i.c, %.012.i                    ; 2 uses
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !11

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.1.lcssa.i = phi i32 [ 0, %bb.a ], [ %i.b, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %.not10.1.i = icmp eq i32 %i.f, 0
  br i1 %.not10.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %._crit_edge.i, %.lr.ph.1.i
  %.012.1.i = phi i32 [ %i.i, %.lr.ph.1.i ], [ %i.f, %._crit_edge.i ] ; 2 uses
  %.111.1.i = phi i32 [ %i.g, %.lr.ph.1.i ], [ %.1.lcssa.i, %._crit_edge.i ]
  %i.g = add nsw i32 %.111.1.i, 1                 ; 2 uses
  %i.h = add i32 %.012.1.i, -1
  %i.i = and i32 %i.h, %.012.1.i                  ; 2 uses
  %.not.1.i = icmp eq i32 %i.i, 0
  br i1 %.not.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i, !llvm.loop !11

._crit_edge.1.i:                                  ; preds = %.lr.ph.1.i, %._crit_edge.i
  %.1.lcssa.1.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ %i.g, %.lr.ph.1.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10   ; 2 uses
  %.not10.2.i = icmp eq i32 %i.k, 0
  br i1 %.not10.2.i, label %._crit_edge.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %._crit_edge.1.i, %.lr.ph.2.i
  %.012.2.i = phi i32 [ %i.n, %.lr.ph.2.i ], [ %i.k, %._crit_edge.1.i ] ; 2 uses
  %.111.2.i = phi i32 [ %i.l, %.lr.ph.2.i ], [ %.1.lcssa.1.i, %._crit_edge.1.i ]
  %i.l = add nsw i32 %.111.2.i, 1                 ; 2 uses
  %i.m = add i32 %.012.2.i, -1
  %i.n = and i32 %i.m, %.012.2.i                  ; 2 uses
  %.not.2.i = icmp eq i32 %i.n, 0
  br i1 %.not.2.i, label %._crit_edge.2.i, label %.lr.ph.2.i, !llvm.loop !11

._crit_edge.2.i:                                  ; preds = %.lr.ph.2.i, %._crit_edge.1.i
  %.1.lcssa.2.i = phi i32 [ %.1.lcssa.1.i, %._crit_edge.1.i ], [ %i.l, %.lr.ph.2.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10   ; 2 uses
  %.not10.3.i = icmp eq i32 %i.p, 0
  br i1 %.not10.3.i, label %._crit_edge.3.i, label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %._crit_edge.2.i, %.lr.ph.3.i
  %.012.3.i = phi i32 [ %i.s, %.lr.ph.3.i ], [ %i.p, %._crit_edge.2.i ] ; 2 uses
  %.111.3.i = phi i32 [ %i.q, %.lr.ph.3.i ], [ %.1.lcssa.2.i, %._crit_edge.2.i ]
  %i.q = add nsw i32 %.111.3.i, 1                 ; 2 uses
  %i.r = add i32 %.012.3.i, -1
  %i.s = and i32 %i.r, %.012.3.i                  ; 2 uses
  %.not.3.i = icmp eq i32 %i.s, 0
  br i1 %.not.3.i, label %._crit_edge.3.i, label %.lr.ph.3.i, !llvm.loop !11

._crit_edge.3.i:                                  ; preds = %.lr.ph.3.i, %._crit_edge.2.i
  %.1.lcssa.3.i = phi i32 [ %.1.lcssa.2.i, %._crit_edge.2.i ], [ %i.q, %.lr.ph.3.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10   ; 2 uses
  %.not10.4.i = icmp eq i32 %i.u, 0
  br i1 %.not10.4.i, label %._crit_edge.4.i, label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %._crit_edge.3.i, %.lr.ph.4.i
  %.012.4.i = phi i32 [ %i.x, %.lr.ph.4.i ], [ %i.u, %._crit_edge.3.i ] ; 2 uses
  %.111.4.i = phi i32 [ %i.v, %.lr.ph.4.i ], [ %.1.lcssa.3.i, %._crit_edge.3.i ]
  %i.v = add nsw i32 %.111.4.i, 1                 ; 2 uses
  %i.w = add i32 %.012.4.i, -1
  %i.x = and i32 %i.w, %.012.4.i                  ; 2 uses
  %.not.4.i = icmp eq i32 %i.x, 0
  br i1 %.not.4.i, label %._crit_edge.4.i, label %.lr.ph.4.i, !llvm.loop !11

._crit_edge.4.i:                                  ; preds = %.lr.ph.4.i, %._crit_edge.3.i
  %.1.lcssa.4.i = phi i32 [ %.1.lcssa.3.i, %._crit_edge.3.i ], [ %i.v, %.lr.ph.4.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !10   ; 2 uses
  %.not10.5.i = icmp eq i32 %i.z, 0
  br i1 %.not10.5.i, label %._crit_edge.5.i, label %.lr.ph.5.i

end_hunk_0
begin_hunk_1_@uhash_compareScriptSet_78:bb.a
  %.not10.2.i32 = icmp eq i32 %i.as, 0
  br i1 %.not10.2.i32, label %._crit_edge.2.i37, label %.lr.ph.2.i33

.lr.ph.2.i33:                                     ; preds = %._crit_edge.1.i30, %.lr.ph.2.i33
  %.012.2.i34 = phi i32 [ %i.av, %.lr.ph.2.i33 ], [ %i.as, %._crit_edge.1.i30 ] ; 2 uses
  %.111.2.i35 = phi i32 [ %i.at, %.lr.ph.2.i33 ], [ %.1.lcssa.1.i31, %._crit_edge.1.i30 ]
  %i.at = add nsw i32 %.111.2.i35, 1              ; 2 uses
  %i.au = add i32 %.012.2.i34, -1
  %i.av = and i32 %i.au, %.012.2.i34              ; 2 uses
  %.not.2.i36 = icmp eq i32 %i.av, 0
  br i1 %.not.2.i36, label %._crit_edge.2.i37, label %.lr.ph.2.i33, !llvm.loop !11

._crit_edge.2.i37:                                ; preds = %.lr.ph.2.i33, %._crit_edge.1.i30
  %.1.lcssa.2.i38 = phi i32 [ %.1.lcssa.1.i31, %._crit_edge.1.i30 ], [ %i.at, %.lr.ph.2.i33 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !10 ; 2 uses
  %.not10.3.i39 = icmp eq i32 %i.ax, 0
  br i1 %.not10.3.i39, label %._crit_edge.3.i44, label %.lr.ph.3.i40

.lr.ph.3.i40:                                     ; preds = %._crit_edge.2.i37, %.lr.ph.3.i40
  %.012.3.i41 = phi i32 [ %i.ba, %.lr.ph.3.i40 ], [ %i.ax, %._crit_edge.2.i37 ] ; 2 uses
  %.111.3.i42 = phi i32 [ %i.ay, %.lr.ph.3.i40 ], [ %.1.lcssa.2.i38, %._crit_edge.2.i37 ]
  %i.ay = add nsw i32 %.111.3.i42, 1              ; 2 uses
  %i.az = add i32 %.012.3.i41, -1
  %i.ba = and i32 %i.az, %.012.3.i41              ; 2 uses
  %.not.3.i43 = icmp eq i32 %i.ba, 0
  br i1 %.not.3.i43, label %._crit_edge.3.i44, label %.lr.ph.3.i40, !llvm.loop !11

._crit_edge.3.i44:                                ; preds = %.lr.ph.3.i40, %._crit_edge.2.i37
  %.1.lcssa.3.i45 = phi i32 [ %.1.lcssa.2.i38, %._crit_edge.2.i37 ], [ %i.ay, %.lr.ph.3.i40 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !10 ; 2 uses
  %.not10.4.i46 = icmp eq i32 %i.bc, 0
  br i1 %.not10.4.i46, label %._crit_edge.4.i51, label %.lr.ph.4.i47

.lr.ph.4.i47:                                     ; preds = %._crit_edge.3.i44, %.lr.ph.4.i47
  %.012.4.i48 = phi i32 [ %i.bf, %.lr.ph.4.i47 ], [ %i.bc, %._crit_edge.3.i44 ] ; 2 uses
  %.111.4.i49 = phi i32 [ %i.bd, %.lr.ph.4.i47 ], [ %.1.lcssa.3.i45, %._crit_edge.3.i44 ]
  %i.bd = add nsw i32 %.111.4.i49, 1              ; 2 uses
  %i.be = add i32 %.012.4.i48, -1
  %i.bf = and i32 %i.be, %.012.4.i48              ; 2 uses
  %.not.4.i50 = icmp eq i32 %i.bf, 0
  br i1 %.not.4.i50, label %._crit_edge.4.i51, label %.lr.ph.4.i47, !llvm.loop !11

._crit_edge.4.i51:                                ; preds = %.lr.ph.4.i47, %._crit_edge.3.i44
  %.1.lcssa.4.i52 = phi i32 [ %.1.lcssa.3.i45, %._crit_edge.3.i44 ], [ %i.bd, %.lr.ph.4.i47 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !10 ; 2 uses
  %.not10.5.i53 = icmp eq i32 %i.bh, 0
  br i1 %.not10.5.i53, label %._crit_edge.5.i58, label %.lr.ph.5.i54

.lr.ph.5.i54:                                     ; preds = %._crit_edge.4.i51, %.lr.ph.5.i54
  %.012.5.i55 = phi i32 [ %i.bk, %.lr.ph.5.i54 ], [ %i.bh, %._crit_edge.4.i51 ] ; 2 uses
  %.111.5.i56 = phi i32 [ %i.bi, %.lr.ph.5.i54 ], [ %.1.lcssa.4.i52, %._crit_edge.4.i51 ]
  %i.bi = add nsw i32 %.111.5.i56, 1              ; 2 uses
  %i.bj = add i32 %.012.5.i55, -1
  %i.bk = and i32 %i.bj, %.012.5.i55              ; 2 uses
  %.not.5.i57 = icmp eq i32 %i.bk, 0
  br i1 %.not.5.i57, label %._crit_edge.5.i58, label %.lr.ph.5.i54, !llvm.loop !11

._crit_edge.5.i58:                                ; preds = %.lr.ph.5.i54, %._crit_edge.4.i51
  %.1.lcssa.5.i59 = phi i32 [ %.1.lcssa.4.i52, %._crit_edge.4.i51 ], [ %i.bi, %.lr.ph.5.i54 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !10 ; 2 uses
  %.not10.6.i60 = icmp eq i32 %i.bm, 0
  br i1 %.not10.6.i60, label %_ZNK6icu_789ScriptSet12countMembersEv.exit66, label %.lr.ph.6.i61

.lr.ph.6.i61:                                     ; preds = %._crit_edge.5.i58, %.lr.ph.6.i61
  %.012.6.i62 = phi i32 [ %i.bp, %.lr.ph.6.i61 ], [ %i.bm, %._crit_edge.5.i58 ] ; 2 uses
  %.111.6.i63 = phi i32 [ %i.bn, %.lr.ph.6.i61 ], [ %.1.lcssa.5.i59, %._crit_edge.5.i58 ]
  %i.bn = add nsw i32 %.111.6.i63, 1              ; 2 uses
  %i.bo = add i32 %.012.6.i62, -1
  %i.bp = and i32 %i.bo, %.012.6.i62              ; 2 uses
  %.not.6.i64 = icmp eq i32 %i.bp, 0
  br i1 %.not.6.i64, label %_ZNK6icu_789ScriptSet12countMembersEv.exit66, label %.lr.ph.6.i61, !llvm.loop !11

_ZNK6icu_789ScriptSet12countMembersEv.exit66:     ; preds = %.lr.ph.6.i61, %._crit_edge.5.i58
  %.1.lcssa.6.i65 = phi i32 [ %.1.lcssa.5.i59, %._crit_edge.5.i58 ], [ %i.bn, %.lr.ph.6.i61 ]
  %i.bq = sub nsw i32 %.1.lcssa.6.i, %.1.lcssa.6.i65 ; 2 uses
  %.not = icmp eq i32 %i.bq, 0
  br i1 %.not, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, label %.loopexit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i: ; preds = %_ZNK6icu_789ScriptSet12countMembersEv.exit66, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1
  %.0816.i = phi i32 [ %i.cc, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ], [ 0, %_ZNK6icu_789ScriptSet12countMembersEv.exit66 ] ; 5 uses
  %i.br = lshr i32 %.0816.i, 5
  %i.bs = and i32 %.0816.i, 30
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !10 ; 2 uses
  %i.bw = shl nuw nsw i32 1, %i.bs
  %i.bx = and i32 %i.bw, %i.bv
  %.not.i67 = icmp eq i32 %i.bx, 0
  br i1 %.not.i67, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %i.by = or disjoint i32 %.0816.i, 1             ; 2 uses
  %i.bz = and i32 %i.by, 31
  %i.ca = shl nuw i32 1, %i.bz
  %i.cb = and i32 %i.ca, %i.bv
  %.not.i67.1 = icmp eq i32 %i.cb, 0
  br i1 %.not.i67.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i
  %i.cc = add nuw nsw i32 %.0816.i, 2             ; 2 uses
  %exitcond.i.1 = icmp eq i32 %i.cc, 224
  br i1 %exitcond.i.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i, !llvm.loop !13

_ZNK6icu_789ScriptSet10nextSetBitEi.exit:         ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i
  %.2.i = phi i32 [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i.1 ], [ %.0816.i, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i ], [ %i.by, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i ] ; 3 uses
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit
  %.0816.i69 = phi i32 [ 0, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit ], [ %i.co, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1 ] ; 5 uses
  %i.cd = lshr i32 %.0816.i69, 5
  %i.ce = and i32 %.0816.i69, 30
  %i.cf = zext nneg i32 %i.cd to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10 ; 2 uses
  %i.ci = shl nuw nsw i32 1, %i.ce
  %i.cj = and i32 %i.ci, %i.ch
  %.not.i70 = icmp eq i32 %i.cj, 0
  br i1 %.not.i70, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68
  %i.ck = or disjoint i32 %.0816.i69, 1           ; 2 uses
  %i.cl = and i32 %i.ck, 31
  %i.cm = shl nuw i32 1, %i.cl
  %i.cn = and i32 %i.cm, %i.ch
  %.not.i70.1 = icmp eq i32 %i.cn, 0
  br i1 %.not.i70.1, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72
  %i.co = add nuw nsw i32 %.0816.i69, 2           ; 2 uses
  %exitcond.i73.1 = icmp eq i32 %i.co, 224
  br i1 %exitcond.i73.1, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68, !llvm.loop !13

_ZNK6icu_789ScriptSet10nextSetBitEi.exit74:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68
  %.2.i71 = phi i32 [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72.1 ], [ %.0816.i69, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i68 ], [ %i.ck, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i72 ] ; 2 uses
  %i.cp = sub nsw i32 %.2.i, %.2.i71              ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  %i.cr = icmp sgt i32 %.2.i, 0
  %i.cs = and i1 %i.cr, %i.cq
  br i1 %i.cs, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89
  %.0105 = phi i32 [ %.2.i86, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ], [ %.2.i71, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ]
  %.015104 = phi i32 [ %.2.i78, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ], [ %.2.i, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ] ; 2 uses
  %or.cond.i = icmp samesign ugt i32 %.015104, 222
  br i1 %or.cond.i, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader: ; preds = %.lr.ph
  %i.ct = add nuw nsw i32 %.015104, 1
  br label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79
  %.0816.i76 = phi i32 [ %i.db, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79 ], [ %i.ct, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75.preheader ] ; 4 uses
  %i.cu = lshr i32 %.0816.i76, 5
  %i.cv = and i32 %.0816.i76, 31
  %i.cw = zext nneg i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cz = shl nuw i32 1, %i.cv
  %i.da = and i32 %i.cz, %i.cy
  %.not.i77 = icmp eq i32 %i.da, 0
  br i1 %.not.i77, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75
  %i.db = add nuw nsw i32 %.0816.i76, 1           ; 2 uses
  %exitcond.i80 = icmp eq i32 %i.db, 224
  br i1 %exitcond.i80, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75, !llvm.loop !13

_ZNK6icu_789ScriptSet10nextSetBitEi.exit81:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79, %.lr.ph
  %.2.i78 = phi i32 [ -1, %.lr.ph ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i79 ], [ %.0816.i76, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i75 ] ; 3 uses
  %i.dc = add nsw i32 %.0105, 1                   ; 2 uses
  %or.cond.i82 = icmp ugt i32 %i.dc, 223
  br i1 %or.cond.i82, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83: ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87
  %.0816.i84 = phi i32 [ %i.dk, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87 ], [ %i.dc, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81 ] ; 4 uses
  %i.dd = lshr i32 %.0816.i84, 5
  %i.de = and i32 %.0816.i84, 31
  %i.df = zext nneg i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !10
  %i.di = shl nuw i32 1, %i.de
  %i.dj = and i32 %i.di, %i.dh
  %.not.i85 = icmp eq i32 %i.dj, 0
  br i1 %.not.i85, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89

_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87: ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83
  %i.dk = add nuw nsw i32 %.0816.i84, 1           ; 2 uses
  %exitcond.i88 = icmp eq i32 %i.dk, 224
  br i1 %exitcond.i88, label %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, label %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83, !llvm.loop !13

_ZNK6icu_789ScriptSet10nextSetBitEi.exit89:       ; preds = %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81
  %.2.i86 = phi i32 [ -1, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit81 ], [ -1, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.thread.i87 ], [ %.0816.i84, %_ZNK6icu_789ScriptSet4testE11UScriptCodeR10UErrorCode.exit.i83 ] ; 2 uses
  %i.dl = sub nsw i32 %.2.i78, %.2.i86            ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  %i.dn = icmp sgt i32 %.2.i78, 0
  %i.do = and i1 %i.dn, %i.dm
  br i1 %i.do, label %.lr.ph, label %.loopexit, !llvm.loop !29

.loopexit:                                        ; preds = %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74, %_ZNK6icu_789ScriptSet12countMembersEv.exit66
  %.016 = phi i32 [ %i.bq, %_ZNK6icu_789ScriptSet12countMembersEv.exit66 ], [ %i.cp, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit74 ], [ %i.dl, %_ZNK6icu_789ScriptSet10nextSetBitEi.exit89 ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @uhash_hashScriptSet_78(ptr nofree readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load <4 x i32>, ptr %0, align 4, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 4, !tbaa !10
  %i.h = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %i.a)
  %op.rdx = xor i32 %i.h, %i.c
  %op.rdx1 = xor i32 %i.e, %i.g
  %op.rdx2 = xor i32 %op.rdx, %op.rdx1
  ret i32 %op.rdx2
}

; Function Attrs: mustprogress nounwind uwtable
define void @uhash_deleteScriptSet_78(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_789ScriptSetD1Ev(ptr noundef nonnull align 4 dead_on_return(28) dereferenceable(28) %0) #14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #7

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { allocsize(0) }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_ZTS10UErrorCode", !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"char16_t", !6, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !7, i64 0}
!19 = distinct !{!19, !12}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSN6icu_7815MaybeStackArrayI11UScriptCodeLi20EEE", !22, i64 0, !5, i64 8, !6, i64 12, !6, i64 16}
!22 = !{!"any pointer", !6, i64 0}
!23 = !{!21, !5, i64 8}
!24 = !{!21, !6, i64 12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = !{!28, !28, i64 0}
!28 = !{!"_ZTS11UScriptCode", !6, i64 0}
!29 = distinct !{!29, !12}
end_hunk_1
