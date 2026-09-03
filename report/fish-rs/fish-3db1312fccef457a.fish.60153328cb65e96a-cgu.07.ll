Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.07?download=true
inline.NumInlined: 1670
inline.NumDeleted: 581
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine4undo:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit90

.loopexit90:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp91:                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.peel
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit90, %.loopexit.split-lp91, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi89, %bb.m ], [ %lpad.loopexit92, %.loopexit90 ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp91 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !noundef !10 ; 2 uses
  invoke void @_RNvNtCs8frGy5WneL6_4fish13editable_line10apply_edit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.d)
          to label %bb.o unwind label %.loopexit.loopexit

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.bt = load i64, ptr %i.u, align 8, !alias.scope !830, !noundef !10 ; 2 uses
  %i.bu = icmp ult i64 %i.bt, 2305843009213693952
  call void @llvm.assume(i1 %i.bu)
  %.not.i = icmp ugt i64 %i.bs, %i.bt
  br i1 %.not.i, label %.loopexit95, label %bb.p, !prof !17

.loopexit95:                                      ; preds = %bb.o, %bb.f
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1503, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1504) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit95
  unreachable

bb.p:                                             ; preds = %bb.o
  store i64 %i.bs, ptr %i.e, align 8, !alias.scope !830
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.pr = load i64, ptr %i.g, align 8              ; 2 uses
  %i.bv = icmp eq i64 %.pr, 0
  br i1 %i.bv, label %.thread.thread, label %.peel.next, !llvm.loop !829

bb.q:                                             ; preds = %.loopexit
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.r:                                             ; preds = %.loopexit
  resume { ptr, i32 } %.pn

._crit_edge.thread:                               ; preds = %bb.a, %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !range !18, !noundef !10
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ca = trunc nuw i64 %i.by to i1
  br i1 %i.ca, label %bb.u, label %bb.v

.thread:                                          ; preds = %bb.h, %.thread.thread
  %.pre-phi122 = phi i64 [ %.pre105, %.thread.thread ], [ %i.v, %bb.h ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.cc = load i64, ptr %i.cb, align 8, !noundef !10 ; 2 uses
  %i.cd = icmp ult i64 %.pre-phi122, %i.cc
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !10, !noundef !10
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.cf, i64 %.pre-phi122 ; 2 uses
  store i64 1, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 %i.f, ptr %i.ch, align 8
  br label %._crit_edge.thread

bb.t:                                             ; preds = %.thread
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi122, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1510) #31
  unreachable

bb.u:                                             ; preds = %._crit_edge.thread
  %i.ci = load i64, ptr %i.bz, align 8, !noundef !10 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.w, %._crit_edge.thread, %bb.y
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.ck, align 8
  ret i1 %.not62

bb.w:                                             ; preds = %bb.u
  %i.cl = add i64 %i.ci, -1                       ; 2 uses
  store i64 %i.cl, ptr %i.bz, align 8
  %.not28 = icmp eq i64 %i.cl, 0
  br i1 %.not28, label %bb.y, label %bb.v

bb.x:                                             ; preds = %bb.u
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1507) #31
  unreachable

bb.y:                                             ; preds = %bb.w
  store i64 0, ptr %i.bx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 113
  store i8 0, ptr %i.cm, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 0, ptr %i.cn, align 8
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine9push_edit(ptr noalias nofree noundef align 8 dereferenceable(136) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !10 ; 3 uses
  %i.i = icmp uge i64 %i.f, %i.h                  ; 2 uses
  %brmerge.not = and i1 %2, %i.i
  br i1 %brmerge.not, label %bb.b, label %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread

_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread: ; preds = %bb.b, %bb.c, %bb.f, %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit, %bb.a
  %.not24 = icmp ult i64 %i.f, %i.h
  br i1 %.not24, label %bb.k, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !13, !alias.scope !851, !noalias !852, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = icmp eq i64 %i.m, 1
  %or.cond7.i = and i1 %i.q, %i.p
  br i1 %or.cond7.i, label %bb.c, label %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.k, align 4, !range !16, !alias.scope !852, !noalias !851, !noundef !10
  %i.s = icmp ne i32 %i.r, 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.u = load i8, ptr %i.t, align 1, !range !13, !alias.scope !851, !noalias !852
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %bb.d, label %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !851, !noalias !852, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1506) #31
          to label %.noexc unwind label %.thread52

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !851, !noalias !852, !nonnull !10, !noundef !10
  %i.aa = getelementptr [104 x i8], ptr %i.z, i64 %i.x ; 6 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !853, !noundef !10 ; 4 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 -8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !853, !noundef !10 ; 2 uses
  %.not5.i = icmp ult i64 %i.ac, %i.ae
  br i1 %.not5.i, label %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr i8, ptr %i.aa, i64 -24
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !854, !noalias !853, !noundef !10 ; 4 uses
  %i.ah = getelementptr i8, ptr %i.aa, i64 -32    ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !854, !noalias !853, !noundef !10 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add i64 %i.ai, %i.ag                    ; 3 uses
  %i.al = icmp ult i64 %i.ak, %i.ag
  br i1 %i.al, label %.invoke70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = icmp ugt i64 %i.ag, %i.ac
  br i1 %i.am, label %bb.i, label %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit

