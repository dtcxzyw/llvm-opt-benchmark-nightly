Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.01?download=true
inline.NumInlined: 778
inline.NumDeleted: 277
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateNtNtBG_5token5CommaEEBG_:bb.a
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics17PredicateLifetimeEBF_.exit.i: ; preds = %bb.h, %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8lifetime8LifetimeNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateEBF_.exit

bb.j:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1893)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1896, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1896, !noundef !4 ; 4 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i, label %.lr.ph

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i: ; preds = %.lr.ph
  %i.aj = icmp eq i64 %i.al, %i.ah
  br i1 %i.aj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i
  %.sroa.0.0.i.i.i2.i6 = phi i64 [ %i.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i ], [ 0, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [248 x i8], ptr %i.af, i64 %.sroa.0.0.i.i.i2.i6
  %i.al = add i64 %.sroa.0.0.i.i.i2.i6, 1         ; 4 uses
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.ak)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i unwind label %bb.k, !noalias !1899, !inline_history !1063

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i: ; preds = %.lr.ph8
  %i.am = add i64 %.sroa.0.1.i.i.i4.i7, 1         ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.ah
  br i1 %i.an, label %.body.i.i5.i, label %.lr.ph8

bb.k:                                             ; preds = %.lr.ph
  %i.ao = landingpad { ptr, i32 }
          cleanup
  %i.ap = icmp eq i64 %i.al, %i.ah
  br i1 %i.ap, label %.body.i.i5.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i
  %.sroa.0.1.i.i.i4.i7 = phi i64 [ %i.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i ], [ %i.al, %bb.k ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [248 x i8], ptr %i.af, i64 %.sroa.0.1.i.i.i4.i7
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr4MetaEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(248) %i.aq)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i unwind label %bb.l, !noalias !1899, !inline_history !1063

bb.l:                                             ; preds = %.lr.ph8
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1899, !inline_history !1064
  unreachable

.body.i.i5.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit7.i.i.i3.i, %bb.k
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i6.i unwind label %bb.m, !inline_history !927

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEBF_.exit.i.i.i1.i, %bb.j
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i unwind label %bb.n, !inline_history !927

bb.m:                                             ; preds = %.body.i.i5.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !inline_history !927
  unreachable

bb.n:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i6.i

.body.i6.i:                                       ; preds = %bb.n, %.body.i.i5.i
  %eh.lpad-body.i7.i = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.ao, %.body.i.i5.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !range !76, !alias.scope !1900, !noundef !4
  %i.aw = icmp eq i64 %i.av, -1
  br i1 %i.aw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.body.i6.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.au)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i unwind label %bb.t, !inline_history !1903

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_.exit.i.i8.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !76, !alias.scope !1904, !noundef !4
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ax)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i unwind label %bb.q, !inline_history !1903

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i: ; preds = %bb.q, %bb.o, %.body.i6.i
  %.pn.i.i = phi { ptr, i32 } [ %i.ba, %bb.q ], [ %eh.lpad-body.i7.i, %bb.o ], [ %eh.lpad-body.i7.i, %.body.i6.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0) #17
          to label %bb.r unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i: ; preds = %bb.p, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit.i9.i
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty4TypeEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(360) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics13PredicateTypeEBF_.exit.i unwind label %bb.s

