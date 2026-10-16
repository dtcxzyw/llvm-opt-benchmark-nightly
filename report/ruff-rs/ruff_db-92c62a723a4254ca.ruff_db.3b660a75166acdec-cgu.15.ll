Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_db-92c62a723a4254ca.ruff_db.3b660a75166acdec-cgu.15?download=true
inline.NumInlined: 921
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RINvMs7_NtCs6AO9qwSTTuL_11quick_junit6reportNtB6_9XmlString3newReECs56aZGHL6Dc6_7ruff_db:bb.a
  %i.u = icmp eq ptr %i.s, %i.q
  br i1 %i.u, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.s, align 1, !alias.scope !370, !noalias !373, !noundef !4 ; 5 uses
  %i.x = icmp sgt i8 %i.w, -1
  br i1 %i.x, label %bb.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit12.i.i.i.i.i.i: ; preds = %bb.h
  %i.y = and i8 %i.w, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = icmp ne ptr %i.v, %i.q
  call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  %i.ac = load i8, ptr %i.v, align 1, !alias.scope !370, !noalias !373, !noundef !4
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.w, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit14.i.i.i.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvMs7_NtCs6AO9qwSTTuL_11quick_junit6reportNtB1e_9XmlString3newReE0ENtB5_8Searcher4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = zext nneg i8 %i.w to i32
  br label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvMs7_NtCs6AO9qwSTTuL_11quick_junit6reportNtB1e_9XmlString3newReE0ENtB5_8Searcher4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit12.i.i.i.i.i.i
  %i.aj = icmp ne ptr %i.ab, %i.q
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 3 uses
  %i.al = load i8, ptr %i.ab, align 1, !alias.scope !370, !noalias !373, !noundef !4
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.w, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit16.i.i.i.i.i.i, label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvMs7_NtCs6AO9qwSTTuL_11quick_junit6reportNtB1e_9XmlString3newReE0ENtB5_8Searcher4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit14.i.i.i.i.i.i
  %i.at = icmp ne ptr %i.ak, %i.q
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.av = load i8, ptr %i.ak, align 1, !alias.scope !370, !noalias !373, !noundef !4
  %i.aw = shl nuw nsw i32 %i.z, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ap, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvMs7_NtCs6AO9qwSTTuL_11quick_junit6reportNtB1e_9XmlString3newReE0ENtB5_8Searcher4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i

_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvMs7_NtCs6AO9qwSTTuL_11quick_junit6reportNtB1e_9XmlString3newReE0ENtB5_8Searcher4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit14.i.i.i.i.i.i, %bb.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit12.i.i.i.i.i.i
  %.sroa.56.2.i = phi ptr [ %i.v, %bb.i ], [ %i.au, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit16.i.i.i.i.i.i ], [ %i.ak, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit14.i.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit12.i.i.i.i.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.ai, %bb.i ], [ %i.bc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit16.i.i.i.i.i.i ], [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit14.i.i.i.i.i.i ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs56aZGHL6Dc6_7ruff_db.exit12.i.i.i.i.i.i ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.bd)
  %i.be = ptrtoint ptr %.sroa.56.2.i to i64
  %i.bf = sub i64 %i.be, %i.t
  %i.bg = add i64 %i.bf, %i.r                     ; 2 uses
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 9
  %i.bi = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i, -11
  %switch.i.i.i.i.i.i = icmp ult i32 %i.bi, 2
  %or.cond.i.i.not9.i.not4.i.i.i = or i1 %i.bh, %switch.i.i.i.i.i.i
  %i.bj = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i, -14
  %spec.select.i.i.i.i.i.i = icmp ult i32 %i.bj, 18
  %.sroa.0.0.i.i.not.i.not.i.i.i = select i1 %or.cond.i.i.not9.i.not4.i.i.i, i1 true, i1 %spec.select.i.i.i.i.i.i
  br i1 %.sroa.0.0.i.i.not.i.not.i.i.i, label %bb.m, label %bb.g

bb.j:                                             ; preds = %bb.o, %bb.m
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.k:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.11.0.i
  %gepdiff40.i = sub nuw nsw i64 %i.h, %.sroa.11.0.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff40.i)
          to label %.noexc.i unwind label %bb.d, !noalias !372

.noexc.i:                                         ; preds = %bb.k
  %i.bm = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !374, !noalias !371, !noundef !4 ; 3 uses
  %i.bn = icmp sgt i64 %i.bm, -1
  call void @llvm.assume(i1 %i.bn)
  %.not.i.i = icmp eq i64 %i.h, %.sroa.11.0.i
  br i1 %.not.i.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %.noexc.i
  %i.bo = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !374, !noalias !371, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr nonnull readonly align 1 %i.bl, i64 %gepdiff40.i, i1 false), !noalias !372
  %.pre.i.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !374, !noalias !371
  br label %bb.r

bb.m:                                             ; preds = %_RNvXs8_NtNtCs4NRVxsYgnAr_4core3str7patternINtB5_19MultiCharEqSearcherNCINvMs7_NtCs6AO9qwSTTuL_11quick_junit6reportNtB1e_9XmlString3newReE0ENtB5_8Searcher4nextCs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.11.0.i
  %gepdiff.i = sub nuw nsw i64 %i.r, %.sroa.11.0.i ; 3 uses
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %gepdiff.i)
          to label %.noexc23.i unwind label %bb.j, !noalias !372