bb.i:                                             ; preds = %bb.h
  %.sroa.01.0.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 %i.ac)
  %i.an = sub nuw i64 %i.ag, %i.ac
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.an, i64 %.sroa.01.0.i.i.i)
  %3 = sub nuw i64 %i.ak, %..i.i.i.i
  br label %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit

.invoke70:                                        ; preds = %bb.g, %bb.aa
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1665) #31
          to label %.cont71 unwind label %.thread52

.cont71:                                          ; preds = %.invoke70
  unreachable

.thread52:                                        ; preds = %.invoke72, %.invoke70, %.invoke, %bb.o, %bb.r, %bb.t, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.aq, %bb.at, %bb.av, %bb.e, %bb.q, %bb.ap
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit: ; preds = %bb.h, %bb.i
  %.sroa.0.0.i.i.i = phi i64 [ %3, %bb.i ], [ %i.ak, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !851, !noalias !852, !noundef !10
  %.not6.i = icmp eq i64 %.sroa.0.0.i.i.i, %i.aq
  br i1 %.not6.i, label %bb.j, label %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread

bb.j:                                             ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.0.0.i.i.i, ptr %i.d, align 8
  %i.ar = icmp eq i64 %i.f, %.sroa.0.0.i.i.i
  br i1 %i.ar, label %bb.ap, label %.invoke, !prof !8

bb.k:                                             ; preds = %bb.l, %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !18, !noundef !10
  %.not25 = icmp eq i64 %i.at, 0
  br i1 %.not25, label %bb.m, label %bb.n

bb.l:                                             ; preds = %_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine29want_to_coalesce_insertion_of.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = load i64, ptr %i.au, align 8, !noundef !10 ; 2 uses
  %i.aw = icmp ult i64 %i.av, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %bb.ao, label %bb.k

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !noundef !10 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noundef !10 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 88686269585142076
  tail call void @llvm.assume(i1 %i.bd)
  %.not26 = icmp eq i64 %i.ba, %i.bc
  br i1 %.not26, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bf = load i64, ptr %i.be, align 8, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 1, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.bf, ptr %i.bh, align 8
  br label %bb.m

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs8frGy5WneL6_4fish13editable_line4EditE8truncateBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef %i.ba)
          to label %._crit_edge56 unwind label %.thread52

._crit_edge56:                                    ; preds = %bb.o
  %.val30.pre = load i64, ptr %i.e, align 8, !alias.scope !29
  %.val31.pre = load i64, ptr %i.g, align 8, !alias.scope !30
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge56, %bb.m
  %.val31 = phi i64 [ %.val31.pre, %._crit_edge56 ], [ %i.h, %bb.m ] ; 4 uses
  %.val30 = phi i64 [ %.val30.pre, %._crit_edge56 ], [ %i.f, %bb.m ] ; 4 uses
  %i.bi = load i64, ptr %0, align 8, !range !18, !noundef !10
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bk = load i64, ptr %i.bj, align 8
  store i64 0, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !10
  %i.bn = trunc nuw i64 %i.bi to i1
  %spec.select = select i1 %i.bn, i64 %i.bk, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store i64 %spec.select, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val29 = load i64, ptr %i.bq, align 8, !noundef !10
  %i.br = icmp ult i64 %.val31, %.val30
  %.not.i.i = icmp ugt i64 %.val31, %.val29
  %or.cond.i.i = or i1 %i.br, %.not.i.i
  br i1 %or.cond.i.i, label %bb.q, label %bb.r, !prof !17

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1542, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1511) #31
          to label %.noexc35 unwind label %.thread52

.noexc35:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.bs, align 8, !nonnull !10, !noundef !10
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %.val30
  %i.bu = sub nuw i64 %.val31, %.val30            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bu, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.s unwind label %.thread52

