inline.NumInlined: 606
inline.NumDeleted: 171
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMNtCsgbWeKYPjk8w_3syn6bufferNtB2_11TokenBuffer4new2:bb.a
bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn6buffer5EntryEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #18
          to label %.body.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !939, !noalias !942, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.r = add nuw nsw i64 %i.g, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !939, !noalias !942
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.s = call { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE16into_boxed_sliceBI_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret { ptr, i64 } %i.s

bb.g:                                             ; preds = %.body.thread
  resume { ptr, i32 } %eh.lpad-body5

.body.thread:                                     ; preds = %bb.d, %.body.thread6
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.f, %.body.thread6 ], [ %i.n, %bb.d ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.g unwind label %bb.h

bb.h:                                             ; preds = %.body.thread
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtCsgbWeKYPjk8w_3syn3mac8printingNtB4_14MacroDelimiter8surround(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 {
switch.lookup:
  %i.a = load i32, ptr %0, align 4, !range !508, !noundef !5
  %switch.idx.cast = trunc nuw i32 %i.a to i8
  %.sroa.02.0.in = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.02.0 = load i32, ptr %.sroa.02.0.in, align 4
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn5token8printing5delim(i8 noundef %switch.idx.cast, i32 noundef %.sroa.02.0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %2)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor10peek_punct(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias nofree noundef nonnull readonly captures(address) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 4 uses
  %i.b = add i64 %3, -1
  %.not.i.i19 = icmp samesign eq i64 %3, 0
  br i1 %.not.i.i19, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread, label %.lr.ph

.loopexit:                                        ; preds = %.preheader
  %.not.i.i = icmp eq ptr %.sroa.012.1, %i.a
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.sroa.0.01322 = phi ptr [ %.sroa.06.0, %.loopexit ], [ %0, %bb.a ] ; 3 uses
  %.sroa.012.021 = phi ptr [ %.sroa.012.1, %.loopexit ], [ %2, %bb.a ] ; 5 uses
  %.sroa.11.020 = phi i64 [ %i.ak, %.loopexit ], [ 0, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 1 ; 3 uses
  %i.d = load i8, ptr %.sroa.012.021, align 1, !noalias !944, !noundef !5 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i: ; preds = %.lr.ph
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %i.a
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !944, !noundef !5
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
  br i1 %i.o, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.p = zext nneg i8 %i.d to i32
  br label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i
  %i.q = icmp ne ptr %i.i, %i.a
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 3 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !noalias !944, !noundef !5
  %i.t = shl nuw nsw i32 %i.m, 6
  %i.u = and i8 %i.s, 63
  %i.v = zext nneg i8 %i.u to i32
  %i.w = or disjoint i32 %i.t, %i.v               ; 2 uses
  %i.x = shl nuw nsw i32 %i.g, 12
  %i.y = or disjoint i32 %i.w, %i.x
  %i.z = icmp samesign ugt i8 %i.d, -17
  br i1 %i.z, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i, label %bb.c

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i
  %i.aa = icmp ne ptr %i.r, %i.a
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.012.021, i64 4
  %i.ac = load i8, ptr %i.r, align 1, !noalias !944, !noundef !5
  %i.ad = shl nuw nsw i32 %i.g, 18
  %i.ae = and i32 %i.ad, 1835008
  %i.af = shl nuw nsw i32 %i.w, 6
  %i.ag = and i8 %i.ac, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  %i.aj = or disjoint i32 %i.ai, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i, %bb.b, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i
  %.sroa.012.1 = phi ptr [ %i.c, %bb.b ], [ %i.ab, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i ], [ %i.r, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i ], [ %i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.p, %bb.b ], [ %i.aj, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit16.i.i.i ], [ %i.y, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit14.i.i.i ], [ %i.n, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit12.i.i.i ]
  %i.ak = add nuw i64 %.sroa.11.020, 1
  %i.al = load i32, ptr %.sroa.0.01322, align 8, !range !808, !noundef !5 ; 3 uses
  %i.am = icmp samesign ult i32 %i.al, 2
  br i1 %i.am, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.sroa.0.1 = phi ptr [ %.sroa.0.0.i10, %bb.g ], [ %.sroa.0.01322, %bb.c ] ; 3 uses
  %i.an = phi i32 [ %i.av, %bb.g ], [ %i.al, %bb.c ]
  %i.ao = trunc nuw i32 %i.an to i1
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 16
  %i.aq = load i8, ptr %i.ap, align 8, !range !951, !noalias !952, !noundef !5
  %i.ar = icmp eq i8 %i.aq, 3
  br i1 %i.ar, label %.preheader38, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread

bb.e:                                             ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 20
  %i.at = load i8, ptr %i.as, align 4, !range !951, !noalias !952, !noundef !5
  %i.au = icmp eq i8 %i.at, 3
  br i1 %i.au, label %.preheader38, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread

.preheader38:                                     ; preds = %bb.e, %bb.d
  br label %bb.f

bb.f:                                             ; preds = %.preheader38, %bb.f
  %.pn.i = phi ptr [ %.sroa.0.0.i10, %bb.f ], [ %.sroa.0.1, %.preheader38 ]
  %.sroa.0.0.i10 = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.av = load i32, ptr %.sroa.0.0.i10, align 8, !range !808, !noalias !952, !noundef !5 ; 4 uses
  %i.aw = icmp ne i32 %i.av, 5
  %i.ax = icmp eq ptr %.sroa.0.0.i10, %1
  %or.cond.i = or i1 %i.aw, %i.ax
  br i1 %or.cond.i, label %bb.g, label %bb.f

bb.g:                                             ; preds = %bb.f
  %i.ay = icmp samesign ult i32 %i.av, 2
  br i1 %i.ay, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.g, %bb.c
  %i.az = phi i32 [ %i.al, %bb.c ], [ %i.av, %bb.g ]
  %.sroa.0.2 = phi ptr [ %.sroa.0.01322, %bb.c ], [ %.sroa.0.0.i10, %bb.g ] ; 3 uses
  %i.ba = icmp eq i32 %i.az, 3
  br i1 %i.ba, label %bb.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread

bb.h:                                             ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !range !955, !noundef !5
  %i.bd = icmp eq i32 %i.bc, %spec.select.i.ph.i
  br i1 %i.bd, label %bb.i, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.be = icmp eq i64 %.sroa.11.020, %i.b
  br i1 %i.be, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 12
  %i.bg = load i8, ptr %i.bf, align 4, !range !956, !noundef !5
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.preheader, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread

.preheader:                                       ; preds = %bb.j, %.preheader
  %.pn = phi ptr [ %.sroa.06.0, %.preheader ], [ %.sroa.0.2, %bb.j ]
  %.sroa.06.0 = getelementptr inbounds nuw i8, ptr %.pn, i64 32 ; 4 uses
  %i.bi = load i32, ptr %.sroa.06.0, align 8, !range !808, !noundef !5
  %i.bj = icmp ne i32 %i.bi, 5
  %i.bk = icmp eq ptr %.sroa.06.0, %1
  %or.cond = or i1 %i.bj, %i.bk
  br i1 %or.cond, label %.loopexit, label %.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn.exit.thread: ; preds = %bb.j, %bb.h, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit, %bb.i, %.loopexit, %bb.d, %bb.e, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.i ], [ false, %.loopexit ], [ false, %bb.h ], [ false, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit ], [ false, %bb.j ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor10token_tree(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = load i32, ptr %1, align 8, !range !808, !noundef !5 ; 3 uses
  %i.c = icmp samesign ugt i32 %i.b, 1
  %i.d = zext nneg i32 %i.b to i64
  %i.e = add nsw i64 %i.d, -1
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
    i64 4, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %i.g = trunc nuw i32 %i.b to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i8, ptr %i.i, align 8, !range !951, !alias.scope !957, !noalias !960, !noundef !5
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !957, !noalias !960, !nonnull !5, !noundef !5 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !962, !noundef !5 ; 2 uses
  %i.m = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.n, ptr %i.k, align 8, !noalias !962
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %bb.h, !prof !963

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i8, ptr %i.q, align 4, !range !951, !alias.scope !964, !noalias !967, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !alias.scope !964, !noalias !967, !noundef !5
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.s), !noalias !967
  br label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i = phi i32 [ %i.u, %bb.f ], [ 0, %bb.e ]
  %.val2.i.i.i = load i32, ptr %i.p, align 4, !range !969, !alias.scope !970, !noalias !973, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !970, !noalias !973
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.k to i64
  %.sroa.11.16.insert.ext = zext nneg i8 %i.j to i32
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i, %bb.h
  %.sroa.487.0 = phi i32 [ undef, %bb.h ], [ %.val2.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ] ; 2 uses
  %.sroa.788.0 = phi i64 [ %i.w, %bb.h ], [ %.val1.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ]
  %.sroa.11.0 = phi i32 [ %.sroa.11.16.insert.ext, %bb.h ], [ %storemerge.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ] ; 2 uses
  %.sroa.15.0 = phi i8 [ undef, %bb.h ], [ %i.r, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ]
  %storemerge.i = phi i32 [ 1, %bb.h ], [ 0, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ]
  %.sroa.487.4.extract.trunc = trunc i32 %.sroa.487.0 to i8
  %.sroa.487.5.extract.shift = lshr i32 %.sroa.487.0, 8
  %.sroa.487.5.extract.trunc = trunc nuw i32 %.sroa.487.5.extract.shift to i24
  %.sroa.11.16.extract.trunc = trunc i32 %.sroa.11.0 to i8
  %.sroa.11.17.extract.shift = lshr i32 %.sroa.11.0, 8
  %.sroa.11.17.extract.trunc = trunc nuw i32 %.sroa.11.17.extract.shift to i24
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !5
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !26, !noundef !5
  %.not74 = icmp eq i8 %i.ab, 2
  br i1 %.not74, label %bb.o, label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !range !955, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.af = load i8, ptr %i.ae, align 4, !range !956, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !5
  br label %bb.m

bb.k:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !range !66, !noundef !5
  %.not = icmp eq i64 %i.aj, -1
  br i1 %.not, label %bb.q, label %bb.p

bb.l:                                             ; preds = %bb.a
  store i32 -1, ptr %0, align 8
  br label %bb.t

bb.m:                                             ; preds = %bb.p, %bb.q, %bb.n, %bb.o, %bb.j, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit
  %.sroa.5.sroa.8.sroa.5.sroa.0.0 = phi i24 [ %.sroa.11.17.extract.trunc, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.j ], [ %.sroa.577.sroa.4.0.extract.trunc, %bb.q ], [ %.sroa.6.sroa.0.0.copyload, %bb.p ]
  %.sroa.5.sroa.8.sroa.5.sroa.3.0 = phi i8 [ %.sroa.15.0, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.j ], [ %i.av, %bb.q ], [ %.sroa.6.sroa.4.0.copyload, %bb.p ]
  %.sroa.5.sroa.8.sroa.5.sroa.4.0 = phi i8 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.j ], [ %i.ax, %bb.q ], [ %.sroa.6.sroa.5.0.copyload, %bb.p ]
  %.sroa.5.sroa.8.sroa.5.sroa.5.0 = phi i16 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ undef, %bb.o ], [ undef, %bb.n ], [ undef, %bb.j ], [ undef, %bb.q ], [ %.sroa.6.sroa.6.0.copyload, %bb.p ]
  %.sroa.5.sroa.8.sroa.0.0 = phi i64 [ %.sroa.788.0, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %.sroa.744.0.insert.ext, %bb.o ], [ %i.an, %bb.n ], [ undef, %bb.j ], [ %.val2.i, %bb.q ], [ %.sroa.472.0.copyload, %bb.p ]
  %.sroa.5.sroa.8.sroa.4.0 = phi i8 [ %.sroa.11.16.extract.trunc, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ 2, %bb.o ], [ %i.ao, %bb.n ], [ undef, %bb.j ], [ %.sroa.577.sroa.0.0.extract.trunc, %bb.q ], [ %.sroa.573.0.copyload, %bb.p ]
  %.sroa.5.sroa.7.sroa.0.0 = phi i24 [ %.sroa.487.5.extract.trunc, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %.sroa.4.5.extract.trunc, %bb.o ], [ %.sroa.057.5.extract.trunc, %bb.n ], [ undef, %bb.j ], [ -1, %bb.q ], [ %.sroa.065.sroa.6.0.extract.trunc, %bb.p ]
  %.sroa.5.sroa.6.0 = phi i8 [ %.sroa.487.4.extract.trunc, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %.sroa.4.4.extract.trunc, %bb.o ], [ %.sroa.057.4.extract.trunc, %bb.n ], [ %i.af, %bb.j ], [ -1, %bb.q ], [ %.sroa.065.sroa.5.0.extract.trunc, %bb.p ]
  %.sroa.5.sroa.2.0 = phi i32 [ %storemerge.i, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ %.val1.i, %bb.o ], [ %.sroa.057.0.extract.trunc, %bb.n ], [ %i.ah, %bb.j ], [ -1, %bb.q ], [ %.sroa.065.sroa.0.0.extract.trunc, %bb.p ]
  %.sroa.5.sroa.0.0 = phi i32 [ undef, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ undef, %bb.o ], [ undef, %bb.n ], [ %i.ad, %bb.j ], [ undef, %bb.q ], [ undef, %bb.p ]
  %.sroa.04.0 = phi i64 [ %i.y, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.j ], [ 1, %bb.q ], [ 1, %bb.p ]
  %.sroa.0.0 = phi i32 [ 0, %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit ], [ 1, %bb.o ], [ 1, %bb.n ], [ 2, %bb.j ], [ 3, %bb.q ], [ 3, %bb.p ]
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.sroa.04.0
  br label %bb.r

bb.n:                                             ; preds = %bb.i
  %i.al = tail call { ptr, i64 } @_RNvXsf_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxeENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.z) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = load i8, ptr %i.aa, align 8, !range !956, !noundef !5
  %i.ap = ptrtoint ptr %i.am to i64               ; 3 uses
  %.sroa.057.0.extract.trunc = trunc i64 %i.ap to i32
  %.sroa.057.4.extract.shift = lshr i64 %i.ap, 32
  %.sroa.057.4.extract.trunc = trunc i64 %.sroa.057.4.extract.shift to i8
  %.sroa.057.5.extract.shift = lshr i64 %i.ap, 40
  %.sroa.057.5.extract.trunc = trunc nuw i64 %.sroa.057.5.extract.shift to i24
  br label %bb.m

bb.o:                                             ; preds = %bb.i
  %.val1.i = load i32, ptr %i.z, align 8, !range !969, !alias.scope !975, !noalias !978, !noundef !5
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i8, ptr %i.aq, align 8, !range !956, !alias.scope !975, !noalias !978, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val.i = load i32, ptr %i.as, align 4, !range !969, !alias.scope !975, !noalias !978, !noundef !5 ; 2 uses
  %.sroa.4.4.extract.trunc = trunc i32 %.val.i to i8
  %.sroa.4.5.extract.shift = lshr i32 %.val.i, 8
  %.sroa.4.5.extract.trunc = trunc nuw i32 %.sroa.4.5.extract.shift to i24
  %.sroa.744.0.insert.ext = zext nneg i8 %i.ar to i64
  br label %bb.m

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
  %.sroa.071.0.copyload = load i64, ptr %i.a, align 8 ; 3 uses
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.472.0.copyload = load i64, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.573.0.copyload = load i8, ptr %.sroa.573.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %.sroa.6.sroa.0.0.copyload = load i24, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.6.sroa.4.0.copyload = load i8, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 4
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %.sroa.6.sroa.5.0.copyload = load i8, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 1
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.sroa.6.sroa.6.0.copyload = load i16, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.065.sroa.0.0.extract.trunc = trunc i64 %.sroa.071.0.copyload to i32
  %.sroa.065.sroa.5.0.extract.shift = lshr i64 %.sroa.071.0.copyload, 32
  %.sroa.065.sroa.5.0.extract.trunc = trunc i64 %.sroa.065.sroa.5.0.extract.shift to i8
  %.sroa.065.sroa.6.0.extract.shift = lshr i64 %.sroa.071.0.copyload, 40
  %.sroa.065.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.065.sroa.6.0.extract.shift to i24
  br label %bb.m

bb.q:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.av = load i8, ptr %i.au, align 4, !range !980, !alias.scope !981, !noalias !984, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 29
  %i.ax = load i8, ptr %i.aw, align 1, !alias.scope !981, !noalias !984
  %.val2.i = load i64, ptr %i.at, align 8, !alias.scope !981, !noalias !984
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !alias.scope !981, !noalias !984, !noundef !5 ; 2 uses
  %.sroa.577.sroa.0.0.extract.trunc = trunc i32 %i.az to i8
  %.sroa.577.sroa.4.0.extract.shift = lshr i32 %i.az, 8
  %.sroa.577.sroa.4.0.extract.trunc = trunc nuw i32 %.sroa.577.sroa.4.0.extract.shift to i24
  br label %bb.m

bb.r:                                             ; preds = %bb.r, %bb.m
  %.sroa.029.0 = phi ptr [ %i.ak, %bb.m ], [ %i.bd, %bb.r ] ; 4 uses
  %i.ba = load i32, ptr %.sroa.029.0, align 8, !range !808, !noundef !5
  %i.bb = icmp ne i32 %i.ba, 5
  %i.bc = icmp eq ptr %.sroa.029.0, %2
  %or.cond = or i1 %i.bc, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.029.0, i64 32
  br i1 %or.cond, label %bb.s, label %bb.r

bb.s:                                             ; preds = %bb.r
  store i32 %.sroa.0.0, ptr %0, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.5.sroa.2.0, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.5.sroa.6.0, ptr %.sroa.636.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i24 %.sroa.5.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.sroa.8.sroa.0.0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5.sroa.8.sroa.4.0, ptr %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx, align 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i24 %.sroa.5.sroa.8.sroa.5.sroa.0.0, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx, align 1
  %.sroa.8.sroa.5.sroa.4.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %.sroa.5.sroa.8.sroa.5.sroa.3.0, ptr %.sroa.8.sroa.5.sroa.4.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 4
  %.sroa.8.sroa.5.sroa.5.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %.sroa.5.sroa.8.sroa.5.sroa.4.0, ptr %.sroa.8.sroa.5.sroa.5.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 1
  %.sroa.8.sroa.5.sroa.6.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %.sroa.5.sroa.8.sroa.5.sroa.5.0, ptr %.sroa.8.sroa.5.sroa.6.0..sroa.8.sroa.5.0..sroa.8.0..sroa_idx.sroa_idx.sroa_idx, align 2
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.029.0, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %.sroa.10.0..sroa_idx, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor12peek_keyword(ptr nofree noundef readonly captures(address, read_provenance) %0, ptr nofree noundef readnone captures(address) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i32, ptr %0, align 8, !range !808, !noundef !5 ; 3 uses
  %i.c = icmp samesign ult i32 %i.b, 2
  br i1 %i.c, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.0.01 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %0, %bb.a ] ; 3 uses
  %i.d = phi i32 [ %i.l, %bb.e ], [ %i.b, %bb.a ]
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !951, !noalias !986, !noundef !5
  %i.h = icmp eq i8 %i.g, 3
  br i1 %i.h, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01, i64 20
  %i.j = load i8, ptr %i.i, align 4, !range !951, !noalias !986, !noundef !5
  %i.k = icmp eq i8 %i.j, 3
  br i1 %i.k, label %.preheader, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.01, %.preheader ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.l = load i32, ptr %.sroa.0.0.i, align 8, !range !808, !noalias !986, !noundef !5 ; 4 uses
  %i.m = icmp ne i32 %i.l, 5
  %i.n = icmp eq ptr %.sroa.0.0.i, %1
  %or.cond.i = or i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ult i32 %i.l, 2
  br i1 %i.o, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.e, %bb.a
  %i.p = phi i32 [ %i.b, %bb.a ], [ %i.l, %bb.e ]
  %.sroa.0.1 = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.i, %bb.e ]
  %i.q = icmp eq i32 %i.p, 2
  br i1 %i.q, label %bb.f, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.f:                                             ; preds = %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 8
  %i.t = call noundef zeroext i1 @_RNvXss_NtCs6et67aoV1xO_11proc_macro23impNtB5_5IdentINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eqCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread: ; preds = %bb.b, %bb.c, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit, %bb.f
  %.sroa.0.0 = phi i1 [ %i.t, %bb.f ], [ false, %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit ], [ false, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor12token_stream(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMCs6et67aoV1xO_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.sroa.3.0 = phi ptr [ %2, %bb.a ], [ %i.h, %bb.e ]
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.e ]
  invoke void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor10token_tree(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef %.sroa.0.0, ptr noundef %.sroa.3.0)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro211TokenStreamECsgbWeKYPjk8w_3syn(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #18
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.a, align 8, !range !907, !noundef !5
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.c, align 8, !noundef !5
  %i.h = load ptr, ptr %i.d, align 8, !noundef !5
  invoke void @_RNvXs2_NtCsgbWeKYPjk8w_3syn3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt6append(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.g:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.h:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor15any_group_token(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !808, !noundef !5 ; 2 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.d
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 2, ptr %0, align 8
  br label %bb.j

bb.d:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.e, %bb.b ], [ %i.i, %bb.d ] ; 4 uses
  %i.f = load i32, ptr %.sroa.0.0, align 8, !range !808, !noundef !5
  %i.g = icmp ne i32 %i.f, 5
  %i.h = icmp eq ptr %.sroa.0.0, %2
  %or.cond = or i1 %i.h, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  br i1 %or.cond, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.j = trunc nuw i32 %i.a to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i8, ptr %i.l, align 8, !range !951, !alias.scope !989, !noalias !992, !noundef !5
  %i.n = load ptr, ptr %i.k, align 8, !alias.scope !989, !noalias !992, !nonnull !5, !noundef !5 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !994, !noundef !5 ; 2 uses
  %i.p = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !noalias !994
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.i, label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, !prof !963

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i8, ptr %i.t, align 4, !range !951, !alias.scope !995, !noalias !998, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8, !alias.scope !995, !noalias !998, !noundef !5
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call noundef i32 @_RNvXsa_NtNtCs3b5wA5ywLsd_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v), !noalias !998
  br label %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i

_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i = phi i32 [ %i.x, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.val2.i.i.i = load i32, ptr %i.s, align 4, !range !969, !alias.scope !1000, !noalias !1003, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !1000, !noalias !1003
  %i.z = inttoptr i64 %.val1.i.i.i to ptr
  %.sroa.8.sroa.0.0.extract.trunc = trunc i32 %storemerge.i.i to i8
  %.sroa.8.sroa.5.0.extract.shift = and i32 %storemerge.i.i, -256
  br label %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit

bb.i:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit: ; preds = %bb.f, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i
  %.sroa.8.sroa.5.sroa.0.0 = phi i32 [ %.sroa.8.sroa.5.0.extract.shift, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ], [ 0, %bb.f ]
  %.sroa.8.sroa.0.0 = phi i8 [ %.sroa.8.sroa.0.0.extract.trunc, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ], [ %i.m, %bb.f ]
  %.sroa.10.0 = phi i8 [ %i.u, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ], [ undef, %bb.f ]
  %.sroa.4.0 = phi i32 [ %.val2.i.i.i, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ], [ undef, %bb.f ]
  %.sroa.5.0 = phi ptr [ %i.z, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ], [ %i.n, %bb.f ]
  %storemerge.i = phi i32 [ 0, %_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn.exit.i ], [ 1, %bb.f ]
  %.sroa.8.sroa.0.0.insert.ext = zext i8 %.sroa.8.sroa.0.0 to i32
  %.sroa.8.sroa.0.0.insert.insert = or disjoint i32 %.sroa.8.sroa.5.sroa.0.0, %.sroa.8.sroa.0.0.insert.ext
  store i32 %storemerge.i, ptr %0, align 8
  %.sroa.05.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.4.0, ptr %.sroa.05.sroa.4.0..sroa_idx, align 4
  %.sroa.05.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %.sroa.05.sroa.5.0..sroa_idx, align 8
  %.sroa.05.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.8.sroa.0.0.insert.insert, ptr %.sroa.05.sroa.6.0..sroa_idx, align 8
  %.sroa.05.sroa.7.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.10.0, ptr %.sroa.05.sroa.7.0..sroa_idx.a, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 4) i8 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor15scope_delimiter(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !808, !noundef !5
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c, !prof !1005

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = getelementptr inbounds [32 x i8], ptr %1, i64 %i.d ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !range !808, !noundef !5 ; 2 uses
  %i.g = icmp samesign ult i32 %i.f, 2
  br i1 %i.g, label %2, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #21
  unreachable

2:                                                ; preds = %bb.b
  %3 = trunc nuw i32 %i.f to i1
  br i1 %3, label %4, label %switch.lookup

4:                                                ; preds = %2
  %5 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %6 = load i8, ptr %5, align 8, !range !951, !noundef !5
  br label %bb.d

switch.lookup:                                    ; preds = %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !951, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %switch.lookup, %bb.b, %4
  %.sroa.0.0 = phi i8 [ %6, %4 ], [ 3, %bb.b ], [ %i.i, %switch.lookup ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor4skip(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !range !808, !noalias !1006, !noundef !5 ; 3 uses
  %i.b = icmp samesign ult i32 %i.a, 2
  br i1 %i.b, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.sroa.0.08 = phi ptr [ %.sroa.0.0.i, %bb.e ], [ %1, %bb.a ] ; 5 uses
  %i.c = phi i32 [ %i.k, %bb.e ], [ %i.a, %bb.a ]
  %i.d = trunc nuw i32 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !951, !noalias !1006, !noundef !5
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %.preheader, label %.thread

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 20
  %i.i = load i8, ptr %i.h, align 4, !range !951, !noalias !1006, !noundef !5
  %i.j = icmp eq i8 %i.i, 3
  br i1 %i.j, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %.pn.i = phi ptr [ %.sroa.0.0.i, %bb.d ], [ %.sroa.0.08, %.preheader ]
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32 ; 5 uses
  %i.k = load i32, ptr %.sroa.0.0.i, align 8, !range !808, !noalias !1006, !noundef !5 ; 4 uses
  %i.l = icmp ne i32 %i.k, 5
  %i.m = icmp eq ptr %.sroa.0.0.i, %2
  %or.cond.i = or i1 %i.l, %i.m
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.e:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %i.k, 2
  br i1 %i.n, label %.lr.ph.i, label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.a
  %.ph = phi i32 [ %i.a, %bb.a ], [ %i.k, %bb.e ]
  %.sroa.0.1.ph = phi ptr [ %1, %bb.a ], [ %.sroa.0.0.i, %bb.e ] ; 7 uses
  switch i32 %.ph, label %bb.g [
    i32 5, label %bb.j
    i32 3, label %bb.f
  ]

.thread:                                          ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 4
  %i.r = load i32, ptr %i.q, align 4, !range !955, !noundef !5
  %i.s = icmp eq i32 %i.r, 39
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.i, %.loopexit, %bb.h, %bb.f, %.thread
  %.sroa.0.11317 = phi ptr [ %.sroa.0.1.ph, %.loopexit ], [ %.sroa.0.08, %.thread ], [ %.sroa.0.1.ph, %bb.i ], [ %.sroa.0.1.ph, %bb.f ], [ %.sroa.0.1.ph, %bb.h ]
  %.sroa.0.0 = phi i64 [ 1, %.loopexit ], [ %i.p, %.thread ], [ %., %bb.i ], [ 1, %bb.f ], [ 1, %bb.h ]
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.11317, i64 %.sroa.0.0
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 12
  %i.v = load i8, ptr %i.u, align 4, !range !956, !noundef !5
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1.ph, i64 32
  %i.y = load i32, ptr %i.x, align 8, !range !808, !noundef !5
  %i.z = icmp eq i32 %i.y, 2
  %. = select i1 %i.z, i64 2, i64 1
  br label %bb.g

bb.j:                                             ; preds = %.loopexit, %bb.l
  %storemerge = phi i64 [ 1, %bb.l ], [ 0, %.loopexit ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.k:                                             ; preds = %bb.k, %bb.g
  %.sroa.02.0 = phi ptr [ %i.t, %bb.g ], [ %i.ad, %bb.k ] ; 4 uses
  %i.aa = load i32, ptr %.sroa.02.0, align 8, !range !808, !noundef !5
  %i.ab = icmp ne i32 %i.aa, 5
  %i.ac = icmp eq ptr %.sroa.02.0, %2
  %or.cond = or i1 %i.ac, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.02.0, i64 32
  br i1 %or.cond, label %bb.l, label %bb.k

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.02.0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.af, align 8
  br label %bb.j
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor4span(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !808, !noundef !5 ; 3 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = trunc i32 %i.a to i1
  br i1 %i.f, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !26, !noundef !5
  %.not8 = icmp eq i8 %i.h, 2
  br i1 %.not8, label %bb.j, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noundef !5
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !66, !noundef !5
  %.not = icmp eq i64 %i.l, -1
  br i1 %.not, label %bb.k, label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = getelementptr inbounds [32 x i8], ptr %0, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !range !808, !noundef !5 ; 2 uses
  %i.q = icmp samesign ult i32 %i.p, 2
  br i1 %i.q, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !range !969, !noundef !5
  br label %bb.i

bb.i:                                             ; preds = %bb.n, %bb.l, %bb.k, %bb.f, %bb.j, %bb.d, %bb.h, %bb.c, %bb.m, %bb.e
  %.sroa.03.0 = phi i32 [ %i.y, %bb.m ], [ 0, %bb.c ], [ %i.j, %bb.e ], [ 0, %bb.d ], [ 0, %bb.f ], [ %i.s, %bb.h ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.aa, %bb.n ], [ 0, %bb.l ]
  ret i32 %.sroa.03.0

bb.j:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load i32, ptr %i.t, align 4, !range !969, !noundef !5
  br label %bb.i

bb.k:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4, !range !969, !noundef !5
  br label %bb.i

bb.l:                                             ; preds = %bb.g
  %i.x = trunc nuw i32 %i.p to i1
  br i1 %i.x, label %bb.i, label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.y = tail call noundef i32 @_RNvMsi_Cs6et67aoV1xO_11proc_macro2NtB5_4Span9call_site()
  br label %bb.i

bb.n:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !range !969, !noundef !5
  br label %bb.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5group(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, ptr noundef %2, i8 noundef range(i8 0, 4) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i8 %3, 3
  %.pr.pre = load i32, ptr %1, align 8            ; 3 uses
  %i.a = icmp samesign ult i32 %.pr.pre, 2        ; 2 uses
  br i1 %.not, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit, label %bb.b

_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit: ; preds = %bb.a
  br i1 %i.a, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread31, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %.lr.ph.i, label %_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none.exit.thread

.lr.ph.i:                                         ; preds = %bb.b, %bb.f
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
!758 = !{!759}
!759 = distinct !{!759, !760, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEEB1A_: argument 0"}
!760 = distinct !{!760, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEEB1A_"}
!761 = !{!762, !759}
!762 = distinct !{!762, !763, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEB1e_: argument 0"}
!763 = distinct !{!763, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEB1e_"}
!764 = !{ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEEB1A_, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_2ty8NamedArgNtNtBG_5token5CommaEEBG_, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty8NamedArgEEB1e_}
!765 = !{!766}
!766 = distinct !{!766, !767, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_: argument 0"}
!767 = distinct !{!767, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_"}
!768 = !{ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_: argument 0"}
!771 = distinct !{!771, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_: argument 0"}
!774 = distinct !{!774, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_"}
!775 = !{ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn2ty4TypeEEB1e_, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn2ty10ReturnTypeEBF_}
!776 = distinct !{null}
!777 = !{!778}
!778 = distinct !{!778, !779, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEEB1A_: argument 0"}
!779 = distinct !{!779, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEEB1A_"}
!780 = !{!781}
!781 = distinct !{!781, !782, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEB1e_: argument 0"}
!782 = distinct !{!782, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEB1e_"}
!783 = !{!784}
!784 = distinct !{!784, !785, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEBF_: argument 0"}
!785 = distinct !{!785, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEBF_"}
!786 = !{!787}
!787 = distinct !{!787, !788, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!788 = distinct !{!788, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!789 = !{!781, !778}
!790 = !{!791}
!791 = distinct !{!791, !792, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!792 = distinct !{!792, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!793 = !{!791, !787, !784}
!794 = !{!791, !787, !784, !781, !778}
!795 = distinct !{null, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEEB1A_, null, null}
!796 = !{!797, !784}
!797 = distinct !{!797, !798, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path13PathArgumentsEBF_: argument 0"}
!798 = distinct !{!798, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4path13PathArgumentsEBF_"}
!799 = distinct !{null, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEEB1A_, null, null, null, null, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_4path15GenericArgumentNtNtBG_5token5CommaEEBG_}
!800 = !{!801}
!801 = distinct !{!801, !802, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEEB1A_: argument 0"}
!802 = distinct !{!802, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEEB1A_"}
!803 = !{!804, !801}
!804 = distinct !{!804, !805, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEB1e_: argument 0"}
!805 = distinct !{!805, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEB1e_"}
!806 = distinct !{ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEEB1A_, null, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEEB1A_, null, null, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEB1e_}
!807 = distinct !{ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path15GenericArgumentEEEB1A_, null, ptr @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCsgbWeKYPjk8w_3syn4path11PathSegmentEEEB1A_, null, null}
!808 = !{i32 0, i32 6}
!809 = !{!810, !812, !814, !816, !818}
!810 = distinct !{!810, !811, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3b5wA5ywLsd_10proc_macro6bridge6client11TokenStreamEECsgbWeKYPjk8w_3syn: argument 0"}
!811 = distinct !{!811, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3b5wA5ywLsd_10proc_macro6bridge6client11TokenStreamEECsgbWeKYPjk8w_3syn"}
!812 = distinct !{!812, !813, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge5GroupNtNtBE_6client11TokenStreamNtB1l_4SpanEECsgbWeKYPjk8w_3syn: argument 0"}
!813 = distinct !{!813, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs3b5wA5ywLsd_10proc_macro6bridge5GroupNtNtBE_6client11TokenStreamNtB1l_4SpanEECsgbWeKYPjk8w_3syn"}
!814 = distinct !{!814, !815, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro5GroupECsgbWeKYPjk8w_3syn: argument 0"}
!815 = distinct !{!815, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs3b5wA5ywLsd_10proc_macro5GroupECsgbWeKYPjk8w_3syn"}
!816 = distinct !{!816, !817, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5GroupECsgbWeKYPjk8w_3syn: argument 0"}
!817 = distinct !{!817, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5GroupECsgbWeKYPjk8w_3syn"}
!818 = distinct !{!818, !819, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn: argument 0"}
!819 = distinct !{!819, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25GroupECsgbWeKYPjk8w_3syn"}
!820 = !{!821}
!821 = distinct !{!821, !822, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn: argument 0"}
!822 = distinct !{!822, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn"}
!823 = !{!824}
!824 = distinct !{!824, !825, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc2RcINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEECsgbWeKYPjk8w_3syn: argument 0"}
!825 = distinct !{!825, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc2RcINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEECsgbWeKYPjk8w_3syn"}
!826 = !{!827}
!827 = distinct !{!827, !828, !"_RNvXsw_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn: argument 0"}
!828 = distinct !{!828, !"_RNvXsw_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn"}
!829 = !{!827, !824, !821, !830, !832, !816, !818}
!830 = distinct !{!830, !831, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback11TokenStreamECsgbWeKYPjk8w_3syn: argument 0"}
!831 = distinct !{!831, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback11TokenStreamECsgbWeKYPjk8w_3syn"}
!832 = distinct !{!832, !833, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback5GroupECsgbWeKYPjk8w_3syn: argument 0"}
!833 = distinct !{!833, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro28fallback5GroupECsgbWeKYPjk8w_3syn"}
!834 = !{!827, !824, !821}
!835 = !{!836}
!836 = distinct !{!836, !837, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn: argument 0"}
!837 = distinct !{!837, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs6et67aoV1xO_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECsgbWeKYPjk8w_3syn"}
!838 = !{!839}
!839 = distinct !{!839, !840, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc2RcINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEECsgbWeKYPjk8w_3syn: argument 0"}
!840 = distinct !{!840, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc2rc2RcINtNtBG_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEEECsgbWeKYPjk8w_3syn"}
!841 = !{!842}
!842 = distinct !{!842, !843, !"_RNvXsw_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn: argument 0"}
!843 = distinct !{!843, !"_RNvXsw_NtCs4wP2HXfJTCR_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs6et67aoV1xO_11proc_macro29TokenTreeEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsgbWeKYPjk8w_3syn"}
!844 = !{!842, !839, !836, !830, !832, !816, !818}
!845 = !{!842, !839, !836}
!846 = !{!847}
!847 = distinct !{!847, !848, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!848 = distinct !{!848, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!849 = !{!850}
!850 = distinct !{!850, !851, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!851 = distinct !{!851, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!852 = !{!850, !847}
!853 = !{!854, !856}
!854 = distinct !{!854, !855, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp7LiteralECsgbWeKYPjk8w_3syn: argument 0"}
!855 = distinct !{!855, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp7LiteralECsgbWeKYPjk8w_3syn"}
!856 = distinct !{!856, !857, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn: argument 0"}
!857 = distinct !{!857, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro27LiteralECsgbWeKYPjk8w_3syn"}
!858 = !{!859}
!859 = distinct !{!859, !860, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!860 = distinct !{!860, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!861 = !{!862}
!862 = distinct !{!862, !863, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!863 = distinct !{!863, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!864 = !{!862, !859}
!865 = !{i64 -1, i64 -9223372036854775768}
!866 = !{!867}
!867 = distinct !{!867, !868, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_4expr4ExprEEEB12_: argument 0"}
!868 = distinct !{!868, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_4expr4ExprEEEB12_"}
!869 = distinct !{null, null}
!870 = !{!871}
!871 = distinct !{!871, !872, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_4expr4ExprEEEB12_: argument 0"}
!872 = distinct !{!872, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_4expr4ExprEEEB12_"}
!873 = !{!874}
!874 = distinct !{!874, !875, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEBF_: argument 0"}
!875 = distinct !{!875, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn8lifetime8LifetimeEBF_"}
!876 = !{!877}
!877 = distinct !{!877, !878, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!878 = distinct !{!878, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!879 = !{!880}
!880 = distinct !{!880, !881, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!881 = distinct !{!881, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!882 = !{!880, !877, !874}
!883 = !{!884}
!884 = distinct !{!884, !885, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!885 = distinct !{!885, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!886 = !{!887}
!887 = distinct !{!887, !888, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!888 = distinct !{!888, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!889 = !{!887, !884}
!890 = !{i64 -1, i64 17}
!891 = !{!892}
!892 = distinct !{!892, !893, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_: argument 0"}
!893 = distinct !{!893, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_"}
!894 = distinct !{null, null}
!895 = !{!896}
!896 = distinct !{!896, !897, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_: argument 0"}
!897 = distinct !{!897, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsgbWeKYPjk8w_3syn5token2EqNtNtB12_2ty4TypeEEEB12_"}
!898 = !{!899}
!899 = distinct !{!899, !900, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!900 = distinct !{!900, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!901 = !{!902}
!902 = distinct !{!902, !903, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!903 = distinct !{!903, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!904 = !{!902, !899}
!905 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1, i32 2000, i32 2000, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 1}
!906 = !{i32 0, i32 28}
!907 = !{i32 -1, i32 4}
!908 = !{!909, !911}
!909 = distinct !{!909, !910, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp13TokenTreeIterECsgbWeKYPjk8w_3syn: argument 0"}
!910 = distinct !{!910, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp13TokenTreeIterECsgbWeKYPjk8w_3syn"}
!911 = distinct !{!911, !912, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterECsgbWeKYPjk8w_3syn: argument 0"}
!912 = distinct !{!912, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro212token_stream8IntoIterECsgbWeKYPjk8w_3syn"}
!913 = !{i64 0, i64 -9223372036854775808}
!914 = !{!915}
!915 = distinct !{!915, !916, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 0"}
!916 = distinct !{!916, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_"}
!917 = !{!918}
!918 = distinct !{!918, !916, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 1"}
!919 = !{!920}
!920 = distinct !{!920, !921, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 0"}
!921 = distinct !{!921, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_"}
!922 = !{!923}
!923 = distinct !{!923, !921, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 1"}
!924 = !{!925}
!925 = distinct !{!925, !926, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 0"}
!926 = distinct !{!926, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_"}
!927 = !{!928}
!928 = distinct !{!928, !926, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 1"}
!929 = !{!930}
!930 = distinct !{!930, !931, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 0"}
!931 = distinct !{!931, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_"}
!932 = !{!933}
!933 = distinct !{!933, !931, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 1"}
!934 = !{!935}
!935 = distinct !{!935, !936, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 0"}
!936 = distinct !{!936, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_"}
!937 = !{!938}
!938 = distinct !{!938, !936, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 1"}
!939 = !{!940}
!940 = distinct !{!940, !941, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 0"}
!941 = distinct !{!941, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_"}
!942 = !{!943}
!943 = distinct !{!943, !941, !"_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn6buffer5EntryE8push_mutBJ_: argument 1"}
!944 = !{!945, !947, !949}
!945 = distinct !{!945, !946, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgbWeKYPjk8w_3syn: argument 0"}
!946 = distinct !{!946, !"_RINvNtNtCsj6eKBz9Db1c_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgbWeKYPjk8w_3syn"}
!947 = distinct !{!947, !948, !"_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next: argument 0"}
!948 = distinct !{!948, !"_RNvXNtNtCsj6eKBz9Db1c_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next"}
!949 = distinct !{!949, !950, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn: argument 0"}
!950 = distinct !{!950, !"_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCsgbWeKYPjk8w_3syn"}
!951 = !{i8 0, i8 4}
!952 = !{!953}
!953 = distinct !{!953, !954, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!954 = distinct !{!954, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!955 = !{i32 0, i32 1114112}
!956 = !{i8 0, i8 2}
!957 = !{!958}
!958 = distinct !{!958, !959, !"_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!959 = distinct !{!959, !"_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!960 = !{!961}
!961 = distinct !{!961, !959, !"_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!962 = !{!961, !958}
!963 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!964 = !{!965, !958}
!965 = distinct !{!965, !966, !"_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!966 = distinct !{!966, !"_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!967 = !{!968, !961}
!968 = distinct !{!968, !966, !"_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!969 = !{i32 1, i32 0}
!970 = !{!971, !965, !958}
!971 = distinct !{!971, !972, !"_RNvXsv_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!972 = distinct !{!972, !"_RNvXsv_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!973 = !{!974, !968, !961}
!974 = distinct !{!974, !972, !"_RNvXsv_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!975 = !{!976}
!976 = distinct !{!976, !977, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!977 = distinct !{!977, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!978 = !{!979}
!979 = distinct !{!979, !977, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!980 = !{i8 0, i8 11}
!981 = !{!982}
!982 = distinct !{!982, !983, !"_RNvXsP_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!983 = distinct !{!983, !"_RNvXsP_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!984 = !{!985}
!985 = distinct !{!985, !983, !"_RNvXsP_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!986 = !{!987}
!987 = distinct !{!987, !988, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!988 = distinct !{!988, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!989 = !{!990}
!990 = distinct !{!990, !991, !"_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!991 = distinct !{!991, !"_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!992 = !{!993}
!993 = distinct !{!993, !991, !"_RNvXsF_NtCs6et67aoV1xO_11proc_macro23impNtB5_5GroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!994 = !{!993, !990}
!995 = !{!996, !990}
!996 = distinct !{!996, !997, !"_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!997 = distinct !{!997, !"_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!998 = !{!999, !993}
!999 = distinct !{!999, !997, !"_RNvXsz_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!1000 = !{!1001, !996, !990}
!1001 = distinct !{!1001, !1002, !"_RNvXsv_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!1002 = distinct !{!1002, !"_RNvXsv_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!1003 = !{!1004, !999, !993}
!1004 = distinct !{!1004, !1002, !"_RNvXsv_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_9DelimSpanNtNtB5_6client4SpanENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!1005 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!1006 = !{!1007}
!1007 = distinct !{!1007, !1008, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!1008 = distinct !{!1008, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!1009 = !{!1010}
!1010 = distinct !{!1010, !1011, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!1011 = distinct !{!1011, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!1012 = !{!1013}
!1013 = distinct !{!1013, !1014, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!1014 = distinct !{!1014, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!1015 = !{!1016}
!1016 = distinct !{!1016, !1017, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!1017 = distinct !{!1017, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!1018 = !{!1019}
!1019 = distinct !{!1019, !1017, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!1020 = !{!1021}
!1021 = distinct !{!1021, !1022, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!1022 = distinct !{!1022, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!1023 = !{!1024}
!1024 = distinct !{!1024, !1025, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!1025 = distinct !{!1025, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!1026 = !{!1027}
!1027 = distinct !{!1027, !1028, !"_RNvXsP_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!1028 = distinct !{!1028, !"_RNvXsP_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!1029 = !{!1030}
!1030 = distinct !{!1030, !1028, !"_RNvXsP_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_7LiteralNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!1031 = !{!1032}
!1032 = distinct !{!1032, !1033, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!1033 = distinct !{!1033, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!1034 = !{!1035, !1037}
!1035 = distinct !{!1035, !1036, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none: argument 0"}
!1036 = distinct !{!1036, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor11ignore_none"}
!1037 = distinct !{!1037, !1038, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident: argument 0"}
!1038 = distinct !{!1038, !"_RNvMs_NtCsgbWeKYPjk8w_3syn6bufferNtB4_6Cursor5ident"}
!1039 = !{!1037}
!1040 = !{!1041}
!1041 = distinct !{!1041, !1042, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!1042 = distinct !{!1042, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!1043 = !{!1044, !1037}
!1044 = distinct !{!1044, !1042, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!1045 = !{i64 -2, i64 -9223372036854775808}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr6MemberEBF_: argument 0"}
!1048 = distinct !{!1048, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr6MemberEBF_"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!1051 = distinct !{!1051, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!1052 = !{!1053}
!1053 = distinct !{!1053, !1054, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!1054 = distinct !{!1054, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!1055 = !{!1053, !1050, !1047}
!1056 = !{!1057}
!1057 = distinct !{!1057, !1058, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!1058 = distinct !{!1058, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!1059 = !{!1060}
!1060 = distinct !{!1060, !1058, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!1061 = !{!1062}
!1062 = distinct !{!1062, !1063, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr6MemberEBF_: argument 0"}
!1063 = distinct !{!1063, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsgbWeKYPjk8w_3syn4expr6MemberEBF_"}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn: argument 0"}
!1066 = distinct !{!1066, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !1069, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn: argument 0"}
!1069 = distinct !{!1069, !"_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs6et67aoV1xO_11proc_macro23imp5IdentECsgbWeKYPjk8w_3syn"}
!1070 = !{!1068, !1065, !1062}
!1071 = !{!1072}
!1072 = distinct !{!1072, !1073, !"_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl: argument 0"}
!1073 = distinct !{!1073, !"_RNvMsB_NtCsj6eKBz9Db1c_4core3numm27from_ascii_bytes_radix_impl"}
!1074 = !{!1075}
!1075 = distinct !{!1075, !1076, !"_RNvXsK_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_3mac14MacroDelimiterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1076 = distinct !{!1076, !"_RNvXsK_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_3mac14MacroDelimiterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1077 = !{!1078}
!1078 = distinct !{!1078, !1076, !"_RNvXsK_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_3mac14MacroDelimiterNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1079 = !{!1075, !1078}
!1080 = !{!1081}
!1081 = distinct !{!1081, !1082, !"_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1082 = distinct !{!1082, !"_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1083 = !{!1084}
!1084 = distinct !{!1084, !1082, !"_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1085 = !{!1084, !1081}
!1086 = !{!1087}
!1087 = distinct !{!1087, !1088, !"_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1088 = distinct !{!1088, !"_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1089 = !{!1090, !1087, !1084, !1081}
!1090 = distinct !{!1090, !1088, !"_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1091 = !{!1087, !1081}
!1092 = !{!1090, !1084}
!1093 = !{!1094}
!1094 = distinct !{!1094, !1095, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 1"}
!1095 = distinct !{!1095, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn"}
!1096 = !{!1097}
!1097 = distinct !{!1097, !1095, !"_RNvXsI_NtCs3b5wA5ywLsd_10proc_macro6bridgeINtB5_5IdentNtNtB5_6client4SpanNtNtB5_6symbol6SymbolENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCsgbWeKYPjk8w_3syn: argument 0"}
!1098 = !{!1099}
!1099 = distinct !{!1099, !1100, !"_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1100 = distinct !{!1100, !"_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1101 = !{!1102}
!1102 = distinct !{!1102, !1100, !"_RNvXsz_NtCs6et67aoV1xO_11proc_macro23impNtB5_11TokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1103 = !{!1102, !1099}
!1104 = !{!1105}
!1105 = distinct !{!1105, !1106, !"_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1106 = distinct !{!1106, !"_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1107 = !{!1108, !1105, !1102, !1099}
!1108 = distinct !{!1108, !1106, !"_RNvXsA_NtCs6et67aoV1xO_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1109 = !{!1105, !1099}
!1110 = !{!1108, !1102}
!1111 = !{!1112}
!1112 = distinct !{!1112, !1113, !"_RNvMNtNtCsgbWeKYPjk8w_3syn3mac8printingNtB4_14MacroDelimiter8surround: argument 0"}
!1113 = distinct !{!1113, !"_RNvMNtNtCsgbWeKYPjk8w_3syn3mac8printingNtB4_14MacroDelimiter8surround"}
!1114 = !{!1115, !1116}
!1115 = distinct !{!1115, !1113, !"_RNvMNtNtCsgbWeKYPjk8w_3syn3mac8printingNtB4_14MacroDelimiter8surround: argument 1"}
!1116 = distinct !{!1116, !1113, !"_RNvMNtNtCsgbWeKYPjk8w_3syn3mac8printingNtB4_14MacroDelimiter8surround: argument 2"}
!1117 = !{!1118}
!1118 = distinct !{!1118, !1119, !"_RNvXsf_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_6MemberNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens: argument 0"}
!1119 = distinct !{!1119, !"_RNvXsf_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_6MemberNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens"}
!1120 = !{!1121}
!1121 = distinct !{!1121, !1119, !"_RNvXsf_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_6MemberNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens: argument 1"}
!1122 = !{!1123}
!1123 = distinct !{!1123, !1124, !"_RNvXse_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_5IndexNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens: argument 0"}
!1124 = distinct !{!1124, !"_RNvXse_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_5IndexNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens"}
!1125 = !{!1123, !1126, !1118, !1121}
!1126 = distinct !{!1126, !1124, !"_RNvXse_NtNtCsgbWeKYPjk8w_3syn4expr8printingNtB7_5IndexNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens: argument 1"}
!1127 = !{!1123, !1118}
!1128 = !{!1126, !1121}
!1129 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000, i32 2000}
!1130 = !{!1131}
!1131 = distinct !{!1131, !1132, !"_RNvXsk_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1132 = distinct !{!1132, !"_RNvXsk_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1133 = !{ptr @_RNvXsk_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone}
!1134 = !{!1135}
!1135 = distinct !{!1135, !1132, !"_RNvXsk_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1136 = !{!1131, !1135}
!1137 = !{!1138}
!1138 = distinct !{!1138, !1139, !"_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_: argument 0"}
!1139 = distinct !{!1139, !"_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_"}
!1140 = distinct !{null, ptr @_RNvXsk_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone}
!1141 = !{!1142, !1138, !1131}
!1142 = distinct !{!1142, !1143, !"_RNvXNtNtCsj6eKBz9Db1c_4core5clone6uninitNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtB2_8CopySpec9clone_oneBG_: argument 0"}
!1143 = distinct !{!1143, !"_RNvXNtNtCsj6eKBz9Db1c_4core5clone6uninitNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtB2_8CopySpec9clone_oneBG_"}
!1144 = !{!1138, !1131}
!1145 = distinct !{null, ptr @_RNvXsk_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprGroupNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone, null}
!1146 = !{!1147, !1149}
!1147 = distinct !{!1147, !1148, !"_RNvXsm_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr7ExprLitNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1148 = distinct !{!1148, !"_RNvXsm_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr7ExprLitNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1149 = distinct !{!1149, !1148, !"_RNvXsm_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr7ExprLitNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1150 = !{!1147}
!1151 = !{!1149}
!1152 = !{!1153, !1155}
!1153 = distinct !{!1153, !1154, !"_RNvXsn_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprMacroNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1154 = distinct !{!1154, !"_RNvXsn_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprMacroNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1155 = distinct !{!1155, !1154, !"_RNvXsn_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprMacroNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1156 = !{!1153}
!1157 = !{!1155}
!1158 = !{!1159}
!1159 = distinct !{!1159, !1160, !"_RNvXsp_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprParenNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1160 = distinct !{!1160, !"_RNvXsp_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprParenNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1161 = !{ptr @_RNvXsp_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprParenNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone}
!1162 = !{!1159, !1163}
!1163 = distinct !{!1163, !1160, !"_RNvXsp_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprParenNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1164 = !{!1165}
!1165 = distinct !{!1165, !1166, !"_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_: argument 0"}
!1166 = distinct !{!1166, !"_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_"}
!1167 = distinct !{null, ptr @_RNvXsp_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprParenNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone}
!1168 = !{!1169, !1165, !1159}
!1169 = distinct !{!1169, !1170, !"_RNvXNtNtCsj6eKBz9Db1c_4core5clone6uninitNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtB2_8CopySpec9clone_oneBG_: argument 0"}
!1170 = distinct !{!1170, !"_RNvXNtNtCsj6eKBz9Db1c_4core5clone6uninitNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtB2_8CopySpec9clone_oneBG_"}
!1171 = !{!1165, !1159}
!1172 = distinct !{null, ptr @_RNvXsp_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprParenNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone, null}
!1173 = !{!1174}
!1174 = distinct !{!1174, !1175, !"_RNvXsr_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr13ExprReferenceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1175 = distinct !{!1175, !"_RNvXsr_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr13ExprReferenceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1176 = !{ptr @_RNvXsr_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr13ExprReferenceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone}
!1177 = !{!1178}
!1178 = distinct !{!1178, !1175, !"_RNvXsr_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr13ExprReferenceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1179 = !{!1174, !1178}
!1180 = !{!1181}
!1181 = distinct !{!1181, !1182, !"_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_: argument 0"}
!1182 = distinct !{!1182, !"_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_"}
!1183 = distinct !{null, ptr @_RNvXsr_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr13ExprReferenceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone}
!1184 = !{!1185, !1181, !1174}
!1185 = distinct !{!1185, !1186, !"_RNvXNtNtCsj6eKBz9Db1c_4core5clone6uninitNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtB2_8CopySpec9clone_oneBG_: argument 0"}
!1186 = distinct !{!1186, !"_RNvXNtNtCsj6eKBz9Db1c_4core5clone6uninitNtNtCsgbWeKYPjk8w_3syn4expr4ExprNtB2_8CopySpec9clone_oneBG_"}
!1187 = !{!1181, !1174}
!1188 = distinct !{null, ptr @_RNvXsr_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr13ExprReferenceNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone, null}
!1189 = !{!1190}
!1190 = distinct !{!1190, !1191, !"_RNvXst_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprTupleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1191 = distinct !{!1191, !"_RNvXst_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprTupleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1192 = !{!1193}
!1193 = distinct !{!1193, !1191, !"_RNvXst_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprTupleNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1194 = !{!1190, !1193}
!1195 = !{!1196}
!1196 = distinct !{!1196, !1197, !"_RNvXsu_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprUnaryNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 0"}
!1197 = distinct !{!1197, !"_RNvXsu_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprUnaryNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone"}
!1198 = !{ptr @_RNvXsu_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprUnaryNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone}
!1199 = !{!1200}
!1200 = distinct !{!1200, !1197, !"_RNvXsu_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_4expr9ExprUnaryNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone: argument 1"}
!1201 = !{!1196, !1200}
!1202 = !{!1203}
!1203 = distinct !{!1203, !1204, !"_RNvXsd_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxNtNtCsgbWeKYPjk8w_3syn4expr4ExprENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneBL_: argument 0"}
end_hunk_1
