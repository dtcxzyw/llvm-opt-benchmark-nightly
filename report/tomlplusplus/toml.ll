Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tomlplusplus/original/toml?download=true
inline.NumInlined: 4199
inline.NumDeleted: 1284
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN4toml2v34impl7impl_ex6parser26parse_value_known_prefixesEv:bb.a
bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl7impl_ex6parser11parse_arrayEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3496) %1)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4toml2v34impl7impl_ex6parser18parse_inline_tableEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(3496) %1)
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.h = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 6 uses
  %i.i = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.h, align 8, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store double %i.i, ptr %i.k, align 8, !tbaa !231
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store i16 0, ptr %i.l, align 8, !tbaa !563
  store ptr %i.h, ptr %0, align 8, !tbaa !208
  br label %bb.v

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 56) #51
  br label %bb.w

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.n = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #55 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  invoke fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !746)
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %2, align 8, !tbaa !139, !noalias !746 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !140, !noalias !746 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !89, !alias.scope !746
  %i.r = icmp eq ptr %.sroa.2.0.copyload.i.i.i, null
  %i.s = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 0
  %or.cond.i.i.i.i.i = and i1 %i.s, %i.r
  br i1 %or.cond.i.i.i.i.i, label %.noexc.i.i, label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.62) #54
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %.noexc.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50, !noalias !746
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !tbaa !139, !noalias !746
  %i.t = icmp ugt i64 %.sroa.0.0.copyload.i.i.i, 15
  br i1 %i.t, label %.noexc.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.noexc.i.i.i.i.i:                                 ; preds = %bb.i
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc3.i unwind label %bb.l  ; 2 uses

.noexc3.i:                                        ; preds = %.noexc.i.i.i.i.i
  store ptr %i.u, ptr %i.p, align 8, !tbaa !8, !alias.scope !746
  %i.v = load i64, ptr %i.a, align 8, !tbaa !139, !noalias !746
  store i64 %i.v, ptr %i.q, align 8, !tbaa !17, !alias.scope !746
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc3.i, %bb.i
  %i.w = phi ptr [ %i.u, %.noexc3.i ], [ %i.q, %bb.i ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i.i.i, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.m
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.x = load i8, ptr %.sroa.2.0.copyload.i.i.i, align 1, !tbaa !17
  store i8 %i.x, ptr %i.w, align 1, !tbaa !17
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %.sroa.2.0.copyload.i.i.i, i64 %.sroa.0.0.copyload.i.i.i, i1 false)
  br label %bb.m

bb.l:                                             ; preds = %.noexc.i.i.i.i.i, %.noexc.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4toml2v34nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(74) %i.n) #50
  br label %.body

bb.m:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !tbaa !139, !noalias !746 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !14, !alias.scope !746
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !8, !alias.scope !746
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50, !noalias !746
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i16 0, ptr %i.ad, align 8, !tbaa !749
  store ptr %i.n, ptr %0, align 8, !tbaa !208
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.v

bb.n:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.y, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 80) #51
  br label %bb.w

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.af = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #55 ; 6 uses
  %i.ag = invoke noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser13parse_booleanEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ah = zext i1 %i.ag to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIbEE, i64 16), ptr %i.af, align 8, !tbaa !70
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store i8 %i.ah, ptr %i.aj, align 8, !tbaa !234
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 42
  store i16 0, ptr %i.ak, align 2, !tbaa !751
  store ptr %i.af, ptr %0, align 8, !tbaa !208
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 48) #51
  br label %bb.w

bb.r:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.am = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #55 ; 6 uses
  %i.an = invoke noundef double @_ZN4toml2v34impl7impl_ex6parser16parse_inf_or_nanEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 288) (i8, ptr @_ZTVN4toml2v35valueIdEE, i64 16), ptr %i.am, align 8, !tbaa !70
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store double %i.an, ptr %i.ap, align 8, !tbaa !231
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i16 0, ptr %i.aq, align 8, !tbaa !563
  store ptr %i.am, ptr %0, align 8, !tbaa !208
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 56) #51
  br label %bb.w

bb.u:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !536
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.s, %bb.u, %bb.m, %bb.e, %bb.c, %bb.b
  ret void