bb.s:                                             ; preds = %bb.r
  %i.bv = load i64, ptr %i.a, align 8, !range !18, !noundef !10
  %i.bw = trunc nuw i64 %i.bv to i1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !19, !noundef !10 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bw, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.ca = load i64, ptr %i.bz, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.by, i64 %i.ca) #30
          to label %bb.af unwind label %.thread52

bb.u:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %i.bz, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.cc = icmp ule i64 %i.bu, %i.by
  tail call void @llvm.assume(i1 %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not27 = icmp eq i64 %.val31, %.val30
  br i1 %.not27, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.y, %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.cg = shl nuw nsw i64 %i.bu, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr nonnull align 4 %i.bt, i64 %i.cg, i1 false)
  br label %bb.v

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.z, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.ch, %bb.z ], [ %i.ce, %bb.w ]
  store i64 %i.by, ptr %i.cd, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cb, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bu, ptr %.sroa.614.0..sroa_idx, align 8
  br label %bb.aw

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  store i64 %i.by, ptr %i.cd, align 8
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.cb, ptr %.sroa.5.0..sroa_idx12, align 8
  %.sroa.614.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i64 %i.bu, ptr %.sroa.614.0..sroa_idx15, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvNtCs8frGy5WneL6_4fish13editable_line10apply_edit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
          to label %bb.aa unwind label %.thread52

bb.aa:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.cj = load i64, ptr %i.bo, align 8, !alias.scope !855, !noundef !10 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !855, !noundef !10 ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = add i64 %i.cl, %i.cj                    ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.cj
  br i1 %i.co, label %.invoke70, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i64, ptr %i.e, align 8, !alias.scope !856, !noundef !10 ; 3 uses
  %i.cq = icmp ugt i64 %i.cj, %i.cp
  br i1 %i.cq, label %bb.ac, label %_RNvNtCs8frGy5WneL6_4fish13editable_line26cursor_position_after_edit.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cr = load i64, ptr %i.g, align 8, !alias.scope !856, !noundef !10
  %.sroa.01.0.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cr, i64 %i.cp)
  %i.cs = sub nuw i64 %i.cj, %i.cp
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cs, i64 %.sroa.01.0.i.i)
  %4 = sub nuw i64 %i.cn, %..i.i.i
  br label %_RNvNtCs8frGy5WneL6_4fish13editable_line26cursor_position_after_edit.exit

_RNvNtCs8frGy5WneL6_4fish13editable_line26cursor_position_after_edit.exit: ; preds = %bb.ac, %bb.ab
  %.sroa.0.0.i.i = phi i64 [ %4, %bb.ac ], [ %i.cn, %bb.ab ] ; 2 uses
  %i.ct = load i64, ptr %i.bq, align 8, !alias.scope !857, !noundef !10 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cu)
  %.not.i38 = icmp ugt i64 %.sroa.0.0.i.i, %i.ct
  br i1 %.not.i38, label %.invoke72, label %bb.ad, !prof !17

.invoke72:                                        ; preds = %bb.as, %_RNvNtCs8frGy5WneL6_4fish13editable_line26cursor_position_after_edit.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1503, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1504) #31
          to label %.cont73 unwind label %.thread52

.cont73:                                          ; preds = %.invoke72
  unreachable

bb.ad:                                            ; preds = %_RNvNtCs8frGy5WneL6_4fish13editable_line26cursor_position_after_edit.exit
  store i64 %.sroa.0.0.i.i, ptr %i.bl, align 8, !alias.scope !857
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cv = load i64, ptr %i.bb, align 8, !noundef !10 ; 6 uses
  store i64 %i.cv, ptr %i.c, align 8
  %i.cw = icmp ult i64 %i.cv, 88686269585142076
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = load i64, ptr %i.az, align 8, !noundef !10
  %i.cy = icmp eq i64 %i.cx, %i.cv
  br i1 %i.cy, label %bb.ae, label %.invoke, !prof !8

.invoke:                                          ; preds = %bb.j, %bb.ad
  %i.cz = phi ptr [ %i.az, %bb.ad ], [ %i.e, %bb.j ]
  %i.da = phi ptr [ %i.c, %bb.ad ], [ %i.d, %bb.j ]
  %i.db = phi ptr [ @1512, %bb.ad ], [ @1513, %bb.j ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.da, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db) #30
          to label %.cont unwind label %.thread52

.cont:                                            ; preds = %.invoke
  unreachable

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.i, label %bb.ag, label %bb.ai

