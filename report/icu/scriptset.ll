inline.NumInlined: 52
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_789ScriptSet12parseScriptsERKNS_13UnicodeStringER10UErrorCode:bb.a

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