bb.w:                                             ; preds = %bb.q, %bb.t, %.body, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.f ], [ %i.al, %bb.q ], [ %i.ar, %bb.t ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #33 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !539    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3192 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !461  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.c, align 4, !tbaa !488
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.c

bb.c:                                             ; preds = %bb.w, %bb.b
  %i.l = phi i32 [ %i.bw, %bb.w ], [ %i.d, %bb.b ] ; 9 uses
  %.not16 = icmp eq i32 %i.l, 95
  br i1 %.not16, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !752, !nonnull !121, !align !552 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !753, !nonnull !121, !align !527 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !139  ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 5 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !139
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.o
  store i32 %i.l, ptr %i.q, align 4, !tbaa !488
  %i.r = add i32 %i.l, -48
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = and i32 %i.l, -33
  %i.u = add i32 %i.t, -65
  %i.v = icmp ult i32 %i.u, 26
  br i1 %i.v, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.w = or i32 %i.l, 32
  switch i32 %i.w, label %.thread [
    i32 98, label %bb.g
    i32 101, label %bb.i
    i32 111, label %bb.m
    i32 112, label %bb.o
    i32 120, label %bb.p
    i32 116, label %.thread.sink.split
    i32 122, label %bb.t
  ]

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.p, 2
  br i1 %i.x, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !754, !nonnull !121, !align !527
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !560, !nonnull !121, !align !552
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !548
  %i.ab = and i32 %i.aa, 16384
  %.not25 = icmp eq i32 %i.ab, 0
  br i1 %.not25, label %.thread, label %.thread.sink.split

bb.i:                                             ; preds = %bb.f
  %i.ac = icmp ugt i64 %i.p, 1
  br i1 %i.ac, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !755, !nonnull !121, !align !527
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !756, !nonnull !121, !align !552
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !548 ; 2 uses
  %i.ag = and i32 %i.af, 506
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ai = and i32 %i.af, 1536
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !754, !nonnull !121, !align !527
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !560, !nonnull !121, !align !552
  %i.am = load i32, ptr %i.al, align 4, !tbaa !548
  %i.an = and i32 %i.am, 4096
  %.not24 = icmp eq i32 %i.an, 0
  br i1 %.not24, label %.thread, label %.thread.sink.split

bb.m:                                             ; preds = %bb.f
  %i.ao = icmp eq i64 %i.p, 2
  br i1 %i.ao, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !754, !nonnull !121, !align !527
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !560, !nonnull !121, !align !552
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !548
  %i.as = and i32 %i.ar, 16384
  %.not23 = icmp eq i32 %i.as, 0
  br i1 %.not23, label %.thread, label %.thread.sink.split

bb.o:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !754, !nonnull !121, !align !527
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !560, !nonnull !121, !align !552
  %i.av = load i32, ptr %i.au, align 4, !tbaa !548
  %i.aw = and i32 %i.av, 64
  %.not22 = icmp eq i32 %i.aw, 0
  br i1 %.not22, label %.thread, label %.thread.sink.split

bb.p:                                             ; preds = %bb.f
  switch i64 %i.p, label %.thread [
    i64 2, label %bb.q
    i64 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !754, !nonnull !121, !align !527
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !560, !nonnull !121, !align !552
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !548
  %i.ba = and i32 %i.az, 16384
  %.not21 = icmp eq i32 %i.ba, 0
  br i1 %.not21, label %.thread, label %.thread.sink.split

bb.r:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.h, align 8, !tbaa !754, !nonnull !121, !align !527
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !560, !nonnull !121, !align !552
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !548
  %i.be = and i32 %i.bd, 4096
  %.not20 = icmp eq i32 %i.be, 0
  br i1 %.not20, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !488
  %i.bh = icmp eq i32 %i.bg, 48
  br i1 %i.bh, label %.thread.sink.split, label %.thread

bb.t:                                             ; preds = %bb.f
  br label %.thread.sink.split

bb.u:                                             ; preds = %bb.e
  %i.bi = icmp ult i32 %i.l, 59
  br i1 %i.bi, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %1 = icmp samesign ult i32 %i.l, 48
  %2 = icmp eq i32 %i.l, 58
  %3 = or i1 %1, %2
  tail call void @llvm.assume(i1 %3)
  %switch.tableidx = add nsw i32 %i.l, -43        ; 3 uses
  %i.bj = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -32755, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.bj, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread

switch.lookup:                                    ; preds = %bb.v
  %i.bk = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE_clEv, i64 %i.bk
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %switch.lookup, %bb.f, %bb.q, %bb.s, %bb.o, %bb.n, %bb.k, %bb.l, %bb.h, %bb.d, %bb.t
  %.sink30 = phi i32 [ 16, %bb.o ], [ 4, %bb.l ], [ 64, %bb.s ], [ %switch.ext, %switch.lookup ], [ 32, %bb.f ], [ 64, %bb.q ], [ 128, %bb.t ], [ 1, %bb.d ], [ 2, %bb.h ], [ 4, %bb.k ], [ 8, %bb.n ]
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !758, !nonnull !121, !align !527
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !550, !nonnull !121, !align !552 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !548
  %i.bo = or i32 %i.bn, %.sink30
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !548
  br label %.thread

.thread:                                          ; preds = %bb.v, %.thread.sink.split, %bb.p, %bb.q, %bb.u, %bb.f, %bb.h, %bb.g, %bb.l, %bb.j, %bb.i, %bb.n, %bb.m, %bb.o, %bb.s, %bb.r, %bb.c
  tail call void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %i.a)
  %i.bp = load ptr, ptr %i.j, align 8, !tbaa !759, !nonnull !121, !align !527 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !139
  %i.br = add i64 %i.bq, 1                        ; 2 uses
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !139
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !461 ; 2 uses
  %.not17 = icmp eq ptr %i.bs, null               ; 2 uses
  %i.bt = load ptr, ptr %i.k, align 8, !tbaa !760, !nonnull !121
  %i.bu = zext i1 %.not17 to i8
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !538
  %i.bv = icmp ugt i64 %i.br, 126
  %brmerge = select i1 %i.bv, i1 true, i1 %.not17
  br i1 %brmerge, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.thread
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !488 ; 2 uses
  %i.bx = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.bw) #56
  br i1 %i.bx, label %.critedge, label %bb.c, !llvm.loop !761

.critedge:                                        ; preds = %.thread, %bb.w, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZZN4toml2v34impl7impl_ex6parser11parse_valueEvENKUlvE0_clEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !553    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !555, !nonnull !121, !align !527
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !121, !align !527
  %i.g = load i64, ptr %i.f, align 8, !tbaa !139  ; 2 uses
  %i.h = sub i64 %i.d, %i.g
  %i.i = icmp ne i64 %i.d, %i.g
  tail call void @llvm.assume(i1 %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3056
  %i.k = load i64, ptr %i.j, align 8, !tbaa !525  ; 3 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3080 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !522
  %i.o = add i64 %i.n, %i.h                       ; 4 uses
  %i.p = icmp ule i64 %i.o, %i.k
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.o, ptr %i.m, align 8, !tbaa !522
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 3064
  %i.s = load i64, ptr %i.r, align 8, !tbaa !524
  %i.t = sub i64 %i.k, %i.o
  %i.u = add i64 %i.t, %i.s
  %i.v = urem i64 %i.u, 127
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.v
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.c:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !523
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.b, %bb.c
  %i.z = phi ptr [ %i.w, %bb.b ], [ %i.y, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3192
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !461
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 3184
  %i.ad = load i64, ptr %i.ab, align 8
  store i64 %i.ad, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !556, !nonnull !121, !align !527
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !139
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !555, !nonnull !121, !align !527
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !139
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !557, !nonnull !121, !align !552
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !548
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !558, !nonnull !121, !align !552
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !548
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !559, !nonnull !121, !align !527
  store i64 10, ptr %i.an, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef double @_ZN4toml2v34impl7impl_ex6parser15parse_hex_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit:
  %.sroa.4 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !460
  store i64 26, ptr %i.a, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.101, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 77, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.102, ptr %i.b, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit
  unreachable

bb.b:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4toml2v34impl7impl_ex6parser13parse_integerILm16EEElv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 10 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !460
  store i64 19, ptr %i.d, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.110, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !461  ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !488  ; 4 uses
  %.not = icmp eq i32 %i.f, 48
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 19, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.103, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  %i.h = icmp ult i32 %i.f, 32
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = zext nneg i32 %i.f to i64
end_hunk_0
begin_hunk_1_@_ZN4toml2v34impl7impl_ex6parser13parse_integerILm2EEElv:bb.a
bb.bi:                                            ; preds = %bb.bg
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #50
  br label %bb.cd

bb.bj:                                            ; preds = %bb.bf
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !17
  %i.ci = add nuw nsw i64 %.040.ph, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 %.040.ph
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !17
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %thread-pre-split unwind label %.loopexit.split-lp, !llvm.loop !769

.critedge:                                        ; preds = %bb.ah, %bb.ai
  %.not54 = icmp eq ptr %.039, null
  br i1 %.not54, label %bb.bs, label %bb.bk

bb.bk:                                            ; preds = %.critedge
  %i.ck = load i32, ptr %.039, align 4, !tbaa !488
  %i.cl = icmp eq i32 %i.ck, 95
  br i1 %i.cl, label %bb.bl, label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  br i1 %.not53, label %bb.bm, label %bb.bp, !prof !173

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #50
  store i64 23, ptr %21, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.13, ptr %i.cm, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %21) #54
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #50
  br label %bb.cd

bb.bp:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #50
  store i64 38, ptr %22, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr @.str.106, ptr %i.co, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %22) #54
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #50
  br label %bb.cd