bb.r:                                             ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i
  %.pn2.i.i = phi { ptr, i32 } [ %i.bc, %bb.s ], [ %.pn.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bb) #17
          to label %common.resume.i unwind label %bb.t

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.t:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit.i.i, %bb.o
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics13PredicateTypeEBF_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsgbWeKYPjk8w_3syn8generics14BoundLifetimesEEB11_.exit5.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.be)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics14WherePredicateEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics17PredicateLifetimeEBF_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8generics13PredicateTypeEBF_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechE6resizeCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 6 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ugt i64 %1, %i.b
  br i1 %i.d, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn.exit

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.f = load i64, ptr %0, align 8, !range !1907, !alias.scope !1908, !noundef !4
  %i.g = sub nsw i64 %i.f, %i.b
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i, !prof !1913

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.e, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !1914
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.c, %bb.b
  %i.i = phi i64 [ %i.b, %bb.b ], [ %.pre.i, %bb.c ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1914, !nonnull !4, !noundef !4 ; 2 uses
  %i.l = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr i8, ptr %i.k, i64 %i.i     ; 2 uses
  %i.n = icmp ugt i64 %i.e, 1
  br i1 %i.n, label %._crit_edge.thread.i, label %._crit_edge.i

._crit_edge.thread.i:                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i
  %i.o = add i64 %i.e, -1                         ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.m, i8 %2, i64 %i.o, i1 false)
  %i.p = add i64 %i.o, %i.i                       ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.k, i64 %i.p
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i, %._crit_edge.thread.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %scevgep.i, %._crit_edge.thread.i ], [ %i.m, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i ]
  %storemerge.lcssa27.i = phi i64 [ %i.p, %._crit_edge.thread.i ], [ %i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn.exit.i ]
  store i8 %2, ptr %.sroa.0.0.lcssa28.i, align 1
  %i.q = add i64 %storemerge.lcssa27.i, 1
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn.exit

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn.exit: ; preds = %._crit_edge.i, %bb.a
  %storemerge = phi i64 [ %1, %bb.a ], [ %i.q, %._crit_edge.i ]
  store i64 %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE16into_boxed_sliceBI_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1907, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8 ; 2 uses
  %1 = inttoptr i64 %.sroa.410.0.copyload to ptr
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 288230376151711744
  tail call void @llvm.assume(i1 %i.f)
  %2 = icmp ne i64 %.sroa.410.0.copyload, 0
  tail call void @llvm.assume(i1 %2)
  %i.g = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #17
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, label %bb.e, !prof !1915

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge: ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #19
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE16into_boxed_sliceCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1907, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8 ; 2 uses
  %1 = inttoptr i64 %.sroa.410.0.copyload to ptr
  %i.f = icmp sgt i64 %.sroa.511.0.copyload, -1
  tail call void @llvm.assume(i1 %i.f)
  %2 = icmp ne i64 %.sroa.410.0.copyload, 0
  tail call void @llvm.assume(i1 %2)
  %i.g = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit unwind label %bb.g

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge, label %bb.e, !prof !1915

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit._crit_edge: ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCsgbWeKYPjk8w_3syn.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #19
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !1907, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !1913

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE8truncateCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB7_7CString3newINtNtBb_3vec3VechENtB2_11SpecNewImpl13spec_new_implCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !1916
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 5 uses
  %i.g = icmp samesign ult i64 %i.f, 16
  br i1 %i.g, label %.preheader.i, label %bb.b