bb.af:                                            ; preds = %bb.av, %bb.at, %bb.t
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 113
  %i.dd = load i8, ptr %i.dc, align 1, !range !13, !noundef !10
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.df = icmp eq i64 %i.cl, 1
  %i.dg = zext i1 %i.df to i8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae, %bb.ag
  %.sroa.05.0 = phi i8 [ 0, %bb.ae ], [ %i.dg, %bb.ah ], [ 1, %bb.ag ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 %.sroa.05.0, ptr %i.dh, align 8
  %i.di = add nuw nsw i64 %i.cv, 1                ; 2 uses
  store i64 %i.di, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  %i.dj = load i64, ptr %i.ay, align 8, !range !14, !alias.scope !858, !noalias !859, !noundef !10
  %i.dk = icmp eq i64 %i.cv, %i.dj
  br i1 %i.dk, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs8frGy5WneL6_4fish13editable_line4EditE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.am unwind label %bb.ak, !noalias !859

bb.ak:                                            ; preds = %bb.aj
  %i.dl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.b) #28
          to label %.critedge unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.am:                                            ; preds = %bb.aj, %bb.ai
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !858, !noalias !859, !nonnull !10, !noundef !10
  %i.dp = getelementptr inbounds nuw [104 x i8], ptr %i.do, i64 %i.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dp, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  store i64 %i.di, ptr %i.bb, align 8, !alias.scope !858, !noalias !859
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %bb.am
  ret void

bb.ao:                                            ; preds = %bb.au, %bb.l
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %1)
  br label %bb.an

bb.ap:                                            ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.dq = getelementptr i8, ptr %i.aa, i64 -48
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dq, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %bb.aq unwind label %.thread52

bb.aq:                                            ; preds = %bb.ap
  %i.dr = load i64, ptr %i.ah, align 8, !alias.scope !860, !noundef !10 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr i8, ptr %i.aa, i64 -40
  %i.du = load ptr, ptr %i.dt, align 8, !alias.scope !860, !nonnull !10, !noundef !10
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dr
  %i.dw = load i32, ptr %i.k, align 4
  store i32 %i.dw, ptr %i.dv, align 4
  %.pre.i.i = load i64, ptr %i.ah, align 8, !alias.scope !860
  %i.dx = add i64 %.pre.i.i, 1
  store i64 %i.dx, ptr %i.ah, align 8, !alias.scope !860
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke void @_RNvNtCs8frGy5WneL6_4fish13editable_line10apply_edit(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dy, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
          to label %bb.ar unwind label %.thread52

bb.ar:                                            ; preds = %bb.aq
  %i.ea = load i64, ptr %i.ap, align 8, !noundef !10 ; 2 uses
  %i.eb = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ec)
  %i.ed = add i64 %i.eb, %i.ea                    ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %i.ea
  br i1 %i.ee, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !861, !noundef !10 ; 2 uses
  %i.eh = icmp ult i64 %i.eg, 2305843009213693952
  tail call void @llvm.assume(i1 %i.eh)
  %.not.i44 = icmp ugt i64 %i.ed, %i.eg
  br i1 %.not.i44, label %.invoke72, label %bb.au, !prof !17

bb.at:                                            ; preds = %bb.ar
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1514) #30
          to label %bb.af unwind label %.thread52

bb.au:                                            ; preds = %bb.as
  store i64 %i.ed, ptr %i.ap, align 8, !alias.scope !861
  %i.ei = load i8, ptr %i.n, align 8, !range !13, !noundef !10
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ao, label %bb.av, !prof !8

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1515, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1516) #30
          to label %bb.af unwind label %.thread52

bb.aw:                                            ; preds = %.thread52, %.thread
  %.pn50 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %i.ao, %.thread52 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ek) #28
          to label %bb.ay unwind label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %bb.aw
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #29
  unreachable

.critedge:                                        ; preds = %bb.ak, %bb.ay
  %.pn49 = phi { ptr, i32 } [ %i.dl, %bb.ak ], [ %.pn50, %bb.ay ]
  resume { ptr, i32 } %.pn49

bb.ay:                                            ; preds = %bb.aw
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 56
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.em) #28
          to label %.critedge unwind label %bb.ax
}

; Function Attrs: nonlazybind uwtable
define internal { i32, i8 } @_RNvMs0_NtCs8frGy5WneL6_4fish6expandNtB5_8Expander12stage_braces(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !align !11, !noundef !10
  %i.e = tail call fastcc { i32, i8 } @_RNvNtCs8frGy5WneL6_4fish6expand13expand_braces(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %1, i16 noundef %i.b, ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %i.d)
  ret { i32, i8 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal { i32, i8 } @_RNvMs0_NtCs8frGy5WneL6_4fish6expandNtB5_8Expander14stage_cmdsubst(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 18 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