bb.bs:                                            ; preds = %bb.bk, %.critedge
  %i.cq = icmp eq i64 %.040.ph, 1
  br i1 %i.cq, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.cr = load i8, ptr %i.a, align 16, !tbaa !17
  %i.cs = sext i8 %i.cr to i64
  %i.ct = add nsw i64 %i.cs, -48
  br label %._crit_edge.thread

bb.bu:                                            ; preds = %bb.bs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.040.ph ; 4 uses
  %.not127 = icmp eq i64 %.040.ph, 0
  br i1 %.not127, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bu, %bb.bv
  %.036119 = phi ptr [ %i.cx, %bb.bv ], [ %i.a, %bb.bu ] ; 3 uses
  %i.cv = load i8, ptr %.036119, align 1, !tbaa !17
  %i.cw = icmp eq i8 %i.cv, 48
  br i1 %i.cw, label %bb.bv, label %.critedge2

bb.bv:                                            ; preds = %.lr.ph
  %i.cx = getelementptr inbounds nuw i8, ptr %.036119, i64 1 ; 3 uses
  %i.cy = icmp ult ptr %i.cx, %i.cu
  br i1 %i.cy, label %.lr.ph, label %.critedge2, !llvm.loop !770

.critedge2:                                       ; preds = %.lr.ph, %bb.bv, %bb.bu
  %.036.lcssa = phi ptr [ %i.a, %bb.bu ], [ %i.cx, %bb.bv ], [ %.036119, %.lr.ph ] ; 4 uses
  %i.cz = icmp eq ptr %.036.lcssa, %i.cu
  br i1 %i.cz, label %._crit_edge.thread, label %bb.bw

bb.bw:                                            ; preds = %.critedge2
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = ptrtoint ptr %.036.lcssa to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = icmp ugt i64 %i.dc, 63
  br i1 %i.dd, label %bb.bx, label %.preheader, !prof !173

.preheader:                                       ; preds = %bb.bw
  %i.de = getelementptr inbounds i8, ptr %i.cu, i64 -1 ; 2 uses
  %.not55122 = icmp ult ptr %i.de, %.036.lcssa
  br i1 %.not55122, label %._crit_edge.thread, label %.lr.ph125

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #50
  store i64 1, ptr %23, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.16, ptr %i.df, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #50
  store i64 %.040.ph, ptr %24, align 8, !tbaa !650
  %i.dg = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr %i.a, ptr %i.dg, align 8, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #50
  store i64 49, ptr %25, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %25, i64 8
  store ptr @.str.109, ptr %i.dh, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_120parse_integer_traitsILm2EE11full_prefixE, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(16) %25) #54
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.di = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #50
  br label %bb.cd

.lr.ph125:                                        ; preds = %.preheader, %.lr.ph125
  %i.dj = phi ptr [ %i.dq, %.lr.ph125 ], [ %i.de, %.preheader ] ; 2 uses
  %.0124 = phi i64 [ %i.dp, %.lr.ph125 ], [ 1, %.preheader ] ; 2 uses
  %.035123 = phi i64 [ %i.do, %.lr.ph125 ], [ 0, %.preheader ]
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !17
  %i.dl = sext i8 %i.dk to i64
  %i.dm = add nsw i64 %i.dl, -48
  %i.dn = mul i64 %i.dm, %.0124
  %i.do = add i64 %i.dn, %.035123                 ; 3 uses
  %i.dp = shl i64 %.0124, 1
  %i.dq = getelementptr inbounds i8, ptr %i.dj, i64 -1 ; 2 uses
  %.not55 = icmp ult ptr %i.dq, %.036.lcssa
  br i1 %.not55, label %._crit_edge, label %.lr.ph125, !llvm.loop !771

._crit_edge:                                      ; preds = %.lr.ph125
  %i.dr = icmp slt i64 %i.do, 0
  br i1 %i.dr, label %bb.ca, label %._crit_edge.thread, !prof !114

bb.ca:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #50
  store i64 1, ptr %26, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr @.str.16, ptr %i.ds, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #50
  store i64 %.040.ph, ptr %27, align 8, !tbaa !650
  %i.dt = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.a, ptr %i.dt, align 8, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #50
  store i64 49, ptr %28, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.109, ptr %i.du, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) @_ZN12_GLOBAL__N_120parse_integer_traitsILm2EE11full_prefixE, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(16) %28) #54
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #50
  br label %bb.cd