.preheader.i:                                     ; preds = %bb.a
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.loopexit12, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %i.f)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %.loopexit, label %.loopexit12

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %.sroa.04.011.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.04.011.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !1923, !noundef !4
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i64 %.sroa.04.011.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i, label %.loopexit12, label %.lr.ph.i

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc
  %.sroa.5.0.i = phi i64 [ %i.j, %.noexc ], [ %.sroa.04.011.i, %.lr.ph.i ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.5.0.i, %i.f
  tail call void @llvm.assume(i1 %i.p)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5.0.i, ptr %.sroa.43.0..sroa_idx, align 8
  br label %bb.d

.loopexit12:                                      ; preds = %bb.c, %.noexc, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.q = call { ptr, i64 } @_RNvMs_NtNtCs4wP2HXfJTCR_5alloc3ffi5c_strNtB4_7CString19__from_vec_unchecked(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.r = extractvalue { ptr, i64 } %i.q, 0
  %i.s = extractvalue { ptr, i64 } %i.q, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %i.u, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.loopexit12, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.e
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsgbWeKYPjk8w_3syn.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtCsgbWeKYPjk8w_3syn11parse_quoteINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB7_4attr9AttributeENtB5_10ParseQuote5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [248 x i8], align 8               ; 5 uses
  %i.b = alloca [248 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val9 = load ptr, ptr %1, align 8, !noundef !4
  %.val810 = load ptr, ptr %i.f, align 8, !noundef !4
  %i.g = icmp eq ptr %.val9, %.val810
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.8.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.k, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.ac, %bb.k ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %common.resume unwind label %bb.o

bb.c:                                             ; preds = %.lr.ph, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn11parse_quoteNtNtB6_4attr9AttributeNtB4_10ParseQuote5parse(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.b, ptr noundef nonnull align 8 %1)
          to label %bb.d unwind label %bb.b

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  br label %bb.n
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn:bb.a
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %i.al = load i16, ptr %i.ak, align 4, !alias.scope !1951, !noalias !1954
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %i.al to i32
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12
  %i.an = load i8, ptr %i.am, align 4, !range !1974, !alias.scope !1975, !noalias !1978, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !1975, !noalias !1978
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !1975, !noalias !1978, !noundef !4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.as, align 4, !range !1962, !alias.scope !1975, !noalias !1978, !noundef !4
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.ar to i8
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.ar, -256
  br label %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ %.val.i.i.i, %bb.g ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.h ], [ %.val.i3.i.i, %bb.i ]
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.i ]
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ %i.ai, %bb.g ], [ undef, %bb.h ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.i ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.ap, %bb.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.an, %bb.i ]
  %.sink.i.i = phi i8 [ %i.x, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !range !1962, !alias.scope !1951, !noalias !1954, !noundef !4
  %i.at = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.045.i ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.013.sroa.0.0.insert.insert.i, ptr %i.at, align 4, !noalias !1961
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.sroa.1016.sroa.0.0.insert.insert.i, ptr %.sroa.430.0..sroa_idx.i, align 4, !noalias !1961
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !1961
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i8 %.sink.i.i, ptr %.sroa.632.0..sroa_idx.i, align 4, !noalias !1961
  %i.au = icmp eq i64 %i.s, 0
  br i1 %i.au, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !1961
  unreachable

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.045.i, ptr %i.p, align 8, !noalias !1948
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs3b5wA5ywLsd_10proc_macro9TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #17
          to label %bb.l unwind label %bb.j, !noalias !1961

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs3b5wA5ywLsd_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit: ; preds = %.lr.ph.i, %_RNvXs1b_Cs3b5wA5ywLsd_10proc_macroNtB6_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !1948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1948
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1983
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1983
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1983
  %i.h = load i64, ptr %i.b, align 8, !range !706, !noalias !1983, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1950, !noalias !1983, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !1913

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !1983
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !1983
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !1983, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1983
  store i64 %i.k, ptr %i.c, align 8, !noalias !1983
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !1983
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  br label %bb.c

bb.c:                                             ; preds = %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %.lr.ph.i
  %.sroa.014.074.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.v, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 22 uses
  %.sroa.7.071.i = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ] ; 3 uses
  %.sroa.10.070.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.t, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i ]
  %i.t = add i64 %.sroa.10.070.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.014.074.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.071.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1985)
  %i.x = load i32, ptr %.sroa.014.074.i, align 8, !range !619, !alias.scope !1988, !noalias !1989, !noundef !4 ; 2 uses
  switch i32 %i.x, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1991)
  %i.z = load i32, ptr %i.y, align 8, !range !625, !alias.scope !1994, !noalias !1995, !noundef !4
  %i.aa = trunc nuw i32 %i.z to i1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.ad = load i8, ptr %i.ac, align 8, !range !1997, !alias.scope !1994, !noalias !1995, !noundef !4
  %i.ae = load ptr, ptr %i.ab, align 8, !alias.scope !1994, !noalias !1995, !nonnull !4, !noundef !4 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !noalias !1998, !noundef !4 ; 2 uses
  %i.ag = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ah, ptr %i.ae, align 8, !noalias !1998
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i, !prof !1913

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 12
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 28
  %i.al = load i8, ptr %i.ak, align 4, !range !1997, !alias.scope !1999, !noalias !2002, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !alias.scope !1999, !noalias !2002, !noundef !4
  %.not.i.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not.i.i.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = invoke noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.am)
          to label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i unwind label %bb.t, !noalias !2004

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %.val2.i.i.i.i.i = load i32, ptr %i.aj, align 4, !range !1962, !alias.scope !2005, !noalias !2008, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !2005, !noalias !2008
  %i.aq = inttoptr i64 %.val1.i.i.i.i.i to ptr
  %.sroa.846.sroa.0.0.extract.trunc.i.i = trunc i32 %storemerge.i.i.i.i to i8
  %i.ar = and i32 %storemerge.i.i.i.i, -256
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i, %bb.f
  %.sroa.444.0.i.i = phi i32 [ %.val2.i.i.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ undef, %bb.f ] ; 2 uses
  %.sroa.10.0.i.i = phi i8 [ %i.al, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ undef, %bb.f ]
  %.sroa.846.sroa.0.0.i.i = phi i8 [ %.sroa.846.sroa.0.0.extract.trunc.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ %i.ad, %bb.f ]
  %.sroa.846.sroa.5.sroa.0.0.i.i = phi i32 [ %i.ar, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ 0, %bb.f ]
  %.sroa.545.0.i.i = phi ptr [ %i.aq, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ %i.ae, %bb.f ]
  %storemerge.i.i.i = phi i32 [ 0, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i.i.i ], [ 1, %bb.f ]
  %2 = ptrtoint ptr %.sroa.545.0.i.i to i64       ; 2 uses
  %.sroa.517.sroa.7.sroa.0.0.extract.trunc29.i = trunc i32 %.sroa.444.0.i.i to i8
  %.sroa.517.sroa.7.sroa.7.0.extract.shift32.i = lshr i32 %.sroa.444.0.i.i, 8
  %.sroa.11.sroa.0.0.extract.trunc22.i = trunc i64 %2 to i32
  %.sroa.11.sroa.6.0.extract.shift23.i = lshr i64 %2, 32
  %.sroa.11.sroa.6.0.extract.trunc24.i = trunc nuw i64 %.sroa.11.sroa.6.0.extract.shift23.i to i32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.j:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.au = load i8, ptr %i.at, align 8, !range !38, !alias.scope !1988, !noalias !1989, !noundef !4 ; 2 uses
  %.not25.i.i = icmp eq i8 %i.au, 2
  br i1 %.not25.i.i, label %bb.n, label %bb.m