.noexc23.i:                                       ; preds = %bb.m
  %i.br = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !375, !noalias !371, !noundef !4 ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %.not.i21.i = icmp eq i64 %i.r, %.sroa.11.0.i
  br i1 %.not.i21.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.noexc23.i
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !375, !noalias !371, !nonnull !4, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.bq, i64 %gepdiff.i, i1 false), !noalias !372
  %.pre.i22.i = load i64, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !375, !noalias !371
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.noexc23.i
  %i.bv = phi i64 [ %.pre.i22.i, %bb.n ], [ %i.br, %.noexc23.i ]
  %i.bw = add i64 %i.bv, %gepdiff.i
  store i64 %i.bw, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !375, !noalias !371
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
          to label %bb.f unwind label %bb.j, !noalias !372

bb.p:                                             ; preds = %bb.c
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33, !noalias !372
  unreachable

common.resume:                                    ; preds = %bb.t, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.cc, %bb.t ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.b, %bb.a, %bb.r
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.by, %bb.q ], [ %.pn.i, %bb.c ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #32
          to label %common.resume unwind label %bb.v

bb.r:                                             ; preds = %bb.l, %.noexc.i
  %i.bz = phi i64 [ %.pre.i.i, %bb.l ], [ %i.bm, %.noexc.i ]
  %i.ca = add i64 %i.bz, %gepdiff40.i
  store i64 %i.ca, ptr %.sroa.512.0..sroa_idx.i, align 8, !alias.scope !374, !noalias !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !371
  %i.cb = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE16into_boxed_sliceCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.s
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret { ptr, i64 } %i.cb

bb.v:                                             ; preds = %.body
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RINvMs8_NtCs4NRVxsYgnAr_4core3anyNtB6_6TypeId2ofINtNtCs45bxiIjzMqg_5salsa5input7JarImplNtNtNtCs56aZGHL6Dc6_7ruff_db5files9file_root8FileRootEEB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @32, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RINvNtCs4NRVxsYgnAr_4core3any9type_nameINtNtCs45bxiIjzMqg_5salsa5input7JarImplNtNtNtCs56aZGHL6Dc6_7ruff_db5files9file_root8FileRootEEB1k_() unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @33, i64 58 }
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueANtNtCs2sepWsjoOnX_17annotate_snippets7snippet5Groupj1_ECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !15, !alias.scope !384, !noundef !4
  %i.c = icmp ugt i64 %i.b, -4
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets5level5LevelECs56aZGHL6Dc6_7ruff_db.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets5level5LevelECs56aZGHL6Dc6_7ruff_db.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5TitleEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(112) %1) #32
          to label %bb.f unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets5level5LevelECs56aZGHL6Dc6_7ruff_db.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i.i.i, %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5TitleEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(112) %1)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.g, %bb.g ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2sepWsjoOnX_17annotate_snippets7snippet7ElementEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(176) %0) #32
          to label %common.resume.i.i unwind label %bb.k

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets5level5LevelECs56aZGHL6Dc6_7ruff_db.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets5level5LevelECs56aZGHL6Dc6_7ruff_db.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2sepWsjoOnX_17annotate_snippets7snippet7ElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5GroupECs56aZGHL6Dc6_7ruff_db.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2sepWsjoOnX_17annotate_snippets7snippet7ElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
          to label %common.resume.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i.i:                                ; preds = %bb.i, %bb.f
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.h, %bb.i ], [ %.pn.i.i, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.k:                                             ; preds = %bb.f, %.body.i.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5GroupECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2sepWsjoOnX_17annotate_snippets7snippet7ElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(176) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs2d7w8VUmBQM_12nu_ansi_term7display9OSControleEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !4
  %i.b = icmp ugt i64 %i.a, -4
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2d7w8VUmBQM_12nu_ansi_term7display9OSControleEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2d7w8VUmBQM_12nu_ansi_term7display9OSControleEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs56aZGHL6Dc6_7ruff_db.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2d7w8VUmBQM_12nu_ansi_term7display9OSControleEECs56aZGHL6Dc6_7ruff_db.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !4
  %switch = icmp ugt i64 %i.a, -3
  br i1 %switch, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs56aZGHL6Dc6_7ruff_db.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs56aZGHL6Dc6_7ruff_db.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs56aZGHL6Dc6_7ruff_db.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sepWsjoOnX_17annotate_snippets7snippet2IdEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, -3
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets7snippet2IdECs56aZGHL6Dc6_7ruff_db.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets7snippet2IdECs56aZGHL6Dc6_7ruff_db.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i3.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs56aZGHL6Dc6_7ruff_db.exit.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %switch.i.i = icmp ugt i64 %i.a, -3
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs56aZGHL6Dc6_7ruff_db.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs56aZGHL6Dc6_7ruff_db.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.e, %bb.f ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef align 8 dereferenceable(24) %i.f) #32
          to label %common.resume.i unwind label %bb.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs56aZGHL6Dc6_7ruff_db.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !16, !alias.scope !389, !noundef !4
  %switch.i1.i = icmp ugt i64 %i.h, -3
  br i1 %switch.i1.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets7snippet2IdECs56aZGHL6Dc6_7ruff_db.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc6borrow3CoweEEECs56aZGHL6Dc6_7ruff_db.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i3.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable

common.resume.i:                                  ; preds = %bb.h, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs56aZGHL6Dc6_7ruff_db.exit.i.i3.i: ; preds = %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets7snippet2IdECs56aZGHL6Dc6_7ruff_db.exit

bb.j:                                             ; preds = %.body.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5TitleEECs56aZGHL6Dc6_7ruff_db(ptr noalias noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !16, !noundef !4
  %i.b = icmp eq i64 %i.a, -2
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2sepWsjoOnX_17annotate_snippets7snippet5TitleECs56aZGHL6Dc6_7ruff_db.exit, label %bb.b

end_hunk_0