._crit_edge.thread:                               ; preds = %.preheader, %.critedge2, %._crit_edge, %bb.bt
  %.1 = phi i64 [ %i.ct, %bb.bt ], [ 0, %.critedge2 ], [ %i.do, %._crit_edge ], [ 0, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret i64 %.1

bb.cd:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.bz, %bb.cc, %bb.br, %bb.bo, %bb.bi, %bb.be, %bb.ay, %bb.at, %bb.ao
  %.pn61 = phi { ptr, i32 } [ %i.bk, %bb.at ], [ %i.dv, %bb.cc ], [ %i.bh, %bb.ao ], [ %i.bp, %bb.ay ], [ %i.cb, %bb.be ], [ %i.cf, %bb.bi ], [ %i.cn, %bb.bo ], [ %i.cp, %bb.br ], [ %i.di, %bb.bz ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.af, %bb.y, %bb.t, %bb.m, %bb.l, %bb.g
  %.pn63 = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.u, %bb.m ], [ %i.ah, %bb.t ], [ %i.ak, %bb.y ], [ %.pn61, %bb.cd ], [ %i.ay, %bb.af ], [ %i.t, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn63
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef double @_ZN4toml2v34impl7impl_ex6parser11parse_floatEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = alloca [128 x i8], align 16              ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %33 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 19 uses
  %34 = alloca %"class.std::locale", align 8      ; 2 uses
  %35 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %37 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !461, !nonnull !121, !noundef !121
  %i.f = load i32, ptr %i.e, align 4, !tbaa !488  ; 4 uses
  %i.g = icmp ne i32 %i.f, 43                     ; 2 uses
  br i1 %i.g, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit, label %.thread

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %38, i64 16, i1 false), !tbaa.struct !460
  store i64 14, ptr %38, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.116, ptr %.sroa.2.0..sroa_idx.i102, align 8, !tbaa !140
  br label %.thread.a

_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit: ; preds = %bb.a
  %39 = add i32 %i.f, -45
  %40 = icmp ult i32 %39, 2
  %41 = add i32 %i.f, -48
  %42 = icmp ult i32 %41, 10
  %43 = or i1 %40, %42
  tail call void @llvm.assume(i1 %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %44 = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %44, i64 16, i1 false), !tbaa.struct !460
  store i64 14, ptr %44, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.116, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %45 = icmp eq i32 %i.f, 45
  br i1 %45, label %.thread.a, label %bb.g

.thread.a:                                        ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit, %.thread
  %46 = phi ptr [ %38, %.thread ], [ %44, %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit ] ; 3 uses
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %.thread.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !461
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.i, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %.thread.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #50
  br label %bb.cw

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit, %bb.b
  %i.l = phi i1 [ %i.g, %bb.b ], [ false, %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit ]
  %47 = phi ptr [ %46, %bb.b ], [ %44, %_ZN12_GLOBAL__N_18is_matchIJDiDiDiEEEbDiDpT_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.g, %bb.bp
  %.033.ph = phi i64 [ %i.cu, %bb.bp ], [ 0, %bb.g ] ; 5 uses
  %.032.ph = phi ptr [ %i.m, %bb.bp ], [ null, %bb.g ]
  %.030.ph = phi i8 [ %.131, %bb.bp ], [ 0, %bb.g ] ; 4 uses
  %.028.ph = phi i8 [ %.129, %bb.bp ], [ 0, %bb.g ] ; 7 uses
  %.0.ph = phi i8 [ %.1, %bb.bp ], [ 0, %bb.g ]   ; 8 uses
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !461
  br label %bb.h

bb.h:                                             ; preds = %thread-pre-split, %bb.q
  %i.m = phi ptr [ %.pr, %thread-pre-split ], [ %i.v, %bb.q ] ; 19 uses
  %.032 = phi ptr [ %.032.ph, %thread-pre-split ], [ %i.m, %bb.q ] ; 7 uses
  %.not44 = icmp eq ptr %i.m, null                ; 3 uses
  br i1 %.not44, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr %i.m, align 4, !tbaa !488  ; 8 uses
  %i.o = tail call noundef zeroext i1 @_ZN4toml2v34impl19is_value_terminatorEDi(i32 noundef zeroext %i.n) #56
  br i1 %i.o, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = icmp eq i32 %i.n, 95
  %.not53 = icmp eq ptr %.032, null               ; 3 uses
  br i1 %i.p, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = load i32, ptr %.032, align 4, !tbaa !488
  %i.r = add i32 %i.q, -48
  %i.s = icmp ult i32 %i.r, 10
  br i1 %i.s, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 34, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.105, ptr %i.t, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.cv

bb.p:                                             ; preds = %bb.l
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.q unwind label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !461  ; 2 uses
  %.not54 = icmp eq ptr %i.v, null
  br i1 %.not54, label %bb.r, label %bb.h, !prof !173, !llvm.loop !772

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 23, ptr %3, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.13, ptr %i.w, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

.loopexit:                                        ; preds = %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp:                               ; preds = %bb.bp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.t:                                             ; preds = %bb.r
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.cv

bb.u:                                             ; preds = %bb.j
  br i1 %.not53, label %.critedge60, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.y = load i32, ptr %.032, align 4, !tbaa !488
  %i.z = icmp eq i32 %i.y, 95
  %i.aa = add i32 %i.n, -58
  %i.ab = icmp ult i32 %i.aa, -10
  %or.cond = and i1 %i.ab, %i.z
  br i1 %or.cond, label %bb.w, label %.critedge60, !prof !773

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 38, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.106, ptr %i.ac, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %4) #54
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.cv

.critedge60:                                      ; preds = %bb.v, %bb.u
  %i.ae = icmp eq i64 %.033.ph, 128
  br i1 %i.ae, label %bb.z, label %bb.ac, !prof !173

bb.z:                                             ; preds = %.critedge60
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 24, ptr %5, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.107, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  store i64 128, ptr %i.b, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  store i64 7, ptr %6, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.108, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.ah = trunc nuw i8 %.028.ph to i1             ; 2 uses
  %spec.select = select i1 %i.ah, i64 0, i64 35
  %spec.select293 = select i1 %i.ah, ptr @.str.7, ptr @.str.117
  store i64 %spec.select, ptr %7, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %spec.select293, ptr %i.ai, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEmS8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.cv

bb.ac:                                            ; preds = %.critedge60
  switch i32 %i.n, label %bb.bc [
    i32 46, label %bb.ad
    i32 101, label %bb.ap
    i32 69, label %bb.ap
    i32 45, label %bb.aw
    i32 43, label %bb.aw
  ]

bb.ad:                                            ; preds = %bb.ac
  %.not52 = icmp eq i8 %.0.ph, 0
  br i1 %.not52, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  store i64 31, ptr %8, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.118, ptr %i.ak, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %8) #54
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.cv

bb.ah:                                            ; preds = %bb.ad
  %i.am = trunc nuw i8 %.028.ph to i1
  br i1 %i.am, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  store i64 48, ptr %9, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.119, ptr %i.an, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %9) #54
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

end_hunk_1
begin_hunk_2_@_ZN4toml2v34impl7impl_ex6parser11parse_floatEv:bb.a
  ]

bb.br:                                            ; preds = %bb.bq
  br i1 %.not44, label %bb.bs, label %bb.bv, !prof !173

bb.bs:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #50
  store i64 23, ptr %27, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr @.str.13, ptr %i.cz, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %27) #54
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #50
  br label %bb.cv

bb.bv:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #50
  store i64 38, ptr %28, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %28, i64 8
  store ptr @.str.106, ptr %i.db, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %28) #54
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  unreachable

bb.bx:                                            ; preds = %bb.bv
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #50
  br label %bb.cv

_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit: ; preds = %bb.bq
  %i.dd = add i32 %i.cw, -45
  %i.de = icmp ult i32 %i.dd, 2
  br i1 %i.de, label %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit.thread, label %bb.ch

_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit.thread: ; preds = %bb.bq, %bb.bq, %bb.bq, %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit
  br i1 %.not44, label %bb.by, label %bb.cb, !prof !173

bb.by:                                            ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #50
  store i64 23, ptr %29, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr @.str.13, ptr %i.df, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %29) #54
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #50
  br label %bb.cv