bb.k:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4, !range !2010, !alias.scope !1988, !noalias !1989, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 12
  %i.ay = load i8, ptr %i.ax, align 4, !range !1968, !alias.scope !1988, !noalias !1989, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !alias.scope !1988, !noalias !1989, !noundef !4
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.l:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !76, !alias.scope !1988, !noalias !1989, !noundef !4
  %.not.i.i = icmp eq i64 %i.bc, -1
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.m:                                             ; preds = %bb.j
  %i.bd = invoke { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %.noexc12.i unwind label %bb.t, !noalias !2004 ; 2 uses

.noexc12.i:                                       ; preds = %bb.m
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1      ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %3 = lshr i64 %i.bf, 32
  %4 = trunc nuw i64 %3 to i32
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.val1.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !2011, !noalias !2014
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.bi = load i8, ptr %i.bh, align 8, !range !1968, !alias.scope !2011, !noalias !2014, !noundef !4
  %.sroa.09.sroa.5.0.insert.ext.i.i = zext nneg i8 %i.bi to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc12.i
  %.sroa.09.sroa.0.0.i.i = phi i64 [ %i.bg, %.noexc12.i ], [ %.val1.i.i.i, %bb.n ] ; 3 uses
  %.sroa.09.sroa.5.0.i.i = phi i64 [ %i.bf, %.noexc12.i ], [ %.sroa.09.sroa.5.0.insert.ext.i.i, %bb.n ]
  %.sroa.09.sroa.5.sroa.5.0.i.i = phi i32 [ %4, %.noexc12.i ], [ 0, %bb.n ]
  %.sroa.517.sroa.0.0.extract.trunc.i.a = trunc i64 %.sroa.09.sroa.0.0.i.i to i32
  %.sroa.517.sroa.7.0.extract.shift.i.a = lshr i64 %.sroa.09.sroa.0.0.i.i, 32
  %.sroa.517.sroa.7.sroa.0.0.extract.trunc.i.a = trunc i64 %.sroa.517.sroa.7.0.extract.shift.i.a to i8
  %sum.shift63.i = lshr i64 %.sroa.09.sroa.0.0.i.i, 40
  %.sroa.517.sroa.7.sroa.7.0.extract.trunc.i.a = trunc nuw nsw i64 %sum.shift63.i to i32
  %.sroa.11.sroa.0.0.extract.trunc22.i.a = trunc i64 %.sroa.09.sroa.5.0.i.i to i32
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2016
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bb)
          to label %.noexc13.i unwind label %bb.t, !noalias !2004