bb.cb:                                            ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #50
  store i64 29, ptr %30, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr @.str.121, ptr %i.dh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #50
  %i.di = load i32, ptr %i.m, align 8, !tbaa !741 ; 3 uses
  %i.dj = icmp ult i32 %i.di, 32
  br i1 %i.dj, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr @_ZN4toml2v34impl20control_char_escapesE, i64 %i.dk ; 2 uses
  %.sroa.0.0.copyload.i97 = load i64, ptr %i.dl, align 16, !tbaa !139
  %.sroa.4.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.sroa.4.0.copyload.i99 = load ptr, ptr %.sroa.4.0..sroa_idx.i98, align 8, !tbaa !140
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100

bb.cd:                                            ; preds = %bb.cb
  %i.dm = icmp eq i32 %i.di, 127
  br i1 %i.dm, label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.do = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !495
  br label %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100

_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100: ; preds = %bb.cc, %bb.cd, %bb.ce
  %.sroa.4.0.i93 = phi ptr [ %.sroa.4.0.copyload.i99, %bb.cc ], [ %i.dn, %bb.ce ], [ @.str.29, %bb.cd ]
  %.sroa.0.0.i94 = phi i64 [ %.sroa.0.0.copyload.i97, %bb.cc ], [ %i.dp, %bb.ce ], [ 6, %bb.cd ]
  store i64 %.sroa.0.0.i94, ptr %31, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.sroa.4.0.i93, ptr %i.dq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #50
  store i64 1, ptr %32, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.16, ptr %i.dr, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %32) #54
          to label %bb.cf unwind label %bb.cg

bb.cf:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100
  unreachable

bb.cg:                                            ; preds = %_ZN12_GLOBAL__N_15to_svERKNS_14utf8_codepointE.exit100
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #50
  br label %bb.cv

bb.ch:                                            ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiEEEbDiDpT_.exit, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #50
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33)
          to label %bb.ci unwind label %bb.co

bb.ci:                                            ; preds = %bb.ch
  %i.dt = load ptr, ptr %33, align 8, !tbaa !70
  %i.du = getelementptr i8, ptr %i.dt, i64 -24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.cj unwind label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.dx = getelementptr inbounds i8, ptr %33, i64 %i.dv
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind nonnull writable sret(%"class.std::locale") align 8 %34, ptr noundef nonnull align 8 dereferenceable(264) %i.dx, ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #50
  %i.dy = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.dz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.a, i64 noundef %.033.ph)
          to label %bb.cl unwind label %bb.cp     ; 0 uses

bb.cl:                                            ; preds = %bb.ck
  %i.ea = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.cm unwind label %bb.cp     ; 2 uses

bb.cm:                                            ; preds = %bb.cl
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !70
  %i.ec = getelementptr i8, ptr %i.eb, i64 -24
  %i.ed = load i64, ptr %i.ec, align 8
  %i.ee = getelementptr inbounds i8, ptr %i.ea, i64 %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !643
  %i.eh = and i32 %i.eg, 5
  %.not.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.ei = load double, ptr %i.c, align 8, !tbaa !774 ; 2 uses
  %i.ej = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.ej, ptr %33, align 8, !tbaa !70
  %i.ek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.el = getelementptr i8, ptr %i.ej, i64 -24
  %i.em = load i64, ptr %i.el, align 8
  %i.en = getelementptr inbounds i8, ptr %33, i64 %i.em
  store ptr %i.ek, ptr %i.en, align 8, !tbaa !70
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.eo, ptr %i.dy, align 8, !tbaa !70
  %i.ep = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ep, align 8, !tbaa !70
  %i.eq = getelementptr inbounds nuw i8, ptr %33, i64 96
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !8  ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %33, i64 112 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.cn
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !17
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #51
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.ew = fneg double %i.ei
  %i.ex = select i1 %i.l, double %i.ew, double %i.ei
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ep, align 8, !tbaa !70
  %i.ey = getelementptr inbounds nuw i8, ptr %33, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ey) #50
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ez, ptr %33, align 8, !tbaa !70
  %i.fa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.fb = getelementptr i8, ptr %i.ez, i64 -24
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds i8, ptr %33, i64 %i.fc
  store ptr %i.fa, ptr %i.fd, align 8, !tbaa !70
  %i.fe = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.fe, align 8, !tbaa !775
  %i.ff = getelementptr inbounds nuw i8, ptr %33, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ff) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret double %i.ex

bb.co:                                            ; preds = %bb.ch
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cp:                                            ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cq:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #50
  store i64 1, ptr %35, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr @.str.16, ptr %i.fi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #50
  store i64 %.033.ph, ptr %36, align 8, !tbaa !650
  %i.fj = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr %i.a, ptr %i.fj, align 8, !tbaa !649
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #50
  store i64 37, ptr %37, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.125, ptr %i.fk, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %37) #54
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  unreachable

bb.cs:                                            ; preds = %bb.cq
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #50
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cp
  %.pn = phi { ptr, i32 } [ %i.fl, %bb.cs ], [ %i.fh, %bb.cp ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %33) #50
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.co
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ct ], [ %i.fg, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  br label %bb.cv

bb.cv:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cu, %bb.cg, %bb.ca, %bb.bx, %bb.bu, %bb.bo, %bb.bi, %bb.bb, %bb.ay, %bb.av, %bb.as, %bb.ao, %bb.ak, %bb.ag, %bb.ab, %bb.y, %bb.t, %bb.o
  %.pn55 = phi { ptr, i32 } [ %i.x, %bb.t ], [ %.pn.pn, %bb.cu ], [ %i.u, %bb.o ], [ %i.ad, %bb.y ], [ %i.aj, %bb.ab ], [ %i.ao, %bb.ak ], [ %i.ar, %bb.ao ], [ %i.al, %bb.ag ], [ %i.bj, %bb.av ], [ %i.bb, %bb.as ], [ %i.bz, %bb.bb ], [ %i.br, %bb.ay ], [ %i.cg, %bb.bi ], [ %i.cr, %bb.bo ], [ %i.da, %bb.bu ], [ %i.dc, %bb.bx ], [ %i.dg, %bb.ca ], [ %i.ds, %bb.cg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.f, %bb.e
  %48 = phi ptr [ %46, %bb.f ], [ %47, %bb.cv ], [ %46, %bb.e ]
  %.pn57 = phi { ptr, i32 } [ %i.k, %bb.f ], [ %.pn55, %bb.cv ], [ %i.j, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn57
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef double @_ZN4toml2v34impl7impl_ex6parser16parse_inf_or_nanEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !460
  store i64 14, ptr %i.b, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3480
  store ptr @.str.116, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3464 ; 2 uses
  store i8 1, ptr %i.c, align 8, !tbaa !529
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3465
  store i8 1, ptr %i.d, align 1, !tbaa !530
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 3 uses
  store i64 0, ptr %i.f, align 8, !tbaa !14
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !8
  store i8 0, ptr %i.g, align 1, !tbaa !17
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !461, !nonnull !121, !noundef !121 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !495  ; 2 uses
  %i.k = load i64, ptr %i.f, align 8, !tbaa !14
  %i.l = sub i64 4611686018427387903, %i.k
  %i.m = icmp ult i64 %i.l, %i.j
  br i1 %i.m, label %bb.a, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.a:                                             ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #54
          to label %.noexc.i unwind label %bb.b

.noexc.i:                                         ; preds = %bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiDiDiEEEbDiDpT_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull %i.n, i64 noundef %i.j)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge unwind label %bb.b ; 0 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !461
  %i.p = load i32, ptr %.pre, align 4, !tbaa !488 ; 3 uses
  %i.q = icmp eq i32 %i.p, 45
  switch i32 %i.p, label %.lr.ph.i.preheader [
    i32 45, label %bb.c
    i32 43, label %bb.c
  ]

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i, %bb.a
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #53
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !461  ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.e, label %._crit_edge, !prof !173

._crit_edge:                                      ; preds = %bb.d
  %.pre24 = load i32, ptr %i.t, align 4, !tbaa !488
  br label %.lr.ph.i.preheader

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.u, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.ab

.lr.ph.i.preheader:                               ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge
  %i.x = phi i32 [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i._ZN4toml2v34impl7impl_ex6parser15start_recordingEb.exit_crit_edge ], [ %.pre24, %._crit_edge ] ; 3 uses
  %i.y = add i32 %i.x, -73
  %switch.and = and i32 %i.y, -33
  %switch.selectcmp = icmp eq i32 %switch.and, 0  ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !461  ; 2 uses
  %.not13.i = icmp eq ptr %i.z, null
  br i1 %.not13.i, label %bb.i, label %bb.j, !prof !173

bb.i:                                             ; preds = %.noexc20.1, %.noexc20, %.lr.ph.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #50
  store i64 23, ptr %1, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @.str.13, ptr %i.aa, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #54
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.lr.ph.i.preheader
  %i.ab = select i1 %switch.selectcmp, i32 105, i32 110
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !488
  %.not14.i = icmp eq i32 %i.ac, %i.ab
  br i1 %.not14.i, label %bb.k, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %bb.k
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !461 ; 2 uses
  %.not13.i.1 = icmp eq ptr %i.ad, null
  br i1 %.not13.i.1, label %bb.i, label %bb.l, !prof !173

bb.l:                                             ; preds = %.noexc20
  %i.ae = select i1 %switch.selectcmp, i32 110, i32 97
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !488
  %.not14.i.1 = icmp eq i32 %i.af, %i.ae
  br i1 %.not14.i.1, label %bb.m, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc20.1 unwind label %.loopexit

.noexc20.1:                                       ; preds = %bb.m
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !461 ; 2 uses
  %.not13.i.2 = icmp eq ptr %i.ag, null
  br i1 %.not13.i.2, label %bb.i, label %bb.n, !prof !173

bb.n:                                             ; preds = %.noexc20.1
  %i.ah = select i1 %switch.selectcmp, i32 102, i32 110
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !488
  %.not14.i.2 = icmp eq i32 %i.ai, %i.ah
  br i1 %.not14.i.2, label %bb.o, label %_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %0)
          to label %.noexc20.2 unwind label %.loopexit

.noexc20.2:                                       ; preds = %bb.o
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !461 ; 5 uses
  store i8 0, ptr %i.c, align 8, !tbaa !529
  %.not13 = icmp eq ptr %.pre25, null
  br i1 %.not13, label %bb.y, label %bb.r

_ZN4toml2v34impl7impl_ex6parser25consume_expected_sequenceESt17basic_string_viewIDiSt11char_traitsIDiEE.exit: ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 10, ptr %3, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.98, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  store i64 3, ptr %4, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = add i32 %i.x, -73
  %switch.and32 = and i32 %i.al, -33
  %switch.selectcmp33 = icmp eq i32 %switch.and32, 0
  %i.am = select i1 %switch.selectcmp33, ptr @.str.57, ptr @.str.59
  store ptr %i.am, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i64 8, ptr %5, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.99, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %.val = load ptr, ptr %i.e, align 8, !tbaa !8
  %.val18 = load i64, ptr %i.f, align 8, !tbaa !14
  store i64 %.val18, ptr %6, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.val, ptr %i.ao, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  store i64 1, ptr %7, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr @.str.16, ptr %i.ap, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEES8_S8_S8_S8_EEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7) #54
          to label %bb.p unwind label %bb.q
end_hunk_2
begin_hunk_3_@_ZSt12__to_chars_iImENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES2_IS6_sES2_IS6_iES2_IS6_lES2_IS6_xES2_IS6_nEEES1_IJS2_IS6_hES2_IS6_tES2_IS6_jES2_IS6_mES2_IS6_yES2_IS6_oEEES2_IcS6_EEE5valueESt15to_chars_resultE4typeEPcSP_S4_i:bb.a
  %i.cn = and i8 %i.cm, 7
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = add nsw i32 %.031.i39, -1
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i8 %i.co, ptr %i.cr, align 1, !tbaa !17
  %i.cs = add nsw i32 %.031.i39, -2
  %i.ct = icmp ugt i64 %.02830.i40, 4095
  br i1 %i.ct, label %.lr.ph.i38, label %._crit_edge.i29, !llvm.loop !789

._crit_edge.i29:                                  ; preds = %.lr.ph.i38, %bb.s
  %.028.lcssa.i30 = phi i64 [ %2, %bb.s ], [ %i.cl, %.lr.ph.i38 ] ; 4 uses
  %i.cu = icmp samesign ugt i64 %.028.lcssa.i30, 7
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i29
  %i.cv = lshr i64 %.028.lcssa.i30, 3
  %i.cw = trunc nuw nsw i64 %.028.lcssa.i30 to i8
  %i.cx = and i8 %i.cw, 7
  %i.cy = or disjoint i8 %i.cx, 48
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.cy, ptr %i.cz, align 1, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i29
  %storemerge.in.in.i = phi i64 [ %i.cv, %bb.t ], [ %.028.lcssa.i30, %._crit_edge.i29 ]
  %storemerge.in.i31 = trunc nuw nsw i64 %storemerge.in.in.i to i8
  %storemerge.i32 = or disjoint i8 %storemerge.in.i31, 48
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

bb.v:                                             ; preds = %bb.c
  %i.da = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %2, i1 true) ; 5 uses
  %i.db = sub nuw nsw i64 64, %i.da               ; 4 uses
  %i.dc = ptrtoint ptr %1 to i64
  %i.dd = ptrtoint ptr %0 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = icmp slt i64 %i.de, %i.db
  br i1 %i.df, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i, !prof !173

.preheader.i:                                     ; preds = %bb.v
  %.not16.i = icmp eq i64 %i.da, 63
  br i1 %.not16.i, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.preheader.i41