.noexc13.i:                                       ; preds = %bb.p
  %.sroa.07.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !2016
  %.sroa.48.sroa.0.0.copyload.i.i = load i32, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !2016
  %.sroa.48.sroa.4.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.4.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2016
  %.sroa.48.sroa.5.0.copyload.i.i = load i32, ptr %.sroa.48.sroa.5.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !2016
  %.sroa.48.sroa.6.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.6.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 4, !noalias !2016
  %.sroa.48.sroa.7.0.copyload.i.i = load i8, ptr %.sroa.48.sroa.7.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 1, !noalias !2016
  %.sroa.48.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.48.sroa.8.0..sroa.48.0..sroa_idx.sroa_idx.i.i, align 2, !noalias !2016
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2016
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 28
  %i.bl = load i8, ptr %i.bk, align 4, !range !1974, !alias.scope !2017, !noalias !2020, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 29
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !2017, !noalias !2020
  %.val2.i.i.i = load i32, ptr %i.bj, align 8, !range !1962, !alias.scope !2017, !noalias !2020, !noundef !4
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 24
  %i.bp = load i32, ptr %i.bo, align 8, !alias.scope !2017, !noalias !2020, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.014.074.i, i64 20
  %.val.i26.i.i = load i32, ptr %i.bq, align 4, !range !1962, !alias.scope !2017, !noalias !2020, !noundef !4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc13.i
  %.sroa.53.sroa.9.0.i.i = phi i16 [ undef, %bb.q ], [ %.sroa.48.sroa.8.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.8.0.i.i = phi i8 [ %i.bn, %bb.q ], [ %.sroa.48.sroa.7.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.7.0.i.i = phi i8 [ %i.bl, %bb.q ], [ %.sroa.48.sroa.6.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.6.0.i.i = phi i32 [ %i.bp, %bb.q ], [ %.sroa.48.sroa.5.0.copyload.i.i, %.noexc13.i ] ; 2 uses
  %.sroa.53.sroa.5.0.i.i = phi i32 [ %.val.i26.i.i, %bb.q ], [ %.sroa.48.sroa.4.0.copyload.i.i, %.noexc13.i ]
  %.sroa.53.sroa.0.0.i.i = phi i32 [ %.val2.i.i.i, %bb.q ], [ %.sroa.48.sroa.0.0.copyload.i.i, %.noexc13.i ]
  %.sroa.01.0.i.i = phi i64 [ -1, %bb.q ], [ %.sroa.07.0.copyload.i.i, %.noexc13.i ] ; 3 uses
  %.sroa.517.sroa.0.0.extract.trunc25.i = trunc i64 %.sroa.01.0.i.i to i32
  %.sroa.517.sroa.7.0.extract.shift26.i = lshr i64 %.sroa.01.0.i.i, 32
  %.sroa.517.sroa.7.sroa.0.0.extract.trunc28.i = trunc i64 %.sroa.517.sroa.7.0.extract.shift26.i to i8
  %sum.shift.i = lshr i64 %.sroa.01.0.i.i, 40
  %.sroa.517.sroa.7.sroa.7.0.extract.trunc31.i = trunc nuw nsw i64 %sum.shift.i to i32
  %.sroa.15.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.53.sroa.6.0.i.i to i8
  %.sroa.15.sroa.6.0.extract.shift.i = and i32 %.sroa.53.sroa.6.0.i.i, -256
  br label %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i

_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i: ; preds = %bb.r, %bb.o, %bb.k, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i
  %.sroa.517.sroa.7.sroa.7.sroa.0.0.i = phi i32 [ %.sroa.517.sroa.7.sroa.7.0.extract.shift32.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.517.sroa.7.sroa.7.0.extract.trunc.i.a, %bb.o ], [ 0, %bb.k ], [ %.sroa.517.sroa.7.sroa.7.0.extract.trunc31.i, %bb.r ]
  %.sroa.517.sroa.7.sroa.0.0.i = phi i8 [ %.sroa.517.sroa.7.sroa.0.0.extract.trunc29.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.517.sroa.7.sroa.0.0.extract.trunc.i.a, %bb.o ], [ %i.ay, %bb.k ], [ %.sroa.517.sroa.7.sroa.0.0.extract.trunc28.i, %bb.r ]
  %.sroa.517.sroa.0.0.i = phi i32 [ %storemerge.i.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.517.sroa.0.0.extract.trunc.i.a, %bb.o ], [ %i.ba, %bb.k ], [ %.sroa.517.sroa.0.0.extract.trunc25.i, %bb.r ]
  %.sroa.11.sroa.6.0.i = phi i32 [ %.sroa.11.sroa.6.0.extract.trunc24.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.09.sroa.5.sroa.5.0.i.i, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.5.0.i.i, %bb.r ]
  %.sroa.11.sroa.0.0.i = phi i32 [ %.sroa.11.sroa.0.0.extract.trunc22.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.11.sroa.0.0.extract.trunc22.i.a, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.0.0.i.i, %bb.r ]
  %.sroa.15.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.846.sroa.5.sroa.0.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.o ], [ 0, %bb.k ], [ %.sroa.15.sroa.6.0.extract.shift.i, %bb.r ]
  %.sroa.15.sroa.0.0.i = phi i8 [ %.sroa.846.sroa.0.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ %i.au, %bb.o ], [ undef, %bb.k ], [ %.sroa.15.sroa.0.0.extract.trunc.i, %bb.r ]
  %.sroa.21.0.i = phi i16 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.9.0.i.i, %bb.r ]
  %.sroa.20.0.i = phi i8 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.8.0.i.i, %bb.r ]
  %.sroa.18.0.i = phi i8 [ %.sroa.10.0.i.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ undef, %bb.k ], [ %.sroa.53.sroa.7.0.i.i, %bb.r ]
  %.sroa.416.0.i = phi i32 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.o ], [ %i.aw, %bb.k ], [ undef, %bb.r ]
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.071.i ; 8 uses
  %.sroa.517.sroa.7.sroa.7.0.insert.ext.i = shl nuw i32 %.sroa.517.sroa.7.sroa.7.sroa.0.0.i, 8
  %.sroa.517.sroa.7.sroa.0.0.insert.ext.i = zext i8 %.sroa.517.sroa.7.sroa.0.0.i to i32
  %.sroa.517.sroa.7.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.517.sroa.7.sroa.7.0.insert.ext.i, %.sroa.517.sroa.7.sroa.0.0.insert.ext.i
  %.sroa.517.sroa.7.0.insert.ext.i = zext i32 %.sroa.517.sroa.7.sroa.0.0.insert.insert.i to i64
  %.sroa.517.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.517.sroa.7.0.insert.ext.i, 32
  %.sroa.517.sroa.0.0.insert.ext.i = zext i32 %.sroa.517.sroa.0.0.i to i64
  %.sroa.517.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.517.sroa.7.0.insert.shift.i, %.sroa.517.sroa.0.0.insert.ext.i
  %.sroa.11.sroa.6.0.insert.ext.i = zext i32 %.sroa.11.sroa.6.0.i to i64
  %.sroa.11.sroa.6.0.insert.shift.i = shl nuw i64 %.sroa.11.sroa.6.0.insert.ext.i, 32
  %.sroa.11.sroa.0.0.insert.ext.i = zext i32 %.sroa.11.sroa.0.0.i to i64
  %.sroa.11.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.11.sroa.6.0.insert.shift.i, %.sroa.11.sroa.0.0.insert.ext.i
  %.sroa.15.sroa.0.0.insert.ext.i = zext i8 %.sroa.15.sroa.0.0.i to i32
  %.sroa.15.sroa.0.0.insert.insert.i = or i32 %.sroa.15.sroa.6.sroa.0.0.i, %.sroa.15.sroa.0.0.insert.ext.i
  store i32 %i.x, ptr %i.br, align 8, !noalias !2004
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 %.sroa.416.0.i, ptr %.sroa.448.0..sroa_idx.i, align 4, !noalias !2004
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.sroa.517.sroa.0.0.insert.insert.i, ptr %.sroa.549.0..sroa_idx.i, align 8, !noalias !2004
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.sroa.11.sroa.0.0.insert.insert.i, ptr %.sroa.650.0..sroa_idx.i, align 8, !noalias !2004
  %.sroa.751.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i32 %.sroa.15.sroa.0.0.insert.insert.i, ptr %.sroa.751.0..sroa_idx.i, align 8, !noalias !2004
  %.sroa.852.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  store i8 %.sroa.18.0.i, ptr %.sroa.852.0..sroa_idx.i, align 4, !noalias !2004
  %.sroa.953.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 29
  store i8 %.sroa.20.0.i, ptr %.sroa.953.0..sroa_idx.i, align 1, !noalias !2004
  %.sroa.1054.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 30
  store i16 %.sroa.21.0.i, ptr %.sroa.1054.0..sroa_idx.i, align 2, !noalias !2004
  %i.bs = icmp eq i64 %i.t, 0
  br i1 %i.bs, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit, label %bb.c