.lr.ph.preheader.i41:                             ; preds = %.preheader.i
  %.015.i = xor i64 %i.da, 63                     ; 3 uses
  %i.dg = trunc nuw nsw i64 %.015.i to i32
  %xtraiter = and i32 %i.dg, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i42.prol.loopexit, label %.lr.ph.i42.prol

.lr.ph.i42.prol:                                  ; preds = %.lr.ph.preheader.i41
  %i.dh = trunc i64 %2 to i8
  %i.di = and i8 %i.dh, 1
  %i.dj = or disjoint i8 %i.di, 48
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 %.015.i
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !17
  %i.dl = lshr i64 %2, 1
  %indvars.iv.next.i.prol = sub nsw i64 62, %i.da
  br label %.lr.ph.i42.prol.loopexit

.lr.ph.i42.prol.loopexit:                         ; preds = %.lr.ph.i42.prol, %.lr.ph.preheader.i41
  %indvars.iv.i.unr = phi i64 [ %.015.i, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i.prol, %.lr.ph.i42.prol ]
  %.01317.i.unr = phi i64 [ %2, %.lr.ph.preheader.i41 ], [ %i.dl, %.lr.ph.i42.prol ]
  %i.dm = icmp eq i64 %i.da, 62
  br i1 %i.dm, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i42 ], [ %indvars.iv.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %.01317.i = phi i64 [ %i.dx, %.lr.ph.i42 ], [ %.01317.i.unr, %.lr.ph.i42.prol.loopexit ] ; 3 uses
  %i.dn = trunc i64 %.01317.i to i8
  %i.do = and i8 %i.dn, 1
  %i.dp = or disjoint i8 %i.do, 48
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !17
  %i.dr = lshr i64 %.01317.i, 1
  %i.ds = trunc i64 %i.dr to i8
  %i.dt = and i8 %i.ds, 1
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.dw = getelementptr i8, ptr %i.dv, i64 -1
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !17
  %i.dx = lshr i64 %.01317.i, 2
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.dy = and i64 %indvars.iv.next.i.1, 4294967295
  %.not.i.1 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.1, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, label %.lr.ph.i42, !llvm.loop !790

bb.w:                                             ; preds = %bb.c
  %i.dz = mul nsw i32 %3, %3                      ; 2 uses
  %i.ea = mul i32 %i.dz, %3                       ; 2 uses
  %i.eb = mul i32 %i.ea, %3
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = zext i32 %3 to i64                      ; 3 uses
  %i.ee = icmp ult i64 %2, %i.ed
  br i1 %i.ee, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, label %.lr.ph.i.i48

.lr.ph.i.i48:                                     ; preds = %bb.w
  %i.ef = zext nneg i32 %i.dz to i64
  %i.eg = zext i32 %i.ea to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.lr.ph.i.i48
  %.029.i.i49 = phi i32 [ 1, %.lr.ph.i.i48 ], [ %i.eo, %bb.ad ] ; 4 uses
  %.02328.i.i50 = phi i64 [ %2, %.lr.ph.i.i48 ], [ %i.en, %bb.ad ] ; 4 uses
  %i.eh = icmp ult i64 %.02328.i.i50, %i.ef
  br i1 %i.eh, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ei = add i32 %.029.i.i49, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.z:                                             ; preds = %bb.x
  %i.ej = icmp ult i64 %.02328.i.i50, %i.eg
  br i1 %i.ej, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ek = add i32 %.029.i.i49, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ab:                                            ; preds = %bb.z
  %i.el = icmp ult i64 %.02328.i.i50, %i.ec
  br i1 %i.el, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.em = add i32 %.029.i.i49, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51

bb.ad:                                            ; preds = %bb.ab
  %i.en = udiv i64 %.02328.i.i50, %i.ec           ; 2 uses
  %i.eo = add i32 %.029.i.i49, 4                  ; 2 uses
  %i.ep = icmp ult i64 %i.en, %i.ed
  br i1 %i.ep, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, label %bb.x, !llvm.loop !240

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51:  ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.y
  %.022.i.i52 = phi i32 [ %i.em, %bb.ac ], [ %i.ei, %bb.y ], [ %i.ek, %bb.aa ], [ %i.eo, %bb.ad ] ; 2 uses
  %i.eq = ptrtoint ptr %1 to i64
  %i.er = ptrtoint ptr %0 to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = zext i32 %.022.i.i52 to i64             ; 2 uses
  %i.eu = icmp slt i64 %i.es, %i.et
  br i1 %i.eu, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %.preheader.i53, !prof !173

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i: ; preds = %bb.w
  %i.ev = ptrtoint ptr %1 to i64
  %i.ew = ptrtoint ptr %0 to i64
  %i.ex = sub i64 %i.ev, %i.ew
  %i.ey = icmp slt i64 %i.ex, 1
  br i1 %i.ey, label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit, label %._crit_edge.i56, !prof !173

.preheader.i53:                                   ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51
  %i.ez = sext i32 %3 to i64                      ; 2 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.preheader.i53
  %.0.in27.i = phi i32 [ %.022.i.i52, %.preheader.i53 ], [ %.0.i, %bb.ae ]
  %.02026.i = phi i64 [ %2, %.preheader.i53 ], [ %i.fa, %bb.ae ] ; 2 uses
  %.0.i = add i32 %.0.in27.i, -1                  ; 2 uses
  %i.fa = udiv i64 %.02026.i, %i.ez               ; 3 uses
  %i.fb = urem i64 %.02026.i, %i.ez
  %i.fc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !17
  %i.fe = zext i32 %.0.i to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 %i.fe
  store i8 %i.fd, ptr %i.ff, align 1, !tbaa !17
  %.not.i55 = icmp ult i64 %i.fa, %i.ed
  br i1 %.not.i55, label %._crit_edge.i56, label %bb.ae, !llvm.loop !791

._crit_edge.i56:                                  ; preds = %bb.ae, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i
  %i.fg = phi i64 [ 1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.et, %bb.ae ]
  %.020.lcssa.i = phi i64 [ %2, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fa, %bb.ae ]
  %i.fh = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail10__to_charsIjEESt15to_chars_resultPcS2_T_i.__digits, i64 %.020.lcssa.i
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !17
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split: ; preds = %.lr.ph.i42.prol.loopexit, %.lr.ph.i42, %.preheader.i, %bb.p, %bb.q, %bb.b, %bb.g, %bb.u, %._crit_edge.i56
  %.sink109 = phi i8 [ %i.fi, %._crit_edge.i56 ], [ %i.bt, %bb.p ], [ %storemerge.i32, %bb.u ], [ 48, %bb.b ], [ %storemerge.i, %bb.g ], [ %i.bv, %bb.q ], [ 49, %.preheader.i ], [ 49, %.lr.ph.i42 ], [ 49, %.lr.ph.i42.prol.loopexit ]
  %.sink = phi i64 [ %i.fg, %._crit_edge.i56 ], [ %i.av, %bb.p ], [ %i.cc, %bb.u ], [ 1, %bb.b ], [ %i.j, %bb.g ], [ %i.av, %bb.q ], [ %i.db, %.preheader.i ], [ %i.db, %.lr.ph.i42 ], [ %i.db, %.lr.ph.i42.prol.loopexit ]
  store i8 %.sink109, ptr %0, align 1, !tbaa !17
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  br label %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit

_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit: ; preds = %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51, %bb.v, %bb.r, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, %bb.d, %bb.a
  %.pn63 = phi ptr [ %1, %bb.r ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ %1, %bb.v ], [ %1, %bb.a ], [ %1, %bb.d ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ %i.fj, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn61 = phi i32 [ 75, %bb.r ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i51 ], [ 75, %bb.v ], [ 75, %bb.a ], [ 75, %bb.d ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i ], [ 75, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.thread.i ], [ 0, %_ZNSt8__detail13__to_chars_16ImEENSt9enable_ifIXsr5__or_ISt5__or_IJSt7is_sameINSt9remove_cvIT_E4typeEaES3_IS7_sES3_IS7_iES3_IS7_lES3_IS7_xES3_IS7_nEEES2_IJS3_IS7_hES3_IS7_tES3_IS7_jES3_IS7_mES3_IS7_yES3_IS7_oEEES3_IcS7_EEE5valueESt15to_chars_resultE4typeEPcSQ_S5_.exit.sink.split ]
  %.pn = insertvalue { ptr, i32 } poison, ptr %.pn63, 0
  %.fca.1.insert.merged = insertvalue { ptr, i32 } %.pn, i32 %.pn61, 1
  ret { ptr, i32 } %.fca.1.insert.merged
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #39

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN4toml2v34impl7impl_ex6parser12parse_stringEv(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(3496) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3192 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !461, !nonnull !121, !noundef !121
  %i.c = load i32, ptr %i.b, align 4, !tbaa !488  ; 5 uses
  %4 = icmp eq i32 %i.c, 34
  %i.d = icmp eq i32 %i.c, 39                     ; 3 uses
  %5 = or i1 %4, %i.d
  tail call void @llvm.assume(i1 %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 3472 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !460
  store i64 6, ptr %i.e, align 8, !tbaa !139
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 3480
  store ptr @.str.82, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !140
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 3432
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3440
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !461  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.g, !prof !173

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  store i64 23, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.j, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #54
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %bb.ac

bb.g:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.i, align 8, !tbaa !741  ; 2 uses
  invoke void @_ZN4toml2v34impl7impl_ex6parser7advanceEv(ptr noundef nonnull align 8 dereferenceable(3496) %1)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !461  ; 2 uses
  %.not16 = icmp eq ptr %i.n, null
  br i1 %.not16, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.o = icmp eq i32 %i.m, %i.c
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  br label %bb.ab

bb.k:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  store i64 23, ptr %3, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.13, ptr %i.q, align 8
  invoke void @_ZNK4toml2v34impl7impl_ex6parser9set_errorIJSt17basic_string_viewIcSt11char_traitsIcEEEEEvDpRKT_(ptr noundef nonnull align 8 dereferenceable(3496) %1, ptr noundef nonnull align 8 dereferenceable(16) %3) #54
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %bb.ac

bb.o:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.n, align 8, !tbaa !741
  %i.t = icmp eq i32 %i.c, %i.m
  %i.u = icmp eq i32 %i.c, %i.s
  %or.cond = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  br i1 %i.d, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.v = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser20parse_literal_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.w = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser18parse_basic_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext true)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sink26 = phi { i64, ptr } [ %i.v, %bb.q ], [ %i.w, %bb.r ] ; 2 uses
  %i.x = extractvalue { i64, ptr } %.sink26, 0
  store i64 %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = extractvalue { i64, ptr } %.sink26, 1
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.aa, align 8, !tbaa !792
  br label %bb.ab

bb.t:                                             ; preds = %bb.x, %bb.z, %bb.y, %bb.r, %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.u:                                             ; preds = %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 3056
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !525 ; 3 uses
  %i.ae = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3080 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !522 ; 2 uses
  %i.ah = add i64 %i.ag, 2                        ; 3 uses
  %i.ai = icmp ule i64 %i.ah, %i.ad
  tail call void @llvm.assume(i1 %i.ai)
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !522
  %.not.i.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 3064
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !524
  %reass.sub = sub i64 %i.ad, %i.ag
  %i.am = add i64 %reass.sub, -2
  %i.an = add i64 %i.am, %i.al
  %i.ao = urem i64 %i.an, 127
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.ao
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

bb.w:                                             ; preds = %bb.u
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !523
  br label %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit

_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit:   ; preds = %bb.v, %bb.w
  %i.as = phi ptr [ %i.ap, %bb.v ], [ %i.ar, %bb.w ] ; 2 uses
  store ptr %i.as, ptr %i.a, align 8, !tbaa !461
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 3184
  %i.av = load i64, ptr %i.at, align 8
  store i64 %i.av, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 3464
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !529, !range !120, !noundef !121
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit

bb.x:                                             ; preds = %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.h, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.x, %_ZN4toml2v34impl7impl_ex6parser7go_backEm.exit
  br i1 %i.d, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.az = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser20parse_literal_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.t

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ba = invoke { i64, ptr } @_ZN4toml2v34impl7impl_ex6parser18parse_basic_stringEb(ptr noundef nonnull align 8 dereferenceable(3496) %1, i1 noundef zeroext false)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink29 = phi { i64, ptr } [ %i.az, %bb.y ], [ %i.ba, %bb.z ] ; 2 uses
  %i.bb = extractvalue { i64, ptr } %.sink29, 0
  store i64 %i.bb, ptr %0, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = extractvalue { i64, ptr } %.sink29, 1
  store ptr %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.be, align 8, !tbaa !792
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.s, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.ac:                                            ; preds = %bb.k, %bb.t, %bb.n, %bb.f, %bb.e
  %.pn20 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ], [ %i.p, %bb.k ], [ %i.ab, %bb.t ], [ %i.r, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false), !tbaa.struct !460
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4toml2v34impl7impl_ex6parser13parse_booleanEv(ptr noundef nonnull align 8 dereferenceable(3496) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN12_GLOBAL__N_18is_matchIJDiDiDiDiEEEbDiDpT_.exit:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 4 uses
  %.sroa.6 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
end_hunk_3