bb.s:                                             ; preds = %bb.t
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2004
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.m, %bb.h
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.071.i, ptr %i.q, align 8, !noalias !1983
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.u unwind label %bb.s, !noalias !2004

bb.u:                                             ; preds = %bb.t
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtCs6et67aoV1xO_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECsgbWeKYPjk8w_3syn.exit: ; preds = %bb.c, %_RNvXsO_Cs6et67aoV1xO_11proc_macro2NtB5_9TokenTreeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !1983
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1983
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [248 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2022
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2022
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 37191016277640226) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 248), !noalias !2022
  %i.h = load i64, ptr %i.a, align 8, !range !706, !noalias !2022, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1950, !noalias !2022, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !1913

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2022
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2022
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2022, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2022
  store i64 %i.k, ptr %i.c, align 8, !noalias !2022
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2022
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [248 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2022
  invoke void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4attr9AttributeNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(none) dereferenceable(248) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !2026

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 248
  %i.x = getelementptr inbounds nuw [248 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.x, ptr noundef nonnull align 8 dereferenceable(248) %i.b, i64 248, i1 false), !noalias !2026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2022
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2026
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2022
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.e, !noalias !2026

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn4attr9AttributeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit: ; preds = %.lr.ph.i, %bb.d, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !2022
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !2027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2022
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBJ_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2028
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2028
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 230584300921369396) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 40), !noalias !2028
  %i.h = load i64, ptr %i.a, align 8, !range !706, !noalias !2028, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !1950, !noalias !2028, !noundef !4 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, !prof !1913

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !2028
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #19, !noalias !2028
  unreachable

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !2028, !nonnull !4, !noundef !4 ; 2 uses
  %i.o = icmp samesign ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2028
  store i64 %i.k, ptr %i.c, align 8, !noalias !2028
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !2028
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i, %bb.d
  %.sroa.012.023.i = phi ptr [ %i.w, %bb.d ], [ %i.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.v, %bb.d ], [ 0, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.t, %bb.d ], [ %i.k, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgbWeKYPjk8w_3syn.exit.i ]
  %i.t = add i64 %.sroa.10.021.i, -1              ; 2 uses
  %i.u = icmp eq ptr %.sroa.012.023.i, %i.r
  br i1 %i.u, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2028
  invoke void @_RNvXs4_NtCsgbWeKYPjk8w_3syn5errorNtB5_12ErrorMessageNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.012.023.i)
          to label %bb.d unwind label %bb.f, !noalias !2032

bb.d:                                             ; preds = %bb.c
  %i.v = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 40
  %i.x = getelementptr inbounds nuw [40 x i8], ptr %i.n, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false), !noalias !2032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2028
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %_RINvXNvMNtCs4wP2HXfJTCR_5alloc5sliceSp9to_vec_inNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_.exit, label %.lr.ph.i

bb.e:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16, !noalias !2032
  unreachable

bb.f:                                             ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.q, align 8, !noalias !2028
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn5error12ErrorMessageEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #17
          to label %bb.g unwind label %bb.e, !noalias !2032
end_hunk_1
